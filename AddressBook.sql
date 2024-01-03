-- Create Address Book Service Database
-- UC-1
-- Create Address Book Service Database
Create Database AddressBookServiceDB;

-- Show Databases
SHOW Databases;

-- Use AddressBookServiceDB
USE AddressBookServiceDB;

-- Create AddressBook Table
-- UC-2
-- Create a table
Create table AddressBook(
    firstName Varchar(30) NOT NULL,
    lastName Varchar(30) NOT NULL,
    address Varchar(100) NOT NULL,
    city Varchar(50) NOT NULL,
    state Varchar(50) NOT NULL,
    phoneNumber Varchar(20) NOT NULL,
    email Varchar(50) NOT NULL);

-- Describe AddressBook
Describe AddressBook;
-- UC-3
-- Insert data into AddressBook

Insert into AddressBook (firstName, lastName, address, city, state, phoneNumber, email) Values
    ("Yogin", "Pahuja", "Sangrur", "Sangrur", "Punjab", "7009574256", "yoginpahuja69@gmail.com");

Insert into AddressBook (firstName, lastName, address, city, state, phoneNumber, email) Values
    ("Pranav", "Kumar", "Kira", "Bijnor", "Uttar Pradesh", "7246778243", "pranav@gmail.com"),
    ("Chandan", "Kumar", "Kalibag", "Patna", "Bihar", "3454561234", "ch.kumar@outlook.com");

-- Select Data from AddressBook
Select * From AddressBook;
SET SQL_SAFE_UPDATES = 0;
-- UC-4
-- Update Table using First Name
Update AddressBook
    Set phoneNumber='6325417852'
    Where firstName = 'Pranav';

-- Select Data from AddressBook after Update
Select * From AddressBook;
-- UC-5
-- Delete Record using Name
Delete from AddressBook Where firstName='Chandan';

-- Select Data from AddressBook after Deletion
Select * From AddressBook;
-- UC-6
-- Retrieve Persons Belonging to City
Select * From AddressBook Where city='Sangrur';
-- UC-7
-- Size of AddressBook by City or State
Select COUNT(*) From AddressBook where state='Punjab';
Select COUNT(*) From AddressBook where state='Bihar';
-- UC-8
-- Sort the Table based on Name
Select * From AddressBook Order by firstName ASC;
Select * From AddressBook Where city='Sangrur' Order by firstName ASC;
-- UC-9
-- Alter Table to Add Type of Address
Alter table AddressBook
    Add type Varchar(30) Default 'Personal';

-- Describe AddressBook after Alteration
Describe AddressBook;
-- UC-10
-- Count by Type
Select COUNT(*) from AddressBook Where type='Personal';
-- UC-11
-- Ability to Add Friend Type
Insert into AddressBook (firstName, lastName, address, city, state, phoneNumber, email, type) Values
    ("Prem", "Singh", "Kira", "Bijnor", "Uttar Pradesh", "7246778243", "pranav@gmail.com", "Friend"),
    ("Shaurabh", "Kumar", "Patna Junction", "Patna", "Bihar", "3454561234", "ch.kumar@outlook.com", "Friend");
