ALTER TABLE cars
ADD COLUMN dealership_id INT;

UPDATE cars SET 
    dealership_id = 1
WHERE
    dealership_id IS NULL;

ALTER TABLE cars
ALTER COLUMN dealership_id SET NOT NULL;

ALTER TABLE cars
ADD CONSTRAINT dealership_fk FOREIGN KEY(dealership_id)
REFERENCES dealerships(id);