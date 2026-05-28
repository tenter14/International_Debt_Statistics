-- =============================================
-- Project: Analyze International Debt Statistics
-- Source: DataCamp
-- Dataset: international_debt (World Bank)
-- =============================================


-- =============================================
-- Query 1: Number of distinct countries in the database
-- =============================================
SELECT COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;


-- =============================================
-- Query 2: Country with the highest total debt
-- =============================================
SELECT 
    country_name, 
    SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;


-- =============================================
-- Query 3: Country with the lowest principal repayments
-- (indicator code DT.AMT.DLXF.CD)
-- =============================================
SELECT 
    country_name, 
    indicator_name, 
    MIN(debt) AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY country_name, indicator_name
ORDER BY lowest_repayment
LIMIT 1;
