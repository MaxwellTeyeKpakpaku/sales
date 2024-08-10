SELECT [CustomerKey]
      ,c.[GeographyKey]
      ,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]+ ' '+  COALESCE(LEFT([MiddleName],1)+'.', ' ') +' '+ [LastName] as fullname
      ---,[MiddleName]
      ---,[LastName]
      --[NameStyle]
      ---,[BirthDate]
      ---,[MaritalStatus]
      --,[Suffix]
      ,CASE WHEN [Gender] = 'F' THEN 'Female' ELSE 'Male' END as gender
      ,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
     -- ,[FrenchEducation]
      ,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      ---,[NumberCarsOwned]
      ---,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase],
	  g.City,
	  g.EnglishCountryRegionName
      ---,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
JOIN DimGeography AS g 
ON c.GeographyKey = g.GeographyKey