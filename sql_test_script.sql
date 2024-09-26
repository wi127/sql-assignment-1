-- Creating the Departments table
CREATE TABLE Departments (
    Department_ID NUMBER PRIMARY KEY,
    Department_Name VARCHAR2(100)
);

-- Creating the Employees table
CREATE TABLE Employees (
    Employee_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Department_ID NUMBER,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

-- Inserting data into the Departments table
INSERT INTO Departments (Department_ID, Department_Name) VALUES (1, 'HR');

-- Inserting data into the Employees table
INSERT INTO Employees (Employee_ID, Name, Department_ID) VALUES (101, 'John Doe', 1);

-- Updating data in the Employees table
UPDATE Employees SET Name = 'Jane Doe' WHERE Employee_ID = 101;

-- Deleting data from the Employees table
DELETE FROM Employees WHERE Employee_ID = 101;

-- Joining Employees and Departments tables to fetch related data
SELECT Employees.Name, Departments.Department_Name
FROM Employees
JOIN Departments ON Employees.Department_ID = Departments.Department_ID;
