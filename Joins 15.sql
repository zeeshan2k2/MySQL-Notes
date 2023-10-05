INSERT INTO branch VALUES(4, 'Buffalo',NULL ,NULL)

SELECT * FROM branch

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee JOIN branch
ON employee.emp_id = branch.mgr_id 

-- left join = all the employees will be shown
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee LEFT JOIN branch
ON employee.emp_id = branch.mgr_id 

-- right join = all the branch names will be shown
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id


-- which client and employees are related through sales
SELECT employee.first_name AS employee_name, client.client_name, works_with.total_sales
FROM employee JOIN works_with
ON employee.emp_id = works_with.emp_id
JOIN client
ON works_with.client_id = client.client_id




































