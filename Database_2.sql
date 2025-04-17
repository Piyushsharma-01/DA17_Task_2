#TABLE_1 Employees:

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
)

INSERT INTO Employees (employee_id, first_name, last_name, email, department, salary) VALUES
(1, 'Rajesh', 'Sharma', 'rajesh.sharma@example.com', 'IT', 75000.00),
(2, 'Priya', 'Verma', 'priya.verma@example.com', 'HR', 60000.00),
(3, 'Amit', 'Patel', 'amit.patel@example.com', 'Finance', 80000.00),
(4, 'Sneha', 'Gupta', 'sneha.gupta@example.com', 'Marketing', 70000.00),
(5, 'Vikram', 'Reddy', 'vikram.reddy@example.com', 'Operations', 72000.00),
(6, 'Ananya', 'Joshi', 'ananya.joshi@example.com', 'IT', 78000.00),
(7, 'Rahul', 'Nair', 'rahul.nair@example.com', 'HR', 62000.00),
(8, 'Deepak', 'Mehta', 'deepak.mehta@example.com', 'Finance', 85000.00),
(9, 'Krishna', 'Das', 'krishna.das@example.com', 'Marketing', 71000.00),
(10, 'Simran', 'Chopra', 'simran.chopra@example.com', 'Operations', 73000.00)

select * from Employees

#TABLE_2 Departments:

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100),
    manager VARCHAR(100),
    budget DECIMAL(12,2),
    employee_id INT,
	CONSTRAINT fk_Departments_Employees FOREIGN Key (employee_id) REFERENCES Employees(employee_id)
)

INSERT INTO Departments (department_id, department_name, location, manager, budget, employee_id) VALUES
(1, 'IT', 'Mumbai', 'Rajesh Sharma', 500000.00, 1),
(2, 'HR', 'Bangalore', 'Priya Verma', 300000.00, 2),
(3, 'Finance', 'Delhi', 'Amit Patel', 600000.00, 3),
(4, 'Marketing', 'Pune', 'Sneha Gupta', 400000.00, 4),
(5, 'Operations', 'Hyderabad', 'Vikram Reddy', 450000.00, 5),
(6, 'IT', 'Mumbai', 'Ananya Joshi', 520000.00, 6),
(7, 'HR', 'Bangalore', 'Rahul Nair', 310000.00, 7),
(8, 'Finance', 'Delhi', 'Deepak Mehta', 610000.00, 8),
(9, 'Marketing', 'Pune', 'Krishna Das', 420000.00, 9),
(10, 'Operations', 'Hyderabad', 'Simran Chopra', 460000.00, 10)

select * from Departments