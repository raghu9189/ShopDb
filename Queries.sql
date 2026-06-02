USE ShopDB;
-- SELECT c.[CustomerName] AS CUST_NAME,
--         COUNT(c.[CustomerName]) AS ORDERS_COUNT
-- FROM Orders o
--     LEFT JOIN Customers c
-- ON o.CustomerID = c.CustomerID
--     GROUP BY c.CustomerName;

-- Show products with price > 10000
-- select * from Products where Price > 10000;

-- Show customers from Chennai
-- select  * from Customers where City = 'Chennai';

-- Show orders placed after 2025-01-15
-- select  * from  Orders where OrderDate > '2025-01-15';

-- Show customer name and their orders
-- select c.CustomerName, o.OrderID from Customers c
-- INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Show product name and quantity ordered
-- select p.ProductName, sum(o.Quantity) from Orders o
--     inner join Products p on o.ProductID = p.ProductID
--     group by p.ProductName;

-- Find total orders placed by each customer
-- select c.CustomerID, c.CustomerName, COUNT(o.OrderID) as TotalOrders from Orders o
--     inner join Customers c on o.CustomerID = c.CustomerID
--     group by c.CustomerID, c.CustomerName order by TotalOrders desc;


-- Find total quantity sold for each product
-- select p.ProductName,  sum(o.Quantity) as TotalQuantity from Orders o
--     inner join Products p on o.ProductID = p.ProductID
--     group by p.ProductID, ProductName;

-- Find customers who ordered a Laptop
-- select c.CustomerName, p.ProductName from Customers c
--     inner join Orders o on c.CustomerID = o.CustomerID
--     inner join Products p on o.ProductID = p.ProductID where p.ProductName = 'Laptop';

-- Customers who never placed an order
-- select c.CustomerName, o.OrderID from Customers c
-- left join Orders o on c.CustomerID = o.CustomerID where o.OrderID is null;
-- GO

-- Second highest priced product
-- method 1
-- select  Price from  Products
--               order by  Price desc
--               offset  1 rows fetch next 1 rows only;


-- method 2
-- with RankProductPrices as (
--     select *, dense_rank() over (order by Price desc ) as priceRank from Products
--     )
-- select * from  RankProductPrices where priceRank = 2;

-- Top 3 most sold products
-- select top 3 p.ProductName, sum(o.Quantity) as TotalSold from Products p
--     inner join Orders o on p.ProductID = o.ProductID
--     group by p.ProductName
--     order by TotalSold desc;

-- Find customer who spent the most money
select top 1 c.CustomerName, sum(o.Quantity * p.Price) as MostMoney from Customers c
    inner join Orders o on c.CustomerID = o.CustomerID
    inner join Products p on o.ProductID = p.ProductID
    group by c.CustomerName, c.CustomerID
    order by MostMoney desc;

