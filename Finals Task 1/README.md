# Finals Task 1: MySQL Basics

## Task Description
Design and implement a MySQL database for an event management system.

## Step 1
Create a table named events with the following fields:
- event_id: Unique integer, auto-increment, primary key
- event_name: String (VARCHAR) with up to 255 characters, not null

## Step 2
Create a table named attendees with the following fields:
- attendee_id: Unique integer, auto-increment, primary key
- attendee_name: String (VARCHAR) with up to 255 characters, not null

## Step 3
Create a table named event_attendees with the following fields:
- event_id: integer, foreign key referencing event_id in events
- attendee_id: integer, foreign key referencing attendee_id in attendees

## Step 4
Create a table named event_sponsors with the following fields:
- sponsor_id: Unique integer, auto-increment, primary key
- event_id: integer, foreign key referencing event_id in events
- sponsor_name: String (VARCHAR) with up to 255 characters, not null

# Outputs:
## Query Statements
<img src="images/query_statements.png" alt="Alt Text" width="350" height="400">

## Table Structures
### Events Table
<img src="images/events_tbl.png" alt="Alt Text" width="600" height="250">

### Attendees Table
<img src="images/attendees_tbl.png" alt="Alt Text" width="600" height="250">

### Event Attendees Table
<img src="images/event_attendees_tbl.png" alt="Alt Text" width="600" height="250">

### Event Sponsors Table
<img src="images/event_sponsors_tbl.png" alt="Alt Text" width="600" height="250">

## ER Diagram
<img src="images/er_diagram.png" alt="Alt Text" width="300" height="450">

## SQL Copy of the Database and Table Structures
[See files](https://github.com/arieee5/EDM-Portfolio-Alian/tree/main/Finals%20Task%201/sqlfiles)
