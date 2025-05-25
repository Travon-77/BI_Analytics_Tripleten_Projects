# Zuber SQL Analysis Project

Welcome to the **Zuber** SQL project — an end-to-end case study completed during the Business Intelligence Analyst TripleTen Bootcamp. In this project, you step into the role of a junior data analyst for Zuber, a new ride-sharing company launching in Chicago.

Your mission? To extract insights from a competitor's taxi ride database and evaluate how weather patterns impact trip durations between key city zones. This hands-on analysis demonstrates real-world SQL application and data-driven business recommendations.

---

## Project Overview

**Title:** Zuber SQL Analysis  
**Tool:** SQL (PostgreSQL)  
**Focus Areas:**  
- Exploratory data analysis  
- Taxi ride behavior segmentation  
- Aggregation and CASE logic  
- Weather conditions impact on ride duration  
- Joins, grouping, and filtering by time and conditions

---

## Dataset Description

The project is based on a SQL database that includes four core tables:

| Table               | Description |
|--------------------|-------------|
| `neighborhoods`     | Names and IDs of Chicago neighborhoods |
| `cabs`              | Vehicle and company ownership data |
| `trips`             | Ride-level data including time, duration, and locations |
| `weather_records`   | Weather conditions by timestamp |

---

## Business Tasks

### Step 1: Exploratory Data Analysis
- Count the number of taxi rides per company for **Nov 15–16, 2017**.
- Identify ride volumes for **"Yellow" and "Blue" taxi companies** from **Nov 1–7, 2017**.
- Compare ride counts between top companies (Flash Cab and Taxi Affiliation Services) and others during **November 2017**.

### Step 2: Ride Duration Analysis
- Focus on rides from the **Loop (neighborhood_id: 50)** to **O'Hare Airport (neighborhood_id: 63)**.
- Use **weather condition data** to classify hours as either “Good” or “Bad” based on the presence of **"rain" or "storm"**.
- Evaluate if rainy **Saturdays** affect trip durations to the airport compared to other days and conditions.

---

## Key SQL Techniques Used
- `JOIN` operations across multiple tables  
- `CASE` statements for data classification  
- Time-based filtering and aggregation  
- Conditional grouping for comparative metrics  
- Window functions and subqueries

---

## Outcome
The project delivers actionable insights into:
- How ride volumes fluctuate by company
- Brand performance comparisons
- The influence of **rainy weather on Saturday trip durations** from a business-critical route

---

## 📂 Status
✅ Completed  
📁 Files and SQL queries uploaded [Zuber_sql_queries](https://github.com/Travon-77/BI_Analytics_Tripleten_Projects/blob/main/Zuber_SQL_Analysis_Project/queries_README.md)
> Ready to inform data-driven decisions for Zuber’s strategic launch in Chicago.

---


  








