-- Update a product's price by ProductID
UPDATE Products
SET Price = 899.99
WHERE ProductID = 1;

-- Update a customer's email by CustomerID
UPDATE Customers
SET Email = 'new_email@example.com'
WHERE CustomerID = 1;