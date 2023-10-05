-- displaying the data in a specific column
SELECT student.name, student.major
FROM student
-- using order keyword means it will araange in ASC/DESC order
ORDER BY name ASC;  


-- displaying the data in a specific column
SELECT student.name, student.major
FROM student
-- first ordering major then within major student id
ORDER BY major, student_id DESC;  

-- if you want to display some data 
SELECT *
FROM student
LIMIT 3;

-- displaying the data associated with major chemistry or name Kate
SELECT *
FROM student
WHERE major = 'Chemistry' OR name = 'Kate';

-- comparison operators 
-- <, >. <=, >=, =, <>, AND, OR
-- where <> means not equal to
SELECT *
FROM student
WHERE student_id > 3 AND name <> 'Mike';

-- it will display the name row of names that matches
-- you can do it for major and basically everything
SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');
