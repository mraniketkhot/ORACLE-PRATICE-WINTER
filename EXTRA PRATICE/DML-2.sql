-- Insert data into Event_Master
INSERT INTO Event_Master (Event_Id, Category) VALUES ('E001', 'Conference');
INSERT INTO Event_Master (Event_Id, Category) VALUES ('E002', 'Wedding');
INSERT INTO Event_Master (Event_Id, Category) VALUES ('E003', 'Workshop');
INSERT INTO Event_Master (Event_Id, Category) VALUES ('E004', 'Seminar');
INSERT INTO Event_Master (Event_Id, Category) VALUES ('E005', 'Exhibition');

-- Insert data into Venue_Master
INSERT INTO Venue_Master (Venue_Id, Eevent_Id, Venue_name, location, Venue_Cost, Food, Capacity, Description) 
VALUES ('V001', 'E001', 'Grand Conference Hall', 'Downtown', 50000, 'Vegetarian', 200, 'Ideal for corporate events');
INSERT INTO Venue_Master (Venue_Id, Eevent_Id, Venue_name, location, Venue_Cost, Food, Capacity, Description) 
VALUES ('V002', 'E001', 'Tech Symposium Hall', 'Tech Park', 45000, 'Non-Vegetarian', 150, 'Perfect for technology conferences');
INSERT INTO Venue_Master (Venue_Id, Eevent_Id, Venue_name, location, Venue_Cost, Food, Capacity, Description) 
VALUES ('V003', 'E002', 'Crystal Ballroom', 'City Center', 70000, 'Vegetarian', 300, 'Luxurious venue for weddings');
INSERT INTO Venue_Master (Venue_Id, Eevent_Id, Venue_name, location, Venue_Cost, Food, Capacity, Description) 
VALUES ('V004', 'E003', 'Learning Hub', 'University Campus', 20000, 'Vegetarian', 100, 'Educational space for workshops');
INSERT INTO Venue_Master (Venue_Id, Eevent_Id, Venue_name, location, Venue_Cost, Food, Capacity, Description) 
VALUES ('V005', 'E004', 'Modern Seminar Hall', 'Business Park', 30000, 'Mixed', 120, 'Ideal for seminars and talks');

-- Insert data into Customer_Master
INSERT INTO Customer_Master (cust_id, C_first_Name, C_Middle_Name, gender, Street, city, phoneno, Email) 
VALUES ('C001', 'John', 'Doe', 'M', '123 Maple St', 'New York', '1234567890', 'john.doe@example.com');
INSERT INTO Customer_Master (cust_id, C_first_Name, C_Middle_Name, gender, Street, city, phoneno, Email) 
VALUES ('C002', 'Jane', 'Smith', 'F', '456 Oak Ave', 'Los Angeles', '2345678901', 'jane.smith@example.com');
INSERT INTO Customer_Master (cust_id, C_first_Name, C_Middle_Name, gender, Street, city, phoneno, Email) 
VALUES ('C003', 'Alex', 'Johnson', 'M', '789 Pine Rd', 'Chicago', '3456789012', 'alex.johnson@example.com');
INSERT INTO Customer_Master (cust_id, C_first_Name, C_Middle_Name, gender, Street, city, phoneno, Email) 
VALUES ('C004', 'Emma', 'Brown', 'F', '101 Birch Ln', 'San Francisco', '4567890123', 'emma.brown@example.com');
INSERT INTO Customer_Master (cust_id, C_first_Name, C_Middle_Name, gender, Street, city, phoneno, Email) 
VALUES ('C005', 'Michael', 'Davis', 'M', '202 Cedar Blvd', 'Miami', '5678901234', 'michael.davis@example.com');

-- Insert data into Enquiry_Master
INSERT INTO Enquiry_Master (Enquiry_Id, Cust_Id, Venue_id, Start_date, End_date, Status) 
VALUES ('ENQ001', 'C001', 'V001', TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Enquiry_Master (Enquiry_Id, Cust_Id, Venue_id, Start_date, End_date, Status) 
VALUES ('ENQ002', 'C002', 'V003', TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2024-12-07', 'YYYY-MM-DD'), 'Confirmed');
INSERT INTO Enquiry_Master (Enquiry_Id, Cust_Id, Venue_id, Start_date, End_date, Status) 
VALUES ('ENQ003', 'C003', 'V002', TO_DATE('2024-11-20', 'YYYY-MM-DD'), TO_DATE('2024-11-22', 'YYYY-MM-DD'), 'Cancelled');
INSERT INTO Enquiry_Master (Enquiry_Id, Cust_Id, Venue_id, Start_date, End_date, Status) 
VALUES ('ENQ004', 'C004', 'V004', TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2024-12-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Enquiry_Master (Enquiry_Id, Cust_Id, Venue_id, Start_date, End_date, Status) 
VALUES ('ENQ005', 'C005', 'V005', TO_DATE('2024-11-15', 'YYYY-MM-DD'), TO_DATE('2024-11-16', 'YYYY-MM-DD'), 'Confirmed');

-- Insert data into Booking_Master
INSERT INTO Booking_Master (Booking_id, Enquiry_Id, total_amount, mode_of_pay) 
VALUES ('B001', 'ENQ001', 52000, 'Credit Card');
INSERT INTO Booking_Master (Booking_id, Enquiry_Id, total_amount, mode_of_pay) 
VALUES ('B002', 'ENQ002', 75000, 'Bank Transfer');
INSERT INTO Booking_Master (Booking_id, Enquiry_Id, total_amount, mode_of_pay) 
VALUES ('B003', 'ENQ003', 46000, 'Debit Card');
INSERT INTO Booking_Master (Booking_id, Enquiry_Id, total_amount, mode_of_pay) 
VALUES ('B004', 'ENQ004', 30000, 'Cash');
INSERT INTO Booking_Master (Booking_id, Enquiry_Id, total_amount, mode_of_pay) 
VALUES ('B005', 'ENQ005', 68000, 'Online Payment');


SELECT *FROm EMP;

DESC emp;
INSERT INTO EMP Values(10,'Mohit','15-NOV-2020');

INSERT INTO EMP (eid,DOJ)Values(10,'15-NOV-2020');

DELETE FROM EMP WHERE Ename is not null;

Create table TO_CHAR(ename VARCHAR2(10)); 

SELECT *FROM TO_CHAR;

DROP TABLE TO_CHAR;

SELECT MOD(20,10) AS EXP FROM DUAL;