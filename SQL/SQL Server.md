# SQL Server

- SQL Server is a relational database management studio developed by Microsoft.
- **Key Features** of SQL Server :  
		- `ACID Properties` - ensures data integrity and reliability.  
		- `Scalability` - support other entry level applications.  
		- `Security` - It has authentication, data encryption, role based access.  
		- `Stored Procedures and Triggers` - helps automate database operations.  
---
# SQL Server Management Studio (SSMS)

 SSMS is a Microsoft application that helps you manage SQL Server and Azure SQL Database. You can use SSMS to configure, monitor, and administer SQL Server and databases. 

What can you do with SSMS? 
- Access, configure, manage, and administer SQL Server, Azure SQL Database, and more
- Deploy, monitor, and upgrade data-tier components
- Build queries and scripts
- Query, design, and manage databases and data warehouses
- Manage Analysis Services objects, such as performing back-ups and processing objects
- Format code according to your preferred style
---
# ACID Properties in SQL Server

**ACID** stands for **Atomicity, Consistency, Isolation, and Durability**. These properties ensure that database transactions are **reliable, accurate, and secure** even in case of system failures.

 **1️. `Atomicity` ("All or Nothing")**
- A transaction should be **fully completed** or **fully rolled back**.
- If one part of the transaction fails, the entire transaction fails, and no changes are made to the database.

 **2️. `Consistency` ("Data Integrity")**
- A transaction should **bring the database from one valid state to another** without violating integrity constraints (like foreign keys, unique constraints, etc.).
- The database should never be left in an **inconsistent state**.

**3️. `Isolation` ("No Dirty Reads")**
- Ensures that **multiple transactions** occurring **at the same time** do not **interfere with each other**.
- SQL Server provides **isolation levels** to control how transactions interact.

**4️. `Durability` ("Permanent Changes")**
- Once a transaction is **committed**, the changes are **permanent**, even if the system crashes.
- SQL Server **writes committed transactions to disk** to ensure durability.
---
# SQL COMMANDS

**SQL Commands are mainly categorized into five categories:**

| CATEGORY | FULL FORM                    | COMMANDS                                                            |
| -------- | ---------------------------- | ------------------------------------------------------------------- |
| `DDL`    | Data Definition Language     | `CREATE`,`DROP`,`ALTER`,`TRUNCATE`                                  |
| `DQL`    | Data Query Language          | `INSERT`,`UPDATE`,`DELETE`                                          |
| `DML`    | Data Manipulation Language   | `COMMIT`,`SAVEPOINT`,`ROLLBACK`,`SET Transaction`,`SET Transaction` |
| `DCL`    | Data Control Language        | `SELECT`                                                            |
| `TCL`    | Transaction Control Language | `GRANT`, `REVOKE`                                                   |
