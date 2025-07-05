SELECT * FROM ecommerce_cosmetics.users;
USE ecommerce_cosmetics;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    EmpName VARCHAR (50),
    Email  VARCHAR (50),
    PhoneNo VARCHAR (15),
    Emp_Address VARCHAR (50),
    Emp_Salary  DECIMAL (10, 2)
);

INSERT INTO Employee (EmpName, Email, PhoneNo, Emp_Address, Emp_Salary) VALUES ('Amit Kumar', 'Amit@gmail.com', '9876544626',  'Noida India', 50000);

INSERT INTO Employee (EmpName, Email, PhoneNo, Emp_Address, Emp_Salary) VALUES ('Priya Singh', 'priya@gmail.com', '3894683487',  'Delhi India', 40000);
INSERT INTO Employee (EmpName, Email, PhoneNo, Emp_Address, Emp_Salary) VALUES ('Ravi Pratap', 'ravi@gmail.com', '6544626',  'Gurgaon India', 30000);
INSERT INTO Employee (EmpName, Email, PhoneNo, Emp_Address, Emp_Salary) VALUES ('Mukesh Chal', 'mukesh@gmail.com', '345356666',  'Meerut India', 35000);
INSERT INTO Employee (EmpName, Email, PhoneNo, Emp_Address, Emp_Salary) VALUES ('Ajay Kumar', 'ajay@gmail.com', '966544626',  'Chennai India', 60000);

SELECT * FROM Employee;
DESCRIBE Employee;

CREATE TABLE Department (
    DeprtID INT,
    DeprtName VARCHAR (50),
    Location  VARCHAR (50)
);

INSERT INTO Department (DeprtID, DeprtName, Location) VALUES (01, 'HR', 'Noida');
INSERT INTO Department (DeprtID, DeprtName, Location) VALUES (02, 'IT', 'Bangalore');
INSERT INTO Department (DeprtID, DeprtName, Location) VALUES (03, 'Finance', 'Hyderabad');
INSERT INTO Department (DeprtID, DeprtName, Location) VALUES (04, 'Sales', 'Kalcutta');
INSERT INTO Department (DeprtID, DeprtName, Location) VALUES (05, 'Marketing', 'Chennai');

SELECT * FROM Employee;

-- Using Subquery in SELECT

SELECT EmpName, Emp_Salary
FROM Employee
WHERE Emp_Salary = (SELECT MAX(Emp_Salary) FROM Employee);

-- Using Sub in Select (AVG)
SELECT EmpName, Emp_Salary
FROM Employee
WHERE Emp_Salary = (SELECT AVG(Emp_Salary) FROM Employee);


