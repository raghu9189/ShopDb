-- Create Database
CREATE DATABASE ShopDB;
GO

USE ShopDB;
GO

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Email VARCHAR(100)
);
GO
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
GO

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO

INSERT INTO Customers VALUES
(1, 'Raghu', 'Chennai', 'raghu@gmail.com'),
(2, 'Arjun', 'Bangalore', 'arjun@gmail.com'),
(3, 'Priya', 'Hyderabad', 'priya@gmail.com'),
(4, 'Kiran', 'Mumbai', 'kiran@gmail.com'),
(5, 'Sneha', 'Pune', 'sneha@gmail.com');
GO
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mobile', 'Electronics', 25000),
(103, 'Keyboard', 'Accessories', 1500),
(104, 'Mouse', 'Accessories', 700),
(105, 'Monitor', 'Electronics', 12000),
(106, 'Headphones', 'Accessories', 3000);
GO
INSERT INTO Orders VALUES
(1001, 1, 101, 1, '2025-01-10'),
(1002, 1, 104, 2, '2025-01-11'),
(1003, 2, 102, 1, '2025-01-12'),
(1004, 3, 103, 3, '2025-01-13'),
(1005, 4, 105, 1, '2025-01-14'),
(1006, 2, 106, 2, '2025-01-15'),
(1007, 5, 102, 1, '2025-01-16'),
(1008, 3, 101, 1, '2025-01-17'),
(1009, 4, 104, 5, '2025-01-18'),
(1010, 1, 106, 1, '2025-01-19');
GO
