-- JOINS:
 
-- Execute the Below queries
 
-- CREATE TABLE Emp as SELECT * FROM scott.emp;
 
-- CREATE TABLE dept (id NUMBER,deptname VARCHAR2(15),loc_id NUMBER);
-- INSERT INTO dept VALUES(10,'ACCOUNTING',100);
-- INSERT INTO dept VALUES(20,'RESEARCH',200);
-- INSERT INTO dept VALUES(30,'SALES',300);
-- INSERT INTO dept VALUES(40,'OPERATIONS',300);
-- INSERT INTO dept VALUES(50,'MARKETING',null);
 
-- CREATE TABLE LOCATION (LOC_ID NUMBER,LOC_NAME VARCHAR2(10));
-- INSERT INTO Location  VALUES (100, 'NEW YORK');
-- INSERT INTO Location  VALUES (200, 'DALLAS');
-- INSERT INTO Location  VALUES (300, 'CHICAGO');
-- INSERT INTO Location  VALUES (400, 'BOSTON');
 
 
-- -------
 
 
-- Use tables Emp,dept,Location
 
-- 1.Display all employees along with their department names.

SELECT *from emp;
SELECT *from dept;

SELECT e.ename, d.dname FROM emp e, dept d;
SELECT e.ename, d.dname FROM emp e NATURAL JOIN dept d;
 
-- 2.List deptno, department name along with their Location name

SELECT d.deptno,d.dname, d.loc  FROM dept d;
 
-- 3.Display all employees name, dept name and the location name

SELECT e.ename, d.dname, loc FROM emp e join dept d on d.deptno=e.deptno;
 
-- 4.Find all deptnames including those who do not belong to any location
 
SELECT d.dname FROM dept d join dept d2 on d.loc = d2.loc;
SELECT *FROM location;

-- 5.Display all departments and their employees (including departments those without employees).
 
-- 6.Display all employees along with their department names and location names, including employees without departments or departments without locations (FULL OUTER JOIN)
 
-- 7.Find the total number of deptnames doesnot have any employee.