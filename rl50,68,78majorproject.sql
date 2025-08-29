-----------------------------------Major Project Advance Databse Techniques-----------------------------------------------------------
--------------------------------------Course Code------CAP-570-----------------------------------------------------------------------
-----------------------------------------1. Bharat Bhushan , RL-RD2442B50,reg-12401414------------------------------------------------
-----------------------------------------2.Divyanshu Kumar ,reg-12403428--------------------------------------------------------------
-----------------------------------------3.Prateek Kumar , reg-12404902--------------------------------------------------------------




create database bank
use  bank
-- Create the Bank table
CREATE TABLE Bank (
 Code INT PRIMARY KEY,
 B_name VARCHAR(50),
 City VARCHAR(50),
 Address VARCHAR(100)
);

-- Create the Branch table
CREATE TABLE Branch (
 Branch_Code INT PRIMARY KEY,
 Branch_name VARCHAR(50),
 Address VARCHAR(100),
 Bank_Code INT,
 FOREIGN KEY (Bank_Code) REFERENCES Bank(Code)
);

-- Create the Customer table
CREATE TABLE Customer (
 Cust_Id INT PRIMARY KEY,
 F_Name VARCHAR(50),
 L_Name VARCHAR(50),
 Mobile_no VARCHAR(15),
 Address VARCHAR(100)
);

-- Create the Account table
CREATE TABLE Account (
 Account_No INT PRIMARY KEY,
 Balance DECIMAL(10, 2),
 Cust_Id INT,
 FOREIGN KEY (Cust_Id) REFERENCES Customer(Cust_Id)
);

-- Create the Employee table
CREATE TABLE Employee (
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR(50),
Mobile_no VARCHAR(15),
Address VARCHAR(100)
);

-- Create the Loan table
CREATE TABLE Loan (
Loan_No INT PRIMARY KEY,
Amount DECIMAL(10, 2),
Cust_Id INT,
Emp_Id INT,
FOREIGN KEY (Cust_Id) REFERENCES Customer(Cust_Id),
FOREIGN KEY (Emp_Id) REFERENCES Employee(Emp_Id)
);

-- Create the Payment table
CREATE TABLE Payment (
Payment_No INT PRIMARY KEY,
Payment_date DATE,
Payment_amount DECIMAL(10, 2),
Loan_No INT,
FOREIGN KEY (Loan_No) REFERENCES Loan(Loan_No)
);


--inserting data
-- Insert data into Bank table
INSERT INTO Bank (Code, B_name, City, Address) VALUES
(1, 'State Bank of India', 'Chandigarh', 'sector 17');


-- Insert data into Branch table
INSERT INTO Branch (Branch_Code, Branch_name, Address, Bank_Code) VALUES
(101, 'Sector 17 Branch', 'SCO 89, Sector 17', 1),
(102, 'Sector 22 Branch', 'SCO 123, Sector 22', 1),
(103, 'Industrial Area Branch', 'Plot 34, Industrial Area Phase I', 1),
(104, 'Sector 35 Branch', 'SCO 56, Sector 35', 1),
(105, 'Manimajra Branch', 'SCO 12, Manimajra', 1),
(106, 'Sector 15 Branch', 'SCO 45, Sector 15', 1),
(107, 'Panchkula Branch', 'SCO 24, Sector 9, Panchkula', 1),
(108, 'Mohali Branch', 'SCF 78, Phase 3B2, Mohali', 1),
(109, 'Sector 44 Branch', 'SCO 102, Sector 44', 1),
(110, 'Sector 20 Branch', 'SCO 67, Sector 20', 1);

-- Insert data into Customer table
INSERT INTO Customer (Cust_Id, F_Name, L_Name, Mobile_no, Address) VALUES
(1, 'Aman', 'Sharma', '9876543210', 'Sector 17, Chandigarh'),
(2, 'Simran', 'Kaur', '9876543211', 'Sector 22, Chandigarh'),
(3, 'Rajesh', 'Verma', '9876543212', 'Industrial Area Phase I, Chandigarh'),
(4, 'Priya', 'Kapoor', '9876543213', 'Sector 35, Chandigarh'),
(5, 'Rahul', 'Gupta', '9876543214', 'Manimajra, Chandigarh'),
(6, 'Anjali', 'Malhotra', '9876543215', 'Sector 15, Chandigarh'),
(7, 'Vikram', 'Singh', '9876543216', 'Sector 9, Panchkula'),
(8, 'Neha', 'Jain', '9876543217', 'Phase 3B2, Mohali'),
(9, 'Karan', 'Mehta', '9876543218', 'Sector 44, Chandigarh'),
(10, 'Pooja', 'Chopra', '9876543219', 'Sector 20, Chandigarh');

