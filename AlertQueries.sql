-- Add a new column 'Discount' to the Products table
ALTER TABLE Products
ADD Discount DECIMAL(5, 2);

-- Drop the 'PhoneNumber' column from the Customers table
ALTER TABLE Customers
DROP COLUMN PhoneNumber;