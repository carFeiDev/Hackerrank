-- Consider  P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

--Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits

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

SELECT CAST(ROUND(SQRT(POWER(MAX(Lat_N) - MIN(Lat_N),  2)+ POWER(MAX(Long_W) - MIN(Long_W), 2)),4) AS DECIMAL(10,4))
FROM Station;