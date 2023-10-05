-- % = any number of characters,  _ = one character

-- find any client's who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC'

-- find any branch supplier who are in label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Label%'

-- correcitng a typo 
UPDATE branch_supplier
SET supplier_name = 'Stamford Labels' 
Where supplier_name = 'Stamford Lables';


-- find any employee born in october
SELECT *
FROM employee
WHERE birth_date LIKE '____-10%';
