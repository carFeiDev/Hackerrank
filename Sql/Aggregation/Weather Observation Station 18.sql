-- Consider P1(a,b) and P2(c,d)to be two points on a 2D plane.

-- a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

-- Query the Manhattan Distance between points

-- p1 and p2 and round it to a scale of  4 decimal

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

SELECT CAST(
    ROUND(ABS(MAX(Lat_N)  - MIN(Lat_N))
    + ABS(MAX(Long_W) - MIN(Long_W)), 4) AS DECIMAL (10,4))
FROM Station;