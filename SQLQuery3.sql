CREATE DATABASE RetailStoreDB;
CREATE TABLE Customer ( CustomerID INT PRIMARY KEY IDENTITY, FirstName VARCHAR(40), LastName VARCHAR(50), Email VARCHAR(100), RegistrationDate DATE );
CREATE TABLE Product ( ProductID INT PRIMARY KEY IDENTITY, ProductName VARCHAR(40), Category VARCHAR(50), Price DECIMAL(10,2), Quantity INT );
CREATE TABLE OrderS ( OrderID INT PRIMARY KEY IDENTITY, CustomerID INT, ProductID INT, OrderDate DATE, Quantity INT,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID), FOREIGN KEY (ProductID) REFERENCES Product(ProductID) );
INSERT INTO Customer(FirstName, LastName, Email, RegistrationDate,CustomerID) VALUES 
('FARHA', 'WAEL', 'FARHA@GMAIL.com', '2022-2-22',10),
('MAVI', 'ANTONIOS', 'MAVI@GMAIL.com', '2023-4-24',25),
('YOUSSEF', 'SAMEH', 'JOE@GMAIL.com', '2025-5-25',28), 
('MARIAM', 'MOHAMED', 'MAR45@GMAIL.com', '2023-5-28',15),
('ABDELRAHMAN', 'SALEH', 'ABDELRAHMAN@GMAIL.com', '2023-3-13',9);
INSERT INTO Product (ProductName, Category, Price, Quantity,ProductID) VALUES
('Laptop', 'Electronics', 9999.99, 350,1245), 
('Mobile phone', 'Electronics', 25999.88, 15,1290), 
('Headphones ', 'Electronics', 999.99, 50,1298),
('Ring', 'Accessories', 149.99, 69,5674),
('Bracelet', 'Accessories', 250.00, 89,5642);
INSERT INTO OrderS (CustomerID, ProductID, OrderDate, Quantity,OrderID ) VALUES
(10,1245, '2025-2-19', 1,342),
(15, 1290, '2024-12-4', 2,784),
(25, 1298, '2024-3-6', 3,452),
(9, 5674, '2024-4-4', 2,625),
(28, 1245, '2025-3-24', 1,352);
SELECT * FROM Customer;
SELECT * FROM Product; 
SELECT * FROM OrderS;
SELECT * FROM Customer WHERE RegistrationDate > '2023-6-6';











