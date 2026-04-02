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





I will provide a SQL file named 7665.sql.

Your task is to read the SQL and extract metadata into the same structure shown in my Excel template.

Use these rules from the transcript:

1. Identify the target table from the INSERT INTO statement. That is the target table for all rows.
2. For each target column being inserted, create one output row.
3. Extract:
   - Sno
   - Query Gid
   - Target Column
   - Level 1 Expression
   - Level 2 Expression
   - Source tables
   - Source fields
   - Target Table
4. Query Gid is 7665 for every row.
5. If the expression is directly in the final SELECT and there is no nested subquery/CTE involved, put that logic in Level 1 Expression.
6. If there is an inner query, subquery, or CTE that creates an intermediate alias used by an outer query, then:
   - outer expression goes in Level 1 Expression
   - inner expression goes in Level 2 Expression
7. If there is no nested logic, leave Level 2 Expression blank.
8. For hardcoded values like numeric constants or string constants, put the hardcoded value in Level 1 Expression and leave Source tables and Source fields blank.
9. Source tables should list only the actual tables used to derive that target column.
10. Source fields should list only the actual fields used in the expression for that target column.
11. If CASE logic uses indicator fields from one table but the final derived value comes from another table column, include both relevant source tables and fields.
12. Do not guess hidden logic. Only use what is explicitly present in the SQL.
13. Keep SQL expressions as close as possible to the original SQL text.
14. Return the final output as a clean markdown table in this exact column order:

| Sno | Query Gid | Target Column | Level 1 Expression | Level 2 Expression | Source tables | Source fields | Target Table |

