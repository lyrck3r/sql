SELECT * FROM cars
UPDATE cars
SET sold = TRUE
WHERE id IN (1, 5, 6, 11, 15, 17, 20, 21, 25, 28)
SELECT brand, model, sold FROM cars
    WHERE ((brand = 'Audi'
    AND year BETWEEN 2015 AND 2022)
    OR (brand = 'Peugeot'
    AND year BETWEEN 2002 AND 2015))
    AND sold IS FALSE
/*
	Select brand, model, and color from cars
		where the color is not red, blue, or white
		and the brand is none of: Aston Martin, Bentley or Jaguar
		and sold is false
*/
SELECT brand, model, color FROM cars
    WHERE color NOT IN ('white', 'blue')
    AND brand NOT IN ('Audi', 'Peugeot')
    AND sold IS FALSE

UPDATE cars
SET sold = TRUE
WHERE brand = 'Tesla'
/*
	Select brand, model, and year from cars
		only show the oldest 5 cars in the database
		show cars which haven't been sold
*/
SELECT brand, model, year FROM cars 
    WHERE sold IS FALSE
    ORDER BY year 
    LIMIT 5
/*
	Select brand, model, and year from cars
		only show the oldest 5 cars in the database
		show cars which haven't been sold
*/
SELECT color, COUNT(color) FROM cars 
    WHERE sold IS FALSE 
    GROUP BY color
    HAVING COUNT(color) > 2
    ORDER BY COUNT(color) DESC
/*
	Use the AVG aggregate function to find the average price
		where the brand is Bentley
*/
SELECT AVG(price) FROM cars 
    WHERE brand = 'Audi'
/*
	Select the average, minimum and maximum price from cars
		where sold is true
	Round the average up to the nearest whole number
		and use 'avg' as the alias for that result	
*/
SELECT
    CEIL (AVG(price)) AS AVG,
    MIN(price),
    MAX(price) 
FROM cars 
    WHERE sold IS TRUE
/*
	Select the condition, and a count of the condition from cars
		group by the condition column
*/
SELECT condition, COUNT(condition) FROM cars 
    GROUP BY condition
/*
	Select:
		* the brand
		* a count of the brand
		* and an average of the price for each brand
		* round the average down to the nearest number
		* alias the average as 'AVG' in your output
	From cars where
		the car has not been sold
	Group the table by brand.
*/
SELECT 
    brand, COUNT(brand),
    FLOOR (AVG(price)) AS AVG
FROM cars 
    WHERE sold IS FALSE 
    GROUP BY brand
/*
	Select:
		* year
		* a count of cars from that year, aliased as car_count
		* the maximum price
		* the minimum price
	from the table cars
		where the car has been sold
	group by year
		only show years where more than one car has been sold from that year
	order the result by car_count
*/
SELECT 
    year, COUNT(year) AS car_count,
    MIN(price),
    MAX(price)
FROM cars 
    WHERE sold IS TRUE
    GROUP BY year
    HAVING COUNT(year) > 1
    ORDER BY car_count

ALTER TABLE cars
    ALTER COLUMN brand TYPE TEXT,
    ALTER COLUMN model TYPE TEXT,
    ALTER COLUMN color TYPE TEXT;

SELECT * FROM cars; 