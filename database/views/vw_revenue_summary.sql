CREATE VIEW analytics.vw_RevenueSummary
AS

SELECT
    d.CalendarYear,
    d.MonthName,
    SUM(f.RevenueAmount) AS TotalRevenue
FROM analytics.FactRevenue f
INNER JOIN analytics.DimDate d
    ON f.DateKey = d.DateKey
GROUP BY
    d.CalendarYear,
    d.MonthName;
GO