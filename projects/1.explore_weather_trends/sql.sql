--Data for cities
/*
filtered on country as there is also London in Canada
and removed records where no temp was recorded
*/
SELECT year
       avg_temp,
       city,
       country
  FROM city_data
 WHERE city = 'London'
   AND country = 'United Kingdom'
   AND avg_temp IS NOT NULL;

--get a sample of western capital cities and most polluted cities
SELECT year
       avg_temp,
       city,
       country,
       'is_capital' AS category
  FROM city_data
 WHERE (city = 'London'
   AND country = 'United Kingdom')
    OR city IN ('Paris');

SELECT year,
       avg_temp,
       city,
       country,
       'is_polluted' AS category
  FROM city_data
 WHERE city in ('Nagpur');

--Global data -- for comparison of cities against global average
SELECT year,
       avg_temp
  FROM global_data;