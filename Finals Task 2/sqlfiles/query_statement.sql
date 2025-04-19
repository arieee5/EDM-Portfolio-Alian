CREATE DATABASE sasdb;
USE sasdb;

-- STUDENT TABLE
CREATE TABLE student_tbl(
username VARCHAR(50) PRIMARY KEY
);
DESCRIBE student_tbl;

-- ASSIGNMENT TABLE
CREATE TABLE assignment_tbl(
shortname VARCHAR(50) PRIMARY KEY,
due_date DATE NOT NULL,
url VARCHAR(250)
);
DESCRIBE assignment_tbl;

-- SUBMISSION TABLE
CREATE TABLE submission_tbl(
username VARCHAR(50),
shortname VARCHAR(50),
ver_submission INT(3) PRIMARY KEY, 
data_submission TEXT,
submit_date DATE NOT NULL,
FOREIGN KEY (username) REFERENCES student_tbl (username),
FOREIGN KEY (shortname) REFERENCES assignment_tbl (shortname) 
);
DESCRIBE submission_tbl;

