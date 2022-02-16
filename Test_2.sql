SELECT driver.last_name FROM driver
LEFT JOIN car_driver ON driver.id = car_driver.driver_id
LEFT JOIN car ON car_driver.car_id = car.id
GROUP BY driver.id
HAVING COUNT(car.brand = 'Toyota') >=2;