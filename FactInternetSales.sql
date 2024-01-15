-- Cleansed Fact_Internet_Sales_Table

SELECT [ProductKey]
	  ,[SalesOrderNumber] AS [Order ID]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --	,[PromotionKey]
      --	,[CurrencyKey]
      --	,[SalesTerritoryKey]
      
      --	,[SalesOrderLineNumber]
      --	,[RevisionNumber]
      --	,[OrderQuantity]
      --	,[UnitPrice]
      --	,[ExtendedAmount]
      --	,[UnitPriceDiscountPct]
      --	,[DiscountAmount]
      --	,[ProductStandardCost]
      --	,[TotalProductCost]
      ,[SalesAmount] AS Sales
      --	,[SalesAmount]-[TotalProductCost]-[TaxAmt]-[Freight] AS Profit
      --	,[Freight]
      --	,[CarrierTrackingNumber]
	  --	,[CustomerPONumber]
      --	,[OrderDate]
      --	,[DueDate]
      --	,[ShipDate]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE LEFT(OrderDateKey,4) >= YEAR(GETDATE()) -2
   AND LEFT(OrderDateKey,4) < YEAR(GETDATE())  --Ensures we always get last 2 years of date from extraction
  ORDER BY OrderDate ASC


