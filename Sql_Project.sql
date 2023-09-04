--Create A database And Name It E-Banking
CREATE DATABASE [E-Banking];

---Create Table for Customers with the Appropriate Data Type
create table Customers(
CustomerID int Primary Key,
FirstName varchar(50) NULL,
LastName varchar(50) NULL,
DateOfBirth datetime,
Email varchar(50),
PhoneNumber varchar(20),
Address varchar(50)
)

--Create Table for Loans with The Appropriate Data type
create table Loans(
LoanID int Primary Key,
LoanType varchar(50) NULL,
LoanAmount decimal(8,2),
InterestRate varchar(50),
LoanTerm datetime,
LoanStatus varchar(50),
CustomerID int Foreign Key  REFERENCES Customers(CustomerID)
)


----Populate the table with at least 10 sample Cusotomer Records And 10 Sample Loan Records. Ensure that Customers IDs Are Associated With Thier Respetive
insert into Customers values (100, 'Yusuf', 'Olawale', '1990-02-07', 'yusuf@gmail.com', '09035478943', 'No 24 Queen Street Lagos')
insert into Customers values (101, 'Shedrack', 'Nwoye', '1991-03-07', 'nwoye@gmail.com', '09035478945', 'No 24 Gbagada Lagos')
insert into Customers values (102, 'Solomon', 'Yusuf', '1992-04-07', 'yusuf@gmail.com', '09035478943', 'No 24 Lateef Street Lagos')
insert into Customers values (103, 'Sandra', 'Grace', '1993-05-07', 'yusuf@gmail.com', '09035478943', 'No 24 Grandmate Street Lagos')
insert into Customers values (104, 'Benjamin', 'Love', '1994-06-07', 'yusuf@gmail.com', '09035478943', 'No 24 Muchi Street Lagos')
insert into Customers values (105, 'Femi', 'Peace', '1995-07-07', 'yusuf@gmail.com', '09035478943', 'No 24 Surulere Street Lagos')
insert into Customers values (106, 'Goodluck', 'John', '1996-08-07', 'yusuf@gmail.com', '09035478943', 'No 24 Hope Street Lagos')
insert into Customers values (107, 'PraisGod', 'Chist', '1997-09-07', 'yusuf@gmail.com', '09035478943', 'No 24 Light Street Lagos')
insert into Customers values (108, 'Diamond', 'Mary', '1998-10-07', 'yusuf@gmail.com', '09035478943', 'No 24 GreenField Street Lagos')
insert into Customers values (109, 'Keshaf', 'Ikechukwu', '1999-11-07', 'yusuf@gmail.com', '09035478943', 'No 24 Edo Street Lagos')

insert into Loans values (10,'Personal Loan','130000','30007','2023-01-01','Approved',100)
insert into Loans values (20,'Mortgage','120000','1000','2023-02-01','Pending',101)
insert into Loans values (30,'Auto Loan','350000','3000','2023-03-01','Denied',102)
insert into Loans values (40,'Personal Loan','200000','5903','2023-04-01','Approved',103)
insert into Loans values (50,'Mortgage','400000','45000','2023-05-01','Pending',104)
insert into Loans values (60,'Auto Loan','500000','2000','2023-06-01','Denied',105)
insert into Loans values (70,'Personal Loan','700000','4000','2023-07-01','Approved',106)
insert into Loans values (80,'Mortgage','340000','5000','2023-08-01','Pending',107)
insert into Loans values (90,'Auto loan','600000','3800','2023-09-01','Denied',108)
insert into Loans values (100,'Personal Loan','450000','6500','2023-10-01','Approved',109)


--Write Sql query to retreive the list of All customers
select * from Customers

--Write Sql query to find the total Number of Loans for Each Customer
select b.CustomerID, count(LoanID) as TotalNumberOfLoans
from Loans a
left join Customers b on a.CustomerID = b.CustomerID
group by b.CustomerID

---Write a query to calculate the average Loan Amount
select avg(LoanAmount) as AverageLoanAmount
from Loans

--Write a query to update the status of a specific Loan
update Loans set  LoanStatus = 'Approved' where LoanID = 80

--Write  a query to delete a customer and all assosciated
delete from Customers where CustomerID = '100'




