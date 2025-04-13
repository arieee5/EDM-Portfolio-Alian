CREATE DATABASE emdb;
USE emdb;

-- TASK 1
CREATE TABLE events_tbl(
event_id INT(3) UNIQUE AUTO_INCREMENT PRIMARY KEY,
event_name VARCHAR(255) NOT NULL
);
DESCRIBE events_tbl;


-- TASK 2
CREATE TABLE attendees_tbl(
attendee_id INT(3) UNIQUE AUTO_INCREMENT PRIMARY KEY,
attendee_name VARCHAR(255) NOT NULL
);
DESCRIBE attendees_tbl;

-- TASK 3
CREATE TABLE event_attendees_tbl(
event_id INT(3),
attendee_id INT(3),
FOREIGN KEY (event_id) REFERENCES events_tbl (event_id),
FOREIGN KEY (attendee_id) REFERENCES attendees_tbl (attendee_id),
PRIMARY KEY (event_id, attendee_id)
);
DESCRIBE event_attendees_tbl;

-- TASK 4
CREATE TABLE event_sponsors_tbl(
sponsor_id INT(3) UNIQUE AUTO_INCREMENT PRIMARY KEY,
event_id INT(3),
sponsor_name VARCHAR(255) NOT NULL,
FOREIGN KEY (event_id) REFERENCES events_tbl (event_id)
);
DESCRIBE event_sponsors_tbl;