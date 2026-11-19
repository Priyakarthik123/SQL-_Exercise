create database BankingDB;
use BankingDB;
CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
CREATE TABLE Transactions
(TransactionID INT,
TransactionDate DATE,
Amount DECIMAL,
TransactionType VARCHAR(50)
);
CREATE TABLE Branches
(BranchID INT,
BranchName VARCHAR(50),
BranchAddress VARCHAR(100),
BranchPhone VARCHAR(15)
);
CREATE TABLE AccountBranches
(AssignmentDate DATE
);
CREATE TABLE Loans
(LoanID INT,
LoanAmount DECIMAL,
InterestRate DECIMAL,
StartDate DATE,
EndDate DATE
);
ALTER TABLE Customers
ADD DateOfBirth DATE;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);



describe Customers;
CREATE TABLE Accounts
(AccountID INT,
AccountType VARCHAR(20),
Balance DECIMAL(10,2)
);
ALTER TABLE Accounts
ADD CONSTRAINT Chk_MinBalance
CHECK (Balance<=1000);
ALTER TABLE Customers
ADD CONSTRAINT PK_CUSTOMER_ID
PRIMARY KEY (CustomerID);
ALTER TABLE Accounts
ADD CustomerID int;
ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
ALTER TABLE Customers
MODIFY FirstName VARCHAR(50) NOT NULL;
ALTER TABLE Customers
ADD CONSTRAINT UQ_Email
UNIQUE(Email);

