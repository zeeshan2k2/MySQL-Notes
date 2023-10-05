-- seleting all information
SELECT * FROM employee

select * FROM branch

select * from branch_supplier

select * FROM works_with

select * FROM client


-- finding employees ordereed by salary
SELECT * 
FROM employee
ORDER BY salary;

SELECT * 
FROM employee
ORDER BY sex, first_name, last_name;


-- selecting only first and last names 
SELECT first_name, last_name
FROM employee


SELECT first_name AS forename, last_name AS surname
FROM employee

-- will return types of sexes
SELECT DISTINCT distinct sex
FROM employee

-- finding the number of employees
SELECT COUNT(emp_id)
FROM employee

-- find number of supervisors
SELECT COUNT(super_id)
FROM employee

-- find number of female employee born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_date > '1971-01-01'

-- how to alter column name
ALTER table employee
RENAME COLUMN birth_day TO birth_date

-- find average of all employees salary
SELECT AVG(salary)
FROM employee;

-- average salary of all male employees 
SELECT AVG(salary)
FROM employee WHERE sex = 'M';

-- finding sum of all employees
SELECT SUM(salary)
FROM employee

-- how many males and females are there

SELECT COUNT(sex), sex
FROM employee
group by sex;


-- finding total sales of each sales man
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- how much each client spent
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;
 

