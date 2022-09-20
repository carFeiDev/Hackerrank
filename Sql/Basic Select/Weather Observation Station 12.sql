-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

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

SELECT DISTINCT City
FROM Station 
WHERE NOT( 
City LIKE 'a%' OR
City LIKE 'e%' OR
City LIKE 'i%' OR
City LIKE 'o%' OR
City LIKE 'u%')
AND NOT (
City LIKE '%a' OR
City LIKE '%e' OR
City LIKE '%i' OR
City LIKE '%o' OR
City LIKE '%u' 
)