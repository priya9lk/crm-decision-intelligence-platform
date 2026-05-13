IF OBJECT_ID('analytics.DimCustomer', 'U') IS NOT NULL
DROP TABLE analytics.DimCustomer;
GO

CREATE TABLE analytics.DimCustomer
(
    CustomerKey [uniqueidentifier] NOT NULL,
    AccountName VARCHAR(255),
    CustomerType VARCHAR(100),
    State VARCHAR(100),
    Status VARCHAR(50),
    CreatedDate DATE
);
GO