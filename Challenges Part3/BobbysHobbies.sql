-- Step 1
-- We've created a database of people and hobbies, and each row in hobbies is related
-- to a row in persons via the person_id column. In this first step, insert one more 
-- row in persons and then one more row in hobbies that is related to the newly inserted person.

-- Step 2
-- Now, select the 2 tables with a join so that you can see each person's name next to their
-- hobby.

-- Step 3
-- Now, add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Margot Shupe", 7);

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (6, "dataanalysis");

SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;
    
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name = "Bobby McBobbyFace";
    
-- The first step is pretty easy, just adding some rows to both tables. Always remeber that primary ID is given by default.
-- when adding the rows you have to remember that primary key 5 will be Fluffy Sparkles.
-- but the row I added was primary key 6 Margot Shupe and that's what I wanated to diplay.

-- In the second step when joning tables we habe to add the name of the table following
-- with a dot and then the name of the column. You have to be very especific since when you
-- are working with multiple table they could have the same column's names.
-- After that you have to find what are the two columns you are going to match in this case
-- persons.id = hobbies.person_id.

-- Finally for step three I only had to add another condition to filter my results.