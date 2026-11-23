USE BankingDB;
INSERT INTO Customers
(CustomerID,FirstName,LastName,Email,Phone,DateOfBirth)
VALUES 
(101,'Rahul','Sharma','rahul@gmail.com','9876543210','1998-04-15');
INSERT INTO Customers
(CustomerID,FirstName,LastName,Email,Phone,DateOfBirth)
VALUES 
(102,'Priya','krish','priya@gmail.com','7339297789','1998-08-04'),
(103,'Krithik','Aryan','krithik@gmail.com','9486351602','2000-08-12'),
(104,'Varsha','Kavin','varsha@gmail.com','9245451592','2000-03-12'),
(105,'Nithin','Sai','nithin@gmail.com','7200125292','1998-04-22');


DESCRIBE Customers;
SELECT * FROM customers;

INSERT INTO Accounts
(AccountID,CustomerID,AccountType,Balance)
VALUES
(201,101,'Savings',100);
INSERT INTO Accounts
(AccountID,CustomerID,AccountType,Balance)
VALUES
(202,102,'Savings',300),
(203,103,'Savings',650),
(204,104,'savings',100);

SELECT * FROM Accounts;
INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 'Chennai Branch', 'Egmore, Chennai', '9876543210'),
(2, 'Coimbatore Branch', 'Gandhipuram, Coimbatore', '9876543211'),
(3, 'Madurai Branch', 'KK Nagar, Madurai', '9876543212'),
(4, 'Salem Branch', 'Hasthampatti, Salem', '9876543213'),
(5, 'Trichy Branch', 'Cantonment, Trichy', '9876543214');

SELECT * from Branches;

INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES
(1, 100000.00, 8.50, '2025-01-01', '2030-01-01'),
(2, 250000.00, 7.25, '2024-06-15', '2029-06-15'),
(3, 500000.00, 9.00, '2023-03-10', '2033-03-10'),
(4, 150000.00, 8.75, '2025-08-20', '2030-08-20'),
(5, 300000.00, 7.50, '2024-11-01', '2034-11-01');
SELECT * FROM Loans;
INSERT INTO Transactions
(TransactionID, TransactionDate, Amount, TransactionType)
VALUES
(101, '2026-01-10', 5000.00, 'Deposit'),
(102, '2026-01-15', 2500.00, 'Withdrawal'),
(103, '2026-02-05', 10000.00, 'Deposit'),
(104, '2026-02-20', 3000.00, 'Transfer'),
(105, '2026-03-01', 1500.00, 'Withdrawal');
SELECT * FROM Transactions;


SET SQL_SAFE_UPDATES=0;

UPDATE Customers
SET Phone='9999999999'
WHERE CustomerID=101;
SELECT * FROM Customers;
UPDATE Customers 
SET Email='rahul.sharma@gmail.com'
WHERE CustomerID=101;
SELECT*FROM Customers;


UPDATE Accounts
SET Balance=300
WHERE AccountID=201;
SELECT * FROM Accounts;

DELETE FROM Transactions
WHERE TransactionID=101;

DELETE FROM Accounts
WHERE AccountID=203;
SELECT * FROM Accounts;







