SELECT
    column1,
    column2,
    CASE WHEN condition
        THEN value1
        ELSE value2
    END AS derived_column
FROM table1 t1
INNER JOIN table2 t2
    ON t1.key = t2.key
WHERE t1.date_column >= START_DT
    AND t2.status = 'ACTIVE'


Read 7665.sql and extract the mapping for the Harsha sheet in Iteration EGWP requirements sheet.xlsx.

Return columns in this exact order:
Sno | Query Gid | Target Column | Level 1 Expression | Level 2 Expression | Source tables | Source fields | Target Table

Rules:
- Query Gid = 7665 for all rows
- Target table = table in INSERT INTO
- Match INSERT columns to SELECT expressions by position
- One row per inserted target column
- Level 1 = direct final SELECT expression
- Level 2 = only if inner query/subquery/CTE expression is reused by outer query
- If no nested query exists, leave Level 2 blank
- Hardcoded values must have blank Source tables and Source fields
- Use only actual source tables and source fields used for that target column
- Keep expressions faithful to SQL
- No guessing
- No extra explanation

Output:
1. Target Table
2. Level 2 Present
3. Source Tables Used
4. Final markdown table
