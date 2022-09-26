-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2347
-- Truncate your answer to 4  decimal places.

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

SELECT CAST(MAX(Lat_N) AS DECIMAL(10,4))
FROM Station
WHERE Lat_N < 137.2345