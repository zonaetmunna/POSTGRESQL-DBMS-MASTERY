-- Active: 1710422566562@@127.0.0.1@5432@test_db
-- GROUP BY

SELECT
  department, avg(salary)
FROM
  employees
GROUP BY
  HAVING
  department = 'HR'