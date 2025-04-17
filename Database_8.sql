CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR NOT NULL,
    age INT,
    email VARCHAR UNIQUE,
    phone VARCHAR,
    address VARCHAR,
    enrollment_date DATE
)

INSERT INTO students (student_id, name, age, email, phone, address, enrollment_date) 
VALUES 
(1, 'Alice Johnson', 18, 'alice.johnson@email.com', '123-456-7890', '123 Main St, New York, NY', '2023-08-15'),
(2, 'Bob Smith', 20, 'bob.smith@email.com', '234-567-8901', '456 Elm St, Los Angeles, CA', '2022-09-10'),
(3, 'Charlie Davis', 17, 'charlie.davis@email.com', '345-678-9012', '789 Oak St, Chicago, IL', '2024-01-05'),
(4, 'Diana Green', 19, 'diana.green@email.com', '456-789-0123', '159 Pine St, Houston, TX', '2023-06-20'),
(5, 'Ethan White', 21, 'ethan.white@email.com', '567-890-1234', '753 Maple St, Miami, FL', '2021-11-30'),
(6, 'Fiona Black', 18, 'fiona.black@email.com', '678-901-2345', '357 Cedar St, Boston, MA', '2023-03-25'),
(7, 'George Clark', 22, 'george.clark@email.com', '789-012-3456', '951 Birch St, Dallas, TX', '2020-12-10'),
(8, 'Hannah Miller', 17, 'hannah.miller@email.com', '890-123-4567', '852 Spruce St, Seattle, WA', '2024-02-18'),
(9, 'Ian Scott', 19, 'ian.scott@email.com', '901-234-5678', '159 Redwood St, Denver, CO', '2023-07-05'),
(10, 'Jessica Adams', 16, 'jessica.adams@email.com', '012-345-6789', '753 Cypress St, San Francisco, CA', '2024-01-01')

select * from students

------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE courses (
    course_id INT PRIMARY KEY ,
	student_id INT,
    course_name VARCHAR NOT NULL,
    department VARCHAR,
    credits INT,
    instructor VARCHAR,
    semester VARCHAR,
   CONSTRAINT fk_courses_students FOREIGN KEY (student_id) REFERENCES students(student_id)
)

INSERT INTO courses (course_id, student_id, course_name, department, credits, instructor, semester) 
VALUES 
(1, 1, 'Introduction to Psychology', 'Humanities', 3, 'Dr. Emily Carter', 'Fall 2024'),
(2, 2, 'Calculus I', 'Mathematics', 4, 'Prof. John Anderson', 'Spring 2024'),
(3, 3, 'Computer Science Fundamentals', 'Computer Science', 3, 'Dr. Sarah Johnson', 'Fall 2023'),
(4, 4, 'Physics for Engineers', 'Physics', 4, 'Prof. Mark Williams', 'Spring 2023'),
(5, 5, 'Business Management', 'Business', 3, 'Dr. Laura Davis', 'Fall 2022'),
(6, 6, 'Organic Chemistry', 'Chemistry', 4, 'Prof. Robert Brown', 'Spring 2023'),
(7, 7, 'World History', 'History', 3, 'Dr. Rachel Green', 'Fall 2021'),
(8, 8, 'Artificial Intelligence', 'Computer Science', 4, 'Prof. Alan Turing', 'Spring 2024'),
(9, 9, 'Marketing Strategies', 'Marketing', 3, 'Dr. Susan White', 'Fall 2023'),
(10, 10, 'Data Science and Analytics', 'Data Science', 4, 'Prof. James Scott', 'Spring 2024')

select * from courses
------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    course_id INT,
    grade VARCHAR,
    enrollment_date DATE,
    status VARCHAR DEFAULT 'Active',
    CONSTRAINT fk_enrollments_courses FOREIGN KEY (course_id) REFERENCES courses(course_id)
)

INSERT INTO enrollments (enrollment_id, course_id, grade, enrollment_date, status) 
VALUES 
(1, 1, 'A', '2024-01-10', 'Active'),
(2, 2, 'B+', '2024-01-12', 'Active'),
(3, 3, 'A-', '2023-09-05', 'Completed'),
(4, 4, 'B', '2023-02-15', 'Completed'),
(5, 5, 'A+', '2022-08-20', 'Completed'),
(6, 6, 'B-', '2023-03-10', 'Dropped'),
(7, 7, 'C+', '2021-09-30', 'Completed'),
(8, 8, 'A', '2024-02-01', 'Active'),
(9, 9, 'B+', '2023-10-05', 'Completed'),
(10, 10, 'A-', '2024-03-15', 'Active')

select * from enrollments
