-- Week 2 --  
-- Exercise 1 --

-- Task 1 -- 
CREATE OR REPLACE VIEW OrdersView as SELECT OrderID, Quantity, TotalCost FROM orders WHERE Quantity > 2;
SELECT * FROM OrdersView;

-- Task 2 --
SELECT CustomerID, FullName, OrderID, TotalCost, Name as ItemName, CourseName
FROM customers NATURAL JOIN orders NATURAL JOIN menus NATURAL JOIN menuitems 
WHERE TotalCost > 150;

-- Task 3 --
SELECT Name as ItemName
FROM orders NATURAL JOIN menus NATURAL JOIN menuitems
WHERE Quantity > 2;
