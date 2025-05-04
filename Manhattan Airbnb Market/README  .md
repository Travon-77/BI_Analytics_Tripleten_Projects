
# 🗂️ Spreadsheet Data Analysis: Manhattan Airbnb Market

This project analyzes Airbnb data to help a client make informed investment decisions in the Manhattan vacation rental market. The goal is to identify which **neighborhoods** and **property sizes** are most attractive and how much revenue they can generate.

## 📌 Objectives

- Determine the most attractive neighborhoods and property sizes (bedrooms) for vacation rentals.
- Estimate potential revenue for top-performing listings.

## 🔍 Key Questions Answered

1. Which neighborhoods and property sizes are most attractive for vacation rentals?
2. How much revenue did the top listings generate?

## 📊 Dataset

**Source**: NYC Airbnb Open Data  
- Listings and calendar data
- Main metrics: `number_of_reviews_ltm`, `adjusted_price`, `available`

## 🧹 Data Cleaning Steps

- Cleaned `neighborhood` column: removed inconsistent capitalization and trailing spaces → `neighborhood_clean`
- Cleaned `bedrooms` column: replaced blanks with 0 (studio apartments) → `bedrooms_clean`
- Created a column `top_listing`: flagged listings that matched our target criteria
- Created `revenue_earned`: based on availability and adjusted price

## 📈 Insights

- **Top 3 Attractive Neighborhoods**: Harlem, Hell’s Kitchen, Lower East Side
- **Most Popular Property Sizes**: Studios, 1-Bedrooms, 2-Bedrooms
- **Top Listing ID**: `49946551`  
  Estimated Monthly Revenue: `$29,940`  
  Estimated Annual Revenue: `$359,280`

## 📂 File Structure

- [Raw/Proccesed Data](https://github.com/Travon-77/BI_Analytics_Tripleten_Projects/tree/main/Manhattan%20Airbnb%20Market/Airbnb%20Raw%20Data)
- [Manahattan Airbnb Analysis](https://github.com/Travon-77/BI_Analytics_Tripleten_Projects/tree/main/Manhattan%20Airbnb%20Market/Pivot%20Tables)
- [Project.xlsx](https://docs.google.com/spreadsheets/d/1SImqMSO-0WzPLal9oXJ4AvjD8zbAI5pObslfx3fm1ys/edit?usp=sharing)
- `README.md`: Project documentation

## 🚀 Tools Used

- Microsoft Excel / Google Sheets
- Pivot Tables
- Basic Formulas (`IF`, `SUMIF`, etc.)

## ✅ Final Checklist

- [x] Cleaned and documented all data prep steps
- [x] Added executive summary and table of contents
- [x] Clearly stated assumptions
- [x] Used consistent formatting and styles
- [x] Visualized key insights using bar charts




  








