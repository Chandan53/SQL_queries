CREATE DATABASE db13;
USE db13;

CREATE TABLE tb13(
id INT PRIMARY KEY,
age INT,
name VARCHAR(20),
email VARCHAR(20) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT age_check CHECK (age>=18)
);


INSERT INTO tb13
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

SELECT * FROM tb13;

SELECT name,age,email FROM tb13
LIMIT 5;

