## Oracle SQL Assignment 1 
- Name: NKUSI william
- ID: 22980 

## Problem Statement

This project demonstrates the setup and management of an Oracle Database system to manage a simple Employee Management System. The system consists of two main tables: Departments and Employees, with a one-to-many relationship between departments and employees. The goal is to execute various SQL operations such as creating tables, inserting data, updating records, performing joins, and managing transactions in Oracle SQL Developer.

Database Setup and Connection
Oracle Database Installation
Oracle Database has been installed locally using Oracle Database 19c, and it is accessed through Oracle SQL Developer.

## Connection Configuration

To connect to the Oracle Database from SQL Developer, the following settings were used:

- Connection Name: SystemAdmin
- Username: system 
- Password: Romeo
- hostname: localhost
- Port: 1521
- Service Name: orcl
## Connection Steps:
- Open Oracle SQL Developer.
- Create a new connection using the above details.
- Click Test to verify the connection, then Connect.
- SQL Operations
## 1. Create Tables

The first step was to create two tables: Departments and Employees, with a foreign key relationship between them.

```bash
CREATE TABLE Departments (
    Department_ID NUMBER PRIMARY KEY,
    Department_Name VARCHAR2(100)
);
```
```bash
CREATE TABLE Employees (
    Employee_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Department_ID NUMBER,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);
```
## 2. Insert Data

Data was inserted into the Departments and Employees tables to populate the database.
```bash
INSERT INTO Departments (Department_ID, Department_Name) VALUES (1, 'HR');
INSERT INTO Departments (Department_ID, Department_Name) VALUES (2, 'Finance');

INSERT INTO Employees (Employee_ID, Name, Department_ID) VALUES (101, 'John Doe', 1);
INSERT INTO Employees (Employee_ID, Name, Department_ID) VALUES (102, 'Jane Smith', 2);

```
## 3. Update Data

An update was performed to correct the name of an employee.
```bash
UPDATE Employees SET Name = 'Jane Doe' WHERE Employee_ID = 102;
```
## 4. Delete Data

A record was deleted from the Employees table.
```bash
DELETE FROM Employees WHERE Employee_ID = 101;
```
## 5. Join Query

To retrieve related data from both the Departments and Employees tables, an inner join was performed.
```bash
SELECT Employees.Name, Departments.Department_Name
FROM Employees
JOIN Departments ON Employees.Department_ID = Departments.Department_ID;
```
## 6. DDL, DML, DCL, and TCL Operations

- DDL (Data Definition Language): CREATE TABLE, ALTER TABLE, DROP TABLE
- DML (Data Manipulation Language): INSERT, UPDATE, DELETE
- DCL (Data Control Language): GRANT, REVOKE
- TCL (Transaction Control Language): COMMIT, ROLLBACK

## 7. Subquery Example
A subquery was used to select employees belonging to the HR department.
```bash
SELECT * FROM Employees WHERE Department_ID = 
(SELECT Department_ID FROM Departments WHERE Department_Name = 'HR');
```
SQL Script
The full SQL script containing the commands above can be found in the file:

sql_test_script.sql
## Screenshots

1. Database Connection:
   
<img width="953" alt="Screenshot 2024-09-25 171528" src="https://github.com/user-attachments/assets/22ee9a13-4dc0-4583-b2c1-c9cb8eed9aa3">

2. SQL Query Execution:
<img width="960" alt="Screenshot 2024-09-26 090738" src="https://github.com/user-attachments/assets/cbc8695e-3c96-4129-9453-5800cbd4c3e4">

3. Conceptual Diagram:
   
A conceptual diagram representing the database structure:


## Conclusion

This project successfully demonstrates the basic SQL operations for managing a database system in Oracle SQL Developer. The system is designed to manage employees and departments, with relationships between the tables established and operations like insertions, updates, deletions, and joins performed to retrieve and manipulate data.
