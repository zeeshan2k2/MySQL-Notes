-- Query where we use multiple select statements to get results

-- Find names of all employees who have sold over 30,000 to a single client

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	SELECT works_with.emp_id
	FROM works_with
	WHERE works_with.total_sales > 30000
);


-- Find all clients who are handled by the branch that michael scott manages 
-- Assume you know know MIchael's ID

SELECT client.client_name
FROM client
WHERE client.branch_id = (
	SELECT branch.branch_id
    FROM branch
	WHERE branch.mgr_id= 102
	LIMIT 1  -- unless micheal scott is using multiple branches then we will use IN instead of =
);
