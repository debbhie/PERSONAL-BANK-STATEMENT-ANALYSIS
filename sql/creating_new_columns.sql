-- To categorize narration column by transaction_type
select *,
          Case
		  when Narration like '%POS Pur%' then 'Card Payment'
		  when Narration like '%Cash%' then 'Withdrawal'
		  when Narration like '%Charges%' then 'Bank Charges'
		  when Narration like '%Reversal%' then 'Reversal'
		  when Narration like '%Interest run' then 'Interest'
		  when Narration like '%Stamp Duty%' then 'Stamp Duty'
		  when Narration like '%TOPUP%' then 'Airtime'
		  Else'Transfer'
		  End As Transaction_type
		  from Your_table_name;

-- To categorize narration column by purpse
select *,
	     Case 
		 when Narration like '%FOODCO%' or Narration like '%fish%' or Narration like '%HYDROGENCO%' or Narration like '%eggs%' or Narration like '%beans%' or Narration like '%coke%' OR Narration like '%vanguard%'
		 or Narration like '%viju%' or Narration like '%irish%' or Narration like '%carrot%' or Narration like '%millet%' or Narration like '%spice%' or Narration like '%plantain%' or Narration like '%rice%' or
		 Narration like '%POS pur%' or Narration like '% Aliyu%' or Narration like '%Turank card%' or Narration like '%Rukayat%' or
		 Narration like '%Bilik%' or Narration like '% Muha%' or Narration like '%AKIN%' or Narration like '%Busayo%' or
		 Narration like '%choco%' or Narration like '% ROA%' or Narration like '%Bummy%' or Narration like '%gas%' or
		 Narration like '%Zubairu%' or Narration like '%MD Ventures%' or Narration like '%Adedigold%' or Narration like '%Jeremiah%'or 
		 Narration like '%Bukola%' or Narration like '%Nom First%' or Narration like '%Bambam%' or Narration like '%Okegbo%'Then 'Food'

		 when Narration like '%TNF%' or Narration like '%Oyekunle%' or Narration like '%Adeyemo%' or Narration like '%OPABIYI%' or Narration like '%Turank save%' or Narration like '%Okewusi%' or Narration like '%Zichat%' 
		 or Narration like '%money MKT%' or Narration like '%Paystack%' Then 'Salary'

		 when Narration like '%Isaac%' or Narration like '%goat%' or Narration like '%love%' or Narration like '%fuel%' or Narration like '% business%' or Narration like '%net%' or Narration like '%Kuzzy%' or Narration like '%loan%' Then 'Business'

		 when Narration like '%Hytrust Tradin%' or Narration like '%makeup%' or Narration like '%hair%' or Narration like '%tie%' or Narration like '%lip%' or Narration like '%lash bal%'
		 or Narration like '%Hair class%' or Narration like '%Amella%' or Narration like '%closure%' or Narration like '%Pin%' or Narration like '%brush%' or Narration like '%frontal%' or Narration like '%Emeka%' Then 'Hair/Beauty'

		 when Narration like '%Perona%' or Narration like '%dove%' or Narration like '%facefact%' or Narration like '%Dove%' Then 'Skincare'

		 when Narration like '%Top Up%' or Narration LIKE '%Top%' or Narration like '%Sub%' or Narration like '%SMS charges%' or Narration like '%Stamp%' or Narration like '%Airtime%' or Narration like '%Interest%'Then 'Utilities'
     Else 'Others'
		 End As 'Purpose'
     from Your_table_name;

-- To change the data type to float and also create new column (inflow/outflow)
SELECT *,
       CASE 
           WHEN TRY_CAST(REPLACE(Credit, ',', '') AS FLOAT) > 0 THEN 'Credit'
           WHEN TRY_CAST(REPLACE(Debit, ',', '') AS FLOAT) > 0 THEN 'Debit'
           ELSE 'Interest'
       END AS [Inflow/Outflow]
	   from Your_table_name;


-- To update transaction_type  and purpose column
Update [dbo].Your_table_name
Set Transaction_type =
                  Case
				  when Narration like '%POS Pur%' then 'Card Payment'
		          when Narration like '%Cash%' then 'Withdrawal'
	              when Narration like '%Charges%' then 'Bank Charges'
		          when Narration like '%Reversal%' then 'Reversal'
	              when Narration like '%Interest run' then 'Interest'
	              when Narration like '%Stamp Duty%' then 'Stamp Duty'
	              when Narration like '%TOPUP%' then 'Airtime'
	              Else'Transfer'
	             End

  
-- To change and update date format
UPDATE Debbhie_Uba
SET clean_transaction_date = TRY_CONVERT(date, transaction_date, 103)
WHERE TRY_CONVERT(date, transaction_date, 103) IS NOT NULL;
