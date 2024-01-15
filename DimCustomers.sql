SELECT 
  CustomerKey, 
  --	,[GeographyKey]
  --	,[CustomerAlternateKey]
  --	,[Title] 
  C.FirstName AS [First Name],
  --	,[MiddleName]
  C.LastName AS [Last Name], 
  C.FirstName + ' '+ C.LastName AS [Full Name],
  --	,[NameStyle]
  --	,[BirthDate]
  --	,[MaritalStatus]
  --	,[Suffix]
  CASE C.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  --	,[EmailAddress]
  --	,[YearlyIncome]
  --	,[TotalChildren]
  --	,[NumberChildrenAtHome]
  --	,[EnglishEducation]
  --	,[SpanishEducation]
  --	,[FrenchEducation]
  --	,[EnglishOccupation]
  --	,[SpanishOccupation]
  --	,[FrenchOccupation]
  --	,[HouseOwnerFlag]
  --	,[NumberCarsOwned]
  --	,[AddressLine1]
  --	,[AddressLine2]
  --	,[Phone]
  DateFirstPurchase AS [First Purchase Date], 
  --	[CommuteDistance],
  G.City,   
  G.StateProvinceName AS [State / Province], 
  G.EnglishCountryRegionName AS [Country]  
  --Joined in Customer City, State/Province, Country from Geography Table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] C 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] G 
	ON C.[GeographyKey] = G.[GeographyKey] 
ORDER BY 
  C.[CustomerKey] ASC --Ordered list by CustomerKey