-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  4 decimal places.

-- ______________________________
-- |  Field      | Type         |    
-- |_____________|______________|
-- | ID          | NUMBER       |
-- | CITY        | VARCHAR2(21) |
-- | STATE       | VARCHAAR2(2) |
-- | LAT_N       | NUMBER       |
-- | LONG_W      | NUMBER       |
-- |_____________|______________|

Select CAST(ROUND(S.Lat_N,4) AS DECIMAL (10,4))
FROM Station AS S
WHERE (SELECT COUNT(Lat_N)
       FROM Station
       WHERE Lat_N < S.Lat_N ) =(
        SELECT COUNT(Lat_N)
        FROM Station
        WHERE Lat_N > S.LAT_N);