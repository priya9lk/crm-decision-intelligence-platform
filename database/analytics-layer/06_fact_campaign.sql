IF OBJECT_ID('analytics.FactCampaign', 'U') IS NOT NULL
DROP TABLE analytics.FactCampaign;
GO

CREATE TABLE analytics.FactCampaign
(
    CampaignFactKey INT IDENTITY(1,1) PRIMARY KEY,
    CampaignKey INT,
    CustomerKey INT,
    DateKey INT,
    CampaignCost DECIMAL(18,2),
    CampaignRevenue DECIMAL(18,2),
    ConversionFlag BIT
);
GO