-- Insert data into Account table
INSERT INTO Account (Account_No, Balance, Cust_Id) VALUES
(1001, 1500.00, 1),
(1002, 2500.50, 2),
(1003, 3000.75, 3),
(1004, 4000.00, 4),
(1005, 1800.25, 5),
(1006, 2200.00, 6),
(1007, 5500.00, 7),
(1008, 4700.50, 8),
(1009, 3200.00, 9),
(1010, 2900.25, 10);


-- Insert data into Employee table
INSERT INTO Employee (Emp_Id, Emp_name, Mobile_no, Address) VALUES
(1, 'Amit Khurana', '9876501234', 'Sector 17, Chandigarh'),
(2, 'Priya Gupta', '9876505678', 'Sector 22, Chandigarh'),
(3, 'Rohan Malhotra', '9876509101', 'Industrial Area Phase I, Chandigarh'),
(4, 'Sneha Kapoor', '9876501122', 'Sector 35, Chandigarh'),
(5, 'Vikas Sharma', '9876503344', 'Manimajra, Chandigarh'),
(6, 'Ankita Singh', '9876505566', 'Sector 15, Chandigarh'),
(7, 'Rajat Mehta', '9876507788', 'Sector 9, Panchkula'),
(8, 'Nidhi Arora', '9876509900', 'Phase 3B2, Mohali'),
(9, 'Kunal Bansal', '9876504411', 'Sector 44, Chandigarh'),
(10, 'Pooja Chauhan', '9876502233', 'Sector 20, Chandigarh');

-- Insert data into Loan table
INSERT INTO Loan (Loan_No, Amount, Cust_Id, Emp_Id) VALUES
(5001, 5000.00, 1, 1),
(5002, 3000.00, 2, 2),
(5003, 7000.00, 3, 3),
(5004, 4500.50, 4, 4),
(5005, 8000.75, 5, 5),
(5006, 6000.00, 6, 6),
(5007, 5500.25, 7, 7),
(5008, 10000.00, 8, 8),
(5009, 7500.75, 9, 9),
(5010, 9000.00, 10, 10);

-- Insert data into payment table
INSERT INTO Payment (Payment_No, Payment_date, Payment_amount, Loan_No) VALUES
(1, '2024-01-10', 500.00, 5001),
(2, '2024-02-15', 300.00, 5002),
(3, '2024-03-05', 700.00, 5003),
(4, '2024-03-20', 450.00, 5004),
(5, '2024-04-10', 800.50, 5005),
(6, '2024-05-15', 600.00, 5006),
(7, '2024-06-10', 550.25, 5007),
(8, '2024-06-25', 1000.00, 5008),
(9, '2024-07-05', 750.75, 5009),
(10, '2024-07-20', 900.00, 5010);


--8.3 Queries for Data Retrieval
--Find all customers:
SELECT * FROM Customer;

--Find all branches of a specific bank:
SELECT Branch_name, Address FROM Branch WHERE Bank_Code = 1;

--Get account details for a customer:
SELECT Account_No, Balance FROM Account WHERE Cust_Id = 1;

--Get loan details for a specific customer:
SELECT Loan_No, Amount FROM Loan WHERE Cust_Id = 2;

--Update
--Update a customer's mobile number:
UPDATE Customer SET Mobile_no = '555-9999' WHERE Cust_Id = 1;
--Change the balance of an account:
UPDATE Account SET Balance = Balance + 500.00 WHERE Account_No = 1001;
select *from Customer
select *from Account

--Delete
--Delete a customer record:
DELETE FROM Customer WHERE Cust_Id = 8;
--Delete a branch record:
DELETE FROM Branch WHERE Branch_Code = 102;
select*from Branch

--Joins-----joins-------joins------joins-------------joins------------joins-------joins-------joins-------joins---------joins
--Retrieve Customer Information along with Account Balance
SELECT C.F_Name, C.L_Name, C.Mobile_no, A.Balance
FROM Customer C
JOIN Account A ON C.Cust_Id = A.Cust_Id;

--Retrieve Loan Details for a Specific Customer
SELECT L.Loan_No, L.Amount, C.F_Name, C.L_Name
FROM Loan L
JOIN Customer C ON L.Cust_Id = C.Cust_Id
WHERE C.Cust_Id = 1;

--Find the Total Balance in All Accounts
SELECT SUM(Balance) AS Total_Balance
FROM Account;

--Retrieve All Payments Made for a Specific Loan
SELECT P.Payment_No, P.Payment_date, P.Payment_amount
FROM Payment P
JOIN Loan L ON P.Loan_No = L.Loan_No
WHERE L.Loan_No = 5001;

