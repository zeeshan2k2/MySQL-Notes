-- find a list of employee and branch names
-- have to have same number of columns and have to be similar datatypes
-- or else will give an error
SELECT first_name as Company_Names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- find a list of all clients and branch suppliers names
-- both have to have the same column name i.e branch_id
SELECT client_name, branch_id
FROM client
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;

-- find list of all money spent or earned by the company
SELECT salary
FROM employee 
UNION
SELECT total_sales
FROM works_with;