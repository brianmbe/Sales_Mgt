/*
SELECT (
    "Nyingambe Brian",
    customer_name,
    product_name,
    volume,
    is_recurring,
    is_disputed
)
FROM sales
WHERE is_recurring = TRUE;

SELECT * FROM sales
WHERE volume > 500
*/

SELECT * FROM sales
WHERE is_recurring IS TRUE OR volume > 60;


-- looking for sales between 2022-11-27 to 2023-02-01 (RANGES)

SELECT * FROM sales
WHERE 
    date_created > '2022-11-27' 
    AND 
    date_created < '2023-02-01';

-- -----OR--------
SELECT * FROM sales
BETWEEN '2022-11-27' AND '2023-02-01';

-- FILTERING TEXT
SELECT * FROM sales
WHERE customer_name = 'Tezra Nattabi';

SELECT * FROM sales
WHERE customer_name <> 'Tezra Nattabi';


-- Find all sales fulfilled <= 5 days after the creation date
SELECT * FROM sales
WHERE date_fulfilled IS NOT NULL;

SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5;

-- days stored as timestamps
SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created);

-- ordering and limiting results
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 10;

SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC, customer_name
LIMIT 10; -- row

-- ordering by offset
SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 10
OFFSET 3;


-- Distinct--
SELECT DISTINCT customer_name FROM sales
ORDER BY customer_name DESC, volume;


CREATE VIEW base_resutl AS SELECT * FROM sales
WHERE volume > 1000;

SELECT customer_name, product_name FROM base_resutl;