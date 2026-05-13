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

ALTER TABLE analytics.FactRevenue
ADD CONSTRAINT FK_FactRevenue_Customer
FOREIGN KEY (CustomerKey)
REFERENCES analytics.DimCustomer(CustomerKey);
GO

ALTER TABLE analytics.FactRevenue
ADD CONSTRAINT FK_FactRevenue_Date
FOREIGN KEY (DateKey)
REFERENCES analytics.DimDate(DateKey);
GO