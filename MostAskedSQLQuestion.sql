-- =========================================================================
-- TOP MOST ASKED SQL INTERVIEW QUESTIONS
-- =========================================================================

-- =========================================================================
-- HIGHEST PRIORITY (MUST-KNOW QUESTIONS)
-- =========================================================================

-- Q1: How do you find the Nth highest salary (e.g., 2nd highest salary) from an Employee table?
--     (Provide solutions using both window functions and subqueries/correlated subqueries)

-- Q2: How do you find and delete duplicate rows/records from a table while keeping only one unique record?

-- Q3: Write a query to find employees who earn more than their managers. 
--     (Assume an Employee table with columns: EmployeeID, Name, Salary, ManagerID)

-- Q4: Write a query to get the department-wise highest (or Nth highest) salary along with the employee details.

-- Q5: What is the difference between ROW_NUMBER(), RANK(), and DENSE_RANK() window functions? Explain with a practical scenario.

-- Q6: Write a query to find the difference between UNION and UNION ALL. When should you use which?

-- Q7: What is the difference between the WHERE clause and the HAVING clause? Write a query demonstrating this.

-- Q8: Write a query to find the login streaks (continuous active login days) for users from a login activity log. (Gaps & Islands problem)

-- Q9: Write a query to find the running total / cumulative sum of sales or orders for each day/user.

-- Q10: How do you fetch records that exist in Table A but do not exist in Table B? (Provide multiple ways: e.g., LEFT JOIN, NOT EXISTS, NOT IN)


-- =========================================================================
-- MEDIUM PRIORITY (FREQUENTLY ASKED QUESTIONS)
-- =========================================================================

-- Q11: Write a single UPDATE statement to swap gender values in a table (e.g., update 'Male' to 'Female' and 'Female' to 'Male' without using temporary tables).

-- Q12: What is the difference between DELETE, TRUNCATE, and DROP statements? Explain in terms of performance, rollback/transaction safety, and triggers.

-- Q13: Write a query to retrieve all departments and the count of employees in each department, including departments with zero employees.

-- Q14: Write a query to find the duplicate records in a table and their occurrences count.

-- Q15: How do you select only the odd or only the even rows/IDs from a table?

-- Q16: Explain the difference between INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, and CROSS JOIN with their visual or behavioral differences.

-- Q17: Write a query to find the second most recent order/transaction for each customer.

-- Q18: What is the difference between Primary Key and Unique Key constraints? (Can a table have multiple Unique Keys? Can a Unique Key allow NULL values?)

-- Q19: Explain the concept of a CTE (Common Table Expression) and write a query using a recursive CTE (e.g., to generate a date series or traverse a hierarchy).

-- Q20: What are clustered and non-clustered indexes? How do they physically organize data on the disk and affect query performance?

-- Q21: Write a query to transpose rows to columns (Pivoting) and columns to rows (Unpivoting).

-- Q22: What is the difference between COALESCE() and ISNULL() functions in SQL Server?
