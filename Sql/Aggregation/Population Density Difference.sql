-- Query the difference between the maximum and minimum populations in CITY.

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

SELECT (MAX(Population)) - (MIN(Population))
FROM City