CREATE TABLE trigger_test (
	message VARCHAR(100)
);

SELECT * FROM trigger_test
-- all the delimiter code will be executed on terminal first delimiter then code and then delimiter
-- whenever u enter something in employee table it will show added new employee
-- in trigger_test table

DELIMITER $$
CREATE
TRIGGER my_trigger BEFORE INSERT
ON employee
FOR EACH ROW BEGIN
INSERT INTO trigger_test VALUES('added new employee');
END$$
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3)

-- will give the first name of the employee that has been inserted
DELIMITER $$
CREATE
TRIGGER my_trigger1 BEFORE INSERT
ON employee
FOR EACH ROW BEGIN
INSERT INTO trigger_test VALUES(NEW.first_name);
END$$
DELIMITER ;

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3)

SELECT * FROM trigger_test




-- conditionals in triggers

DELIMITER $$
CREATE
TRIGGER my_trigger2 BEFORE INSERT
ON employee
FOR EACH ROW BEGIN
IF NEW.sex = 'M' THEN
INSERT INTO trigger_test VALUES('Added a male employee');
ELSEIF NEW.sex = 'F' THEN
INSERT INTO trigger_test VALUES('Added a female employee');
ELSE
INSERT INTO trigger_test VALUES('Added other employee');
END IF;
END $$ 
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beasly', '1988-02-19', 'F', 69000, 106, 3)


SELECT * FROM trigger_test

-- use this in terminal to delete any trigger
DROP TRIGGER my_trigger;








