-- Cleansed DimProduct Table

SELECT p.ProductKey
      ,p.[ProductAlternateKey] AS [Item Code]
      --	,[ProductSubcategoryKey]
      --	,[WeightUnitMeasureCode]
      --	,[SizeUnitMeasureCode]
      ,p.EnglishProductName AS [Product Name]
      --	,[SpanishProductName]
      --	,[FrenchProductName]
      --	,[StandardCost]
      --	,[FinishedGoodsFlag]
	  ,s.EnglishProductSubcategoryName AS [Sub Category]
	  ,c.EnglishProductCategoryName AS Category
      ,p.[Color] AS [Product Color]
      --	,p.SafetyStockLevel
      --	,p.ReorderPoint
      --	,[ListPrice]
      ,p.[Size] AS [Product Size]
      --	,[SizeRange]
      --	,[Weight]
      --	,[DaysToManufacture]
      --	,[ProductLine]
      --	,[DealerPrice]
      --	,[Class]
      --	,[Style]
      ,p.[ModelName] AS [Product Model]
      --	,[LargePhoto]
      --	,[EnglishDescription]
      --	,[FrenchDescription]
      --	,[ChineseDescription]
      --	,[ArabicDescription]
      --	,[HebrewDescription]
      --	,[ThaiDescription]
      --	,[GermanDescription]
      --	,[JapaneseDescription]
      --	,[TurkishDescription]
      --	,[StartDate]
      --	,[EndDate]
      
	  ,ISNULL(p.Status, 'Outdated') AS [Product Status]

  FROM [AdventureWorksDW2022].[dbo].[DimProduct]  p
	
  LEFT JOIN  [AdventureWorksDW2022].[dbo].[DimProductSubcategory] s  ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] c ON s.ProductCategoryKey = c.ProductCategoryKey 

 
 
  

