SELECT* FROM Booking_Master;

CREATE TABLE emp (eid number, ename varchar2(20),DOJ date);

ALTER TABLE employee rename TO emp;

ALTER TABLE emp modify ename  varchar2(15);

ALTER TABLE emp rename COLUMN Employeename TO ename;




DESC emp;
INSERT INTO emp VALUES(10,'Aniket','12-12-2020');
SELECT *FROM EMP;