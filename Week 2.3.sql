-- Week 2 --
-- Exercise 3 --

-- Task 1 --
SELECT * FROM bookings;

-- Task 2 --
DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //
CREATE PROCEDURE CheckBooking(IN bDate DATE, IN tableNo INT)
BEGIN
IF EXISTS (SELECT TableNo FROM bookings WHERE BookingDate = bDate AND TableNo = tableNo)
THEN SELECT CONCAT('Table ', tableNo, ' is already booked for ', bDate) as 'Booking status';
ELSE SELECT CONCAT('Table ', tableNo, ' is not booked for ', bDate) as 'Booking status';
END IF;
END //
DELIMITER ;

CALL CheckBooking("2022-11-12", 3);


-- Task 3 --
DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //

CREATE PROCEDURE AddValidBooking(IN bD DATE, IN tableNo INT)
BEGIN
START TRANSACTION;
INSERT INTO bookings(BookingDate, TableNo) VALUES (bD, tableNo);
SELECT COUNT(BookingID) FROM bookings WHERE BookingDate = bD AND TableNo = tableNo;
IF ((SELECT COUNT(BookingID) FROM bookings WHERE BookingDate = bD AND TableNo = tableNo) = 2)
THEN 
   SELECT CONCAT('Table ', tableNo, ' is already booked - booking cancelled') AS 'Booking Status';
   ROLLBACK;
ELSE 
   SELECT CONCAT('Table ', tableNo, ' booking confirmed') AS 'Booking Status';
   COMMIT;
END IF;
END//

DELIMITER ;

CALL AddValidBooking('2022-10-11', 2);