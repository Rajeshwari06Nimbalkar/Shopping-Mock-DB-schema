-- Input data for Categories table
INSERT INTO Categories (CategoryID, CategoryName)
SELECT 1, 'Electronics' FROM dual
UNION ALL
SELECT 2, 'Clothing' FROM dual
UNION ALL
SELECT 3, 'Books' FROM dual
UNION ALL
SELECT 4, 'Home & Kitchen' FROM dual;

-- Input data for Products table
INSERT INTO Products (ProductID, CustomerID, OrderID, ProductName, Description, Price, StockQuantity, CategoryID)
SELECT 1, 1, 101, 'Smartphone', 'High-end smartphone with advanced features', 799.99, 100, 1 FROM dual UNION ALL
SELECT 2, 2, 101, 'Laptop', 'Powerful laptop for professionals and gamers', 1299.99, 50, 1 FROM dual UNION ALL
SELECT 3, 3, 102, 'T-shirt', 'Comfortable cotton T-shirt in various colors', 19.99, 200, 2 FROM dual UNION ALL
SELECT 4, 4, 102, 'Jeans', 'Slim-fit jeans made from premium denim', 49.99, 150, 2 FROM dual UNION ALL
SELECT 5, 5, 103, 'Java Programming Book', 'Comprehensive guide to Java programming', 29.99, 50, 3 FROM dual UNION ALL
SELECT 6, 6, 103, 'Cookware Set', 'Non-stick cookware set for kitchen essentials', 99.99, 100, 4 FROM dual;

-- Input data for Customers table
INSERT INTO Customers (CustomerID,ProductID, OrderID, FirstName, LastName, Email, PhoneNumber, ShippingAddress, BillingAddress)
SELECT 1,1,101, 'John', 'Doe', 'john@example.com', '123-456-7890', '123 Main St, Anytown, USA', '123 Main St, Anytown, USA' FROM dual UNION ALL
SELECT 2,3,102, 'Jane', 'Smith', 'jane@example.com', '456-789-0123', '456 Oak St, Othertown, USA', '456 Oak St, Othertown, USA' FROM dual;

-- Input data for Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status)
SELECT 101, 1, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 799.99, 'Completed' FROM dual UNION ALL
SELECT 102, 2, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 69.98, 'Pending' FROM dual;

-- Input data for OrderDetails table
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, Price)
SELECT 1, 101, 1, 1, 799.99 FROM dual UNION ALL
SELECT 2, 102, 3, 2, 39.98 FROM dual;


-- Input data for Addresses table
INSERT INTO Addresses (AddressID, CustomerID, AddressType, AddressLine1, City, State, PostalCode, Country)
SELECT 1, 1, 'Shipping', '123 Main St', 'Anytown', 'CA', '12345', 'USA' FROM dual UNION ALL
SELECT 2, 1, 'Billing', '123 Main St', 'Anytown', 'CA', '12345', 'USA' FROM dual UNION ALL
SELECT 3, 2, 'Shipping', '456 Oak St', 'Othertown', 'NY', '67890', 'USA' FROM dual UNION ALL
SELECT 4, 2, 'Billing', '456 Oak St', 'Othertown', 'NY', '67890', 'USA' FROM dual;

-- Input data for Payments table
INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod, TransactionID)
SELECT 201, 101, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 799.99, 'Credit Card', 'ABC123' FROM dual UNION ALL
SELECT 202, 102, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 69.98, 'PayPal', 'XYZ456' FROM dual;

-- Input data for Reviews table
INSERT INTO Reviews (ReviewID, ProductID, CustomerID, Rating, ReviewText, ReviewDate)
SELECT 1, 1, 1, 5, 'Great phone, excellent features!', TO_DATE('2024-04-20', 'YYYY-MM-DD') FROM dual UNION ALL
SELECT 2, 3, 2, 4, 'Nice T-shirts, good quality material.', TO_DATE('2024-04-21', 'YYYY-MM-DD') FROM dual;

-- Input data for Shipping table
INSERT INTO Shipping (ShippingID, ShippingMethod, ShippingRate, Carrier)
SELECT 401, 'Standard Shipping', 5.00, 'UPS' FROM dual UNION ALL
SELECT 402, 'Express Shipping', 15.00, 'FedEx' FROM dual;