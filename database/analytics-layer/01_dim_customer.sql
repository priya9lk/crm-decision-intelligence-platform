IF OBJECT_ID('analytics.DimCustomer', 'U') IS NOT NULL
DROP TABLE analytics.DimCustomer;
GO

CREATE TABLE analytics.DimCustomer
(
    AccountID [uniqueidentifier] NOT NULL,
    AccountName VARCHAR(255),
    PhoneNumber [nvarchar](50) NULL,
    CreatedDate DATE
);
GO