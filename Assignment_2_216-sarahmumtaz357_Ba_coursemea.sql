SELECT TOP (1000) [Customer_ID]
      ,[Name]
      ,[Email]
      ,[Order_ID]
      ,[Product]
      ,[Quantity]
      ,[Price]
      ,[Order_Date]
      ,[Country]
      ,[Address]
      ,[column11]
      ,[column12]
      ,[column13]
      ,[column14]
      ,[column15]
      ,[column16]
      ,[column17]
      ,[column18]
      ,[column19]
      ,[column20]
      ,[column21]
      ,[column22]
      ,[column23]
      ,[column24]
      ,[column25]
      ,[column26]
      ,[column27]
      ,[column28]
      ,[column29]
      ,[column30]
  FROM [ASSIGNMENT_2].[dbo].[Assignment 02 _messy_data_1000_rows]


SELECT COUNT(DISTINCT Customer_ID) AS UniqueCustomers
FROM [ASSIGNMENT_2].[dbo].[Assignment 02 _messy_data_1000_rows];


SELECT COUNT(*) AS MobilesSold
FROM [ASSIGNMENT_2].[dbo].[Assignment 02 _messy_data_1000_rows]
WHERE  Product = 'mobile'; 

SELECT Product, COUNT(*) AS FreqSold
FROM [ASSIGNMENT_2].[dbo].[Assignment 02 _messy_data_1000_rows]
GROUP BY Product
ORDER BY FreqSold DESC;

SELECT Country, COUNT(*) AS OrderCount
FROM [ASSIGNMENT_2].[dbo].[Assignment 02 _messy_data_1000_rows]
GROUP BY Country
ORDER BY OrderCount DESC;

SELECT Customer_ID, COUNT(*) AS Count
FROM [Assignment 02 _messy_data_1000_rows]
GROUP BY Customer_ID
HAVING  COUNT(*) >1;
