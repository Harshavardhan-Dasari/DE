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
