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

SELECT year
       avg_temp,
       city,
       country
  FROM city_data
 WHERE (city = 'London'
   AND country = 'United Kingdom')
   OR  city IN ('Paris', 'Kanpur', 'Shanghai');

--Global data
SELECT year,
       avg_temp
  FROM global_data;