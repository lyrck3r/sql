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

CREATE TABLE IF NOT EXISTS dealerships(
    id SERIAL PRIMARY KEY,
    city TEXT NOT NULL,
    established DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS staff(
    id SERIAL PRIMARY KEY,
    dealership_id INT NOT NULL REFERENCES dealerships(id),
    name TEXT NOT NULL,
    role TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS sold_cars(
    id SERIAL PRIMARY KEY,
    cars_id INT NOT NULL REFERENCES cars(id),
    seller INT NOT NULL REFERENCES staff(id),
    sold_date DATE NOT NULL,
    sold_price INT NOT NULL
); 
 