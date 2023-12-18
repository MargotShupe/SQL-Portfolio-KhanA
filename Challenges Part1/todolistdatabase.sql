-- Step1
-- Here's a table containing a TODO list with the number of minutes it will take to complete each item. Insert another item to your todo list with the estimated minutes it will take.
-- Step 2
-- Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Driving to the office", 35);

SELECT SUM(minutes) FROM todo_list;

-- In this challenge we start using aggregate functions sush is SUM(follow by the name of the column you want to sum) FROM
-- the name of the table. Something pretty cool about aggregate function on SQL is the if you update
-- the column then your query will automatically update processing the new values. 