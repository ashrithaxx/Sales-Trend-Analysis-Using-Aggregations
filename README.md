# Sales Trend Analysis Using Aggregation  
## TASK 6

## Dataset  
- Online Sales Dataset

## Tools  
- SQLite Online  
- SQL (Aggregation, Window Functions, Filtering)

## SQL Operations

### 1. Basic Queries
- Displayed all sales records using `SELECT *`.
- Checked total number of records using `COUNT(*)`.
- Filtered data by year using `WHERE`.
- Sorted monthly results using `ORDER BY`.

### 2. Aggregation
- Calculated monthly revenue using `SUM(Quantity * UnitPrice)`.
- Counted total orders using `COUNT(DISTINCT InvoiceNo)`.
- Grouped results by year and month using `GROUP BY`.
- Calculated return percentage using conditional aggregation (`CASE WHEN`).

### 3. Time-Based Analysis
- Extracted year and month using `strftime()`.
- Analyzed month-wise revenue trends.
- Identified highest revenue month using `ORDER BY DESC LIMIT 1`.
- Computed Month-over-Month growth using `LAG()` window function.

### 4. Ranking & Top Analysis
- Retrieved top 5 products by revenue.
- Calculated country-wise revenue contribution.
- Identified sales volume trends across months.

### 5. Derived Calculations
- Created revenue dynamically using:

Revenue = Quantity × UnitPrice

- Used `CAST()` to convert text columns into numeric values for calculations.

### 6. Performance & Optimization
- Used `GROUP BY` efficiently for aggregation.
- Applied window functions (`LAG`) for advanced time analysis.
- Structured queries for clarity and better performance.

---

## Outcome
- Analyzed monthly revenue and order volume trends.
- Identified peak sales months.
- Measured growth trends.
- Evaluated return rate impact.
- Extracted actionable business insights from transactional data.
