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
    (2, 'Doe', 'Jane', '1991-02-03', 'This is a note about Jane Doe', 3.6, 'Computer Science'),
   

SELECT * FROM Students WHERE Major = 'Computer Science' AND GPA >= 3.5;


-- Exercise 3 Student database (SELECT FirstName, GPA, Filter, AVG sort)
CREATE TABLE Students2 (
    StudentID int,
    LastName varchar(255),
    FirstName varchar(255),
    BirthDate date,
    Notes text,
    GPA float 
);

INSERT INTO Students2 (StudentID, LastName, FirstName, BirthDate, Notes, GPA)
VALUES
    (1, 'Doe', 'John', '1990-01-01', 'John Doe was born on January 1 1990', 3.5 ),
    (2, 'Doe', 'Jane', '1991-02-03', 'This is a note about Jane Doe', 3.6 ),
    (3, 'Moe', 'Mark', '1992-03-03', 'This is a note about Mark Moe', 3.7 ),
    (3, 'Smith', 'Jane', '2000-02-30', 'This is a note about Jane Smith', 3.8 ),
    (3, 'Doe', 'Lisa', '1994-04-10', 'A note', 3.9 );
   

SELECT FirstName, AVG(GPA) FROM Students2 ;
SELECT FirstName FROM Students2 GROUP BY FirstName; 
SELECT FirstName, AVG(GPA) FROM Students2 GROUP BY FirstName HAVING COUNT(*) > 1 ORDER BY AVG(GPA) DESC;
