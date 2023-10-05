-- creating a table
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,  -- mtlb data increment hoga automatically
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',  -- null ki jagah undecided likh dega
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;

SELECT * FROM student;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');

INSERT INTO student VALUES(3, 'Claire', 'CHEMISTRY');

INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

-- UPDATE student
-- SET major = 'Bio'
-- Where major = 'Biology';

-- UPDATE student
-- SET major = 'Comp Sci'
-- Where major = 'Computer Science';

-- UPDATE student
-- SET major = 'Comp Sci'
-- Where student_id = 4;

-- UPDATE student
-- SET major = 'Biochemistry'
-- Where major = 'Bio' OR major = 'CHEMISTRY';

-- UPDATE student
-- SET name = 'Tom', major = 'undecided'
-- Where student_id = 1;

-- dropping where means it will affect all in the column
UPDATE student
SET major = 'undecided';




