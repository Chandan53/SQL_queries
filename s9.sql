CREATE DATABASE db9;

USE db9;

CREATE TABLE tb9(
id INT PRIMARY KEY,
age INT,
name Varchar(20) NOT NULL,
email Varchar(20) UNIQUE,
course VARCHAR(20) DEFAULT "BDA"
);

INSERT INTO tb9 (id, age, name, email, course)
VALUES
(1, 22, 'Sujal', 'sujal@gmail.com', DEFAULT),
(2, 23, 'Sandeep', 'sandeep@gmail.com', 'Python'),
(3, 21, 'Yash', 'yash@gmail.com', 'SQL'),
(4, 22, 'Vivek', 'vivek@gmail.com', 'Java'),
(5, 24, 'Paras', 'paras@gmail.com', 'Hadoop'),
(6, 21, 'Aagman', 'aagman@gmail.com', 'Spark'),
(7, 23, 'Ayush', 'ayush@gmail.com', 'Hive'),
(8, 22, 'Sohab', 'sohab@gmail.com', 'Kafka'),
(9, 24, 'Sohil', 'sohil@gmail.com', 'Airflow'),
(10, 23, 'Vishwajit', 'vishwajit@gmail.com', DEFAULT),
(11,23,"Chandan","chandan@gmail.com",DEFAULT);

SELECT id,age,name,email,course
FROM tb9
WHERE age =22;

SELECT id,age,name,email
FROM tb9
WHERE age >=23;

SELECT * FROM tb9
WHERE age >=23;
