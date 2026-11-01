CREATE DATABASE db4;
USE db4;

CREATE TABLE tb4(
Id INT,# Id INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Email VARCHAR(20) UNIQUE ,
Followers INT DEFAULT 0,
Following INT,
Age INT CHECK (age >=13),
PRIMARY KEY (Id)
#CONSTRAINT age_check CHECK (age>18)
);

INSERT INTO tb4
VALUES
(101,"chandan","chandan@gmail.com",DEFAULT,320,18),
(102, 'Rahul', 'rahul@gmail.com', 500, 250, 22),
(103, 'Priya', 'priya@gmail.com', DEFAULT, 400, 19),
(104, 'Amit', 'amit@gmail.com', 100, 150, 25),
(105, 'Sneha', 'sneha@gmail.com', 200, 300, 21),
(106, 'Arun', 'arun@gmail.com', DEFAULT, 180, 15),
(107, 'Kiran', 'kiran@gmail.com', 350, 220, 30),
(108, 'Anjali', 'anjali@gmail.com', 150, 190, 13);


SELECT * FROM tb4;