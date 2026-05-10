# 🛒 E-Commerce SQL Analysis — Northwind Database

Analyzed a real-world e-commerce database using SQL to uncover revenue trends,
top customers, best-performing product categories, and employee performance.  
This is **Project 2** of my Data Analyst portfolio.

---

## 📌 Project Overview

| Detail | Info |
|---|---|
| Database | Northwind Traders (fictional e-commerce company) |
| Tool | DB Browser for SQLite |
| Queries written | 10 |
| Tables used | Orders, Order Details, Products, Categories, Customers, Employees |

---

## 💡 Key Insights

| # | Question | Finding |
|---|---|---|
| 1 | Top product category by revenue | Beverages — nearly double the lowest category |
| 2 | Weakest product category | Grains/Cereals — less than ⅓ of Beverages revenue |
| 3 | #1 country by orders | USA & Germany tied for most orders |
| 4 | Dead stock | None — all products have been ordered at least once |
| 5 | Top 3 categories | Beverages, Confections, Meat/Poultry make up ~50% of all revenue |

---

## 📊 Queries Written

| Query | Business Question |
|---|---|
| 1 | Show first 10 customers |
| 2 | Filter customers by country |
| 3 | Top 5 most expensive products |
| 4 | Total orders per country |
| 5 | Revenue per product category (JOIN across 3 tables) |
| 6 | Top 5 customers by total spend |
| 7 | Monthly order trend over time |
| 8 | Average order value (using subquery) |
| 9 | Employee leaderboard by orders handled |
| 10 | Products that have never been ordered |

---

## 🧠 SQL Concepts Used

- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT` — filtering and sorting
- `GROUP BY` + `COUNT`, `SUM`, `AVG`, `ROUND` — aggregations
- `JOIN` — connecting multiple tables by shared ID columns
- `STRFTIME` — extracting year and month from date columns
- Subqueries — running a query inside another query
- `NOT IN` + `SELECT DISTINCT` — finding missing records
- String concatenation with `||` — combining first and last name

---

## 📁 Files in This Repo

| File | Description |
|---|---|
| `queries.sql` | All 10 SQL queries with comments |
| `revenue_by_category.png` | Bar chart — revenue per product category |
| `orders_by_country.png` | Bar chart — total orders by country |

---

## 📸 Charts

### Revenue by Product Category
![Revenue by Category](revenue_by_category.png)

### Orders by Country
![Orders by Country](orders_by_country.png)

---

## 🛠️ How to Run This Yourself

1. Download [DB Browser for SQLite](https://sqlitebrowser.org) — free
2. Download the Northwind database from [jpwhite3/northwind-SQLite3](https://github.com/jpwhite3/northwind-SQLite3)
3. Open `northwind.db` in DB Browser
4. Copy any query from `queries.sql` → paste into the Execute SQL tab → press Play

---

## 🗺️ My Data Analyst Roadmap

| Status | Project |
|---|---|
| ✅ Done | Project 1 — Excel/Sheets Sales Dashboard |
| ✅ Done | Project 2 — SQL E-Commerce Analysis ← this project |
| ⬜ Next | Project 3 — Python / Pandas IPL Cricket EDA |
| ⬜ Coming | Project 4 — Tableau HR Analytics Dashboard |
| ⬜ Coming | Project 5 — Capstone Business Case Study |

