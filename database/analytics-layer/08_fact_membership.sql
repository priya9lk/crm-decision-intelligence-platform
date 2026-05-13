IF OBJECT_ID('analytics.FactMembership', 'U') IS NOT NULL
DROP TABLE analytics.FactMembership;
GO

CREATE TABLE analytics.FactMembership
(
    MembershipFactKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerKey INT,
    MembershipKey INT,
    DateKey INT,
    MembershipFee DECIMAL(18,2),
    RenewalFlag BIT
);
GO

ALTER TABLE analytics.FactMembership
ADD CONSTRAINT FK_FactMembership_Customer
FOREIGN KEY (CustomerKey)
REFERENCES analytics.DimCustomer(CustomerKey);
GO

ALTER TABLE analytics.FactMembership
ADD CONSTRAINT FK_FactMembership_Membership
FOREIGN KEY (MembershipKey)
REFERENCES analytics.DimMembership(MembershipKey);
GO