IF OBJECT_ID('analytics.DimMembership', 'U') IS NOT NULL
DROP TABLE analytics.DimMembership;
GO

CREATE TABLE analytics.DimMembership
(
    MembershipKey INT IDENTITY(1,1) PRIMARY KEY,
    MembershipID INT,
    MembershipType VARCHAR(100),
    MembershipStatus VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);
GO