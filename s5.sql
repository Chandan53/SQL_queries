CREATE DATABASE db5;
USE db5;

CREATE TABLE tb5(
Id INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Email VARCHAR(20) UNIQUE ,
Followers INT DEFAULT 0,
Following INT,
Age INT,
CONSTRAINT age_check CHECK (Age>=13)

);

INSERT INTO tb5
VALUES
(101,"chandan","chandan@gmail.com",DEFAULT,320,18),
(102, 'Rahul', 'rahul@gmail.com', 500, 250, 22),
(103, 'Priya', 'priya@gmail.com', DEFAULT, 400, 19),
(104, 'Amit', 'amit@gmail.com', 100, 150, 25),
(105, 'Sneha', 'sneha@gmail.com', 200, 300, 21),
(106, 'Arun', 'arun@gmail.com', DEFAULT, 180, 15),
(107, 'Kiran', 'kiran@gmail.com', 350, 220, 30),
(108, 'Anjali', 'anjali@gmail.com', 150, 190, 13);



CREATE TABLE tb6(
Id INT,
Content VARCHAR(30),
user_id INT,
CONSTRAINT FOREIGN KEY (user_id) REFERENCES tb5(Id) # Primary key in another table and foreign key in another table
);


INSERT INTO tb6
VALUES
(1, 'Hello everyone', 101),
(2, 'Learning SQL', 102),
(3, 'Welcome back', 103),
(4, 'Good morning', 101),
(5, 'Practising MySQL', 104),
(6, 'Foreign key example', 105);

SELECT * FROM tb5;

SELECT * FROM tb6;

