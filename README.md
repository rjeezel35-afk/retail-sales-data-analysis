Retail Sales Data Analysis (MySQL 8+)

End-to-end analytics project built on a retail transactions dataset using MySQL 8+.
Covers data modeling, cleaning, SQL analytics, window functions, and RFM segmentation to demonstrate strong SQL and business analysis skills.

# Project Overview

Goal: Build a SQL-driven Sales & Customer Performance analysis to answer:

Which products drive the most revenue?

Who are the top customers by spend and loyalty status?

How do sales trends vary by month and category?

Which categories contribute most to growth?

Key Deliverables:

Cleanly loaded sales table with correct datatypes & constraints

Reusable SQL for KPIs, growth metrics, and cohort trends

Segmentation analysis (gender × age, top customers/categories)

RFM framework for customer loyalty & churn risk

Optional star schema for (fact + dimensions)

# Business Questions

Orders, unique customers, and revenue over time

Monthly revenue, MoM growth %, and 3-month moving average

Top customers & categories (by revenue and units)

Gender × age-band segmentation (orders, revenue, units)

RFM snapshot to identify VIPs and at-risk customers

# Dataset

Retail transactions dataset with the following columns:

transaction_id, order_date, customer_id, gender, age, product_category, quantity, price_per_unit, total_amount

# Data Model

Single-table design for SQL analytics, plus optional star schema tools:

sales(
  transaction_id, order_date, customer_id, gender, age,
  product_category, quantity, price_per_unit, total_amount
)

# Getting Started

Enable file loads:

mysql --local-infile=1 -u YOURUSER -p


Run full SQL pipeline:

Execute sql/retail_sql_project_mysql.sql

Creates DB, tables, loads CSV, runs QA checks, builds views & schema

Load dataset:

Update CSV path in script and use LOAD DATA LOCAL INFILE

Optional connection:

Connect / Excel to MySQL

Use v_sales_enriched, fact_sales, and dim_*

# SQL Pipeline
# Data Quality Checks

Row counts, duplicates, nulls, numeric consistency

# Core KPIs & Trends

Total orders, revenue, AOV, units

Monthly revenue with MoM % growth and moving averages

# Segmentation & RFM

Gender × age-band segmentation

RFM (Recency, Frequency, Monetary) scoring per customer



# Recommendations

Bundle low-performing categories to lift AOV

Launch VIP loyalty program for high-value customers

Personalize promos by age-band × category

Monitor recency → trigger churn-prevention offers

# Project Structure
.
├─ sql/
│  └─ retail_sql_project_mysql.sql   # Full SQL pipeline
├─ docs/
│  ├─ dashboard-overview.png         # Add BI screenshots
│  └─ dashboard-segmentation.png
├─ README.md
└─ retail_sales_dataset.csv          # Source data (not included)
