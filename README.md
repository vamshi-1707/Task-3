#  Task 3: SQL for Data Analysis

This project is part of a Data Analyst Internship task focused on using SQL to query and analyze an ecommerce dataset. It demonstrates SQL skills such as filtering, aggregation, joins, subqueries, and creating views.

---

##  Objective

Use SQL queries to:
- Analyze sales and customer behavior
- Aggregate revenue metrics
- Identify inactive customers
- Create reusable views

---

##  Tools & Stack

- **SQLite** (lightweight SQL engine)
- Schema: Simulated Ecommerce Database with 4 tables:
  - `customers(customer_id, name, email, region)`
  - `orders(order_id, customer_id, order_date, total_amount)`
  - `order_items(order_item_id, order_id, product_id, quantity, price)`
  - `products(product_id, name, category, stock)`

---

##  Project Structure

task3-sql-analysis/
├── task3_queries.sql # SQL script with all queries
├── SQL_Task3_Storyboard_Mockup.pptx # Mockup of SQL outputs as PPT
├── README.md # This file

yaml
Copy
Edit

---

##  Key SQL Queries

1. Total orders & revenue
2. Top 5 customers by spend
3. Revenue by product category
4. Monthly revenue trend
5. Identify inactive customers
6. Create a SQL view for customer summaries

See `task3_queries.sql` for the full query set.

---

##  Learning Highlights

- Use of `JOIN`, `GROUP BY`, `ORDER BY`, `LIMIT`
- Subquery with `NOT IN` for identifying inactive users
- Creating a view to simplify recurring analysis
- Query optimization by reducing joins and targeting indexed fields
