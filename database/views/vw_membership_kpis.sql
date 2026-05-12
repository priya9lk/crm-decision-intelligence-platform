CREATE VIEW analytics.vw_MembershipKPIs
AS

SELECT
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Status = 'Active' THEN 1 ELSE 0 END) AS ActiveCustomers
FROM analytics.DimCustomer;
GO