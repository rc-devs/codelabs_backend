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
    AuthorID int,
    AuthorName varchar(255)
);

CREATE TABLE Books (
    BookID int,
    Title varchar(255),
    AuthorID varchar(255),
    PublicationYear int
);

CREATE TABLE Sales (
    SaleID int,
    BookID int, 
    QuantitySold int,
    SaleDate date
);

INSERT INTO Authors(AuthorID, AuthorName)
VALUES
    (01, 'Saraj J. Maas'),
    (02, 'JRR Tolkien'),
    (03, 'F. Scott Fitzgerald'),
    (04, 'Ann Leckie');

INSERT INTO Books (BookID, Title, AuthorID, PublicationYear)
VALUES
  
    (1, 'Throne of Glass', 1, 2012),
    (2, 'A Court of Thorns and Roses', 1, 2015),
    (3, 'House of Earth and Blood', 1, 2020),
    (4, 'The Hobbit', 2, 1937),
    (5, 'The Fellowship of the Ring', 2, 1954),
    (6, 'The Two Towers', 2, 1954),
    (13, 'The Return of the King', 2, 1955),
    (7, 'The Great Gatsby', 3, 1925),
    (8, 'Tender Is the Night', 3, 1934),
    (9, 'This Side of Paradise', 3, 1920),
    (10, 'Ancillary Justice', 4, 2013),
    (11, 'Ancillary Sword', 4, 2014),
    (12, 'Ancillary Mercy', 4, 2015);

INSERT INTO Sales(SaleID, BookID, QuantitySold, SaleDate)
VALUES 
    (1, 5, 3, '2025-06-01'),
    (2, 1, 4, '2025-06-02'),  
    (3, 6, 2, '2025-06-03'),
    (4, 7, 6, '2025-06-04'),
    (5, 10, 3, '2025-06-05'),
    (6, 4, 1, '2025-06-06'),
    (7, 8, 2, '2025-06-07'),
    (8, 13, 5, '2025-06-08'),
    (9, 11, 3, '2025-06-09'),
    (10, 12, 2, '2025-06-10'),
    (11, 9, 1, '2025-06-11'),
    (12, 6, 4, '2025-06-12'),
    (13, 5, 2, '2025-06-13'),
    (14, 13, 3, '2025-06-14'),
    (15, 4, 2, '2025-06-15');


-- list books and authors
    SELECT * FROM Books;
    SELECT * FROM Authors;
-- Write a query to display a list of all books, including their titles and the names of their authors. Use an INNER JOIN to combine data from the Books and Authors tables.
   SELECT * FROM Books INNER JOIN Authors ON Books.AuthorID WHERE Books.AuthorID = Authors.AuthorID; --books first
   SELECT * FROM Authors INNER JOIN Books ON Authors.AuthorID WHERE Books.AuthorID = Authors.AuthorID; --authors first
--Books with No Sales:
    --SELECT * FROM Books WHERE Sales !=
--Write a query to find all books that have never been sold. Use a LEFT JOIN between Books and Sales and look for records where there are no corresponding sales entries.

--Total Sales for Each Book:
   --SELECT BookID FROM Sales GROUP BY BookID, SUM(QuantitySold)
--Write a query to calculate the total quantity sold for each book. Use an INNER JOIN to combine Books and Sales, and then use a GROUP BY clause with an aggregate function (SUM) to calculate total sales.
    --SELECT BookID FROM Sales INNER JOIN Books on Sales.BookID
--Sales Data for a Specific Year:
--Write a query to display the sales data (book title and quantity sold) for all books sold in a specific year (e.g., 2021). This will require joining all three tables and filtering based on SaleDate.