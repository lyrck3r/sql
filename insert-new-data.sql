INSERT INTO staff (dealership_id, name, role)
    VALUES
    (2, 'Юрій', 'Продавець'),
    (2, 'Максим', 'Продавець'),
    (2, 'Анна', 'Продавець'),
    (3, 'Олексій', 'Продавець'),
    (3, 'Яків', 'Продавець'),
    (3, 'Юлія', 'Продавець'),
    (4, 'Анна', 'Продавець'),
    (4, 'Андрій', 'Продавець'),
    (4, 'Микола', 'Продавець'),
    (4, 'Євген', 'Продавець');

INSERT INTO cars (brand, model, condition, price, year, color, dealership_id) 
    VALUES
    ('Toyota', 'Supra', 4, 34000, 2021, 'red-white', 2),
    ('Toyota', 'Supra', 3, 21000, 2016, 'blue', 3),
    ('Toyota', 'Supra', 1, 11000, 2012, 'white', 1),
    ('Toyota', 'Supra', 5, 61500, 2024, 'black-yellow', 1),
    ('Volkswagen', 'Touareg', 4, 24200, 2016, 'white', 1),
    ('Volkswagen', 'Touareg', 5, 68580, 2025, 'dark-grey', 4),
    ('Volkswagen', 'Touareg', 3, 32000, 2018, 'grey', 2),
    ('Volkswagen', 'Touareg', 4, 24200, 2016, 'white', 1),
    ('Volkswagen', 'Tiguan', 4, 13200, 2014, 'red', 1),
    ('Volkswagen', 'Tiguan', 5, 20900, 2021, 'pink', 2),
    ('Volkswagen', 'Tiguan', 3, 24200, 2020, 'light-grey', 3),
    ('Volkswagen', 'Tiguan', 5, 68900, 2025, 'light-blue', 3),
    ('Volkswagen', 'Passat', 4, 11000, 2013, 'white', 2),
    ('Volkswagen', 'Passat', 3, 17200, 2017, 'black', 2),
    ('Volkswagen', 'Passat', 5, 25500, 2023, 'red', 2),
    ('Volkswagen', 'Passat', 3, 10200, 2015, 'grey', 1),
    ('Ford', 'Escape', 4, 15900, 2021, 'white', 4),
    ('Ford', 'Escape', 5, 45000, 2025, 'black', 4),
    ('Ford', 'Escape', 5, 28000, 2023, 'red', 4),
    ('Ford', 'Escape', 3, 23800, 2020, 'grey', 4),
    ('Ford', 'Focus', 4, 8499, 2013, 'light-grey', 3),
    ('Ford', 'Focus', 4, 11000, 2017, 'blue', 3),
    ('Ford', 'Focus', 4, 8499, 2013, 'black', 2),
    ('Ford', 'Focus', 2, 6000, 2015, 'grey', 3),
    ('BWM', 'X5', 3, 10500, 2007, 'black', 2),
    ('BWM', 'X5', 3, 27500, 2014, 'black', 1),
    ('BWM', 'X3', 4, 33999, 2007, 'white', 2),
    ('BWM', '5 Series', 4, 25000, 2017, 'red', 2),
    ('BWM', '5 Series', 4, 24000, 2016, 'blue', 2);

INSERT INTO sold_cars (cars_id, seller, sold_date, sold_price)
VALUES
    (1, 1, '22-08-2022', 55000),
    (5, 5, '21-02-2024', 65000),
    (6, 14, '02-11-2023', 20000),
    (11, 11, '01-09-2021', 20000),
    (15, 4, '22-12-2024', 28000),
    (17, 18, '28-02-2026', 41000),
    (20, 20, '11-05-2025', 11000),
    (21, 11, '01-01-2026', 19000),
    (25, 9, '08-04-2021', 61000);