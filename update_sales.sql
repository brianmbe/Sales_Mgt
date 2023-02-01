UPDATE sales 
SET 
    product_name = 'A truck', 
    volume = volume * 1000 
WHERE id = 5;


DELETE FROM sales
WHERE id=3
