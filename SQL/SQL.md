  1.alter,create,insert,drop and all  
  2.defining constraints  
  3.SELCT AND DISTINCT  
  4.WHERE CLAUSE AND LOGICAL OPERARATOR  
  5.RANGE AND LIST OPEREATOR  
  6.NULL NOT NULL WILDCARD  
  7.ORDER BY  
  8.AGGERATE FUNCTIONS  
  9.GROUPBY AND HAVING CLAUSE  
  10.STRING FUNCTONSSS  
  11.DATE FUNCTIONS AND CONVERSION  
  12.COALESCE FUNCTION AND STRING AGG FUNCTION  
  13.JOINTS  
  14.Set Operator   
  15.CASE STATEMENT  
  16.SUBQUERIES  
  17.CTE  
  18.WINDOW FUNCTION  
  19.STORED PROCEDURE  
  20.VIEWS  
  
### 1. **ALTER, CREATE, INSERT, DROP**

```sql
-- CREATE TABLE
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Salary DECIMAL(10,2)
);

-- ALTER TABLE (Add a column)
ALTER TABLE Employees ADD Department VARCHAR(50);

-- INSERT INTO TABLE
INSERT INTO Employees (ID, Name, Age, Salary, Department)
VALUES (1, 'John Doe', 30, 50000.00, 'IT');

-- DROP TABLE
DROP TABLE Employees;
```

---

### 2. **Defining Constraints**

```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL UNIQUE,
    Age INT CHECK (Age >= 18),
    Email VARCHAR(100) UNIQUE
);
```

---

### 3. **SELECT AND DISTINCT**

```sql
-- SELECT all records
SELECT * FROM Users;

-- SELECT DISTINCT values
SELECT DISTINCT Age FROM Users;
```

---

### 4. **WHERE Clause & Logical Operators**

```sql
SELECT * FROM Users WHERE Age >= 25 AND Email LIKE '%@gmail.com';
```

---

### 5. **RANGE AND LIST Operator**

```sql
-- BETWEEN (Range Operator)
SELECT * FROM Users WHERE Age BETWEEN 25 AND 40;

-- IN (List Operator)
SELECT * FROM Users WHERE Age IN (25, 30, 35);
```

---

### 6. **NULL, NOT NULL, Wildcard**

```sql
-- Checking for NULL
SELECT * FROM Users WHERE Email IS NULL;

-- NOT NULL check
SELECT * FROM Users WHERE Email IS NOT NULL;

-- Wildcard search
SELECT * FROM Users WHERE UserName LIKE 'J%';
```

---

### 7. **ORDER BY**

```sql
SELECT * FROM Users ORDER BY Age DESC;
```

---

### 8. **Aggregate Functions**

```sql
SELECT COUNT(*) AS TotalUsers, AVG(Age) AS AverageAge, MAX(Age) AS OldestUser FROM Users;
```

---

### 9. **GROUP BY and HAVING Clause**

```sql
SELECT Age, COUNT(*) AS UserCount
FROM Users
GROUP BY Age
HAVING COUNT(*) > 1;
```

---

### 10. **String Functions**

```sql
SELECT UPPER(UserName), LOWER(UserName), LENGTH(UserName) FROM Users;
```

---

### 11. **Date Functions and Conversion**

```sql
SELECT CURRENT_DATE, CURRENT_TIME;
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d');
```

---

### 12. **COALESCE Function and STRING_AGG Function**

```sql
SELECT COALESCE(Email, 'No Email') FROM Users;

-- STRING_AGG (in PostgreSQL or SQL Server)
SELECT STRING_AGG(UserName, ', ') FROM Users;
```

---

### 13. **JOINS**

```sql
SELECT Users.UserName, Orders.OrderID
FROM Users
INNER JOIN Orders ON Users.UserID = Orders.UserID;
```

---

### 14. **Set Operators**

```sql
SELECT UserName FROM Users
UNION
SELECT CustomerName FROM Customers;
```

---

### 15. **CASE Statement**

```sql
SELECT UserName, 
    CASE 
        WHEN Age < 18 THEN 'Minor' 
        WHEN Age BETWEEN 18 AND 60 THEN 'Adult' 
        ELSE 'Senior' 
    END AS AgeGroup
FROM Users;
```

---

### 16. **Subqueries**

```sql
SELECT * FROM Users WHERE Age > (SELECT AVG(Age) FROM Users);
```

---

### 17. **CTE (Common Table Expressions)**

```sql
WITH UserAges AS (
    SELECT Age, COUNT(*) AS AgeCount FROM Users GROUP BY Age
)
SELECT * FROM UserAges WHERE AgeCount > 1;
```

---

### 18. **Window Functions**

```sql
SELECT UserID, UserName, Age,
       RANK() OVER (ORDER BY Age DESC) AS Rank
FROM Users;
```

---

### 19. **Stored Procedure**

```sql
DELIMITER //
CREATE PROCEDURE GetUsers()
BEGIN
    SELECT * FROM Users;
END //
DELIMITER ;

CALL GetUsers();
```

---

### 20. **Views**

```sql
CREATE VIEW AdultUsers AS 
SELECT * FROM Users WHERE Age >= 18;

SELECT * FROM AdultUsers;
```
