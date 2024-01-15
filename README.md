# adventure-works-sales-project
Summary:

This project presents a comprehensive overview of Adventure Works' sales spanning the years 2022 and 2023, involving an in-depth exploration of data cleansing and visualization proficiency. Employing SQL for meticulous data cleaning and Power BI for insightful dashboards, the primary goal of this initiative was to enhance decision-making capabilities through enriched data analysis.


Data Cleaning with SQL:

DimCalendar Table: Cleansing on the Date table aims to retrieve relevant date-related information for the last 2 years as per requirements of the project, i.e. year 2022 and beyond.
DimCustomers Table: Here I use SQL query to retrieve and organizes customer information, including names, gender, first purchase date. I use SQL JOIN to joins DimCustomers table with the DimGeography table to retrieve geographic details from the AdventureWorksDW2022 database.
DimProduct Table: An effort on cleansing DimProduct tables is for improved the reliability of product-related data.
FactInternetSales Table: The core of our analysis, the FactInternetSales table, underwent meticulous cleaning, specifically focusing on the last two years of sales data from the AdventureWorksDW2022 database.


Power BI Dashboard:

Sales Overview Dashboard:
Objective: Evaluate sales performance over two years against the budget.
Key Features: 
1)	Visual comparison of two years' sales against budget for comprehensive insights.
2)	Dynamic charts depicting sales trends, allowing sales manager and representatives to identify patterns and fluctuations.

Customer Details Dashboard: 
Provides a detailed view of customer demographics, preferences, and purchase behavior.

Product Details Dashboard: 
Provides a comprehensive analysis of product sales trends and representations of top-performing products.


