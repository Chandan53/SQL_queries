CREATE DATABASE db6;
USE db6;

CREATE TABLE tb7(
Id INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Email VARCHAR(20) UNIQUE ,
Followers INT DEFAULT 0,
Following INT,
Age INT,
CONSTRAINT age_check CHECK (Age>=13)

);

INSERT INTO tb7
VALUES
(101,"chandan","chandan@gmail.com",DEFAULT,320,18),
(102, 'Rahul', 'rahul@gmail.com', 500, 250, 22),
(103, 'Priya', 'priya@gmail.com', DEFAULT, 400, 19),
(104, 'Amit', 'amit@gmail.com', 100, 150, 25),
(105, 'Sneha', 'sneha@gmail.com', 200, 300, 21),
(106, 'Arun', 'arun@gmail.com', DEFAULT, 180, 15),
(107, 'Kiran', 'kiran@gmail.com', 350, 220, 30),
(108, 'Anjali', 'anjali@gmail.com', 150, 190, 13);

#Foreign key -> "Prevent action that could destroy the link between tables" 

# Stop you from deleting something that another table is still using.

CREATE TABLE tb8(
Id INT,
Content VARCHAR(30),
user_id INT,
CONSTRAINT FOREIGN KEY (user_id) REFERENCES tb7(Id) 
);


INSERT INTO tb8
VALUES
(1, 'Hello everyone', 101),
(2, 'Learning SQL', 102),
(3, 'Welcome back', 103),
(4, 'Good morning', 101),
(5, 'Practising MySQL', 104),
(6, 'Foreign key example', 105);

SELECT * FROM tb7;

SELECT * FROM tb8;

DELETE FROM tb7
WHERE Id = 101;


-- First, delete the child data.
-- Then, delete the parent data.

-- If we try to delete parent data first,
-- MySQL gives an error because child data
-- is still referencing the parent data.


SELECT * FROM tb8
WHERE user_id = 101;


DELETE FROM tb8
WHERE user_id = 101;

# Parent data 
DELETE FROM tb7
WHERE Id = 101;