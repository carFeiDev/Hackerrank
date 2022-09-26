-- Query a count of the number of cities in CITY having a Population larger than 100,000 .

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

SELECT COUNT(Name) 
FROM CITY
WHERE Population > 100000
