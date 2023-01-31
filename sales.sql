CREATE DATABASE sales_db;

CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_created DATE,
    date_fulfilled TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_name VARCHAR(250) NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    volume INT CHECK (volume > 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);

INSERT INTO sales ()
VALUES (

),
(),
(),
();
