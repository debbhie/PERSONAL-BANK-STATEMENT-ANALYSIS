-- To get the total debit by purpose
   select Purpose, sum(Debit) as Total_spent        
   from Your_table_name
   where Debit is not null
   group by purpose
   order by Total_spent desc
   
-- To get the total credit and debit
select 
FORMAT(Cast(Transaction_date as Date), 'yyyy-MM') as [Month],
sum(Credit) as Total_credit,
sum(Debit) as Total_debit,
sum(Credit) - sum(Debit) as Net_balance
from Your_table_name
Group by FORMAT(CAST(Transaction_date AS Date), 'yyyy-MM')
Order by [Month]

-- to get most frequent transaction_type
SELECT 
  Transaction_type, 
  COUNT(*) AS Count
FROM Your_table_name
GROUP BY Transaction_type
ORDER BY Count DESC;

-- To get average spend monthly (month to month)
Select 
  Format(Transaction_date, 'yyyy-MM') as [Month],
  AVG(CAST(Debit as float)) as Avg_Spend
From Your_table_name
Where 
  ISNUMERIC(Debit) = 1 AND
  TRY_CAST(Debit as float) IS NOT NULL AND
  Debit > 0
Group by Format(Transaction_date, 'yyyy-MM')
order by [Month]


-- To get Average monthly spend for an entire year.
With MonthlySpend as (
  SELECT 
    Format(Transaction_date, 'yyyy-MM') as [Month],
    Sum(Debit) AS Monthly_Total_Spend
  From Your_table_name
  where Debit > 0
  Group by FORMAT(Transaction_date, 'yyyy-MM')
)

SELECT 
  AVG(Monthly_Total_Spend) AS Avg_Monthly_Spend
FROM MonthlySpend
