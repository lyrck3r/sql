DROP TABLE cars
CREATE TABLE IF NOT EXISTS cars(
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    condition INT NOT NULL,
    price INT NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50) NOT NULL,
    sold BOOLEAN NOT NULL DEFAULT FALSE
)

INSERT INTO cars (
    brand, model, condition, price, year, color 
) VALUES 
    ('Porsche', '911 Turbo', 4, 55000, 1968, 'white'),
    ('Dodge', 'Challenger T', 2, 25000, 1934, 'dark-brown'),
    ('Mersedes', 'Benz SLS', 5, 1900000, 2021, 'white-blue'),
    ('Toyota', 'Supra', 3, 165000, 2011, 'light-grey'),
    ('Porsche', '388', 5, 65000, 2007, 'light-yellow'),
    ('Mersedes', 'Cadilac', 1, 20000, 2022, 'black'),
    ('Mersedes', 'Cadilac', 4, 180000, 2023, 'dark-grey'),
    ('Peugeot', '508 T2', 4, 28000, 2019, 'purple'),
    ('Peugeot', '508 T1', 3, 16000, 2017, 'light-purple'),
    ('Peugeot', '308 T3', 5, 62000, 2022, 'dark-blue'),
    ('Peugeot', '308 T2', 3, 20000, 2017, 'grey'),
    ('Peugeot', '3008 T2', 3, 18000, 2015, 'grey'),
    ('Peugeot', '3008 T1', 4, 15000, 2017, 'light-blue'),
    ('Peugeot', '5008 T2', 5, 50000, 2021, 'brack'),
    ('Audi', 'Q5', 4, 28000, 2011, 'black'),
    ('Audi', 'Q7', 5, 65000, 2021, 'grey'),
    ('Audi', 'Q5', 5, 41000, 2018, 'yellow'),
    ('Audi', 'Q7', 2, 20000, 2022, 'light-grey'),
    ('Audi', 'A6', 4, 14000, 2005, 'green'),
    ('Audi', 'A6', 3, 11000, 2002, 'light-green'),
    ('Audi', 'A6', 5, 19000, 2011, 'milk-white'),
    ('Audi', 'A4', 2, 6000, 1996, 'dark-grey'),
    ('Audi', 'A4', 5, 9000, 1998, 'blue'),
    ('Audi', 'E-sport', 4, 28000, 2017, 'black'),
    ('Audi', 'E-sport', 5, 61000, 2022, 'light-grey'),
    ('Audi', 'E-sport', 2, 45000, 2025, 'white'),
    ('Audi', 'E-Tron', 5, 81000, 2025, 'black'),
    ('Audi', 'E-Tron', 3, 32000, 2021, 'white'), 
    ('Audi', 'E-Tron', 4, 4000, 2023, 'light-grey')

INSERT INTO cars (
    brand, model, condition, price, year, color 
) VALUES 
    ('Mersedes', 'Benz Vito', 4, 32800, 2023, 'dark-grey'),
    ('Mersedes', 'Benz Sprinter', 5, 36800, 2023, 'blue'),
    ('Mersedes', 'Benz Sprinter', 3, 11500, 1998, 'grey'),
    ('Mersedes', 'Benz Sprinter', 5, 36800, 1992, 'black'),
    ('KIA', 'Sportage', 3, 19200, 2021, 'dark-red'),
    ('KIA', 'Sportage', 5, 50000, 2023, 'red'),
    ('Ford', 'C-Max', 3, 10700, 2016, 'white'),
    ('Ford', 'Focus', 4, 6000, 2002, 'red'),
    ('Ford', 'Kuga', 5, 38000, 2017, 'black'),
    ('Ford', 'Kuga', 3, 33000, 2021, 'grey'),
    ('Ford', 'Kuga', 5, 62000, 2023, 'light-grey'),
    ('Shkoda', 'Octavia RS', 4, 19500, 2018, 'black'),
    ('Shkoda', 'Octavia', 5, 24000, 2021, 'grey'),
    ('Shkoda', 'Octavia RS', 4, 41500, 2023, 'blue'),
    ('Tesla', 'Model X', 3, 26500, 2018, 'dark-blue'),
    ('Tesla', 'Model X', 4, 41500, 2022, 'blue'),
    ('Tesla', 'Model S', 5, 51000, 2024, 'yellow'),
    ('Tesla', 'CyberTruck', 5, 80000, 2025, 'black'),
    ('Tesla', 'CyberTruck', 2, 26000, 2021, 'orange'),
    ('Tesla', 'Model S', 1, 12000, 2017, 'dark-orange')

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