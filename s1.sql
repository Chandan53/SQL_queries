CREATE DATABASE db1;
USE db1;

CREATE TABLE tb1(
id INT PRIMARY KET,
name VARCHAR(20),
age INT NOT NULL
);

INSERT INTO tb1
VALUES
(101 , "chandan" , 23),
(102 , "sujal" , 22),
(103 , "sandeep" , 22),
(104 , "ayush" , 25),
(105 , "partil" , 21),
(106 , "vivek" , 21);

SELECT * FROM tb1;
SHOW TABLES;