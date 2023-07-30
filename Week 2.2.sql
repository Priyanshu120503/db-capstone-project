-- Week 2 --
-- Exrecise 2 --

-- Task 1 --
DROP PROCEDURE IF EXISTS GetMaxQuantity;

CREATE PROCEDURE GetMaxQuantity()
SELECT max(Quantity) as 'Max Quantity in Order' FROM littlelemondb.orders;

CALL GetMaxQuantity();


-- Task 2 --
PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, TotalCost FROM littlelemondb.orders WHERE CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;


-- Task 3 --
DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //
CREATE PROCEDURE CancelOrder(IN orderID INT)
BEGIN
DELETE FROM littlelemondb.orders WHERE OrderID = orderID;
SELECT CONCAT('Order', orderID, ' is cancelled') as Confirmation;
END //

DELIMITER ;

CALL CancelOrder(6);
