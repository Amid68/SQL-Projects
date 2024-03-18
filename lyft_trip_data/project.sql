SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

SELECT *
FROM riders
CROSS JOIN cars;

SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;

SELECT *
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

SELECT *
FROM trips
INNER JOIN cars
  ON trips.car_id = cars.id;

SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

SELECT ROUND(AVG(cost), 2) AS 'Average cost of a trip'
FROM trips;

SELECT riders.id,
  riders.first,
  riders.last,
  riders.username,
  riders.total_trips
FROM riders
WHERE total_trips < 500
UNION
SELECT riders2.id,
  riders2.first,
  riders2.last,
  riders2.username,
  riders2.total_trips
FROM riders2
WHERE total_trips < 500;

SELECT COUNT(status) AS 'Number of active cars'
FROM cars
WHERE status = 'active';

SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
