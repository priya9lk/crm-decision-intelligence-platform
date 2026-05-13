IF OBJECT_ID('analytics.DimCampaign', 'U') IS NOT NULL
DROP TABLE analytics.DimCampaign;
GO

CREATE TABLE analytics.DimCampaign
(
    CampaignKey INT IDENTITY(1,1) PRIMARY KEY,
    CampaignID INT,
    CampaignName VARCHAR(255),
    CampaignType VARCHAR(100),
    CampaignStartDate DATE,
    CampaignEndDate DATE
);
GO