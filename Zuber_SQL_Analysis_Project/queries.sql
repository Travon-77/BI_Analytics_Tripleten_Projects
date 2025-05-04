-- ====================================================
-- 🚖 Zuber Ride-Sharing Analysis — SQL Query Scripts
-- Description: Analytical queries to explore ride trends,
-- company performance, and weather impact for Zuber in Chicago.
-- ====================================================

-- 1. Number of taxi rides per company (Nov 15–16, 2017)
-- ================================================
SELECT 
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS DATE) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;


-- ============================================================
-- 2. Number of rides for companies with "Yellow" or "Blue" in name (Nov 1–7, 2017)
-- ============================================================
SELECT 
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
  AND cabs.company_name LIKE '%Yellow%'
GROUP BY cabs.company_name

UNION ALL

SELECT 
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
  AND cabs.company_name LIKE '%Blue%'
GROUP BY cabs.company_name;


-- ======================================================
-- 3. Rides breakdown for top companies vs others (Nov 1–7, 2017)
-- ======================================================
SELECT 
    CASE 
        WHEN cabs.company_name = 'Flash Cab' THEN 'Flash Cab'
        WHEN cabs.company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services'
        ELSE 'Other'
    END AS company,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY company
ORDER BY trips_amount DESC;


-- ============================================================
-- 4. The identifiers of the O'Hare and Loop neighborhoods  from the neighborhoods table. 
-- ============================================================
SELECT 
*
FROM neighborhoods
WHERE name LIKE '%Hare%' OR name LIKE 'Loop';


-- ============================================================
-- 5. Hourly weather records with conditions labeled as 'Good' or 'Bad'
-- ============================================================
SELECT 
    ts,
    CASE 
        WHEN description LIKE '%rain%' THEN 'Bad'
        WHEN description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM weather_records;


-- ===================================================================================
-- 6. Saturday rides from Loop to O'Hare with weather and duration info (exclude NULLs)
-- ===================================================================================
 SELECT 
   trips.start_ts,
   T.weather_conditions,
   trips.duration_seconds
FROM trips
INNER JOIN (SELECT ts,
      CASE WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
      ELSE 'Good'END AS weather_conditions
    FROM weather_records
) T ON T.ts = trips.start_ts
WHERE pickup_location_id = 50
  AND dropoff_location_id = 63
  AND EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY trips.trip_id;
