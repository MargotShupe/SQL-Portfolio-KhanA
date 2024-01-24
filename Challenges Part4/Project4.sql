/* Think about your favorite apps, and pick one that stores your data- like a game that stores scores,
an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores 
your data in a SQL database (which is pretty likely!), and write SQL statements that might look like 
their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.
*/

CREATE table books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER,
    books_name TEXT,
    year_of_published TEXT);
    
INSERT INTO books ( author_id, books_name, year_of_published)
VALUES
    ('1', 'Philosophers Stone', '1997'),
    ('1', 'Chamber of Secrets', '1998'),
    ('1', 'Prisoner of Azkaban ', '1999'),
    ('1', 'Globet of Fire', '2000'),
    ('1', 'Order of the Phoenix ', '2003'),
    ('1', 'Half-Blood Prince ', '2005'),
    ('1', 'Deathly Hallows ', '2007');
    
UPDATE books set books_name = 'Deathly Hallows Part 1'
WHERE id = 7;

INSERT INTO books ( author_id, books_name, year_of_published)
VALUES
('1', 'Deathly Hallows Part 2 ', '2007');

DELETE FROM books 
WHERE id = 8; 

-- SELECT * FROM books;

/* In this project I used a data set from a previous lesson but this time using the following 
commands CREATE a table, INSERT values, UPDATE data and DELETE it. */