-- Exercise 1 Student database (SELECT w/ conditions)
CREATE TABLE Students (
    StudentID int,
    LastName varchar(255),
    FirstName varchar(255),
    BirthDate date,
    Notes text,
    GPA float, 
    Major varchar(255)
);

INSERT INTO Students (StudentID, LastName, FirstName, BirthDate, Notes, GPA, Major)
VALUES
    (1, 'Doe', 'John', '1990-01-01', 'John Doe was born on January 1 1990', 3.5, 'Computer Science'),
    (2, 'Doe', 'Jane', '1991-02-03', 'This is a note about Jane Doe', 3.6, 'Computer Science');

SELECT * FROM Students WHERE Major = 'Computer Science' AND GPA >= 3.5;