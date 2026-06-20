CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER(10,2)
);

INSERT INTO Accounts VALUES (101, 'Amit', 'SAVINGS', 10000);
INSERT INTO Accounts VALUES (102, 'Priya', 'SAVINGS', 20000);
INSERT INTO Accounts VALUES (103, 'Rahul', 'CURRENT', 15000);
INSERT INTO Accounts VALUES (104, 'Neha', 'SAVINGS', 5000);

COMMIT;

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER(10,2)
);

INSERT INTO Employees VALUES (1, 'Raj', 'IT', 50000);
INSERT INTO Employees VALUES (2, 'Anjali', 'HR', 40000);
INSERT INTO Employees VALUES (3, 'Vikas', 'IT', 60000);
INSERT INTO Employees VALUES (4, 'Pooja', 'Finance', 45000);

COMMIT;
