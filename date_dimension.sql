create table if not exists dim_date(
	date_sk int primary key,
    full_date DATE,
    year INT,
    quarter INT,
    month INT,
    month_name VARCHAR(20),
    day INT,
    day_name VARCHAR(20),
    week_of_year INT,
    is_weekend BOOLEAN
);

describe dim_date;
SET SESSION cte_max_recursion_depth = 2000;

INSERT INTO dim_date
SELECT
    DATE_FORMAT(d, '%Y%m%d') AS date_sk,
    d AS full_date,
    YEAR(d) AS year,
    QUARTER(d) AS quarter,
    MONTH(d) AS month,
    MONTHNAME(d) AS month_name,
    DAY(d) AS day,
    DAYNAME(d) AS day_name,
    WEEK(d, 1) AS week_of_year,
    CASE 
        WHEN DAYOFWEEK(d) IN (1,7) THEN TRUE
        ELSE FALSE
    END AS is_weekend
FROM (
    WITH RECURSIVE dates AS (
        SELECT DATE('2011-01-01') AS d
        UNION ALL
        SELECT d + INTERVAL 1 DAY
        FROM dates
        WHERE d < '2014-09-09'
    )
    SELECT d FROM dates
) t;

select * from dim_date;