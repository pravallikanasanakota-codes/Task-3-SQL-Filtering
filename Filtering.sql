
-- Create table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(150),
    city VARCHAR(100),
    enrollment_date DATE
);

-- 1. Filter students by age
SELECT *
FROM students
WHERE age > 20;

-- 2. Using AND condition
SELECT name, age, city
FROM students
WHERE age > 18 AND city = 'Mumbai';

-- 3. Using OR condition
SELECT name, city
FROM students
WHERE city = 'Delhi' OR city = 'Bangalore';

-- 4. Using LIKE (names starting with A)
SELECT name
FROM students
WHERE name LIKE 'A%';

-- 5. Using LIKE (names with exactly 5 characters)
SELECT name
FROM students
WHERE name LIKE '_____';

-- 6. Real-life example: Gmail users
SELECT name, email
FROM students
WHERE email LIKE '%@gmail.com';

-- 7. Using IN
SELECT name, city
FROM students
WHERE city IN ('Mumbai', 'Chennai', 'Pune');

-- 8. Using BETWEEN
SELECT name, age
FROM students
WHERE age BETWEEN 18 AND 25;

-- 9. Handling NULL values
SELECT name
FROM students
WHERE email IS NULL;

-- 10. Using aliases
SELECT s.name AS student_name, s.age
FROM students AS s
WHERE s.age >= 21;
