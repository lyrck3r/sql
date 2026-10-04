ALTER TABLE cars
ADD COLUMN dealership_id INT;

UPDATE cars SET 
    dealership_id = 4
WHERE
    id IN (13,14,15,16,18,29,30,33,35,44,47,48)
    AND dealership_id IS NULL

ALTER TABLE cars
ALTER COLUMN dealership_id SET NOT NULL;

ALTER TABLE cars
ADD CONSTRAINT dealership_fk FOREIGN KEY(dealership_id)
REFERENCES dealerships(id);

UPDATE cars SET
    dealership_id = NULL
WHERE id BETWEEN 68 AND 78