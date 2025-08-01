
# PERSONAL-BANK-STATEMENT-ANALYSIS

# TABLE OF CONTENT
- [OVERVIEW](#overview)
- [TOOL AND TECHNOLOGIES](#tools-and-technologies)
- [DATA PROCESSING](#data-processing)
- [SKILLS DEMONSTRATED](#skills-demonstrated)
- [OBJECTIVES AND BUSINESS PROBLEMS](#objectives-and-business-problems)
- [ANALYTICAL THOUGHTS AND FRAMES](#analytical-thoughts-and-frames)


This repository contains an automated Power BI dashboard that tracks the performance of month expenses. The dashboard updates every 6 months.

## Folders

- `Dashboard/`: Power BI file
- `Reports/`: 6 months progress reports
- `Data/`: Cleaned bank statement

## Monthly Reports

- [Aug_2024-June 2025](Reports/Aug_2024-June_2025.md)

## SQL Queries

- [Bulk Insert to SQL Server](sql/bulk_insert.sql)
- [Creating New Columns/data Cleaning](sql/creating_new_columns.sql)
- [Spending Analysis Query](sql/spending_analysis.sql)




# OVERVIEW
This project represents a practical financial analysis initiative I embarked on using my personal UBA bank statement data. My goal was to assess personal financial habits, identify spending inefficiencies, and ultimately build a clear, actionable picture of where my money goes and how to optimize my financial decisions.
This wasn not just a visual exercise, it was a critical thinking process, where I applied analytical reasoning, business intelligence tools, and SQL skills to solve a real-life problems and how i can take control of my spending patterns and increase my financial resilience.


# TOOLS AND TECHNOLOGIES
* SQL : I Used to import the data as a csv file, data cleaning, filtering, aggregation, and preparation.
* Power BI: I Used for data modelling, dashboard creation, DAX measures, visual design, and interactivity.
* Data Source: PDF file from Uba bank which was converted to CSV file.

# DATA PROCESSING
Data Transformation:
Several steps were taken in both SQL and power BI to ensure the data was clean and well-structured:
* New columns like transaction_type and pupose were created to break down narration column and separate what the money was used for.
* Inflow/Outflow column were used to know the transactions that were debits or credits using one column.
* Data modelling was used to connects various columns and show their relationshps with one another.
  - Date Table to Transaction_date column (one to many relationship)
  - Purpose column to Purpose Table (many to one relationship)
  - Transaction_date column to Top 5 transactions Table (many to one relationship)
    ![uba modelling](https://github.com/user-attachments/assets/ed81438d-5fb2-4d14-9e48-71afa0f4551d)

# SKILLS DEMONSTRATED
The analysis involved multiple data processing and analytical techniques, including:

* Data Extraction & Transformation: Converting PDF data and cleaning it in SQL, filtering and preparing the data for analysis.
* Data Modelling: Structuring the data by connecting similar columns to various tables. 
* Data Analysis & Quick Measures: Creating meaningful insights with DAX measures in Power BI.
* Visualization & Reporting: Presenting findings in a clear and actionable format.
* Critical Thinking & Problem-Solving: Identifying areas where my money goes and optimizing my financial decisions.

# OBJECTIVES AND BUSINESS PROBLEMS
* To track and categorize all transactions for a 12-month period.
* Identify spending leaks and optimize cash flow.
* Build an automated dashboard with filters for purpose, time range, and transaction type.
* Apply data storytelling techniques to make insights clear and actionable.

# ANALYTICAL THOUGHTS AND FRAMES
* I started by exporting my statement data and loading it into a SQL environment. I quickly discovered inconsistencies:
    - Varying date formats
    - Null or ambiguous descriptions
    - Misclassified transaction types

* Key Solutions:
    - Standardized all dates to ISO format.
    - Used CASE WHEN logic to reclassify vague transaction purposes.
    - Removed duplicates and reconciled running balances to validate integrity.
