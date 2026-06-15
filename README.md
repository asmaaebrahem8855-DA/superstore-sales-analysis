# 📊 Superstore Sales & Profit Analysis

## Overview
This project analyzes the Sample Superstore dataset using SQL and Power BI to identify key drivers of profit and loss across categories, regions, and segments.

## Tools Used
- MySQL (SQL queries, CTEs, Window Functions)
- Power BI (Dashboard & Visualization)

## Business Questions
1. Which category generates the highest sales and profit?
2. Which sub-categories are losing money, and why?
3. Which region performs best/worst in terms of profit?
4. Which customer segment is most profitable?
5. How do discount levels impact profit across sub-categories?

## Key Insights
- 🔴 **Tables** lose -$17,725 despite $206K in sales, driven by a 26% average discount.
- 🔴 **Central region** has the lowest profit ($39K) despite high sales ($501K).
- 🔴 **Furniture in Central** loses money due to a 31% average discount.
- 🟢 **Consumer segment** is the most profitable ($134K), driven by sales volume.
- 🟢 **Copiers** is the most profitable sub-category in Technology.

## Dashboard Preview
*(Add screenshot here)*

## SQL Highlights
- Used `GROUP BY` for aggregated sales/profit analysis across categories, regions, and segments.
- Used `RANK() OVER (PARTITION BY ...)` to rank sub-category profitability within each category.

## Project Files
- `analysis.sql` - SQL queries (GROUP BY, Window Functions)
- `Superstore_Analysis.ipynb` - Python (Pandas) analysis with visualizations
- `dashboard.png` - Power BI dashboard

## Recommendation
Reduce discount rates on Tables and Furniture (especially in the Central region) to improve overall profitability without significantly impacting sales volume.
