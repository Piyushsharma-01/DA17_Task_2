#TABLE_1 Students:

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15)
)

INSERT INTO Students (student_id, first_name, last_name, dob, email, phone_number) VALUES
(1, 'Aarav', 'Sharma', '2005-03-15', 'aarav.sharma@example.com', '9876543210'),
(2, 'Ishita', 'Verma', '2004-07-22', 'ishita.verma@example.com', '9876543211'),
(3, 'Rohan', 'Patel', '2003-11-10', 'rohan.patel@example.com', '9876543212'),
(4, 'Sneha', 'Gupta', '2005-01-25', 'sneha.gupta@example.com', '9876543213'),
(5, 'Vikram', 'Reddy', '2004-05-30', 'vikram.reddy@example.com', '9876543214'),
(6, 'Ananya', 'Joshi', '2003-09-18', 'ananya.joshi@example.com', '9876543215'),
(7, 'Rahul', 'Nair', '2005-02-28', 'rahul.nair@example.com', '9876543216'),
(8, 'Priya', 'Mehta', '2004-12-12', 'priya.mehta@example.com', '9876543217'),
(9, 'Krishna', 'Das', '2003-08-05', 'krishna.das@example.com', '9876543218'),
(10, 'Simran', 'Chopra', '2004-06-17', 'simran.chopra@example.com', '9876543219')

select * from Students


#TABLE_2 Courses:

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    description TEXT,
    credits INT,
    teacher VARCHAR(100),
    student_id INT,
	CONSTRAINT fk_Courses_Students FOREIGN Key (student_id) REFERENCES Students(student_id)
)

INSERT INTO Courses (course_id, course_name, description, credits, teacher, student_id) VALUES
(1, 'Mathematics', 'Advanced algebra and calculus', 4, 'Dr. Anil Kapoor', 1),
(2, 'Physics', 'Mechanics and thermodynamics', 3, 'Dr. Ramesh Iyer', 2),
(3, 'Chemistry', 'Organic and inorganic chemistry', 3, 'Dr. Sunita Rao', 3),
(4, 'Biology', 'Human anatomy and botany', 3, 'Dr. Meena Menon', 4),
(5, 'History', 'Indian and world history', 2, 'Prof. Ashok Sharma', 5),
(6, 'English Literature', 'Classical and modern literature', 3, 'Dr. Priyanka Khanna', 6),
(7, 'Computer Science', 'Programming and database management', 4, 'Prof. Sanjay Kumar', 7),
(8, 'Economics', 'Micro and macroeconomics', 3, 'Dr. Neha Agrawal', 8),
(9, 'Political Science', 'Indian and global politics', 3, 'Prof. Arvind Deshmukh', 9),
(10, 'Environmental Science', 'Ecology and sustainable development', 2, 'Dr. Kavita Bansal', 10)

select * from Courses