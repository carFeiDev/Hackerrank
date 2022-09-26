-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780  Round your answer to 4 decimal places.
-- Input Format

-- The STATION table is described as follows:¡
-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | NUMBER       |
-- | CITY        | VARCHAR2(21) |
-- | STATE       | VARCHAAR2(2) |
-- | LAT_N       | NUMBER       |
-- | LONG_W      | NUMBER       |
-- |_____________|______________|

DECLARE @MinLat_N float ;
SET @MinLat_N =(SELECT MIN(Lat_N) FROM Station WHERE Lat_N > 38.7780);

SELECT CAST(Long_W AS DECIMAL(10,4))
FROM Station
WHERE Lat_N = @MinLat_N