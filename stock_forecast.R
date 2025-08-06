# Load Required Libraries
if (!require("quantmod")) install.packages("quantmod")
if (!require("forecast")) install.packages("forecast")
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("tseries")) install.packages("tseries")

library(quantmod)
library(forecast)
library(ggplot2)
library(tseries)

# Set stock symbol and time range
stock_symbol <- "AAPL"  # Apple Inc.
start_date <- as.Date("2018-01-01")
end_date <- Sys.Date()

# Get stock data
getSymbols(stock_symbol, src = "yahoo", from = start_date, to = end_date)
stock_data <- get(stock_symbol)

# Extract the adjusted closing price
adj_close <- stock_data[, "AAPL.Adjusted"]
adj_close_ts <- ts(adj_close, frequency = 252)  # Approx 252 trading days in a year

# Plot historical prices
autoplot(adj_close_ts) +
  ggtitle("📈 Apple Stock - Adjusted Closing Price") +
  xlab("Time") + ylab("Price (USD)") +
  theme_minimal()

# Check stationarity with Augmented Dickey-Fuller Test
adf_result <- adf.test(adj_close_ts)
print(adf_result)

# Differencing to achieve stationarity (if needed)
adj_close_diff <- diff(adj_close_ts, differences = 1)
autoplot(adj_close_diff) +
  ggtitle("Differenced Series (1st Order)") +
  xlab("Time") + ylab("Price Change") +
  theme_minimal()

# Fit ARIMA model
fit <- auto.arima(adj_close_ts)
summary(fit)

# Forecast next 30 days
forecast_result <- forecast(fit, h = 30)

# Plot forecast
autoplot(forecast_result) +
  ggtitle("📊 30-Day Forecast of Apple Stock Price") +
  xlab("Time") + ylab("Price (USD)") +
  theme_light()

# Save forecast as CSV
write.csv(as.data.frame(forecast_result), "forecast_output.csv")

# Print key results
cat("\nForecast Summary:\n")
print(forecast_result)
