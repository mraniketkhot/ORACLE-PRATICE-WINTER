CREATE TABLE Students_A (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);

CREATE TABLE Students_B (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);

INSERT INTO Students_A (ID, Name, Age, Grade) VALUES (101, 'Alice', 20, 'A');
INSERT INTO Students_A (ID, Name, Age, Grade) VALUES  (102, 'Bob', 21, 'B');
INSERT INTO Students_A (ID, Name, Age, Grade) VALUES  (103, 'Charlie', 19, 'A');
INSERT INTO Students_A (ID, Name, Age, Grade) VALUES (104, 'Diana', 22, 'C');


INSERT INTO Students_B (ID, Name, Age, Grade) VALUES(103, 'Charlie', 19, 'A');
INSERT INTO Students_B (ID, Name, Age, Grade) VALUES  (104, 'Diana', 22, 'C');
INSERT INTO Students_B (ID, Name, Age, Grade) VALUES  (105, 'Eve', 20, 'B');
INSERT INTO Students_B (ID, Name, Age, Grade) VALUES  (106, 'Frank', 23, 'A');
SELECT *FROM STUDENTS_B
MINUS 
SELECT *FROM STUDENTS_A;


SELECT *FROM STUDENTS_B
UNION 
SELECT *FROM STUDENTS_A;


SELECT *FROM STUDENTS_B
UNION ALL 
SELECT *FROM STUDENTS_A;

SELECT *FROM STUDENTS_B
INTERSECT
SELECT *FROM STUDENTS_A;

COMMIT;

select *from emp;