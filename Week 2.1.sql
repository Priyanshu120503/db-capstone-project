-- Week 2 --  
-- Exercise 1 --

-- Task 1 -- 
CREATE OR REPLACE VIEW OrdersView as SELECT OrderID, Quantity, TotalCost FROM littlelemondb.orders WHERE Quantity > 2;
SELECT * FROM OrdersView;

-- Task 2 --
SELECT CustomerID, FullName, OrderID, TotalCost, Name as ItemName, CourseName
FROM littlelemondb.customers NATURAL JOIN littlelemondb.orders NATURAL JOIN littlelemondb.menus NATURAL JOIN littlelemondb.menuitems 
WHERE TotalCost > 150;

-- Task 3 --
SELECT Name as ItemName
FROM littlelemondb.orders NATURAL JOIN littlelemondb.menus NATURAL JOIN littlelemondb.menuitems
WHERE Quantity > 2;
