SELECT name, role, city 
    FROM staff S 
    RIGHT JOIN dealerships D ON S.dealership_id = D.id;