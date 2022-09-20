-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

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
WHERE NOT (
City Like 'a%' OR
City Like 'e%' OR
City Like 'i%' OR
City Like 'o%' OR
City Like 'u%' 
) 
OR NOT (
City Like '%a' OR
City Like '%e' OR
City Like '%i' OR
City Like '%o' OR
City Like '%u'
)