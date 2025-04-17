CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    phone_number VARCHAR(10),
    email VARCHAR(100)
)

INSERT INTO Patients (patient_id, first_name, last_name, dob, phone_number, email) VALUES
(1, 'Aarav', 'Sharma', '1992-05-14', '9876543201', 'aarav.sharma@example.com'),
(2, 'Bhavna', 'Verma', '1985-08-22', '9876543202', 'bhavna.verma@example.com'),
(3, 'Chirag', 'Patel', '1998-03-10', '9876543203', 'chirag.patel@example.com'),
(4, 'Divya', 'Gupta', '2000-11-28', '9876543204', 'divya.gupta@example.com'),
(5, 'Eshaan', 'Reddy', '1987-07-19', '9876543205', 'eshaan.reddy@example.com'),
(6, 'Farhan', 'Joshi', '1993-09-05', '9876543206', 'farhan.joshi@example.com'),
(7, 'Garima', 'Nair', '1995-12-30', '9876543207', 'garima.nair@example.com'),
(8, 'Himanshu', 'Mehta', '1989-04-15', '9876543208', 'himanshu.mehta@example.com'),
(9, 'Isha', 'Das', '2002-06-25', '9876543209', 'isha.das@example.com'),
(10, 'Jayant', 'Chopra', '1978-01-18', '9876543210', 'jayant.chopra@example.com')

SELECT * FROM Patients


CREATE TABLE Appointment (
    appointment_id VARCHAR PRIMARY KEY,
    patient_id INT,
    doctor_name VARCHAR(100),
    appointment_date DATE,
    reason TEXT,
    status VARCHAR(50),
    CONSTRAINT fk_Appointments_Patients FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) 
)

INSERT INTO Appointment (appointment_id, patient_id, doctor_name, appointment_date, reason, status) VALUES
('APT001', 1, 'Dr. Arvind Kapoor', '2024-04-10', 'General checkup', 'Confirmed'),
('APT002', 2, 'Dr. Bhavna Iyer', '2024-05-12', 'Fever and cold', 'Completed'),
('APT003', 3, 'Dr. Chetan Malhotra', '2024-06-15', 'Back pain', 'Pending'),
('APT004', 4, 'Dr. Divya Sharma', '2024-07-20', 'Skin allergy', 'Confirmed'),
('APT005', 5, 'Dr. Eknath Rao', '2024-08-05', 'Chest pain', 'Cancelled'),
('APT006', 6, 'Dr. Farida Nair', '2024-09-18', 'Migraine', 'Completed'),
('APT007', 7, 'Dr. Govind Joshi', '2024-10-10', 'Stomach ache', 'Pending'),
('APT008', 8, 'Dr. Harish Verma', '2024-11-22', 'Eye infection', 'Confirmed'),
('APT009', 9, 'Dr. Indu Patel', '2024-12-03', 'High blood pressure', 'Completed'),
('APT010', 10, 'Dr. Jaya Reddy', '2025-01-15', 'Diabetes management', 'Pending')

SELECT * FROM Appointment