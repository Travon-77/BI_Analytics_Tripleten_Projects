
# E-Commerce Turning Event Logs into Business Metrics/

## Overview
This project demonstrates how to turn raw transaction logs from an e-commerce platform into meaningful business metrics such as conversion funnels and customer retention rates. The analysis is structured in a way that would be delivered to company executives.

---

## Dataset

The dataset, provided in the file `raw_user_activity.xlsx`, contains detailed logs of user activity on an e-commerce site with the following columns:

- `user_id`: Unique customer IDs
- `event_type`: Type of user activity (e.g., view, cart, purchase)
- `category_code`: Product category
- `brand`: Manufacturer of the product
- `price`: Price of the product in USD
- `event_date`: Date of the event (YYYY-MM-DD)

---

## Part 1: Conversion Funnel

A 3-stage conversion funnel was created to analyze how many users progress from:
1. Product Page Views
2. Cart Openings
3. Purchases

Unique user counts were aggregated at each stage, and two key metrics were calculated:
- **Total Conversion Rate**
- **Step-by-Step Conversion Rate**

See the `conversion_funnel` worksheet in the final spreadsheet or view the funnel screenshot in the `/outputs` folder.

---

## Part 2: Cohort Preparation and Analysis

User purchase activity was filtered and prepared to calculate retention by monthly acquisition cohorts.

Steps included:
- Extracting only purchase events
- Calculating each user's first purchase date
- Deriving `event_month`, `first_purchase_month`, and `cohort_age` values
- Grouping by cohort and age using pivot tables

---

## Part 3: Retention Rates

Cohort data was aggregated to calculate monthly retention rates. Each cohort represents users grouped by their first purchase month. Retention was defined as the percentage of users from each cohort that made a purchase in each subsequent month (cohort age 1–4).

---

## Part 4: Executive Summary and Presentation

- An executive summary outlines key findings and methods.
- Spreadsheet tabs were reordered for clarity:
  1. `Table of Contents`
  2. `Executive Summary`
  3. `conversion_funnel`
  4. `retention_rates`
  








