-- Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.

CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER, price INTEGER);

INSERT INTO store VALUES(1, "WPants", 15, 2, 5);
INSERT INTO store VALUES(2, "MPants", 14, 4, 10);
INSERT INTO store VALUES(3, "KidsPants", 6, 20, 15);
INSERT INTO store VALUES(4, "WShirts", 12, 8, 5);
INSERT INTO store VALUES(5, "MShirts", 11, 10, 10);
INSERT INTO store VALUES(6, "KidsShirts", 10, 12, 15);
INSERT INTO store VALUES(7, "WShoes", 9, 14, 5);
INSERT INTO store VALUES(8, "MShoes", 8, 16, 10);
INSERT INTO store VALUES(9, "KidsShoes", 7, 18, 15);
INSERT INTO store VALUES(10, "WSocks", 6, 20, 5);
INSERT INTO store VALUES(11, "MSocks", 5, 22, 10);
INSERT INTO store VALUES(12, "KidsSocks", 4, 24, 15);
INSERT INTO store VALUES(13, "HairCare", 3, 26, 5);
INSERT INTO store VALUES(14, "BeautyCare", 2, 28, 10);
INSERT INTO store VALUES(15, "Cleaning", 1, 30, 15);


SELECT * FROM store ORDER BY price;
SELECT * FROM store ORDER BY aisle;
SELECT SUM(price) FROM store;
