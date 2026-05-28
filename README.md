# Analyze International Debt Statistics

## Objective
Analyze international debt data collected by The World Bank to understand 
how much debt developing countries owe and across which categories. 
Countries take on debt not just for basic necessities but also for 
infrastructure and economic management.

## Dataset
World Bank international debt data stored in a PostgreSQL database.

| Column | Description |
|--------|-------------|
| `country_name` | Name of the country |
| `country_code` | Code representing the country |
| `indicator_name` | Description of the debt indicator |
| `indicator_code` | Code representing the debt indicator |
| `debt` | Value of the debt indicator in current US dollars |

## Tools Used
- SQL (PostgreSQL)

## Questions Answered

**1. How many distinct countries are present in the database?**
- Used COUNT with DISTINCT to find the total number of unique countries

**2. Which country has the highest total debt?**
- Aggregated total debt per country using SUM and returned the top result

**3. Which country has the lowest amount of principal repayments?**
- Filtered for the principal repayment indicator code (DT.AMT.DLXF.CD)
- Used MIN to find the country with the lowest repayment value

## Key Takeaway
The analysis highlights significant disparities in debt levels across 
developing countries, and identifies which nations carry the heaviest 
debt burden as well as which have the smallest repayment obligations 
to the World Bank.

## Source
The World Bank — international debt data
