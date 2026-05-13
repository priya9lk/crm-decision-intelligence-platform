IF OBJECT_ID('analytics.FactEngagement', 'U') IS NOT NULL
DROP TABLE analytics.FactEngagement;
GO

CREATE TABLE analytics.FactEngagement
(
    EngagementKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerKey INT,
    DateKey INT,
    EventType VARCHAR(100),
    EngagementScore INT
);
GO