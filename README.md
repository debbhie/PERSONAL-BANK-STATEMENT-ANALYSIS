
# PERSONAL-BANK-STATEMENT-ANALYSIS

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

Data types were standardized.
The first row was promoted to headers for consistency.

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

YOY indicates a positive net inflow, though year-over-year (YOY) spending decreased by 15.5%, potentially due to reduced discretionary spending and improved savings habits.

# Time-Based Trends
* Peak Debit: October 2024 (~₦2M+)
* Peak Credit: July 2025 (~₦2.5M+)
* Low Activity: August & September 2024, and February 2025

* Debit & Credit Trend (Monthly)
A side-by-side line chart revealed spikes in credit in July and high spending in October and November, linked to wedding invite, chrismas trips and  gifting seasons.

* Total Monthly Outflow vs Inflow
The disparity between December outflow and inflow indicated unsustainable expense patterns, which could be optimized through staggered savings or expense capping.

July 2025 recorded the highest inflow, suggesting a possible salary increase, due to a new job.

## Behavior Analysis
* Most Frequent Transaction Type
Transfers dominated (40.31%), followed by Airtime and Bank charges. This is clearly an overuse of manual transactions and this has caused the bank charges to be high becausse of how frequent the transactions takes place.

* Breakdown of Debit Transactions by Purpose
From the dashboard's pie chart visualization, I extracted the following percentages that represent how I allocated funds over the 12-month period:

|Category	|% of Total Debit	|Interpretation|
|-----------|-------------------|--------------|
|Savings	|40.31%	            |Strong commitment to financial discipline and future planning|
|Food	    | 27.27%            |Substantial portion but it could benefit from structured budgeting or grocery planning|
|Others	    |12.7%	            |Not comeletely sure about the expenses|
|Passport	|4.81%	            |One-off expense but significant|
|Miscellaneous|	3.24%	        |Unplanned expenses|
|Socials/Support|	2.73%	    |Altruistic or social engagements. Gifts to family/friends|
|Utilities	|2.25%	            |Essential and recurring; expected baseline|
|Delivery	|2.08%	            |May indicate convenience spending; can be optimized|
|Hair/Beauty|2.02%	            |Lifestyle expense; worth reviewing frequency|
|Skincare	|1.07%	            |Niche spending category; should be capped|
|Health	    |0.99%              |Lower-than-expected; Hardly any health conditions|
|Business	|0.52%	            |Opportunity to increase if side hustle exists|


* Top 5 Largest Transactions
Major debits were largely classified under "Others", "Food", and "Savings", indicating large one-time or scheduled spending.

|Date	|Purpose	|Amount	    |Actionable Insight|
|-------|-----------|-----------|------------------|
|Oct 2024|	Others	|₦1,000,050	|Investigate "Others" label for context|
|Nov 2024|	Food	|₦829,000	|One huge grocery shopping|
|Nov 2024|	Savings	|₦600,054	|Positive action—schedule recurring instead|
|Dec 2024|	Savings	|₦300,054	|Good follow-up savings behavior|
|Jun 2025|	Delivery|₦216,054	|One large delivery fromthe USA|

## Critical Thinking Highlights
* Categorization Challenge: Many transactions had unclear descriptions. I built a custom classification logic in SQL using pattern matching to accurately group them.
* Root Cause Analysis: I didn’t just identify what I spent, I explored why. For example, a rise in transfers during Q4 aligned with family-related expenses.
* Behavioral Insight: I noticed “inflow spikes” didn’t always result in savings leading to insights about lifestyle inflation.

# KEY INSIGHTS
* High Commitment to Savings (40.31%)
A major chunk of debit transactions went into savings, showing that i have a strong financial discipline. This is the largest category of spending, which is a positive indicator of long-term planning and wealth-building intent.

* Food Spending Is Significantly High (27.27%)
Food accounts for more than one-quarter of total spending. While food is essential, this level may suggests possible overspending.

* "Others" Is the Largest Unclear Category (12.7%)
The third-largest spending category is “Others”, which lacks transparency. This can hide unmonitored or impulse expenses, making it difficult for me to evaluate spending habits clearly.

* Inconsistent Monthly Spending Pattern
Outflows spiked between October and December 2024, and again in June 2025. The inflows also rose dramatically in July 2025, suggesting income fluctuation or ad hoc earnings. This variation might affect monthly budget stability.

* Top 5 Largest Transactions Were Transfers
All top 5 largest debits were processed as transfers, and four of them were for savings, food, or delivery. These high-value items reflect both responsible and lifestyle spending, but also highlight a reliance on manual transfers.

# RECOMMENDATIONS
* Break Down the “Others” Category
Track the process of spending unplanned money. This category should never exceed 5% monthly. The goal is to improve transparency in spending.

* Set a Monthly Cap for Food Expenses
I Aim to keep food expenses under 20% of monthly debit by creating a grocery budget, tracking meal expenses weekly, and identifying which months consistently exceed the threshold. The goal is to Curb lifestyle inflation and reduce leakage.

* Create a Lifestyle Expense KPI Monitor
I will Use Power BI DAX to group delivery, skincare, beauty, social support, and miscellaneous into a "Lifestyle" categoryand Set up alerts or color triggers when this category exceeds 10% of your monthly spend. The Goal is to monitor non-essential spending.

* Automate Savings Instead of Manual Transfers
Since savings are frequent and high-value, i will use automated standing orders to avoid missing goals. And also break savings into short-term (emergency fund) and long-term (investment) categories for better tracking. The Goal is to improve efficiency and goal alignment.

* Smooth Out Monthly Spending with Budget Forecasting
Given the seasonal spikes (Oct–Dec and June), i will implement a forecast or budget planner to preempt high-spend months. The Goal is to create a sustainable monthly financial flow.


