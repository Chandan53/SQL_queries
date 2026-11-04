CREATE DATABASE db16;

USE db16;

CREATE TABLE tb16 (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    department VARCHAR(30),
    salary INT,
    age INT,
    city VARCHAR(30)
);

INSERT INTO tb16
VALUES
(1, 'Chandan', 'IT', 30000, 22, 'Bangalore'),
(2, 'Rahul', 'HR', 25000, 24, 'Mumbai'),
(3, 'Sujal', 'IT', 35000, 23, 'Bangalore'),
(4, 'Yash', 'Finance', 40000, 25, 'Delhi'),
(5, 'Vivek', 'HR', 28000, 22, 'Mumbai'),
(6, 'Paras', 'IT', 45000, 26, 'Delhi'),
(7, 'Ayush', 'Finance', 38000, 24, 'Bangalore'),
(8, 'Sandeep', 'IT', 32000, 22, 'Mumbai'),
(9, 'Sohil', 'HR', 27000, 23, 'Delhi'),
(10, 'Anjali', 'Finance', 42000, 25, 'Bangalore'),
(11, 'Amit', 'IT', 50000, 27, 'Delhi'),
(12, 'Priya', 'HR', 30000, 24, 'Bangalore'),
(13, 'Arun', 'Finance', 36000, 22, 'Mumbai'),
(14, 'Sneha', 'IT', 40000, 25, 'Bangalore'),
(15, 'Kiran', 'HR', 33000, 26, 'Delhi'),
(16, 'Rohit', 'Finance', 45000, 28, 'Mumbai'),
(17, 'Neha', 'IT', 38000, 24, 'Delhi'),
(18, 'Vishal', 'HR', 29000, 22, 'Bangalore'),
(19, 'Pooja', 'Finance', 41000, 23, 'Delhi'),
(20, 'Sohab', 'IT', 34000, 26, 'Mumbai');

SELECT department
FROM tb16
GROUP BY department;

SELECT age
FROM tb16
GROUP BY age;

#Display the total number of employees in each department.
select name ,COUNT(id)
FROM tb16
GROUP BY name ;

#Find the average salary of each department.
select department,AVG(salary) as avg_salary
FROM tb16
GROUP BY department;

#Find the maximum salary in each department.
select department, MAX(salary) as max_salary
FROM tb16
GROUP BY department;

#Find the minimum salary in each department.
select department,MIN(salary) as min_salary
FROM tb16
GROUP BY department;

#Calculate the total salary paid by each department.
select department,SUM(salary) as total_salary
FROM tb16
GROUP BY department;

#Count the number of employees in each city.
select city, COUNT(name) as city_count
FROM tb16
GROUP BY city;

#Display the average age of employees in each department.
select department,AVG(age) as avg_age
FROM tb16
GROUP BY department;

#Find the total salary paid in each city.
select city ,SUM(salary) as sal_each_city
FROM tb16
GROUP BY city;

#Find the maximum age in each department.
select department , MAX(age)
FROM tb16
GROUP BY department;

#Find the minimum salary in each city.
select city , MIN(salary)
FROM tb16
GROUP BY city;

#Count how many employees belong to each department and city.
select department,city,COUNT(name) as employee
FROM tb16
GROUP BY department,city;


#Find the average salary of employees in each city.
select city,AVG(salary) as avg_salary_each_city
from tb16
GROUP BY city;

#Find the average salary of employees in each department where salary is greater than 30,000.
select department ,AVG(salary)
from tb16
where salary >30000
GROUP BY name,department;

#Count employees in each department whose age is greater than 23.
select department,COUNT(name)
FROM tb16
where age >23
GROUP BY department;



#Calculate the total salary of employees in each city where salary is greater than 35,000.
SELECT 
    city, 
    SUM(salary) AS total_sal
FROM tb16
WHERE salary > 35000
GROUP BY city;

# group rows with the same values in specified column  into summary rows 
select age
FROM tb16
GROUP BY age;