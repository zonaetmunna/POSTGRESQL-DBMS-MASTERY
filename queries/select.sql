-- Active: 1710422566562@@127.0.0.1@5432@test_db
-- Data Retrieval
----------------------------------------------------------------------------------
SELECT * FROM employees;
-- select specific data
SELECT first_name, last_name FROM employees

-- select columns
SELECT first_name, last_name FROM employees

-- select columns with distinct
SELECT DISTINCT first_name, last_name FROM employees

-- sorting
---------------------------------------------------------------------------
-- ORDER BY ASC
SELECT first_name, last_name FROM employees ORDER BY first_name ASC

-- ORDER BY DESC
SELECT first_name, last_name FROM employees ORDER BY first_name DESC

-- pagination
---------------------------------------------------------------------------------
-- LIMIT
SELECT first_name, last_name FROM employees LIMIT 5

-- OFFSET
SELECT first_name, last_name FROM employees OFFSET 5

-- LIMIT and OFFSET
SELECT first_name, last_name FROM employees LIMIT 5 OFFSET 5

-- filtering
----------------------------------------------------------------------------------
-- WHERE
SELECT first_name, last_name FROM employees WHERE first_name = 'John'

-- WHERE with CONDITION
SELECT first_name, last_name FROM employees WHERE first_name = 'John'

-- WHERE with CONDITION and ORDER BY
SELECT first_name, last_name FROM employees WHERE first_name = 'John' ORDER BY first_name

-- others CONDITION
SELECT first_name, last_name FROM employees WHERE first_name = 'John' AND last_name = 'Doe'

-- greater then condition
SELECT first_name, last_name FROM employees WHERE first_name = 'John' AND last_name = 'Doe'

-- string FUNCTION
---------------------------------------------------------------------------------
-- concat FUNCTION
SELECT CONCAT(first_name, ' ', last_name) FROM employees

-- concat_ws FUNCTION
SELECT CONCAT_WS(' ', first_name, last_name) FROM employees

-- substr FUNCTION
SELECT SUBSTR(first_name, 1, 3) FROM employees

-- substring FUNCTION
SELECT SUBSTRING(first_name, 1, 3) FROM employees

-- reverse FUNCTION
SELECT REVERSE(first_name) FROM employees

-- replace FUNCTION
SELECT REPLACE(first_name, 'John', 'Jane') FROM employees

-- trim FUNCTION
SELECT TRIM(first_name) FROM employees

-- ltrim FUNCTION
SELECT LTRIM(first_name) FROM employees

-- rtrim FUNCTION
SELECT RTRIM(first_name) FROM employees


-- lower FUNCTION
SELECT LOWER(first_name) FROM employees

-- upper FUNCTION
SELECT UPPER(first_name) FROM employees

-- length FUNCTION
SELECT LENGTH(first_name) FROM employees

-- AGGREGATE FUNCTION
---------------------------------------------------------------------------------
-- count FUNCTION
SELECT COUNT(*) FROM employees

-- max FUNCTION
SELECT MAX(salary) FROM employees

-- min FUNCTION
SELECT MIN(salary) FROM employees

-- avg FUNCTION
SELECT AVG(salary) FROM employees

-- sum FUNCTION
SELECT SUM(salary) FROM employees

-- count FUNCTION
SELECT COUNT(*) FROM employees

-- GROUP BY
SELECT first_name, COUNT(*) FROM employees GROUP BY first_name

-- HAVING
SELECT first_name, COUNT(*) FROM employees GROUP BY first_name HAVING COUNT(*) > 1

-- ORDER BY
SELECT first_name, COUNT(*) FROM employees GROUP BY first_name ORDER BY COUNT(*)

-- LIMIT
SELECT first_name, COUNT(*) FROM employees GROUP BY first_name ORDER BY COUNT(*) LIMIT 5

-- OFFSET
SELECT first_name, COUNT(*) FROM employees GROUP BY first_name ORDER BY COUNT(*) LIMIT 5 OFFSET 5

-- JOINS FUNCTION
---------------------------------------------------------------------------------
-- INNER JOIN
SELECT * FROM employees INNER JOIN departments ON employees.department_id = departments.id


-- logical OPERATOR
---------------------------------------------------------------------------------
-- NOT
-- The NOT operator in SQL is used to negate a condition in a WHERE clause, effectively reversing its logic. It is often used in conjunction with other operators to create more complex conditional expressions.
SELECT * FROM employees WHERE first_name NOT IN ('John', 'Jane')

-- IN
-- The IN operator in SQL is used to specify multiple values in a WHERE clause. It allows you to filter rows based on whether a specified value matches any value in a list
SELECT * FROM employees WHERE first_name IN ('John', 'Jane')

-- BETWEEN
-- 
The BETWEEN operator in SQL is used to filter rows based on a range of values. It allows you to specify a range that a column value must fall within to be included in the result set. The range includes both the start and end values.
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000

-- IS NULL
-- The IS NULL condition in SQL is used to filter rows where a specific column contains a null value. It's commonly used in the WHERE clause of a SELECT statement to retrieve rows where a particular column has no value assigned to it.
SELECT * FROM employees WHERE department IS NULL

-- IS NOT NULL
-- The IS NOT NULL condition in SQL is used to filter rows where a specific column contains a non-null value. It's commonly used in the WHERE clause of a SELECT statement to retrieve rows where a particular column has a value assigned to it.
SELECT * FROM employees WHERE department IS NOT NULL

-- LIKE
-- The LIKE keyword in SQL is used to search for a specified pattern within a column or expression. It is typically used in conjunction with the SELECT statement and the WHERE clause to filter rows based on a specific pattern.
SELECT * FROM employees WHERE first_name LIKE 'J%'