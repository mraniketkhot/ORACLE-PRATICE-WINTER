-- In this file We have used all DDL commands where we have devloped an Event_Management System Schema



-- Event Management System


CREATE TABLE Event_Master (
    Event_Id varchar2(10),Category Varchar2(30), 
    CONSTRAINT pk_eventID PRIMARY KEY(Event_Id)
    );

DESC Event_Master;


CREATE TABLE Venue_Master (
    Venue_Id VARCHAR2 (10), Eevent_Id VARCHAR2(10), Venue_name VARCHAR2(30),location VARCHAR2(50),Venue_Cost NUMBER, Food varchar(10),Capacity NUMBER,Description VARCHAR2(50),
    CONSTRAINT pk_Venue_Id PRIMARY KEY (Venue_Id),
    CONSTRAINT fk_Eevent_Id FOREIGN KEY (Eevent_Id) REFERENCES Event_Master(Event_Id)
 );

 DESC Venue_Master;

CREATE TABLE Customer_Master (
    cust_id varchar2(10),C_first_Name varchar2(30),C_Middle_Name varchar2(30),gender CHAR(1),Street VARCHAR2(30),city VARCHAR2(30),phoneno VARCHAR2(20),Email VARCHAR2(30),
    CONSTRAINT fk_custID PRIMARY KEY(cust_id)
);

 DESC Customer_Master;

 CREATE TABLE Enquiry_Master(
    Enquiry_Id VARCHAR2(10), Cust_Id VARCHAR2(10), Venue_id VARCHAR2(10), Start_date DATE,end_date DATE,Status VARCHAR2(30),
    CONSTRAINT fk_custID2 FOREIGN KEY(Cust_Id) REFERENCES Customer_Master(Cust_Id),

    CONSTRAINT fk_venue_id FOREIGN KEY(Venue_id) REFERENCES Venue_Master(Venue_Id),
    CONSTRAINT pk_Enquiry_Id PRIMARY KEY(Enquiry_Id)
 );
 DESC Enquiry_Master;


CREATE TABLE Booking_Master (
    
    Booking_id VARCHAR2(10) PRIMARY KEY,Enquiry_Id VARCHAR2(10) REFERENCES Enquiry_Master(Enquiry_Id), total_amount NUMBER, mode_of_pay VARCHAR2(30)

);

DESC Booking_Master;

-- DDL Pratice

-- Description 
-- Write a query to add a not null constraint to the wifi column in the Venue_Master table.
ALTER TABLE Venue_Master ADD wifi varchar(10) NOT NULL;

-- Write a query to add a constraint foreign key to the Enquiry Id column in the Booking_Master table.
DESC Enquiry_Master;
ALTER TABLE Booking_Master ADD CONSTRAINT fk_Enquiry_id2 FOREIGN KEY(Enquiry_Id) REFERENCES Enquiry_Master(Enquiry_Id);
-- Write a query to remove all records/Rows from the Booking_Master table.

TRUNCATE TABLE Booking_Master;



