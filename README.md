# 📈 Stock Price Analysis & Forecasting

Analyze historical stock prices and forecast future trends using R.  
This project uses `quantmod` to fetch stock data, `forecast` to build time series models (ARIMA), and `ggplot2` to visualize the trends and predictions.



## 🔧 Features

- Fetch real-time stock data from Yahoo Finance
- Visualize historical trends
- Test for stationarity (ADF test)
- Auto ARIMA model fitting
- 30-day forecast of adjusted closing prices
- CSV export of forecasted values



## 🧠 Skills Used

- Time Series Analysis
- ARIMA Forecasting
- Data Visualization with `ggplot2`
- Working with `quantmod` and Yahoo Finance APIs
- CSV data export



## 📦 Requirements

Install the required R packages:

```r
install.packages(c("quantmod", "forecast", "ggplot2", "tseries"))
```



## 🚀 How to Run

1. Clone the repository or download the R script:
   ```
   git clone https://github.com/your-username/stock-price-forecast-r.git
   cd stock-price-forecast-r
   ```

2. Open `stock_forecast.R` in RStudio or run it from your R console:
   ```r
   source("stock_forecast.R")
   ```

3. View the generated plots for:
   - Historical prices
   - Differenced (stationary) data
   - 30-day forecast

4. Check the forecasted data saved as:
   ```
   forecast_output.csv
   ```



## 📊 Example Output

- 📉 **Historical Trend**  
  Shows how Apple stock has moved since 2018.

- 🔍 **Differenced Series**  
  Used to make the data stationary for ARIMA modeling.

- 📈 **Forecast Plot**  
  Predicted prices for the next 30 trading days with confidence intervals.



## ✏️ Customize

You can change the stock symbol and date range:

```r
stock_symbol <- "AAPL"  # Change to "TSLA", "MSFT", "GOOG", etc.
start_date <- as.Date("2018-01-01")
end_date <- Sys.Date()
```



## 📁 File Structure

```
stock-price-forecast-r/
│
├── stock_forecast.R         # Main R script
├── forecast_output.csv      # Forecast results
└── README.md                # This file
```



## 📚 References

- [quantmod package](https://cran.r-project.org/web/packages/quantmod/index.html)
- [forecast package](https://cran.r-project.org/web/packages/forecast/index.html)
- [Yahoo Finance API](https://finance.yahoo.com)

