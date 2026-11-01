CREATE DATABASE db3;

USE db3;

CREATE TABLE tb3(
id INT PRIMARY KEY,
name CHAR(20),
email VARCHAR(30),
followers INT DEFAULT 0,
following INT DEFAULT 0,
age TINYINT UNSIGNED,
CONSTRAINT age_check CHECK (age>=18)
);

INSERT INTO tb3
VALUES
(1,"chandan","chandan@gmail.com", DEFAULT,200,23),
(2,"sujal","sujal@gmail.com", 300,DEFAULT,22);
INSERT INTO tb3
VALUES
(3,"sandeep","sandeep@gmail.com", 300,450,71),
(4,"ekramul","ekramul@gmail.com", 300,34,42),
(5,"abishek","abishek@gmail.com", 300,DEFAULT,25),
(6,"debanjan","debanjan@gmail.com",400,350,26);

SELECT * FROM tb3;

