SELECT  [DateKey]
      ,[FullDateAlternateKey]  AS date
      ,--[DayNumberOfWeek]
      [EnglishDayNameOfWeek] as day
      ,--[SpanishDayNameOfWeek]
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth] 
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      UPPER(LEFT([EnglishMonthName], 3)) AS month,
      ---,[SpanishMonthName]
      --,[FrenchMonthName]
      --,[MonthNumberOfYear]
      --,[CalendarQuarter]
      [CalendarYear] as year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
