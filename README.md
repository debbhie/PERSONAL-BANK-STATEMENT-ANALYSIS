# PERSONAL-BANK-STATEMENT-ANALYSIS

# OVERVIEW
This project represents a practical financial analysis initiative I embarked on using my personal UBA bank statement data. My goal was to assess personal financial habits, identify spending inefficiencies, and ultimately build a clear, actionable picture of where my money goes and how to optimize my financial decisions.
This wasn not just a visual exercise, it was a critical thinking process, where I applied analytical reasoning, business intelligence tools, and SQL skills to solve a real-life problems and how i can take control of my spending patterns and increase my financial resilience.


# TOOLS AND TECHNOLOGIES
* SQL : I Used to import the data as a csv file, data cleaning, filtering, aggregation, and preparation.
* Power BI: I Used for data modelling, dashboard creation, DAX measures, visual design, and interactivity.
* Data Source: PDF file from Uba bank which was converted to CSV file.

# DATA PROCESSING


# SKILLS DEMONSTRATED
The analysis involved multiple data processing and analytical techniques, including:

* Data Extraction & Transformation: Converting PDF data and cleaning it in SQL, filtering and preparing the data for analysis.
* Data Modelling: Structuring the data by connecting similar columns to various tables. 
* Data Analysis & Quick Measures: Creating meaningful insights with DAX measures in Power BI.
* Visualization & Reporting: Presenting findings in a clear and actionable format.
* Critical Thinking & Problem-Solving: Identifying areas where my money goes and optimizing my financial decisions.

# OBJECTIVES/ BUSINESS PROBLEMS
* To track and categorize all transactions for a 12-month period.
* Identify spending leaks and optimize cash flow.
* Build an automated dashboard with filters for purpose, time range, and transaction type.
* Apply data storytelling techniques to make insights clear and actionable.

# ANAALYTICAL THOUGHTS AND FRAMES
* I started by exporting my statement data and loading it into a SQL environment. I quickly discovered inconsistencies:
    - Varying date formats
    - Null or ambiguous descriptions
    - Misclassified transaction types

* Key Solutions:
    - Standardized all dates to ISO format.
    - Used CASE WHEN logic to reclassify vague transaction purposes.
    - Removed duplicates and reconciled running balances to validate integrity.

# DATA ANALYSIS
## Exploratory Analysis: Asking the Right Questions
Using SQL summaries, I explored:
* What is my most frequent spending category (purpose)?
* When do I receive the most inflows?
* Is there a correlation between months with high inflow and high spending?
* Which expenses are controllable vs. fixed?
This stage helped shape the KPIs on the dashboard.

## Key Metrics (Top Cards)
| Metric	| Value	  |Insight |
|---------|---------|--------|
|Total Debit|	₦10.65M	| Overall outflow from the account|
|Total Credit|	₦13.31M|	Overall inflow received|
|Net Balance	| ₦2.66M	| Positive surplus—a sign of financial growth|
|YOY Change	| -15.50%	| Reduced spending vs previous year|




