# 🛠️ Shopify App Analysis – BI Dashboard Project

## 📌 Objective
Analyze publicly available Shopify App Store data to understand key factors contributing to app success — including review patterns, developer responsiveness, and app popularity. Visualizations were created in Power BI and screenshots were captured to support findings.

## 📊 Tools Used
- **Power BI** (data modeling, DAX, dashboards)
- **Microsoft Excel** (data source: `shopify.xlsx`)
- **DAX** (for calculated columns and metrics)
- **Power BI Visualizations** (KPIs, scatterplots, bar charts, line charts)

## 🗂️ Dataset Overview
The dataset includes 4 tables extracted from the Shopify App Store:
- `apps`: App details including names, developers, ratings
- `apps_categories`: Mapping between apps and categories
- `categories`: App category names
- `reviews`: User ratings, comments, helpfulness, developer responses

## ✅ Project Breakdown

### 📈 Part 1: App Landscape
- **KPI Card**: Total number of unique apps
- **Line Chart**: Total review counts over time (`lastmod`)
- **Scatterplot**: Reviews count vs Average rating, with insights

### 🗣️ Part 2: Reviews
- Created new calculated column: `helpful_reviews = rating * (1 + helpful_count)`
- Built KPI card showing **average helpful reviews**
- Created DAX column `developer_answered`, visualized avg rating by response

### 🧮 Part 3: App Reviews
- Linked `reviews` and `apps` tables on `app_id`
- Visualized total ratings by developer
- Corrected for skew by showing **average helpful reviews**
- Identified **most responsive developers** using filtered bar chart

## 📸 Visuals
All visuals/screenshots are included in the `screenshots/` folder, organized by project part.

## 🧠 Key Insights
- Apps with high review counts don’t always correlate with high ratings
- Developer responsiveness appears to influence ratings positively
- Some developers have inflated ratings due to sheer volume, not quality



