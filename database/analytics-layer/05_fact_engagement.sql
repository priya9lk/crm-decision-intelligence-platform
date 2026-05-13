IF OBJECT_ID('analytics.FactEngagement', 'U') IS NOT NULL
DROP TABLE analytics.FactEngagement;
GO

CREATE TABLE analytics.FactEngagement
(
    EngagementKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerKey UNIQUEIDENTIFIER,
    DateKey INT,
    EventType VARCHAR(100),
    EngagementScore INT
);
GO

ALTER TABLE analytics.FactEngagement
ADD CONSTRAINT FK_FactEngagement_Customer
FOREIGN KEY (CustomerKey)
REFERENCES analytics.DimCustomer(CustomerKey);
GO