# Superstore Sales Performance Analysis (Advanced SQL & BI)

This project focuses on executing data profiling and advanced data analytics on a Superstore dataset sourced from Kaggle. The objective is to solve strategic business problem statements, audit data quality, extract deep retail insights using SQL, and eventually translate them into an executive Tableau dashboard and analytical presentation.

---

## 📊 Project Visuals & Progress Track

### 1. SQL Query Execution & Analytics (Completed ✅)
*Advanced analytical queries and data audits utilizing CTEs, conditional filtering, and complex aggregates to solve retail business questions.*

![SQL Data Auditing & Insights](path/to/sql_screenshot.png)

### 2. Tableau Interactive Dashboard (In Progress ⏳)
*A dynamic Tableau dashboard is currently being designed to visually represent these SQL-derived retail insights.*

![Tableau Executive Dashboard Placeholder](path/to/tableau_dashboard.png)

---

## 🛠️ Tech Stack & Tools
* **Data Querying & Analysis:** SQL (PostgreSQL / MySQL / MS SQL Server)
* **SQL Techniques Applied:** Common Table Expressions (CTEs), Advanced Filters (`FILTER (WHERE ...)`), Conditional Aggregations, Data Profiling, and Grouped Cardinality checks.
* **Data Visualization:** Tableau (Upcoming)
* **Reporting:** Microsoft PowerPoint (Upcoming PPT Presentation)
* **Dataset Source:** Kaggle (Sample Superstore Dataset)

---

## 🚀 Key Project Highlights & Problem Statements Solved

### 1. Data Auditing & Profiling (SQL Done)
Before diving into high-level metrics, deep structural verification was performed on the `supermart` table:
* **Volume Metrics:** Identified total record volumes against unique entities like order IDs, distinct customer bases, and total unique product lines to understand data granularity.
* **Null Value Auditing:** Structured advanced conditional flags using `COUNT(*) FILTER (WHERE ...)` to check for critical data gaps in fields like `order_id`, `customer_id`, `sales`, and `profit`.
* **Dimensional Distribution:** Analysed volume split across key categories including customer segments, geographical regions, and distinct product categories/sub-categories.

### 2. Business Insights & Retail Patterns (SQL Done)
Addressed specific commercial scenarios through structured SQL logic:
* **Temporal Boundaries:** Captured the overall date range boundaries (`min` and `max` order dates) of operations.
* **Geographical Density:** Written nested Common Table Expressions (CTEs) utilizing window-like filters to isolate the single highest frequency order city across markets.
* **Order Line Analysis:** Isolated consolidated transaction records using `HAVING COUNT(*) > 1` to target basket size analysis (orders holding multiple unique product items).
* **Risk & Revenue Skew Checks:** Evaluated business risks by isolating exact counts of loss-making transactions (`profit < 0`), as well as profiling range margins (Min, Max, Avg) for both `discount` rates and `sales` amounts to catch distribution skews.

### 3. Tableau & Executive Reporting (Upcoming)
* Designing a multi-page interactive dashboard mapping Sales, Profitability, and Regional Performance.
* Building a structured PowerPoint presentation for executive stakeholder reporting.

---

## 📂 Current Repository Status

* **sales-analysis.sql:** Contains well-commented and optimized SQL scripts covering data understanding and exploratory retail analysis.
* **Tableau & PPT:** Coming soon as the visualization phase is currently under development.

---

## 📌 Credits & References
* **Dataset:** Sample Superstore Dataset via Kaggle.
* **Problem Statement Framework:** Structured using ChatGPT to simulate real-world corporate business problems.
* **Implementation:** All SQL logical structures, data profiling queries, and upcoming Tableau dashboards are completely self-developed.