--function-----function-------function-------function-------function-------function-------function-------function-------function--
--function to chech elegiblity of the customers by their date of birth
ALTER TABLE Customer
ADD DOB DATE;

UPDATE Customer
SET DOB = CASE 
            WHEN Cust_Id = 1 THEN '2000-01-15'
            WHEN Cust_Id = 2 THEN '2010-06-20'
            WHEN Cust_Id = 3 THEN '2005-09-30'
            -- Add more conditions as per your data
          END
WHERE Cust_Id IN (1, 2, 3); -- Include all relevant Cust_Id values
----------------------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION IsEligibleToOpenAccount (@DOB DATE)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Age INT;
    DECLARE @Eligibility VARCHAR(50);

    -- Calculate the age based on the Date of Birth
    SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) 
               - CASE WHEN MONTH(@DOB) > MONTH(GETDATE()) OR 
                         (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
                    THEN 1 ELSE 0 END;

    -- Determine eligibility
    IF @Age >= 18
        SET @Eligibility = 'Eligible to Open Account';
    ELSE
        SET @Eligibility = 'Not Eligible to Open Account';

    RETURN @Eligibility;
END;


SELECT Cust_Id, F_Name, L_Name, DOB,
       dbo.IsEligibleToOpenAccount(DOB) AS Eligibility_Status
FROM Customer;


--procedure-----procedure-----procedure-----procedure-----procedure-----procedure-----procedure-----procedure-----procedure--
--procedure to check balance of customer

ALTER TABLE Account
ADD Status INT DEFAULT 1;  -- 1: Active, 0: Closed

CREATE PROCEDURE CheckAndUpdateAccountStatus
AS
BEGIN
    -- Update accounts where the balance is less than 1000
    UPDATE Account
    SET Status = 0 -- Close account
    WHERE Balance < 1000;

    -- Ensure accounts with sufficient balance remain active
    UPDATE Account
    SET Status = 1 -- Activate account
    WHERE Balance >= 1000;

    PRINT 'Account statuses updated successfully.';
END;

EXEC CheckAndUpdateAccountStatus;

SELECT Account_No, Balance, Status
FROM Account;

-- Cursor ---- Cursor --  -- Cursor -- -- Cursor --  -- Cursor --  -- Cursor --  -- Cursor --  -- Cursor --  -- Cursor --  -- Cursor --


--- Cursor Query for Checking and Updating Account Status

DECLARE @AccountNo INT;
DECLARE @Balance DECIMAL(10, 2);
DECLARE @Status INT;

-- Cursor to iterate through each account
DECLARE AccountCursor CURSOR FOR
SELECT Account_No, Balance
FROM Account;

-- Open the cursor
OPEN AccountCursor;

-- Fetch the first record
FETCH NEXT FROM AccountCursor INTO @AccountNo, @Balance;

-- Start the loop
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Determine the status based on the balance
    IF @Balance < 1000
        SET @Status = 0; -- Close the account
    ELSE
        SET @Status = 1; -- Keep the account active

    -- Update the account status
    UPDATE Account
    SET Status = @Status
    WHERE Account_No = @AccountNo;

    -- Fetch the next record
    FETCH NEXT FROM AccountCursor INTO @AccountNo, @Balance;
END;

-- Close and deallocate the cursor
CLOSE AccountCursor;
DEALLOCATE AccountCursor;

PRINT 'Account status updated successfully.';

SELECT Account_No, Balance, Status
FROM Account;


-- Trigger --- -- Trigger --- -- Trigger --- -- Trigger --- -- Trigger --- -- Trigger --- -- Trigger ----- Trigger --- -- Trigger --- 

---Trigger to Update Account Status Based on Balance


CREATE TRIGGER trg_CheckAccountStatus
ON Account
AFTER INSERT, UPDATE
AS
BEGIN
    -- Update status for accounts with a balance below 1000
    UPDATE Account
    SET Status = 0  -- Status 0: Closed
    WHERE Balance < 1000
    AND Account_No IN (SELECT Account_No FROM Inserted);

    -- Update status for accounts with a balance 1000 or above
    UPDATE Account
    SET Status = 1  -- Status 1: Active
    WHERE Balance >= 1000
    AND Account_No IN (SELECT Account_No FROM Inserted);
END;


INSERT INTO Account (Account_No, Balance, Cust_Id)
VALUES (1010, 900.00, 5); -- Balance < 1000, Status should be 0

UPDATE Account
SET Balance = 2000.00
WHERE Account_No = 1010; -- Balance >= 1000, Status should be 1

SELECT Account_No, Balance, Status
FROM Account;





