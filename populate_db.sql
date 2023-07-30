INSERT INTO littlelemondb.menuitems
VALUES
(1, 'Olives','Starters',15),
(2, 'Flatbread','Starters', 25),
(3, 'Minestrone', 'Starters', 38),
(4, 'Tomato bread','Starters', 48),
(5, 'Falafel', 'Starters', 17),
(6, 'Hummus', 'Starters', 55),
(7, 'Greek salad', 'Main Courses', 55),
(8, 'Bean soup', 'Main Courses', 52),
(9, 'Pizza', 'Main Courses', 75),
(10, 'Greek yoghurt','Desserts', 17),
(11, 'Ice cream', 'Desserts', 16),
(12, 'Cheesecake', 'Desserts', 14),
(13, 'Athens White wine', 'Drinks', 55),
(14, 'Corfu Red Wine', 'Drinks', 50),
(15, 'Turkish Coffee', 'Drinks', 30),
(16, 'Turkish Coffee', 'Drinks', 30),
(17, 'Kabasa', 'Main Courses', 57);


INSERT INTO littlelemondb.menus
VALUES
(1, 1, 'Greek'),
(1, 7, 'Greek'),
(1, 10, 'Greek'),
(1, 13, 'Greek'),
(2, 3, 'Italian'),
(2, 9, 'Italian'),
(2, 12, 'Italian'),
(2, 15, 'Italian'),
(3, 5, 'Turkish'),
(3, 17, 'Turkish'),
(3, 11, 'Turkish'),
(3, 16, 'Turkish');

INSERT INTO littlelemondb.customers
VALUES
(1, 'Marie Bollini', 351252044, 'bollM@g.com'),
(2, 'Adria Poll', 351472048, 'pol@`g.com'),
(3, 'George Gous', 351972589, 'George.g@g.com'),
(4, 'Fatma Maya', 351923569, 'Fatma.m@h.com'),
(5, 'Illeana Kalvai', 351274194, 'ileana.s@e.com'),
(6, 'David Miller', 351584208, 'd.m@g.com');

INSERT INTO littlelemondb.bookings 
VALUES
(1, '2023-01-15 19:00:00', 1, 2),
(2, '2023-02-4 19:00:00', 1, 3),
(3, '2023-03-6 15:00:00', 3, 4),
(4, '2023-04-18 17:30:00', 4, 1),
(5, '2023-05-24 18:30:00', 2, 5),
(6, '2023-01-10 20:00:00', 5, 6);


INSERT INTO littlelemondb.orders
VALUES
(1, 2, 1, '2023-04-19 09:00:00', 2, 286),
(2, 4, 1, '2023-01-19 10:00:00',  3, 337),
(3, 1, 2, '2023-03-05 12:00:00', 1, 137),
(4, 5, 1, '2023-02-28 20:00:00', 1, 240),
(6, 3, 3, '2023-01-15 19:30:00', 1, 40),
(5, 6, 2, '2023-05-12 19:00:00', 1, 143);



INSERT INTO littlelemondb.employees
VALUES
(1, 'Mario Gollini', 351258074, 'Mario.g@littlelemon.com', 'Manager', 70000),
(2, 'Adrian Gollini', 351474048, 'Adrian.g@littlelemon.com', 'Assistant Manager', 65000),
(3, 'Giorgos Dioudis', 351970582, 'Giorgos.d@littlelemon.com', 'Head Chef', 50000),
(4, 'Fatma Kaya', 351963569, 'Fatma.k@littlelemon.com', 'Assistant Chef', 45000),
(5, 'Elena Salvai', 351074198, 'Elena.s@littlelemon.com', 'Head Waiter', 40000),
(6, 'John Millar', 351584508, 'John.m@littlelemon.com', 'Receptionist', 35000);