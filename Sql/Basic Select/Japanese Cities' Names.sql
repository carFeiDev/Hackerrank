-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- The CITY table is described as follows:

-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | NUMBER       |
-- | NAME        | VARCHAR2(17) |
-- | COUNTRYCODE | VARCHAAR2(3) |
-- | DISTRICT    | VARCHAR2(20) |
-- | POPULATION  | NUMBER       |
-- |_____________|______________|

SELECT Name FROM City
WHERE Countrycode = 'JPN'