-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

-- Input Format

-- The STUDENTS table is described as follows:

-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | INTEGER      |
-- | Name        | STRING       |
-- | MARKS       | INTEGER      |
-- |_____________|______________|

-- The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

-- Sample Input
-- ______________________________________
-- |  ID         | Name         |       |
-- |_____________|______________|_______|
-- | 1           | Ashley       |  81   |
-- | 2           | Samantha     |  75   |
-- | 4           | Julia        |  76   |
-- | 3           | Belvet       |  84   |
-- |_____________|______________|_______|    

SELECT Name FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), Id;