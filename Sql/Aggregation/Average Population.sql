-- Query the average population for all cities in CITY, rounded down to the nearest integer.

-- Input Format

-- The CITY table is described as follows:

---------------CITY--------------
-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | NUMBER       |
-- | NAME        | VARCHAR2(17) |
-- | COUNTRYCODE | VARCHAR2(3)  |
-- | DISTRICT    | VARCHAR2(20) |
-- | POPULATION  | NUMBER       |
-- |_____________|______________|


SELECT AVG(Population)
FROM City