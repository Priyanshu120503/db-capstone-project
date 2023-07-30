-- Week 2 --
-- Exercise 4 --

-- Task 1 --
DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //

CREATE PROCEDURE AddBooking(bID INT, cID INT, bD DATE, tNo INT)
BEGIN
  INSERT INTO bookings VALUES(bID, bD, tNo, cID);
  SELECT 'New booking added' as Confirmation;
END//

DELIMITER ; 
CALL AddBooking(5, 3, "2022-12-30", 4);


-- Task 2 --
DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER //

CREATE PROCEDURE UpdateBooking(bID INT, bD DATE)
BEGIN
  UPDATE bookings SET BookingDate = bD WHERE BookingID = bID;
  SELECT CONCAT('Booking ', bID, ' updated') as Confirmation;
END//

DELIMITER ;

CALL UpdateBooking(5, "2022-12-17");


-- Task 3 --
DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //

CREATE PROCEDURE CancelBooking(bID INT)
BEGIN
  DELETE FROM bookings WHERE BookingID = bID;
  SELECT CONCAT('Booking ', bID, ' cancelled') as Confirmation;
END//

DELIMITER ;

CALL CancelBooking(5);