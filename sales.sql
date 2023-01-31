DROP TABLE sales;

CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_created DATE DEFAULT (CURRENT_DATE),
    date_fulfilled DATE DEFAULT (CURRENT_TIMESTAMP),
    customer_name VARCHAR(250) NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    volume NUMERIC(10, 2) NOT NULL CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);

INSERT INTO sales (
    customer_name,
    product_name,
    volume,
    is_recurring
)
VALUES (
    'Nyingambe Brian',
    'Groceries',
    7.99,
    FALSE

),
(
    'Mungujakisa Nixon',
    'Microsoft 365',
    69.99,
    TRUE
),
(
    'Trevour Bwire',
    'Youtube Premium',
    16.99,
    TRUE
),
(
    'Tezra Nattabi',
    'School',
    1500,
    FALSE
);

SELECT * FROM sales;
