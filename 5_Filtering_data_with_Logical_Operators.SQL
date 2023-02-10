/* Filtering data using MySQL logical Operators */


/* CREATING DATABASE */
CREATE DATABASE samplecustomers;

USE samplecustomers;


/* CREATE TABLE */
CREATE Table customerstable(id int PRIMARY KEY, name VARCHAR(50), city VARCHAR(50), orderamount int);



/* Populate data into TABLE */
INSERT INTO customerstable(id, name, city, orderamount) VALUES (1, 'John', 'LA', 2000);

INSERT INTO customerstable(id, name, city, orderamount) VALUES (2, 'Bob', 'Jersey City', 1000);

INSERT INTO customerstable(id, name, city, orderamount) VALUES (3, 'Jerry' , 'Miami', 2000);

INSERT INTO customerstable(id, name, city, orderamount) VALUES (4, 'Ramanand', 'Mumbai', 1500);


/* Filtering data with AND operator */
SELECT * FROM customerstable WHERE orderamount > 1500 AND city = 'LA';


/* Filtering data with OR operator */
SELECT * FROM customerstable WHERE city = 'Mumbai' OR city = 'Miami';




/*Filtering data with NOT operator */
SELECT * FROM customerstable WHERE NOT city = 'Jersey City';



/* Filtering data with IN operator */
SELECT * FROM customerstable WHERE city IN ('LA', 'Miami');



/* Filtering data with BETWEEN operator */
SELECT * FROM customerstable WHERE ID BETWEEN 1 AND 4;




/*Filtering  data with LIKE operator */
SELECT * FROM customerstable WHERE name LIKE 'J _ _ _';