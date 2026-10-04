ALTER TABLE cars
ALTER COLUMN dealership_id DROP NOT NULL;

INSERT INTO staff (name, role)
    VALUES
    ('Світлана', 'Продавець'),
    ('Юрій', 'Продавець'),
    ('Олексій', 'Продавець'),
    ('Анаа', 'Продавець'),
    ('Володимир', 'Продавець');