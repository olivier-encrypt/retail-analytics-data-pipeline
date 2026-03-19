Retail Analytics Data Pipeline

This project demonstrates an end-to-end data pipeline designed for analytics and reporting using MySQL, SQL, and Power BI.

 Project Overview

Built a star schema data model with fact and dimension tables

Designed data at the order-line level to support detailed analysis

Implemented SQL transformations upstream to ensure clean and scalable data

Developed a Power BI dashboard focused on sales performance and return analysis

 Data Model

Fact Table: fact_sales

Dimensions:

dim_product

dim_customer

dim_date

dim_geography

dim_salesperson

 -Surrogate keys used for all relationships
 -One-to-many relationships with single-direction filtering
 -Optimized for analytics and future ML use cases

 Key Metrics

-Total Sales

-Total Profit

-Return Rate (%)

-Average Order Value

 Dashboard Features

-Sales trend over time (time intelligence)

-Sales vs Return Rate by market

-Salesperson performance analysis

-Product category mix and risk analysis

 Tech Stack

-SQL (data modeling, transformations)

-MySQL (data storage)

-Power BI (data visualization)

-GitHub (version control)