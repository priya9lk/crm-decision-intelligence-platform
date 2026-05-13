IF OBJECT_ID('analytics.FactCampaign', 'U') IS NOT NULL
DROP TABLE analytics.FactCampaign;
GO

CREATE TABLE analytics.FactCampaign
(
    CampaignFactKey INT IDENTITY(1,1) PRIMARY KEY,
    CampaignKey UNIQUEIDENTIFIER,
    CustomerKey UNIQUEIDENTIFIER,
    DateKey INT,
    CampaignCost DECIMAL(18,2),
    CampaignRevenue DECIMAL(18,2),
    ConversionFlag BIT
);
GO

ALTER TABLE analytics.FactCampaign
ADD CONSTRAINT FK_FactCampaign_Customer
FOREIGN KEY (CustomerKey)
REFERENCES analytics.DimCustomer(CustomerKey);
GO

ALTER TABLE analytics.FactCampaign
ADD CONSTRAINT FK_FactCampaign_Date
FOREIGN KEY (DateKey)
REFERENCES analytics.DimDate(DateKey);
GO