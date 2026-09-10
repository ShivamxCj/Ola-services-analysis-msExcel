# Data-Driven Analysis of Ola Services

## Project Overview

An end-to-end analysis of **76K+ Ola ride records from July 2024**, using SQL, Excel, Python, and Power BI to evaluate booking performance, cancellations, customer behavior, and operational efficiency.

The project follows a multi-tool analytics workflow, from data cleaning and SQL-based analysis to statistical exploration and interactive business dashboards.

## Tech Stack

* **SQL:** Data extraction, KPI calculation, cancellation analysis, customer and vehicle-level analysis
* **Excel:** Data cleaning, transformation, formatting, and missing-value handling
* **Python:** Exploratory and statistical analysis using Pandas, NumPy, and Matplotlib
* **Power BI:** Interactive dashboards and business reporting

## Analysis Workflow

### 1. SQL Analysis

Used SQL to answer key business questions, including:

* Cancellation rate by vehicle type
* Top 5 customers by number of rides
* Average booking value and revenue trends
* Booking volume by hour
* Driver rating analysis

```sql
SELECT Vehicle_Type, 
       ROUND(
           SUM(CASE WHEN Booking_Status <> 'Success' THEN 1 ELSE 0 END) 
           * 100.0 / COUNT(*), 2
       ) AS Cancellation_Rate_Percent
FROM OlaBooking
GROUP BY Vehicle_Type
ORDER BY Cancellation_Rate_Percent DESC;
```

### 2. Excel Data Preparation

Used Excel and Power Query to:

* Clean inconsistent values and duplicate records
* Handle missing values
* Standardize date and time formats
* Prepare the dataset for further analysis

### 3. Python Analysis

Performed exploratory analysis using Pandas, NumPy, and Matplotlib to identify:

* Hourly booking and demand patterns
* Successful vs. cancelled bookings
* Vehicle arrival and customer readiness time
* Distribution and correlation patterns

### 4. Power BI Dashboard

Built an interactive dashboard to monitor:

* Total bookings and cancellation rate
* Cancellation reasons
* Vehicle category performance
* Booking and revenue metrics
* Driver and customer behavior

## Dashboard Preview

### Executive Overview

![Ola Power BI Dashboard](https://github.com/ShivamxCj/Ola-services-analysis-msExcel/blob/main/DashboardImages/PowerBI_Dashboard.png)

### Python Analysis

![Hourly Demand Analysis](https://github.com/ShivamxCj/Ola-services-analysis-msExcel/blob/main/DashboardImages/Ride%20Demand%20Distribution%20by%20Hour%20of%20Day.png)

![Revenue per type](https://github.com/ShivamxCj/Ola-services-analysis-msExcel/blob/main/DashboardImages/Total%20Revenue%20by%20Vehicle%20Type.png)

## Key Insights

* **76K+ bookings** were analyzed, with approximately **39K cancellations**.
* The overall cancellation rate was around **50%**, indicating a significant operational challenge.
* Average vehicle arrival time was **82.90 seconds**, compared with **41.26 seconds** for customer readiness time.
* **"Driver is not moving"** was identified as a major customer-side cancellation reason.
* Mini and Bike categories contributed high booking volumes, while Prime SUV generated higher booking value.

## Business Recommendation

The analysis indicates that delayed driver movement after accepting a ride is a key operational issue. Real-time monitoring of driver movement, combined with appropriate alerts or intervention mechanisms, could help reduce cancellations and improve booking success rates.

