CREATE DATABASE db7;

USE db7;

CREATE TABLE tb7(
id INT PRIMARY KEY,
name Varchar(20) NOT NULL,
email Varchar(20) UNIQUE,
course VARCHAR(20) DEFAULT "BDA"
);

INSERT INTO tb7 (id, name, email, course)
VALUES
(1, 'Sujal', 'sujal@gmail.com', 'BDA'),
(2, 'Sandeep', 'sandeep@gmail.com', 'Python'),
(3, 'Yash', 'yash@gmail.com', 'SQL'),
(4, 'Vivek', 'vivek@gmail.com', 'Java'),
(5, 'Paras', 'paras@gmail.com', 'Hadoop'),
(6, 'Aagman', 'aagman@gmail.com', 'Spark'),
(7, 'Ayush', 'ayush@gmail.com', 'Hive'),
(8, 'Sohab', 'sohab@gmail.com', 'Kafka'),
(9, 'Sohil', 'sohil@gmail.com', 'Airflow'),
(10, 'Vishwajit', 'vishwajit@gmail.com', 'BDA');


SELECT * FROM tb7;

