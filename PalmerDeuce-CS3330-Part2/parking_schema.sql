/* -- docker start CS3330Project-container */
/* -- docker exec -it CS3330Project-container bash */
/* -- mysql --user=root --password=root */
CREATE DATABASE parking_schema;
/* --USE parking_schema; */
CREATE TABLE stadium (
    name VARCHAR(255) NOT NULL PRIMARY KEY,
    location VARCHAR(255),
    capacity INT,
    seats_sold INT
);
CREATE TABLE parking_lot (
    lot_id VARCHAR(4) NOT NULL PRIMARY KEY, 
    stadium_name VARCHAR(255) NOT NULL, 
    num_spots INT, 
    is_full VARCHAR(6),
    CONSTRAINT lot_has_stadium FOREIGN KEY (stadium_name) REFERENCES stadium(name)
);
CREATE TABLE event (
    name VARCHAR(255) NOT NULL, 
    date DATETIME NOT NULL, 
    stadium_name VARCHAR(255), 
    is_soldout VARCHAR(6),
    duration INT,
    PRIMARY KEY (name, date),
    CONSTRAINT event_has_stadium FOREIGN KEY (stadium_name) REFERENCES stadium(name)
);
CREATE TABLE employee (
    ssn VARCHAR(9) NOT NULL PRIMARY KEY, 
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    lot_id VARCHAR(4),
    CONSTRAINT emp_has_lot FOREIGN KEY (lot_id) REFERENCES parking_lot(lot_id)
);
CREATE TABLE fan (
    ssn VARCHAR(9) NOT NULL PRIMARY KEY, 
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    plate_num VARCHAR(7) NOT NULL,
    event_name VARCHAR(255),
    is_handicap VARCHAR(6),
    CONSTRAINT fan_has_event FOREIGN KEY (event_name) REFERENCES event(name)
);
CREATE TABLE car (
    plate_num VARCHAR(7) NOT NULL PRIMARY KEY, 
    type VARCHAR(255),
    color VARCHAR(255),
    allocation_id INT, 
    CONSTRAINT chk_type CHECK (type IN ('Coupe', 'Sedan', 'Hatchback', 'SUV', 'Minivan', 'Van', 'Truck',
'RV'))
);
CREATE TABLE parking_spot (
    spot_id INT NOT NULL AUTO_INCREMENT, 
    lot_id VARCHAR(4) NOT NULL,
    allocation_id INT,
    is_handicap VARCHAR(6),
    PRIMARY KEY(spot_id, lot_id),
    CONSTRAINT spot_has_lot FOREIGN KEY (lot_id) REFERENCES parking_lot(lot_id)
);
CREATE TABLE parking_allocation (
    allocation_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    lot_id VARCHAR(4) NOT NULL,
    spot_id INT NOT NULL, 
    plate_num VARCHAR(7) NOT NULL, 
    emp_ssn VARCHAR(9) NOT NULL, 
    price FLOAT,
    CONSTRAINT allocation_has_plate FOREIGN KEY (plate_num) REFERENCES car(plate_num),
    CONSTRAINT allocation_has_emp FOREIGN KEY (emp_ssn) REFERENCES employee(ssn),
    CONSTRAINT allocation_has_spot FOREIGN KEY (spot_id) REFERENCES parking_spot(spot_id),
    CONSTRAINT allocation_has_lot FOREIGN KEY (lot_id) REFERENCES parking_spot(lot_id)
);
/* --has to be ran after tables are created and populated, otherwise errors will occur */
ALTER TABLE fan
ADD CONSTRAINT fan_has_car FOREIGN KEY (plate_num) REFERENCES car(plate_num);
ALTER TABLE car
ADD CONSTRAINT car_has_allocation FOREIGN KEY (allocation_id) REFERENCES parking_allocation(allocation_id);
ALTER TABLE parking_spot
ADD CONSTRAINT spot_has_allocation FOREIGN KEY (allocation_id) REFERENCES parking_allocation(allocation_id);