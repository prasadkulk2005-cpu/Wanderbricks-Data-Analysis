WanderBricks -- SQL Data Analytics
Platform: Databricks  
Domain: Real Estate & Property Booking Analytics  
Dataset: `databricks_wanderbricks_dataset_dais_2025`  
Dataset size: 9 tables  
Primary language: SQL
---
1. Project Overview
WanderBricks is a SQL-based data analytics project developed in
Databricks to examine real-estate properties and booking operations. The
analysis explores business KPIs, revenue performance, booking activity,
property distribution, host performance, city-level performance,
cancellations, and property amenities.
The goal is to turn relational data into clear business metrics and
insights that can support operational and commercial decisions.
2. Business Objectives
Measure the overall scale of the platform using users, properties,
bookings, hosts, cities, and amenities.
Understand revenue performance and identify the highest-revenue
cities.
Examine property distribution across cities and identify leading
hosts by property count.
Track booking activity over time and across property types.
Measure booking cancellations and compare cancellation volumes by
city.
Identify the amenities most frequently associated with properties.
Present query results in a format that supports business reporting
and visualization.
3. Dataset Description
Dataset name: `databricks_wanderbricks_dataset_dais_2025`  
Number of tables: 9
The supplied analysis workbook reports metrics and results for the
following subject areas:
---
Subject area                        Analysis supported by the workbook
---
Users                               Total user count
Properties                          Total properties, property count by
city, average property price
Bookings                            Total bookings, booking status,
monthly trend, property-type
bookings
Hosts                               Top hosts by property count
Cities                              Property distribution, revenue, and
cancellations by city
Amenities                           Total amenities and amenity
frequency
Employees                           Total employee count
The workbook contains query outputs, not the complete table schema or
all nine physical table names. Add the exact table names, column
definitions, primary keys, and relationships here after exporting the
Databricks schema. Do not infer table names from the KPI labels.
4. Tools and Technologies
Databricks: SQL development and execution environment.
SQL: Data querying, aggregation, grouping, filtering, and
analysis.
SQL techniques: `COUNT()`, `SUM()`, `AVG()`, `ROUND()`,
`CASE WHEN`, `GROUP BY`, `ORDER BY`, `LIMIT`, joins, and date
functions.
GitHub: Project documentation and version control.
Include additional tools such as Power BI, Python, or Excel only if they
were actually used in the project.
5. Key Business KPIs
The following values are reported in the supplied analysis workbook.
KPI                        Reported value
---
Total users                       124,509
Total properties                   18,163
Total bookings                     72,247
Total hosts                        19,384
Total cities                          168
Total amenities                        38
Total employees                    73,006
Total revenue                9,913,945.94
Average property price             181.60
Metric validation note: The workbook's separate booking-status
output reports 17,948 confirmed, 31,575 pending, 15,285 cancelled, and
7,439 completed bookings. These status counts sum to 72,247. However,
another KPI block labels 17,948 as `total_booking` and 13,150 as
`total_cancelled_booking`. Those two KPI labels/values do not match the
overall booking count and cancelled status count. Validate the
underlying SQL definitions before publishing them as final KPIs.
6. SQL Analysis Performed
6.1 Business KPI Analysis
Total users, properties, bookings, hosts, cities, amenities, and
employees.
Total revenue.
Average property price.
Booking status distribution.
6.2 Property Analysis
Top five cities by property count.
Average property price analysis.
Top five cities by property count (workbook results):
City           Property count
---
Phuket                  1,788
Mallorca                1,626
Gold Coast              1,624
Paris                   1,440
Abu Dhabi               1,103
6.3 Host Analysis
Top five hosts ranked by property count.
Host ID   Property count
---
      10895              119
      12672              109
      11652              101
      12769               93
      11610               88

