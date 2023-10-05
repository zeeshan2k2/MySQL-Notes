SELECt * FROM student;

-- jo student id hogi usse delete krdega
DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Jack' AND major = 'undecided';