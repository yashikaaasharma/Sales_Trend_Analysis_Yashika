# 📈 Sales Trend Analysis – Task 6 | Data Analyst Internship

👩‍💻 **Created by:** Yashika Sharma  
📁 **Project:** SQL-Based Sales Aggregation Analysis  
🗂 **Dataset:** Simulated transactional data using `online_sales` table

---

## 🎯 Objective
To analyze monthly revenue and order trends using SQL aggregation techniques such as `SUM`, `COUNT`, `GROUP BY`, and `ORDER BY` on an ecommerce-style dataset.

---

## 📁 Repository Structure

📦 Sales_Trend_Analysis_Yashika/
┣ 📄 online_sales_sample.sql ← SQL script to create and populate the dataset
┣ 📄 trend_analysis_queries.sql ← SQL script with analysis queries
┣ 📄 README.md ← Project documentation

---

## 🛠 Tools Used
- SQL (SQLite / MySQL / PostgreSQL)
- STRFTIME (for monthly formatting)
- GROUP BY, ORDER BY, LIMIT
- GitHub for version control

---

## 🧾 Dataset Overview

**Table:** `online_sales`

| Column       | Type     | Description                      |
|--------------|----------|----------------------------------|
| `order_id`   | INT      | Unique order identifier          |
| `order_date` | DATE     | Date when the order was placed   |
| `product_id` | INT      | Product involved in the order    |
| `amount`     | DECIMAL  | Order value in ₹                 |

---

## 📊 SQL Analysis Performed

### 1. Monthly Revenue
```sql
SELECT STRFTIME('%Y-%m', order_date) AS month, SUM(amount) AS monthly_revenue
FROM online_sales GROUP BY month ORDER BY month;
SELECT STRFTIME('%Y-%m', order_date) AS month, COUNT(DISTINCT order_id) AS total_orders
FROM online_sales GROUP BY month ORDER BY month;
SELECT STRFTIME('%Y-%m', order_date) AS month, SUM(amount) AS revenue
FROM online_sales GROUP BY month ORDER BY revenue DESC LIMIT 3;
 Key Insights
Revenue steadily increased from Jan to Oct.

July and August were peak revenue months.

March and May had the highest number of individual orders.

Using STRFTIME or EXTRACT(MONTH) is crucial for date grouping.

📝 Internship Learning Outcome
Strong hands-on with SQL date aggregation.

Understanding revenue trends and business KPIs.
Efficient use of grouping and sorting in real-world queries.

▶️ How to Run
Execute online_sales_sample.sql in your SQL environment.

Run trend_analysis_queries.sql to generate insights.

Review results or capture screenshots for reporting (optional).

📤 Submission
All deliverables are included and formatted for GitHub submission.
