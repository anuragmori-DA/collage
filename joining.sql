CREATE DATABASE CompanyDB;

USE CompanyDB;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT
);


CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


INSERT INTO Employees (EmpID, EmpName, DeptID)
VALUES
(1, 'Hil Patel', 101),
(2, 'Parv Patel', 102),
(3, 'Jay Shah', 103),
(4, 'Meet Patel', NULL);


INSERT INTO Departments (DeptID, DepartmentName)
VALUES
(101, 'IT'),
(102, 'HR'),
(104, 'Finance');

select * from Employees;

select * from Departments;

SELECT 
    e.EmpID,
    e.EmpName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID;

SELECT
    e.EmpID,
    e.EmpName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DeptID = d.DeptID;

SELECT 
    e.EmpID,
    e.EmpName,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DeptID = d.DeptID;

SELECT *
FROM Employees e
LEFT JOIN Departments d
ON e.DeptID = d.DeptID

UNION

SELECT *
FROM Employees e
RIGHT JOIN Departments d
ON e.DeptID = d.DeptID;
