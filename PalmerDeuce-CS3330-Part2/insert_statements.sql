INSERT INTO stadium (name, location) VALUES
('Cowpokes Stadium', 'Arlington, TX, 76011'),
('The Rodeo', 'Frisco, TX, 75034');

INSERT INTO parking_lot VALUES
('1NW', 'Cowpokes Stadium', 5, 'FALSE'),
('1SW', 'Cowpokes Stadium', 5, 'FALSE'),
('1SE', 'Cowpokes Stadium', 5, 'FALSE'),
('1NE', 'The Rodeo', 5, 'FALSE'),
('1N', 'The Rodeo', 5, 'FALSE'),
('1S', 'The Rodeo', 5, 'FALSE');

INSERT INTO event VALUES
('Cowpokes v. Pirates', '2022-07-04', 'Cowpokes Stadium', 'FALSE', 180),
('Cowpokes v. Missiles', '2022-06-27', 'Cowpokes Stadium', 'FALSE', 180),
('The Nike Opening', '2021-11-22', 'The Rodeo', 'FALSE', 120),
('Highschool Football Game', '2021-11-22', 'The Rodeo', 'FALSE', 180);

INSERT INTO employee VALUES
('111111111', 'Joe', 'John', '1NW'),
('222222222', 'Ally', 'Ann', '1NW'),
('555555555', 'Grace', 'Glad', '1NW'),
('666666666', 'Summer', 'Stan', '1SW'),
('777777777', 'Stanely', 'Stephen', '1SW'),
('888888888', 'Saul', 'Stin', '1SW'),
('999999999', 'Walter', 'Wiggins', '1SE'),
('101010101', 'Paul', 'Parker', '1SE'),
('121212121', 'Stone', 'Strange', '1SE'),
('232323232', 'Chris', 'Calvin', '1NE'),
('343434343', 'Bruce', 'Banner', '1NE'),
('454545454', 'Natasha', 'Natalie', '1NE'),
('565656565', 'Greg', 'Games', '1N'),
('676767676', 'Tyler', 'Thompson', '1N'),
('787878787', 'Bill', 'Brig', '1N'),
('898989898', 'Ryan', 'Ralph', '1S'),
('909090909', 'Fin', 'Finely', '1S'),
('000000000', 'Phil', 'Paul', '1S');

INSERT INTO fan VALUES
('123456789', 'Tom', 'Thomas', '4VME772', 'Highschool Football Game', 'FALSE'),
('123456799', 'Adam', 'Ann', '4VQRS33', 'Highschool Football Game', 'FALSE'),
('123456000', 'Calvin', 'Cal', 'BIG-BOY', 'Highschool Football Game', 'TRUE'),
('123123123', 'Dan', 'David', 'RAD-BOY', 'The Nike Opening', 'FALSE'),
('121212343', 'Liam', 'Lad', 'COOL333', 'The Nike Opening', 'FALSE'),
('345345390', 'Ryan', 'Ron', 'COOL--4', 'The Nike Opening', 'FALSE'),
('304535849', 'Pat', 'Patterson', 'CAR-345', 'Cowpokes v. Missiles', 'FALSE'),
('349590004', 'Will', 'Wilson', '4385GH7', 'Cowpokes v. Missiles', 'FALSE'),
('245666955', 'Andy', 'Andrew', '2HH66YY', 'Cowpokes v. Missiles', 'FALSE'),
('345541212', 'Niel', 'Nelson', 'SE-FH89', 'Cowpokes v. Pirates', 'FALSE'),
('333333333', 'Sam', 'Steven', '2349503', 'Cowpokes v. Pirates', 'FALSE'),
('444444444', 'Jim', 'John', '34890HG', 'Cowpokes v. Pirates', 'FALSE');

INSERT INTO car VALUES
('4VME772', 'Coupe', 'Blue', 1),
('4VQRS33', 'Sedan', 'Black', 2),
('BIG-BOY', 'Hatchback', 'White', 3),
('RAD-BOY', 'Coupe', 'White', 4),
('COOL333', 'Coupe', 'White', 5),
('COOL--4', 'Minivan', 'White', 6),
('CAR-345', 'Van', 'Silver', 7),
('4385GH7', 'SUV', 'Grey', 8),
('2HH66YY', 'Coupe', 'Red', 9),
('SE-FH89', 'Truck', 'Green', 10),
('2349503', 'RV', 'White', 11),
('34890HG', 'Sedan', 'White', 12);

INSERT INTO parking_spot (lot_id, allocation_id, is_handicap) VALUES
('1NW', 7, 'FALSE'),
('1NW', NULL, 'FALSE'),
('1NW', 8, 'FALSE'),
('1NW', 9, 'FALSE'),
('1NW', NULL, 'TRUE'),
('1SW', NULL, 'FALSE'),
('1SW', NULL, 'FALSE'),
('1SW', NULL, 'FALSE'),
('1SW', 10, 'FALSE'),
('1SW', NULL, 'TRUE'),
('1SE', NULL, 'FALSE'),
('1SE', 11, 'FALSE'),
('1SE', 12, 'FALSE'),
('1SE', NULL, 'FALSE'),
('1SE', NULL, 'TRUE'),
('1NE', 4, 'FALSE'),
('1NE', 5, 'FALSE'),
('1NE', 6, 'FALSE'),
('1NE', NULL, 'FALSE'),
('1NE', NULL, 'TRUE'),
('1N', 1, 'FALSE'),
('1N', 2, 'FALSE'),
('1N', NULL, 'FALSE'),
('1N', NULL, 'FALSE'),
('1N', 3, 'TRUE'),
('1S', NULL, 'FALSE'),
('1S', NULL, 'FALSE'),
('1S', NULL, 'FALSE'),
('1S', NULL, 'FALSE'),
('1S', NULL, 'TRUE');

INSERT INTO parking_allocation (lot_id, spot_id, plate_num, emp_ssn, price) VALUES
('1N' ,1, '4VME772', '565656565', 6.75),
('1N', 2, '4VQRS33', '565656565', 6.75),
('1N', 5, 'BIG-BOY', '676767676', 3.35),
('1NE', 1, 'RAD-BOY', '232323232', 6.75),
('1NE', 2, 'COOL333', '232323232', 6.75),
('1NE', 3, 'COOL--4', '232323232', 6.75),
('1NW', 1, 'CAR-345', '111111111', 6.75),
('1NW', 3, '4385GH7', '222222222', 6.75),
('1NW', 4, '2HH66YY', '111111111', 6.75),
('1SW', 4, 'SE-FH89', '666666666', 6.75),
('1SE', 2, '2349503', '999999999', 6.75),
('1SE', 3, '34890HG', '121212121', 6.75);