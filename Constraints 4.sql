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

INSERT INTO student VALUES(3, NULL, 'CHEMISTRY');

INSERT INTO student(student_id, name) VALUES(4, 'Jack');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');
