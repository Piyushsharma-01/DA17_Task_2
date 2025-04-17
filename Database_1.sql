#TABLE_1 Books:

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_date DATE,
    available_copies INT
)

INSERT INTO Books (book_id, title, author, genre, publication_date, available_copies) VALUES
(1, 'The Guide', 'R. K. Narayan', 'Fiction', '1958-06-01', 5),
(2, 'Malgudi Days', 'R. K. Narayan', 'Short Stories', '1943-05-15', 4),
(3, 'Godan', 'Munshi Premchand', 'Classic', '1936-07-20', 6),
(4, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', '1956-09-10', 3),
(5, 'The White Tiger', 'Aravind Adiga', 'Drama', '2008-12-01', 7),
(6, 'Midnight’s Children', 'Salman Rushdie', 'Magical Realism', '1981-04-15', 4),
(7, 'The Immortals of Meluha', 'Amish Tripathi', 'Mythology', '2010-02-20', 5),
(8, 'Raavan: Enemy of Aryavarta', 'Amish Tripathi', 'Mythology', '2019-07-01', 2),
(9, 'Wings of Fire', 'A. P. J. Abdul Kalam', 'Autobiography', '1999-08-10', 6),
(10, 'I Too Had a Love Story', 'Ravinder Singh', 'Romance', '2008-09-15', 3)

select * from Books

#TABLE_2 Borrowers:

CREATE TABLE Borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address TEXT,
    book_id INT,
    CONSTRAINT fk_Borrowers_Books FOREIGN KEY (book_id) REFERENCES Books(book_id)
)

INSERT INTO Borrowers (borrower_id, name, email, phone_number, address, book_id) VALUES
(1, 'Amit Sharma', 'amit.sharma@example.com', '9876543210', 'Delhi, India', 1),
(2, 'Priya Verma', 'priya.verma@example.com', '9876543211', 'Mumbai, India', 2),
(3, 'Rohan Patel', 'rohan.patel@example.com', '9876543212', 'Ahmedabad, India', 3),
(4, 'Sneha Gupta', 'sneha.gupta@example.com', '9876543213', 'Kolkata, India', 4),
(5, 'Vikram Reddy', 'vikram.reddy@example.com', '9876543214', 'Hyderabad, India', 5),
(6, 'Ananya Joshi', 'ananya.joshi@example.com', '9876543215', 'Pune, India', 6),
(7, 'Rahul Nair', 'rahul.nair@example.com', '9876543216', 'Bangalore, India', 7),
(8, 'Deepak Mehta', 'deepak.mehta@example.com', '9876543217', 'Chennai, India', 8),
(9, 'Krishna Das', 'krishna.das@example.com', '9876543218', 'Bhubaneswar, India', 9),
(10, 'Simran Chopra', 'simran.chopra@example.com', '9876543219', 'Jaipur, India', 10)

select *  from Borrowers
