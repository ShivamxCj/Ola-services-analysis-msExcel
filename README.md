# 🚖 Data Driven Analysis of Ola Services Project Using Multi-Data Tool
### **📌 Project Overview**

This project is an end-to-end analysis of OLA’s ride-hailing operations. It demonstrates a multi-tool approach to data analytics, utilizing SQL for data extraction, Excel for initial profiling, Python for deep-dive statistical analysis, and Power BI for executive-level dashboards.
The goal is to analyze 76k+ ride records from July 2024 to optimize booking success rates and maximize revenue across different vehicle categories.

### **🛠️ Multi-Tool Tech Stack**
| Tool | Purpose | Key Task |
| :--- | :--- | :--- |
| **SQL** | Data Extraction & Querying | Identifying Top 5 customers, calculating cancellation rates, and analyzing reasons. |
| **Excel** | Data Cleaning & ETL | Handling "null" values, formatting dates, and initial data profiling. |
| **Python** | Statistical Analysis | Using Pandas, NumPy, and Matplotlib for correlation & distribution analysis. |
| **Power BI** | BI Dashboarding | Creating interactive visualizations for stakeholders. |

### **📊 Project Workflow & Key Queries**
**1. SQL (The Foundation)**

I used SQL to answer critical business questions directly from the database:
| Category | Key Business Insight | 
| :--- | :--- | 
| **Revenue Analysis** | Identifying top-performing locations and average booking values.|
| **Cancellation Rates** | Calculating % Cancellation Rate by vehicle type using CASE statements and GROUP BY.|
| **KPI Tracking** | Finding MAX/MIN driver ratings and COUNT of bookings per hour.|
| **Customer Loyalty** | Identifying the TOP 5 customers by ride count.|

SELECT Vehicle_Type, 
       ROUND((SUM(CASE WHEN Booking_Status <> 'Success' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)),2) AS Cancellation_Rate_Percent
FROM OlaBooking GROUP BY Vehicle_Type ORDER BY Cancellation_Rate_Percent DESC;

**2. Excel (Data Refinement & ETL)**

Before analysis, I used Excel as a lightweight ETL layer to ensure data integrity
| Category | Key Business Insight | 
| :--- | :--- | 
| **Data Sanitization** | Performed bulk "Find & Replace" for inconsistent naming conventions and removed duplicate records.|
| **Null Value Management** | Utilized Power Query and conditional logic to impute missing values for "Vehicle Arrival Time.|
| **Format Standardization** | Standardized raw timestamps into uniform Date/Time formats to prevent errors in Python time-series analysis.|

**3. Python (The Deep Dive)**

Using Pandas and Matplotlib, I developed several visualizations in a Jupyter Notebook:
| Category | Key Business Insight | 
| :--- | :--- | 
| **Hourly Demand Pattern** | Identifying peak hours (8 AM, 6 PM) for surge pricing strategies.|
| **Ride Status Distribution** | A 360-degree view of successful vs. failed bookings.|
| **TAT Analysis** | Comparing Vehicle Arrival Time vs. Customer Readiness time.|

<img width="728" height="638" alt="Screenshot 2026-01-22 191345" src="https://github.com/user-attachments/assets/62f51f1d-f9ae-41a6-bd97-dc821a8d9ac3" />

<img width="1172" height="692" alt="Screenshot 2026-01-22 191614" src="https://github.com/user-attachments/assets/e34f749c-5ae3-4785-a6a3-bfc00f666916" />

**4. Power BI (The Dashboard)**

An interactive dashboard was developed to monitor live metrics:
| Category | Key Business Insight | 
| :--- | :--- | 
| **Overall Executive Summary** | Total Bookings (76K), 50% cancellation rate observed. |
| **Cancellation Insights** | Visualizing the primary customer reason ("Driver is not moving...") and driver reason ("Personal/Car issue").|
| **Vehicle Type View** | High volume in Mini/Bike, highest value in Prime SUV.|

<img width="1417" height="797" alt="image" src="https://github.com/user-attachments/assets/6c2d8b58-7701-4b0f-bcea-28afd48ec1ca" />

### **🚀 Key Business Insights (2026)**

**Operational Bottleneck:** The primary issue is the high total cancellation volume (39K of 76K bookings).
**Efficiency Issue:** Average Vehicle TAT (82.90s) is nearly double the Average Customer TAT (41.26s), indicating drivers are slow to arrive after accepting a ride.
**Actionable Insight:** The "Driver is not moving" customer complaint directly links to the slow V_TAT. OLA should implement real-time geo-fencing to penalize stationary drivers post-acceptance.

### **👤 Author**

**Swaranjali Harkare**

**LinkedIn:** https://www.linkedin.com/in/swaranjali-harkare-364a592a8

**Portfolio:** https://github.com/Swaraharkare/Data-Driven-Analysis-of-Ola-Services

