
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

- `raw_data/`: Unedited original data
- `cleaned_data/`: Cleaned datasets with new columns
- `analysis/`: Pivot tables and charts
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




  








