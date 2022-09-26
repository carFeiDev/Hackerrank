-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880
-- and less than 137.2345  Truncate your answer to 4 decimal places.

-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | NUMBER       |
-- | CITY        | VARCHAR2(21) |
-- | STATE       | VARCHAAR2(2) |
-- | LAT_N       | NUMBER       |
-- | LONG_W      | NUMBER       |
-- |_____________|______________|

SELECT CAST(ROUND(SUM(Lat_N), 4) AS DECIMAL(10,4))
FROM Station
WHERE Lat_N >38.7880 AND Lat_N <137.2345 