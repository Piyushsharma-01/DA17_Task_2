CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR NOT NULL,
  location VARCHAR,
  manager_id VARCHAR ,
  phone_number VARCHAR,
  email VARCHAR UNIQUE
)

INSERT INTO departments (department_id, department_name, location, manager_id, phone_number, email) 
VALUES 
(1, 'Human Resources', 'New York', 'HR001', '123-456-7890', 'hr@company.com'),
(2, 'Finance', 'Los Angeles', 'FIN002', '987-654-3210', 'finance@company.com'),
(3, 'Marketing', 'Chicago', 'MKT003', '555-123-4567', 'marketing@company.com'),
(4, 'IT', 'San Francisco', 'IT004', '444-987-6543', 'it@company.com'),
(5, 'Sales', 'Miami', 'SAL005', '222-333-4444', 'sales@company.com'),
(6, 'Research & Development', 'Boston', 'RD006', '777-888-9999', 'rnd@company.com'),
(7, 'Customer Support', 'Dallas', 'CS007', '666-111-2222', 'support@company.com'),
(8, 'Legal', 'Seattle', 'LEG008', '999-555-6666', 'legal@company.com'),
(9, 'Logistics', 'Houston', 'LOG009', '333-777-8888', 'logistics@company.com'),
(10, 'Procurement', 'Denver', 'PRO010', '111-444-5555', 'procurement@company.com')

select * from departments

--------------------------------------------------------------------------------------

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT CHECK (age >= 18),
    department_id INT,
    hire_date DATE,
    position VARCHAR(255),
    salary DECIMAL(10,2),
    CONSTRAINT fk_employees_departments FOREIGN KEY (department_id) REFERENCES departments(department_id)
)

INSERT INTO employees (employee_id, name, age, department_id, hire_date, position, salary) 
VALUES 
(1, 'John Doe', 30, 1, '2020-05-15', 'HR Manager', 75000.00),
(2, 'Jane Smith', 28, 2, '2019-08-22', 'Financial Analyst', 68000.00),
(3, 'Michael Brown', 35, 3, '2018-03-10', 'Marketing Director', 85000.00),
(4, 'Emily Johnson', 26, 4, '2021-01-12', 'Software Engineer', 72000.00),
(5, 'David Wilson', 40, 5, '2017-06-25', 'Sales Manager', 90000.00),
(6, 'Sophia Lee', 29, 6, '2022-07-18', 'Research Scientist', 78000.00),
(7, 'Daniel Martinez', 33, 7, '2016-11-05', 'Customer Support Lead', 60000.00),
(8, 'Olivia Anderson', 27, 8, '2023-02-14', 'Legal Advisor', 83000.00),
(9, 'James White', 31, 9, '2015-09-30', 'Logistics Coordinator', 70000.00),
(10, 'Charlotte Thomas', 25, 10, '2024-03-08', 'Procurement Specialist', 65000.00)

select * from employees

------------------------------------------------------------------------------------------------
CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    base_salary DECIMAL NOT NULL,
    bonus DECIMAL,
    deductions DECIMAL,
    total_salary DECIMAL,
	payment_date DATE,
    CONSTRAINT fk_salaries_employees FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
)

INSERT INTO salaries (salary_id, employee_id, base_salary, bonus, deductions, payment_date) 
VALUES 
(1, 1, 75000.00, 5000.00, 2000.00, '2024-01-31'),
(2, 2, 68000.00, 4500.00, 1800.00, '2024-01-31'),
(3, 3, 85000.00, 6000.00, 2500.00, '2024-01-31'),
(4, 4, 72000.00, 4800.00, 2200.00, '2024-01-31'),
(5, 5, 90000.00, 7000.00, 3000.00, '2024-01-31'),
(6, 6, 78000.00, 5500.00, 2700.00, '2024-01-31'),
(7, 7, 60000.00, 4000.00, 1500.00, '2024-01-31'),
(8, 8, 83000.00, 6500.00, 2800.00, '2024-01-31'),
(9, 9, 70000.00, 4700.00, 2100.00, '2024-01-31'),
(10, 10, 65000.00, 4200.00, 1900.00, '2024-01-31')

select * from salaries