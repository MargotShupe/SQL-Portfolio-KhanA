/*In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?
*/

/* Create table about the people and what they do here */
CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    author_name TEXT,
    born TEXT,
    dead TEXT,
    nationality TEXT);
    
INSERT INTO authors (author_name, born, dead, nationality) VALUES
    ('J.K Rowling', '1965-07-31', 'PRESENT', 'British'),
    ('Miguel de Cervantes', '1517-09-29', '1616-04-22', 'Spanish'),
    ('Dante Alighieri', 'Not Known', '1321-09-14', 'Italian'),
    ('William Shakespeare', '1564-04-01', '1616-04-23', 'English'),
    ('Homer', '8th Century BC', 'Not Known', 'Greek'),
    ('Oscar Wilde', '1854-10-16', '1900-11-30', 'Irish'),
    ('Jules Verne', '1828-02-06', '1905-03-24', 'French'),
    ('Gabriel Garcia Marquez', '1927-03-06', '2014-04-17', 'Colombian'),
    ('Charles Dickens', '1812-02-07', '1870-06-09', 'English'),
    ('Jonathan Swift', '1667-11-30', '1745-10-19', 'Anglo-Irish');


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
    ('1', 'Deathly Hallows ', '2007'),
    ('2', 'Don Qixote', '1605'),
    ('3', 'Divine Comedy', '1308'),
    ('4', 'Romeo and Juliet', '1594'),
    ('4', 'Much Ado About Nothing', '1598'),
    ('4', 'Julius Caesar', '1599'),
    ('4', 'Hamlet',  '1599'),
    ('4', 'King Lear', '1605'),
    ('4', 'Macbeth', '1606'),
    ('4', 'Sonnet', '1609'),
    ('4', 'The tempest', '1611'),
    ('5', 'The Iliad and the Odyssey', '740 B.C.E'),
    ('6', 'The picture of Dorian Gray', '1890'),
    ('6', 'The Happy Prince and Other Tales', '1888'),
    ('6', 'The Star child', '1891'),
    ('7', 'Around the World in 80 days', '1872'),
    ('7', 'Twenty Thousand Leagues under the sea', '1870'),
    ('7', 'Journey to the Center of the Earth', '1864'),
    ('8', 'One Hundred Years of Solitude', '1967'),
    ('8', 'Love in the Time of Cholera', '1985'),
    ('8', 'Strange Pilgrims', '1992'),
    ('8', 'Chronicle of a Death Foretold', '1981'),
    ('8', 'Memories of My Melancholy Whores', '2004'),
    ('9', 'David Copperfield', '1849'),
    ('9', 'Oliver', '1960'),
    ('10', 'Gulliver’s Travels', '1726');
    
/*Return all the books from each author*/

SELECT authors.author_name, books.books_name
FROM authors
JOIN books 
ON authors.id = books.author_id;

