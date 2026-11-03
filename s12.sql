CREATE DATABASE db12;
USE db12;

CREATE TABLE tb12(
id INT PRIMARY KEY,
age INT,
name VARCHAR(20),
email VARCHAR(20) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT age_check CHECK (age>=18)
);


INSERT INTO tb12
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

SELECT * FROM tb12;

#Display students whose age is between 21 and 25.
SELECT * FROM tb12
WHERE age BETWEEN 21 AND 25;


#Display students whose names start with letter 'A'.
SELECT * FROM tb12
WHERE name LIKE "A%";

#Display students whose names ends with letter 'n'.
SELECT * FROM tb12
WHERE name LIKE "%n";

SELECT * FROM tb12
WHERE name LIKE "%__n";

SELECT * FROM tb12
WHERE name LIKE "___n%";

#Display students whose names contain letter 'a'.
SELECT * FROM tb12
WHERE name LIKE "%a%";

# Display students whose names start with c and Ends with n.
SELECT * FROM tb12
WHERE name LIKE "c%n";

#Display students whose followers are between 200 and 600.
SELECT * FROM tb12
WHERE followers BETWEEN 200 AND 600;

#Display students whose email starts with letter 's'.
SELECT email FROM tb12
WHERE email LIKE "s%";

#Display students whose age is either 20, 22 or 24 using IN.
SELECT * FROM tb12
WHERE age IN(20,22,24);


#Display students whose names are either Chandan, Rahul or Priya using IN.
SELECT * FROM tb12
WHERE name IN("Chandan","Rahul","Priya");

#Display students whose names are NOT Chandan, Rahul or Priya using IN.
SELECT * FROM tb12
WHERE name NOT IN("Chandan","Rahul","Priya");