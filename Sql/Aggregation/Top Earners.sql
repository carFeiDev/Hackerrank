-- We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.
Input Format

-- The Employee table containing employee data for a company is described as follows:

-- Input Format

-- The Employee table containing employee data for a company is described as follows:

---------------Employees--------------
-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | employee_id | Integer      |
-- | name        | String       |
-- | months      | String       |
-- | salary      | Integer      |
-- |_____________|______________|

-- where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

DECLARE @MaxEarnings INT;
SET @MaxEarnings =(SELECT MAX(Salary * Months) FROM EMPLOYEE);
                
SELECT MAX(Salary * Months), COUNT(*)
FROM Employee
WHERE (Salary * Months) = @MaxEarnings