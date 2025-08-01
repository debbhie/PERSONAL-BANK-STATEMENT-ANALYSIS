-- This scripts loads the UBA bank statement csv file into sql table
-- Make sure you using the right path in your laptop

BULK INSERT Debbhie_Uba
FROM 'C:\Users\DEB OLUFUNSO\Debbhie_Ubastatement.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001',
    TABLOCK
);

