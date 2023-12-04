
CREATE DATABASE IF NOT EXISTS HRSystemDB;

USE HRSystemDB;

DROP TABLE IF EXISTS PersonnelDepartment;

-- Create the PersonnelDepartment table
CREATE TABLE PersonnelDepartment
(
    EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FName NVARCHAR(15) NOT NULL,
    LName NVARCHAR(15) NOT NULL,
    MName NVARCHAR(15) NULL,
    Position VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    HireDate DATE NOT NULL
);

-- Insert sample values into the PersonnelDepartment table
INSERT INTO PersonnelDepartment (FName, MName, LName, Position, Department, Salary, HireDate)
VALUES
('John', 'Doe', 'Smith', 'HR Manager', 'Human Resources', 60000.00, '2022-01-15'),
('Jane', 'Alice', 'Johnson', 'Recruiter', 'Human Resources', 50000.00, '2022-02-01'),
('Robert', 'Michael', 'Davis', 'IT Specialist', 'Information Technology', 70000.00, '2022-03-10'),
('Emily', 'Grace', 'Miller', 'Finance Analyst', 'Finance', 65000.00, '2022-04-05'),
('Daniel', 'William', 'Jones', 'Security Officer', 'Security', 55000.00, '2022-05-20');

-- Select all records from the PersonnelDepartment table
SELECT * FROM PersonnelDepartment;
