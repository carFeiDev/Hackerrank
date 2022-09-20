-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | NUMBER       |
-- | CITY        | VARCHAR2(21) |
-- | STATE       | VARCHAAR2(2) |
-- | LAT_N       | NUMBER       |
-- | LONG_W      | NUMBER       |
-- |_____________|______________|

SELECT City
FROM Station
WHERE (
City LIKE 'a%' OR
City LIKE 'e%' OR
City LIKE 'i%' OR
City LIKE 'o%' OR
City LIKE 'u%')
AND   (
City LIKE '%a' OR
City LIKE '%e' OR
City LIKE '%i' OR
City LIKE '%o' OR
City LIKE '%u')