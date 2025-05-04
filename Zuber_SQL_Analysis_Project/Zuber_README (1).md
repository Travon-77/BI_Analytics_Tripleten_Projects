
# 🚖 Zuber Ride-Sharing Analysis — SQL Project

## 📋 Project Overview
This project analyzes ride-sharing data for **Zuber** in Chicago. The goal is to uncover trends in company performance, weather impact, and route patterns during November 2017.

---

## 1️⃣ Number of Taxi Rides per Company (Nov 15–16, 2017)
**Query**:
```sql
SELECT 
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS DATE) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;
```

**Result**:

| Company Name                               | Trips Amount |
|-------------------------------------------|--------------|
| Flash Cab                                 | 19,558       |
| Taxi Affiliation Services                 | 11,422       |
| Medallion Leasin                          | 10,367       |
| Yellow Cab                                | 9,888        |
| Taxi Affiliation Service Yellow           | 9,299        |
| Chicago Carriage Cab Corp                 | 9,181        |
| City Service                              | 8,448        |
| Sun Taxi                                  | 7,701        |
| Star North Management LLC                 | 7,455        |
| Blue Ribbon Taxi Association Inc.         | 5,953        |
| Choice Taxi Association                   | 5,015        |
| Globe Taxi                                | 4,383        |
| Dispatch Taxi Affiliation                 | 3,355        |
| Nova Taxi Affiliation LLC                 | 3,175        |
| Patriot Taxi DBA Peace Taxi Association   | 2,235        |
| Checker Taxi Affiliation                  | 2,216        |

---

## 2️⃣ Rides for “Yellow” or “Blue” Companies (Nov 1–7, 2017)
**Query**:
```sql
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
```


**Result**:

| Company Name                        | Trips Amount |
|------------------------------------|--------------|
| Taxi Affiliation Service Yellow    | 29,213       |
| Yellow Cab                         | 33,668       |
| Blue Diamond                       | 6,764        |
| Blue Ribbon Taxi Association Inc. | 17,675       |


---

## 3️⃣ Rides Breakdown by Company Category (Nov 1–7, 2017)
**Query**:
```sql
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
```

**Result**:

| Company                    | Trips Amount |
|---------------------------|--------------|
| Other                     | 335,771      |
| Flash Cab                 | 64,084       |
| Taxi Affiliation Services | 37,583       |
| Taxi Affiliation Service Yellow | 29,213 |

---

## 4️⃣ O'Hare and Loop Neighborhood Identifiers
**Query**:
```sql
SELECT * 
FROM neighborhoods
WHERE name LIKE '%Hare%' OR name LIKE 'Loop';
```

**Result**:

| Neighborhood ID | Name   |
|------------------|--------|
| 50               | Loop   |
| 63               | O'Hare |

---

## 5️⃣ Hourly Weather Conditions (Nov 1, 2017)
**Query**:
```sql
SELECT 
    ts,
    CASE 
        WHEN description LIKE '%rain%' THEN 'Bad'
        WHEN description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM weather_records;
```

**Sample Result**:

| Timestamp           | Weather Condition |
|---------------------|-------------------|
| 2017-11-01 00:00:00 | Good              |
| 2017-11-01 01:00:00 | Good              |
| 2017-11-01 02:00:00 | Good              |
| 2017-11-01 03:00:00 | Good              |
| 2017-11-01 04:00:00 | Good              |
| ...                 | ...               |

---

## 6️⃣ Saturday Rides from Loop to O'Hare (Weather & Duration)
**Query**:
```sql
SELECT 
    trips.start_ts,
    T.weather_conditions,
    trips.duration_seconds
FROM trips
INNER JOIN (
    SELECT 
        ts,
        CASE 
            WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
            ELSE 'Good'
        END AS weather_conditions
    FROM weather_records
) T ON T.ts = trips.start_ts
WHERE pickup_location_id = 50
  AND dropoff_location_id = 63
  AND EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY trips.trip_id;
```

**Sample Result**:

| Start Time           | Weather | Duration (seconds) |
|----------------------|---------|---------------------|
| 2017-11-25 12:00:00  | Good    | 1380                |
| 2017-11-25 16:00:00  | Good    | 2410                |
| 2017-11-25 14:00:00  | Good    | 1920                |
| 2017-11-04 16:00:00  | Bad     | 2969                |
| 2017-11-11 15:00:00  | Good    | 4800                |
| ...                  | ...     | ...                 |

---

**📌 Note**: This project highlights the power of SQL for real-world data exploration and pattern recognition in business intelligence.

