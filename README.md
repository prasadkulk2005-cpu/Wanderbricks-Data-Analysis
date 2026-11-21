::: {align="center"}
🏡 WanderBricks
SQL Data Analytics | Real Estate & Property Booking Insights
![Platform](https://img.shields.io/badge/Platform-Databricks-orange?logo=databricks&logoColor=white)
![Language](https://img.shields.io/badge/Language-SQL-blue?logo=sql&logoColor=white)
[![Domain](https://img.shields.io/badge/Domain-Real%20Estate%20Analytics-2ea44f)]()
[![Project](https://img.shields.io/badge/Project-Data%20Analytics-purple)]()
Turning property and booking data into actionable business insights
using SQL on Databricks.
:::
---
📌 Table of Contents
📖 Project Overview
🎯 Business Objectives
🗂️ Dataset Description
🛠️ Tools and Technologies
📊 Key Business KPIs
🔎 SQL Analysis Performed
📈 Visualizations
💡 Key Findings and Business
Insights
⚙️ How to Reproduce the Analysis
📁 Suggested Repository
Structure
🏷️ GitHub Topics
📖 Project Overview
WanderBricks is a SQL data analytics project focused on real-estate
properties and booking operations. Developed using Databricks SQL,
the project explores platform performance across users, properties,
bookings, hosts, cities, revenue, cancellations, and amenities.
The analysis uses a dataset containing 9 tables to calculate
business KPIs, compare city and host performance, examine booking
trends, and identify frequently listed property amenities. The objective
is to convert structured data into useful metrics that can support
business monitoring and decision-making.
🎯 Business Objectives
Measure platform scale through users, properties, bookings, hosts,
cities, and amenities.
Evaluate total revenue and identify the highest-revenue cities.
Identify cities with the largest property listings.
Rank hosts by the number of properties listed.
Analyze booking activity by month and property type.
Examine booking statuses and cancellations across cities.
Identify the most frequently listed amenities.
Present query outputs in a clear, business-focused format.
🗂️ Dataset Description
Dataset Detail      Description
---
Dataset name        `databricks_wanderbricks_dataset_dais_2025`
Domain              Real Estate & Property Booking
Number of tables    9
Analysis platform   Databricks
Data format         Relational tables
The supplied workbook contains analysis outputs for these subject areas:
Subject Area   Data / Analysis
---
Users          Total user count
Properties     Property count and average property price
Bookings       Booking volume, status, monthly trend, property type
Hosts          Host property counts
Cities         Property count, revenue, and cancellation analysis
Amenities      Amenity frequency
Employees      Total employee count
> **Schema note:** The workbook provided for this README contains query
> outputs, but does not list all nine physical table names, column
> definitions, or table relationships. Add the verified Databricks
> schema before documenting individual source tables.
🛠️ Tools and Technologies
Tool / Concept                Purpose
---
🧱 Databricks                 SQL development and query execution
🗃️ SQL                        Data extraction and business analysis
`COUNT()`, `SUM()`, `AVG()`   KPI and metric calculations
`CASE WHEN`                   Conditional calculations
`GROUP BY`, `HAVING`          Grouped and filtered analysis
`ORDER BY`, `LIMIT`           Ranking and top-N analysis
Date functions                Monthly booking analysis
GitHub                        Project documentation and version control
Only list additional technologies such as Power BI or Python if they
were used in the project.
📊 Key Business KPIs
The following figures are reported in the supplied Excel analysis
workbook.
KPI                                 Result
---
👥 Total Users                     124,509
🏘️ Total Properties                 18,163
📅 Total Bookings                   72,247
🧑‍💼 Total Hosts                      19,384
🌍 Total Cities                        168
🧰 Total Amenities                      38
🏢 Total Employees                  73,006
💰 Total Revenue              9,913,945.94
🏷️ Average Property Price           181.60
Data validation: The booking-status breakdown reports 17,948
confirmed, 31,575 pending, 15,285 cancelled, and 7,439 completed
bookings. These status counts sum to 72,247. A separate KPI output
labels 17,948 as `total_booking` and 13,150 as
`total_cancelled_booking`. These KPI labels/values conflict with the
overall total and status breakdown, so validate the underlying query
definitions before treating those two figures as final KPIs.
Currency is not identified in the supplied workbook; revenue is
therefore shown without a currency symbol.
🔎 SQL Analysis Performed
1. 📌 Business KPI Analysis
Total users, properties, bookings, hosts, cities, amenities, and
employees.
Total revenue and average property price.
Booking status distribution.
2. 🏘️ Property and City Analysis
Top 5 cities by property count
    Rank City           Properties
---
       1 Phuket              1,788
       2 Mallorca            1,626
       3 Gold Coast          1,624
       4 Paris               1,440
       5 Abu Dhabi           1,103

3. 🧑‍💼 Host Performance Analysis
Top 5 hosts by property count
    Rank   Host ID   Properties
---
       1     10895          119
       2     12672          109
       3     11652          101
       4     12769           93
       5     11610           88

4. 💰 Revenue Analysis
Top 5 cities by revenue
    Rank City           Total Revenue
---
       1 Phuket          4,058,199.55
       2 Gold Coast      3,610,094.14
       3 Mallorca        3,565,640.19
       4 Paris           3,148,197.41
       5 Abu Dhabi       2,445,957.96

5. 📅 Booking Analysis
Booking status distribution
Booking Status     Booking Count
---
Confirmed                 17,948
Pending                   31,575
Cancelled                 15,285
Completed                  7,439
Total             72,247
Bookings by property type
Property Type        Bookings
---
Urban Year-Round       36,903
Summer Getaway         28,329
Historical Place        6,628
Ski Resort                387
Monthly booking trend analysis was also performed. The supplied workbook
displays five year/month result rows; add the complete monthly result
set if you want to present a full trend over time.
6. ❌ Cancellation Analysis
Analyzed cancelled bookings by city.
Compared total bookings with cancelled bookings.
Reviewed cancellation counts across cities.
The supplied output includes city-level booking and cancellation counts.
The cancellation rate should be calculated using a consistent
definition:
`Cancellation Rate = (Cancelled Bookings / Total Bookings) * 100`
Validate the overall cancelled-booking KPI before publishing a single
platform-wide cancellation figure.
7. 🧰 Amenities Analysis
Top 5 amenities by reported count
    Rank Amenity            Count
---
       1 Safe               3,228
       2 Washer             3,204
       3 Smoke Detector     3,198
       4 Terrace            3,198
       5 First Aid Kit      3,173

📈 Visualizations
Use the following chart ideas to communicate the analysis results:
Analysis                         Recommended Visualization
---
Monthly booking trend            📈 Line chart
Top 5 cities by revenue          📊 Horizontal bar chart
Top 5 cities by property count   📊 Horizontal bar chart
Top 5 hosts by property count    📊 Horizontal bar chart
Booking status distribution      🍩 Donut chart
Bookings by property type        📊 Bar chart
Cancelled bookings by city       📊 Bar chart
Most popular amenities           📊 Horizontal bar chart
📷 Project Charts
Once chart images are exported, save them in the `visuals/` folder and
display them here:
``` md
![Monthly Booking Trend](visuals/monthly_booking_trend.png)
![Top Cities by Revenue](visuals/top_cities_by_revenue.png)
![Booking Status Distribution](visuals/booking_status_distribution.png)
![Popular Amenities](visuals/most_popular_amenities.png)
```
The supplied workbook contains tabular query outputs, not chart image
files. The image links above are examples to use after adding the
corresponding chart files.
💡 Key Findings and Business Insights
Based on the supplied SQL result workbook:
🌍 Platform reach: The analysis reports 124,509 users, 18,163
properties, and 72,247 bookings across 168 cities.
💰 Revenue leader: Phuket has the highest reported revenue among
the listed cities, at 4,058,199.55.
🏘️ Property concentration: Phuket also ranks first in the
top-five city property count, with 1,788 properties.
🧑‍💼 Host performance: Host ID 10895 leads the reported host
ranking with 119 properties.
🏡 Property type activity: Urban Year-Round has the highest
booking count in the property-type output, with 36,903 bookings.
⏳ Booking status: Pending is the largest status category in the
supplied breakdown, with 31,575 bookings.
🧰 Amenity frequency: Safe is the most frequently reported
amenity in the supplied top-five output, with a count of 3,228.
These are descriptive findings from the workbook. They do not, by
themselves, establish why a city performs well, whether revenue is
profitable, or whether demand is growing over time.
⚙️ How to Reproduce the Analysis
Open Databricks: Sign in to your Databricks workspace.
Load the dataset: Import or connect
`databricks_wanderbricks_dataset_dais_2025`.
Verify the schema: Confirm all nine table names, columns, data
types, keys, and relationships.
Validate the data: Check row counts, missing values, duplicate
records, date ranges, booking statuses, and revenue definitions.
Run SQL queries: Execute the scripts for business KPIs,
properties, hosts, revenue, bookings, cancellations, and amenities.
Reconcile results: Compare KPI totals with detailed breakdowns,
especially booking and cancellation counts.
Create charts: Export visualizations from the validated query
outputs and save them in `visuals/`.
Publish on GitHub: Upload the README, SQL scripts, and chart
images. Do not publish confidential or restricted source data.
📁 Suggested Repository Structure
``` text
WanderBricks-SQL-Data-Analytics/
│
├── README.md
├── sql/
│   ├── 01_business_kpis.sql
│   ├── 02_property_city_analysis.sql
│   ├── 03_host_analysis.sql
│   ├── 04_revenue_analysis.sql
│   ├── 05_booking_analysis.sql
│   ├── 06_cancellation_analysis.sql
│   └── 07_amenities_analysis.sql
│
├── visuals/
│   ├── monthly_booking_trend.png
│   ├── top_cities_by_revenue.png
│   ├── top_cities_by_property_count.png
│   ├── top_hosts_by_property_count.png
│   ├── booking_status_distribution.png
│   └── most_popular_amenities.png
│
└── dataset/
    └── dataset_source_and_schema.md
```
🏷️ GitHub Topics
Add these topics in your GitHub repository About → Topics section:
`sql` · `databricks` · `data-analytics` · `data-analysis` ·
`real-estate-analytics` · `booking-analysis` · `business-intelligence` ·
`sql-project` · `kpi-analysis` · `data-visualization`
---
::: {align="center"}
⭐ Project Summary
WanderBricks -- SQL Data Analytics
Built with 🧱 Databricks SQL | Focused on 📊 Business Insights
An end-to-end SQL analytics project exploring property listings,
bookings, revenue, hosts, cities, cancellations, and amenities.
:::
