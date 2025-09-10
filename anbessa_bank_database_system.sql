use anbessa_bank_database_system;

DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Branches;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Accounts;
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Loans;

CREATE TABLE Customers(
customer_id int PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
middle_name VARCHAR(50),
last_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
phone VARCHAR(15) NOT NULL,
alt_phone VARCHAR(15),
address TEXT
);

CREATE TABLE Branches(
branch_id INT PRIMARY KEY AUTO_INCREMENT,
branch_name VARCHAR(100) NOT NULL,
location VARCHAR(100) NOT NULL
);

CREATE TABLE Employees(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    branch_id INT,
    position VARCHAR(50),
    salary DECIMAL(10.2),
    hire_date DATE NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

CREATE TABLE Accounts(
    account_number VARCHAR(20) PRIMARY KEY,
    customer_id INT NOT NULL,
    account_type ENUM('Savings', 'Current', 'FD') NOT NULL,
    balance DECIMAL(15, 2) DEFAULT 0.00,
    branch_id INT,
    open_date DATE NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY(branch_id) REFERENCES Branches(branch_id)
);

CREATE TABLE Transactions(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_number VARCHAR(20) NOT NULL,
    TYPE ENUM('Deposit', 'Withdrawal', 'Transfer') NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    related_account VARCHAR(20),
    FOREIGN KEY(account_number) REFERENCES Accounts(account_number)
);


CREATE TABLE Loans(
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    TYPE ENUM('Personal', 'Home', 'Car') NOT NULL,
    STATUS ENUM
        ('Pending', 'Approved', 'Rejected') DEFAULT 'Pending',
        start_date DATE NOT NULL,
        end_date DATE,
        FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Accounts VALUES 
('Anbessa123456',1,'Savings',50000.00,1,'2020-01-15'),
('Anbessa123457',2,'Current',120000.00,NULL,'2021-05-20'),
('Anbessa123458',3,'FD',200000.00,3,'2022-03-10'),
('Anbessa123459',4,'Savings',75000.00,4,'2019-11-25'),
('Anbessa123460',5,'Current',90000.00,NULL,'2020-08-14'),
('Anbessa123461',6,'Savings',30000.00,6,'2021-07-30'),
('Anbessa123462',7,'FD',150000.00,7,'2022-02-05'),
('Anbessa123463',8,'Savings',60000.00,8,'2020-09-12'),
('Anbessa123464',9,'Current',180000.00,NULL,'2019-04-18'),
('Anbessa123465',10,'Savings',45000.00,10,'2021-12-01'),
('Anbessa123466',11,'FD',250000.00,11,'2022-06-15'),
('Anbessa123467',12,'Savings',55000.00,12,'2020-03-22'),
('Anbessa123468',13,'Current',80000.00,NULL,'2021-08-10'),
('Anbessa123469',14,'Savings',35000.00,14,'2019-10-05'),
('Anbessa123470',15,'FD',300000.00,15,'2022-04-20'),
('Anbessa123471',16,'Savings',70000.00,16,'2020-11-15'),
('Anbessa123472',17,'Current',95000.00,NULL,'2021-09-25'),
('Anbessa123473',18,'Savings',40000.00,18,'2019-06-30'),
('Anbessa123474',19,'FD',175000.00,19,'2022-07-05'),
('Anbessa123475',20,'Savings',48000.00,20,'2020-12-12');

INSERT INTO Branches 
VALUES 
(1,'Kotak Mumbai Main','Mumbai'),
(2,'Kotak Delhi Central','Delhi'),
(3,'Kotak Bangalore Tech','Bangalore'),
(4,'Kotak Hyderabad City','Hyderabad'),
(5,'Kotak Chennai Coast','Chennai'),
(6,'Kotak Kolkata East','Kolkata'),
(7,'Kotak Pune West','Pune'),
(8,'Kotak Ahmedabad North','Ahmedabad'),
(9,'Kotak Jaipur Heritage','Jaipur'),
(10,'Kotak Lucknow Central','Lucknow'),
(11,'Kotak Chandigarh Sector 17','Chandigarh'),
(12,'Kotak Bhopal Lakeview','Bhopal'),
(13,'Kotak Surat Diamond','Surat'),
(14,'Kotak Nagpur Orange','Nagpur'),
(15,'Kotak Indore Trade','Indore'),
(16,'Kotak Patna Historic','Patna'),
(17,'Kotak Coimbatore Textile','Coimbatore'),
(18,'Kotak Vizag Port','Visakhapatnam'),
(19,'Kotak Thane Suburban','Thane'),
(20,'Kotak Agra Taj','Agra');




INSERT INTO Customers
VALUES 
(1,'Rahul','Kumar','Sharma','rahul@example.com','9876543210',NULL,'Mumbai'),
(2,'Priya',NULL,'Patel','priya@example.com','9876543211','9876543212','Delhi'),
(3,'Amit','Ramesh','Verma','amit@example.com','9876543213',NULL,'Bangalore'),
(4,'Sneha',NULL,'Singh','sneha@example.com','9876543214',NULL,'Hyderabad'),
(5,'Vikram','Raj','Gupta','vikram@example.com','9876543215','9876543216','Chennai'),
(6,'Anjali','Priya','Mehta','anjali@example.com','9876543217',NULL,'Kolkata'),
(7,'Ravi',NULL,'Joshi','ravi@example.com','9876543218','9876543219','Pune'),
(8,'Neha','Sunil','Malhotra','neha@example.com','9876543220',NULL,'Ahmedabad'),
(9,'Sanjay',NULL,'Reddy','sanjay@example.com','9876543221',NULL,'Jaipur'),
(10,'Pooja','Anil','Desai','pooja@example.com','9876543222','9876543223','Lucknow'),
(11,'Arun',NULL,'Iyer','arun@example.com','9876543224',NULL,'Chandigarh'),
(12,'Kavita','Vijay','Rao','kavita@example.com','9876543225','9876543226','Bhopal'),
(13,'Rajesh',NULL,'Thakur','rajesh@example.com','9876543227',NULL,'Surat'),
(14,'Swati','Mohan','Chopra','swati@example.com','9876543228','9876543229','Nagpur'),
(15,'Alok',NULL,'Bansal','alok@example.com','9876543230',NULL,'Indore'),
(16,'Meera','Prakash','Srivastava','meera@example.com','9876543231','9876543232','Patna'),
(17,'Vivek',NULL,'Dubey','vivek@example.com','9876543233',NULL,'Coimbatore'),
(18,'Anita','Suresh','Shukla','anita@example.com','9876543234','9876543235','Visakhapatnam'),
(19,'Rohan',NULL,'Gandhi','rohan@example.com','9876543236',NULL,'Thane'),
(20,'Divya','Rajat','Sinha','divya@example.com','9876543237','9876543238','Agra');


INSERT INTO Employees 
VALUES 
(1,'Aarav','Shah',1,'Manager',75000.00,'2018-01-15'),
(2,'Isha','Patil',2,'Clerk',35000.00,'2020-03-22'),
(3,'Rohan','Mehta',3,NULL,42000.00,'2019-07-10'),
(4,'Priya','Singh',4,'Loan Officer',50000.00,'2021-05-05'),
(5,'Vijay','Kumar',5,NULL,NULL,'2022-01-30'),
(6,'Anaya','Desai',6,'Clerk',32000.00,'2020-11-12'),
(7,'Karan','Joshi',7,'Manager',78000.00,'2017-09-18'),
(8,'Sanya','Reddy',8,'Clerk',34000.00,'2021-08-25'),
(9,'Rahul','Verma',9,NULL,45000.00,'2019-04-14'),
(10,'Neha','Iyer',10,'Loan Officer',52000.00,'2020-06-09'),
(11,'Arjun','Malhotra',11,'Manager',76000.00,'2018-12-01'),
(12,'Mira','Gupta',12,'Clerk',33000.00,'2022-02-15'),
(13,'Amit','Sharma',13,NULL,NULL,'2021-03-20'),
(14,'Pooja','Rao',14,'Clerk',31000.00,'2020-07-07'),
(15,'Vikram','Thakur',15,'Manager',77000.00,'2016-10-10'),
(16,'Anjali','Dubey',16,NULL,48000.00,'2019-11-21'),
(17,'Raj','Sinha',17,'Clerk',34000.00,'2021-09-05'),
(18,'Sunita','Chopra',18,'Loan Officer',51000.00,'2020-04-18'),
(19,'Alok','Bansal',19,'Manager',79000.00,'2015-08-30'),
(20,'Kiran','Srivastava',20,'Clerk',32000.00,'2022-05-12');

INSERT INTO Loans
VALUES 
(1,1,500000.00,'Home','Approved','2022-01-10','2027-01-10'),
(2,2,200000.00,'Personal','Pending','2022-05-15',NULL),
(3,3,300000.00,'Car','Approved','2022-03-20','2025-03-20'),
(4,4,1000000.00,'Home','Pending','2022-07-01',NULL),
(5,5,150000.00,'Personal','Rejected','2022-02-05',NULL),
(6,6,400000.00,'Home','Approved','2022-04-12','2032-04-12'),
(7,7,250000.00,'Car','Pending','2022-06-20',NULL),
(8,8,600000.00,'Home','Approved','2022-08-15','2030-08-15'),
(9,9,100000.00,'Personal','Pending','2022-09-10',NULL),
(10,10,350000.00,'Car','Approved','2022-10-05','2026-10-05'),
(11,11,700000.00,'Home','Pending','2022-11-20',NULL),
(12,12,180000.00,'Personal','Approved','2022-12-01','2024-12-01'),
(13,13,220000.00,'Car','Rejected','2023-01-15',NULL),
(14,14,800000.00,'Home','Approved','2023-02-10','2033-02-10'),
(15,15,120000.00,'Personal','Pending','2023-03-05',NULL),
(16,16,450000.00,'Car','Approved','2023-04-20','2028-04-20'),
(17,17,950000.00,'Home','Pending','2023-05-12',NULL),
(18,18,160000.00,'Personal','Approved','2023-06-01','2025-06-01'),
(19,19,280000.00,'Car','Pending','2023-07-10',NULL),
(20,20,550000.00,'Home','Approved','2023-08-05','2035-08-05');

INSERT INTO Transactions 
VALUES 
(1,'Anbessa123456','Deposit',10000.00,'2025-03-16 10:52:52',NULL),
(2,'Anbessa123457','Withdrawal',5000.00,'2025-03-16 10:52:52',NULL),
(3,'Anbessa123458','Transfer',20000.00,'2025-03-16 10:52:52','Anbessa123456'),
(4,'Anbessa123459','Deposit',15000.00,'2025-03-16 10:52:52',NULL),
(5,'Anbessa123460','Transfer',10000.00,'2025-03-16 10:52:52','Anbessa123457'),
(6,'Anbessa123461','Withdrawal',3000.00,'2025-03-16 10:52:52',NULL),
(7,'Anbessa123462','Deposit',50000.00,'2025-03-16 10:52:52',NULL),
(8,'Anbessa123463','Transfer',12000.00,'2025-03-16 10:52:52','Anbessa123460'),
(9,'Anbessa123464','Withdrawal',8000.00,'2025-03-16 10:52:52',NULL),
(10,'Anbessa123465','Deposit',7000.00,'2025-03-16 10:52:52',NULL),
(11,'Anbessa123466','Transfer',25000.00,'2025-03-16 10:52:52','Anbessa123462'),
(12,'Anbessa123467','Withdrawal',4500.00,'2025-03-16 10:52:52',NULL),
(13,'Anbessa123468','Deposit',9000.00,'2025-03-16 10:52:52',NULL),
(14,'Anbessa123469','Transfer',6000.00,'2025-03-16 10:52:52','Anbessa123465'),
(15,'Anbessa123470','Withdrawal',10000.00,'2025-03-16 10:52:52',NULL),
(16,'Anbessa123471','Deposit',12000.00,'2025-03-16 10:52:52',NULL),
(17,'Anbessa123472','Transfer',15000.00,'2025-03-16 10:52:52','Anbessa123470'),
(18,'Anbessa123473','Withdrawal',2000.00,'2025-03-16 10:52:52',NULL),
(19,'Anbessa123474','Deposit',30000.00,'2025-03-16 10:52:52',NULL),
(20,'Anbessa123475','Transfer',8000.00,'2025-03-16 10:52:52','Anbessa123473');
