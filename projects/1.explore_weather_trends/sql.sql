--Data for my nearest local city
SELECT *
  FROM city_data
 WHERE city = 'London'
   AND country = 'United Kingdom'
   AND avg_temp IS NOT NULL;

--Global data
SELECT *
  FROM global_data;