DECLARE @StartDate DATE = '2023-01-01';
DECLARE @EndDate DATE = '2030-12-31';

WHILE @StartDate <= @EndDate
BEGIN

    INSERT INTO analytics.DimDate
    (
        DateKey,
        FullDate,
        CalendarYear,
        CalendarMonth,
        MonthName,
        QuarterName
    )
    VALUES
    (
        CONVERT(INT, FORMAT(@StartDate, 'yyyyMMdd')),
        @StartDate,
        YEAR(@StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        CONCAT('Q', DATEPART(QUARTER, @StartDate))
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);

END;
GO