6.4 Revenue Analysis
Total revenue.
Top five cities by revenue.
City           Total revenue
---
Phuket          4,058,199.55
Gold Coast      3,610,094.14
Mallorca        3,565,640.19
Paris           3,148,197.41
Abu Dhabi       2,445,957.96
Currency is not specified in the supplied workbook; values are
therefore shown without a currency symbol.
6.5 Booking Analysis
Booking status distribution.
Monthly booking trend by year and month.
Booking count by property type.
Booking status distribution:
Status        Bookings
---
Confirmed       17,948
Pending         31,575
Cancelled       15,285
Completed        7,439
Bookings by property type:
Property type        Bookings
---
Urban Year-Round       36,903
Summer Getaway         28,329
Historical Place        6,628
Ski Resort                387
6.6 Cancellation Analysis
Cancelled booking count by city.
City-level total bookings and cancelled bookings.
Cancellation-rate analysis.
The workbook includes city-level booking and cancellation counts. The
cancellation-rate calculation should use a clearly defined denominator,
such as cancelled bookings divided by all bookings for that city.
Validate the separate KPI value of 13,150 against the status and
city-level results before reporting it as the overall cancellation
count.
6.7 Amenities Analysis
Amenity frequency across properties.
Most frequently listed amenities.
Top five amenities in the workbook:
Amenity            Reported count
---
Safe                        3,228
Washer                      3,204
Smoke Detector              3,198
Terrace                     3,198
First Aid Kit               3,173
7. Visualizations
The analysis workbook provides tabular query outputs for the following
potential charts:
Visualization                       Suggested chart
---
Booking status distribution         Bar or donut chart
Top five cities by property count   Horizontal bar chart
Top five cities by revenue          Horizontal bar chart
Top five hosts by property count    Horizontal bar chart
Monthly booking trend               Line chart
Bookings by property type           Bar chart
Cancelled bookings by city          Bar chart
Most popular amenities              Horizontal bar chart
Add exported chart images to a folder such as `visuals/` and embed them
below. Example:
``` md
![Monthly Booking Trend](visuals/monthly_booking_trend.png)
![Top Cities by Revenue](visuals/top_cities_by_revenue.png)
![Booking Status Distribution](visuals/booking_status_distribution.png)
```
The supplied workbook contains result tables rather than chart image
files, so no chart images are embedded in this README yet.
8. Key Findings and Business Insights
Based on the supplied query results:
Platform scale: The workbook reports 18,163 properties, 72,247
bookings, and 124,509 users across 168 cities.
Revenue leaders: Phuket has the highest reported city revenue at
4,058,199.55, followed by Gold Coast and Mallorca.
Property concentration: Phuket also leads the top-five city
property count with 1,788 properties.
Host performance: Host ID 10895 has the highest property count
in the reported top-five host results, with 119 properties.
Property type demand: Urban Year-Round has the highest booking
count (36,903), followed by Summer Getaway (28,329).
Booking status: Pending is the largest status category in the
status breakdown, with 31,575 bookings.
Amenities: Safe is the most frequently reported amenity in the
output, with a count of 3,228.
These findings describe the supplied output. They do not establish
causes, profitability, customer satisfaction, or year-over-year growth.
Further analysis would be needed to support those conclusions.
9. How to Reproduce the Analysis
Open Databricks: Sign in to your Databricks workspace and open a
SQL editor or notebook.
Load the dataset: Import or connect the
`databricks_wanderbricks_dataset_dais_2025` dataset.
Verify the schema: Confirm all nine table names, columns, data
types, keys, and table relationships.
Validate source data: Check row counts, nulls, duplicate
records, date ranges, booking statuses, and revenue definitions.
Run the SQL scripts: Execute the project queries for KPIs,
revenue, bookings, properties, hosts, cities, cancellations, and
amenities.
Validate results: Reconcile aggregate totals with detailed
breakdowns, especially booking and cancellation counts.
Create visualizations: Build charts from the validated query
outputs and save image files in the `visuals/` directory.
Publish to GitHub: Upload SQL scripts, this README, and approved
visualization images. Do not upload confidential or restricted
source data.
Suggested GitHub Repository Structure
``` text
WanderBricks-SQL-Data-Analytics/
│
├── README.md
├── dataset/
│   └── dataset_source_and_schema.md
├── sql/
│   ├── 01_business_kpis.sql
│   ├── 02_property_analysis.sql
│   ├── 03_host_analysis.sql
│   ├── 04_revenue_analysis.sql
│   ├── 05_booking_analysis.sql
│   ├── 06_cancellation_analysis.sql
│   └── 07_amenities_analysis.sql
└── visuals/
    ├── monthly_booking_trend.png
    ├── top_cities_by_revenue.png
    ├── top_cities_by_property_count.png
    ├── top_hosts_by_property_count.png
    ├── cancelled_bookings_by_city.png
    └── popular_amenities.png
```
---
Project Status
SQL analysis: Completed (based on the results supplied)  
Platform: Databricks  
Dataset: 9 tables  
Documentation: README prepared; schema details and chart images can
be added when available.
This project demonstrates SQL-based data analysis, KPI reporting,
aggregation, business metric validation, and insight generation in a
real-estate and property-booking context.
