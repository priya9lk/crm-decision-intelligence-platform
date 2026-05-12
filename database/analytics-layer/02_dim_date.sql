IF OBJECT_ID('analytics.DimDate', 'U') IS NOT NULL
DROP TABLE analytics.DimDate;
GO

CREATE TABLE analytics.DimDate
(
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    CalendarYear INT,
    CalendarMonth INT,
    MonthName VARCHAR(20),
    QuarterName VARCHAR(10)
);
GO