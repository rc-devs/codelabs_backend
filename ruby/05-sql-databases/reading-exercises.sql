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


-- Exercise 2 Student database (SELECT FirstName, GPA, Filter, AVG sort)
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
SELECT FirstName, AVG(GPA) FROM Students2 GROUP BY FirstName HAVING COUNT(*) > 1 ORDER BY AVG(GPA) DESC; --from reading

--Exercise 3 bookstore database
CREATE TABLE Authors(
    AuthorID: varchar(255),
    AuthorName: varchar(255),
)

CREATE TABLE Books (
    BookID: int,
    Title: varchar(255),
    AuthorID: varchar(255),
    PublicationYear: int
)

CREATE TABLE Sales (
    SaleID: int,
    BookID: int, 
    QuantitySold: int,
    SaleDate; date
)

INSERT INTO Authors(AuthorID, AuthorName)
VALUES
    (01, "JRR Tolkien"),
    (02, "Ann Leckie"),
    (03, "Saraj J. Maas"),
    (04, "F. Scott Fitzgerald")

INSERT INTO Books (BookID, Title, AuthorID, PublicationYear)
VALUES
 


-- list books and authors
-- Write a query to display a list of all books, including their titles and the names of their authors. Use an INNER JOIN to combine data from the Books and Authors tables.
--Books with No Sales:
--Write a query to find all books that have never been sold. Use a LEFT JOIN between Books and Sales and look for records where there are no corresponding sales entries.
--Total Sales for Each Book:
--Write a query to calculate the total quantity sold for each book. Use an INNER JOIN to combine Books and Sales, and then use a GROUP BY clause with an aggregate function (SUM) to calculate total sales.
--Sales Data for a Specific Year:
--Write a query to display the sales data (book title and quantity sold) for all books sold in a specific year (e.g., 2021). This will require joining all three tables and filtering based on SaleDate.