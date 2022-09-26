-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345
--  Round your answer to  4 decimal places.

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

DECLARE @MaxLat_N float ;
SET @MaxLat_N =(SELECT MAX(Lat_N) FROM STATION WHERE Lat_N < 137.2345);

SELECT CAST(Long_W AS DECIMAL(10,4))
FROM Station
WHERE LAT_N = @MaxLat_N