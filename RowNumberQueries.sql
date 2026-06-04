use ShopDB;
GO
-- How to find odd number of records from a table
with CustomersRowNo as (select CustomerID, CustomerName, ROW_NUMBER() over (order by CustomerID) as RowNo
                        from Customers)

select CustomerID, CustomerName from CustomersRowNo where RowNo % 2 = 1;

-- How to find even number of records from a table
with CustomersRowNo as (select CustomerID, CustomerName, ROW_NUMBER() over (order by CustomerID) as RowNo
                        from Customers)

select CustomerID, CustomerName from CustomersRowNo where RowNo % 2 = 0;