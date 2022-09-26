--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780
--Round your answer to 4 decimal places.

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

SELECT CAST(MIN(Lat_n) AS DECIMAL(10,4))
FROM Station
WHERE Lat_n >38.7780