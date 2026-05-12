IF OBJECT_ID('analytics.FactRevenue', 'U') IS NOT NULL
DROP TABLE analytics.FactRevenue;
GO

CREATE TABLE analytics.FactRevenue
(
    RevenueKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerKey INT,
    DateKey INT,
    RevenueAmount DECIMAL(18,2),
    InvoiceID INT
);
GO