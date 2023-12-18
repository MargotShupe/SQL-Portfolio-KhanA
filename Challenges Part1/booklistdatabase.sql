--What are your favorite books? You can make a database table to store them in! In this first step, create a table to store your list of books. It should have columns for id, name, and rating.

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);
INSERT INTO books VALUES(1, "Harry Potter", 3);
INSERT INTO books VALUES(2, "Dorian Grey", 10);
INSERT INTO books VALUES(3, "Game of Thrones", 9);

-- In this first excersise I learned three queries.
-- CREATE TABLE to create a new table following by the name you want to give. You
-- also have to describe the type of values. The id is something we almost need in every single data set.
-- INSERT INTO is to add data to that table id, name and rating.
-- The query I need to use to see the data base I just created is.
-- SELECT * FROM books;