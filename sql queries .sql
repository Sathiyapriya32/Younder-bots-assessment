-- 1. Create the database

CREATE DATABASE company_db;

-- 2. Switch to the newly created database

USE company_db;

-- 3. Create the departments table

CREATE TABLE departments (
  department_id INT PRIMARY KEY AUTO_INCREMENT,
  department_name VARCHAR(100) UNIQUE NOT NULL
);

-- 4. Create the employees table with a foreign key reference to departments
    
CREATE TABLE employees (
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  phone VARCHAR(20),
  image VARCHAR(255),
  salary DECIMAL(10, 2),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert departments

INSERT INTO departments (department_name)
VALUES
  ('HR'),
  ('Engineering'),
  ('Finance');

-- Insert values

INSERT INTO employees (name, email, phone, image, salary, department_id)
VALUES
  ('Jhon Doe',   'jhon@example.com',   '123-456-7890', '/images/jhon.jpg',   48000, 2),
  ('Jane Smith', 'jane@example.com',   '555-555-5555', '/images/jane.jpg',   60000, 1),
  ('Alice Brown','alice@example.com',  '987-654-3210', '/images/alice.jpg',  42000, 2),
  ('Bob Martin', 'bob@example.com',    '111-222-3333', '/images/bob.jpg',    70000, 3);


-- 1. Fetch all employees with a salary greater than 40000

SELECT * FROM employees WHERE salary > 40000;

-- 2. Update the salary of 'Jhon Doe' to 55000

UPDATE employees
SET salary = 55000
WHERE name = 'Jhon Doe' OR email = 'jhon@example.com';

-- 3. Delete the employee whose email is 'jhon@example.com'

DELETE FROM employees
WHERE email = 'jhon@example.com';

-- 4. Fetch all employees along with their department names using INNER JOIN

SELECT e.employee_id,
       e.name AS employee_name,
       e.email,
       e.phone,
       e.image,
       e.salary,
       d.department_name
FROM employees e
INNER JOIN departments d
  ON e.department_id = d.department_id;

-- 5. Retrieve the top 3 highest paid employees
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

