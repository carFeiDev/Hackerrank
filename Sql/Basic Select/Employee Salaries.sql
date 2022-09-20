-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.

-- Input Format

-- The Employee table containing employee data for a company is described as follows:

-- ______________________________
-- |  Column     | Type         |    
-- |_____________|______________|
-- | employee_id | Integer      |
-- | name        | String       |
-- | months      | Integer      |
-- | salary      | Integer      |
-- |_____________|______________|

-- where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

-- Sample Input

-- ______________________________________________
-- |  ID         | Name             | months|salary
-- |_____________|__________________|_______|________
-- | 12228           | Rose         |  15   | 1968
-- | 33645           | Angela       |   1   | 3443
-- | 45692           | Frank        |  17   | 1608
-- | 56118           | Patrick      |   7   | 1345
-- | 59725           | Lisa         |  11   | 2330
-- | 74197           | Kimberly     |  16   | 4372      |
-- | 78454           | Bonnie       |   8   | 1771
-- | 83565           | Michael      |   6   | 2017
-- | 68607           | Todd         |   5   | 3396
-- | 99989           | Joe          |   9   | 3573

SELECT NAME
FROM Employee 
WHERE Salary > 2000
AND  Months < 10
ORDER BY Employee_id ASC