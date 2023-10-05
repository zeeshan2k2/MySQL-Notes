-- On delete set Null means whenever you delete an entry in table that has the data
-- as the foreign key in another table it will be set to null

CREATE TABLE branch (
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(40),
	mgr_id INT,
	mgr_start_date DATE,
	FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);



-- On delete cascade means whenever you delete an entry in table that has data as
-- foreign key in another table that entry will get deleted
CREATE TABLE branch_supplier (
	branch_id INT,
	supplier_name VARCHAR(40),
	supply_type VARCHAR(40),
	PRIMARY KEY(branch_id, supplier_name),
	FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);