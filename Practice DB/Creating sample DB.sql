CREATE TABLE employee (
	emp_id INT PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	birth_date DATE,
	sex VARCHAR(1),
	salary INT,
	super_id INT,
	branch_id INT
);

ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

SELECT * FROM employee

CREATE TABLE branch (
	branch_id INT,
	branch_name VARCHAR(40),
	mgr_id INT,
	mgr_start_date DATE,
	FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

ALTER TABLE branch
ADD PRIMARY KEY(branch_id);

SELECT * FROM branch


CREATE TABLE client (
	client_id INT PRIMARY KEY,
	client_name VARCHAR(40),
	branch_id INT,
	FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

SELECT * FROM client

CREATE TABLE works_with(
	emp_id INT,
	client_id INT,
	total_sales INT,
	PRIMARY KEY(emp_id, client_id),
	FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,	
	FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);


SELECT * FROM works_with

CREATE TABLE branch_supplier (
	branch_id INT,
	supplier_name VARCHAR(40),
	supply_type VARCHAR(40),
	PRIMARY KEY(branch_id, supplier_name),
	FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

SELECT * FROM employee




INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17' ,'M' ,250000 ,NULL ,NULL);

INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09')

UPDATE employee SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES(101, 'David', 'Wallace', '1967-11-17' ,'M' ,250000 ,NULL ,NULL);
INSERT INTO employee VALUES(102, 'David', 'Wallace', '1967-11-17' ,'M' ,250000 ,NULL ,NULL);
INSERT INTO employee VALUES(106, 'David', 'Wallace', '1967-11-17' ,'M' ,250000 ,NULL ,NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-02-09');
UPDATE employee SET branch_id = 3
WHERE emp_id = 106

INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-09');


















