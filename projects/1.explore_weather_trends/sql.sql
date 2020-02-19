--Data for my nearest local city
SELECT year,
       avg_temp
  FROM city_data
 WHERE city = 'London'
   AND country = 'United Kingdom'
   AND avg_temp IS NOT NULL;

--Global data
SELECT *
  FROM global_data;