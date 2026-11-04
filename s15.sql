CREATE DATABASE db15;
USE db15;

CREATE TABLE tb15(
id INT PRIMARY KEY,
age INT,
name VARCHAR(20),
email VARCHAR(20) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT age_check CHECK (age>=18)
);


INSERT INTO tb15
VALUES
(1, 22, 'Chandan', 'chandan@gmail.com', 500, 300),
(2, 23, 'Sujal', 'sujal@gmail.com', 450, 250),
(3, 21, 'Sandeep', 'sandeep@gmail.com', 300, 200),
(4, 24, 'Yash', 'yash@gmail.com', 600, 350),
(5, 22, 'Vivek', 'vivek@gmail.com', 200, 150),
(6, 25, 'Paras', 'paras@gmail.com', 700, 400),
(7, 20, 'Aagman', 'aagman@gmail.com', 150, 100),
(8, 23, 'Ayush', 'ayush@gmail.com', 350, 180),
(9, 22, 'Sohab', 'sohab@gmail.com', 280, 160),
(10, 24, 'Sohil', 'sohil@gmail.com', 400, 220),
(11, 26, 'Vishwajit', 'vishwajit@gmail.com', 800, 500),
(12, 21, 'Rahul', 'rahul@gmail.com', 250, 120),
(13, 23, 'Priya', 'priya@gmail.com', 550, 300),
(14, 25, 'Amit', 'amit@gmail.com', 320, 210),
(15, 20, 'Sneha', 'sneha@gmail.com', 180, 90),
(16, 27, 'Arun', 'arun@gmail.com', 900, 600),
(17, 22, 'Kiran', 'kiran@gmail.com', 220, 140),
(18, 24, 'Anjali', 'anjali@gmail.com', 650, 350),
(19, 19, 'Rohan', 'rohan@gmail.com', 100, 80),
(20, 28, 'Neha', 'neha@gmail.com', 750, 450);

SELECT * FROM tb15;

SELECT count(age)
FROM tb15;

SELECT COUNT(age)
FROM tb15
WHERE age=22;

SELECT MAX(age)
FROM tb15;

SELECT MIN(followers)
FROM tb15;

#Find the average age of all students.
SELECT AVG(age)
FROM tb15;

#Find the manimum age.
SELECT MIN(age)
FROM tb15;

#Find the total number of followers of all students.
SELECT COUNT(followers)
FROM tb15;

#Find the total number of following of all students.
SELECT COUNT(following)
FROM tb15;

#Find the average number of followers.
SELECT AVG(followers)
FROM tb15;

#Find the maximum number of followers.
SELECT MAX(followers)
FROM tb15;

#Find the average age of students whose age is greater than 22.
SELECT AVG(age)
FROM tb15
WHERE age>22;

#Find the total followers of students whose age is 22.
SELECT COUNT(followers)
FROM tb15
WHERE age=22;

#Find the maximum followers among students whose age is greater than 23.
SELECT MAX(followers)
FROM tb15
WHERE age >23;

#Find the minimum age of students having more than 300 followers.
SELECT MIN(age)
FROM tb15
WHERE followers >300;

#Count students whose age is between 20 and 25.
SELECT COUNT(age)
FROM tb15
WHERE age BETWEEN 20 AND 25;

SELECT * FROM tb15;

#Find the average followers of students whose following is greater than 200.
SELECT AVG(followers)
FROM tb15
WHERE following >200;