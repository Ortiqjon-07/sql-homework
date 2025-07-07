--EASY--
/*
TASKS:
Easy
Define the following terms: data, database, relational database, and table.
List five key features of SQL Server.
What are the different authentication modes available when connecting to SQL Server? (Give at least 2)

SOLUTIONS:
DEFINITIONS
1. DATA
Data refers to raw facts and figures that can be processed to generate meaningful information.
Example: Names, numbers, dates, or any values stored in a computer system.
2. DATABASE
A database is an organized collection of data stored electronically and designed to be easily accessed, managed, and updated.
Example: A customer database storing names, addresses, and phone numbers.
3. RELATIONAL DATABASE
A relational database is a type of database that stores data in tables (relations) where relationships between data are maintained using keys (primay and foreign keys).
Example: SQL Server, MySQL, PostgreSQL.
4. TABLE
A table is a structured set of rows and columns used to store data in a database.
Each row represents a record, and each column represents a field or attribute.

FIVE KEY FEATURES OF SQL SERVER
1. DATA STORAGE AND MANAGEMENT
Stores large volumes of structured data securely with fast access.
2. TRANSACT-SQL (T-SQL)
SQL Server's enhanced version of SQL for querying and manipulating data, including procedural programming features.
3. SECURITY FEATURES
Supports authentication, encryption, and role-based access control.
4. HIGH AVAILABILITY
Features like Always On, Replication, and Failover Clustering ensure system realiability.
5. INTEGRATION SERVICES (SSIS), REPORTING SERVICES (SSRS), ANALYSIS SERVICES (SSAS)
Built-in tools for ETL, reporting, and data analysis.

AUTHENTICATION MODES IN SQL SERVER
1. WINDOWS AUTHENTICATION
Uses the current Windows user account to connect.
Most secure because it integrates with Active Directory.
2. SQL SERVER AUTHENTICATION
Requires a username and password created inside SQL Server.
Useful when Windows Authentication is not possible (e.g., for external apps).

SQL Server can be set to allow:
'Only Windows Authentication'
'Or Mixed Mode (Windows + SQL Server Authentication)'
*/

--MEDIUM--
/*
TASKS:
Create a new database in SSMS named SchoolDB.
Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
Describe the differences between SQL Server, SSMS, and SQL.
SOLUTIONS:
*/
CREATE DATABASE SchoolDB
GO
USE SchoolDB
CREATE TABLE Students (StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT)
INSERT INTO Students (StudentID, Name, Age) VALUES
	(1, 'Frank', 20),
	(2, 'Louis', 22),
	(3, 'Richard', 19),
	(4, 'William', 23);
SELECT * FROM Students;
IN
/*
1. SQL SERVER
A Relational Database Management System (RDBMS) developed by Microsoft.
Main Purpose:
To store, manage, and retrieve data efficiently using SQL.
Key Features:
Can store large datasets in tables.
Supports transactions, stored procedures, triggers, etc.
Includes built-in tools for security, backups, and analytics.
Used in both small and enterprise environments
Analogy:
Like a library where books (data) are stored and organized.

2. SSMS (SQL Server Managenent Studio)
A graphical user interface (GUI) tool for interacting with SQL Server.
Main Purpose:
To write and execute SQL queries, manage databases, and monitor server activity easily.
Key Features:
Query editor for T-SQL
Object Explorer to view databases and tables
Tools for backups, security management, performance monitoring
Analogy:
Like a remote control for managing and using the SQL Server.

3. SQL (Structured Query Language)
A programming language used to communicate with relational databases.
Main Purpose:
To create, read, update, and delete (CRID) data in tables.
Key Features:
SELECT, INSERT UPDATE, DELETE
DDL (CREATE, ALTER, DROP)'
DCL (GRANT, REVOKE), TCL (BEGIN, COMMIT, ROLLBACK)
Analogy:
Like the language you speak to instruct the database what to do.
*/

--HARD--

/*
TASKS:
Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
Write a query to insert three records into the Students table.
Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit) You can find the database from this link :https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak

SOLUTIONS:
*/
-- 1. SQL COMMAND CATEGORIES
-- DQL - DATA QUERY LANGUAGE: USED TO READ DATA
SELECT * FROM Students
-- DML - DATA MANIPULATION LANGUAGE: USED TO ADD, CHANGE, DELETE DATA
INSERT INTO Students (StudentID, Name, Age) VALUES
	(5, 'YEBANAZAVR', 999);
UPDATE Students SET Age = 666 WHERE StudentID = 5;
DELETE FROM Students WHERE StudentID = 5;
-- DDL - DATA DEFINITION LANGUAGE: USED TO CREATE AND MANAGE TABLE STRUCTURES
CREATE TABLE EbanaStudents(
	StudentID INT PRIMARY KEY,
	Name VARCHAR(50),
	Age INT
);
ALTER TABLE EbanaStudents ADD Gender CHAR(1);
DROP TABLE EbanaStudents;
-- DCL - DATA CONTROL LANGUAGE: USED TO CONTROL ACCESS TO THE DATABASE
GRANT SELECT, INSERT ON Students TO user123;
REVOKE INSERT ON Students FROM user123;
-- TCL - TRANSACTION CONTROL LANGUAGE
BEGIN TRANSACTION;
UPDATE Students SET Age = Age + 10 WHERE StudentID = 4;
	-- or to cancel changes !MASHUP HAPPENED HERE
ROLLBACK;

-- 2. INSERT 3 RECORDS INTO STUDENTS TABLE
INSERT INTO Students (StudentID, Name, Age) VALUES
	(5, 'NEW EBANAZAVR', 777),
	(6, 'PEDOZAVR', 18),
	(7, 'XUYOZAVR', 26);
-- TASK 9 IS IN LESSON 3
