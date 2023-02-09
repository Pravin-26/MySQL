/* CREATE A DATABASE */
CREATE DATABASE productdata;

/* use database */
USE productdata;

/* Create Table */
CREATE TABLE sampletable(id int PRIMARY KEY, samplename varchar(50), cost float, stock int);


/* Inserting values */
INSERT INTO sampletable(id int, samplename varchar(50), cost float, stock int) VALUES (1, 'Apple', 50.0, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, stock int) VALUES (2, 'Banana', 100.0, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, stock int) VALUES (3, 'Orange', 150.0, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, stock int) VALUES (4, 'Pineapple', 200.0, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, stock int) VALUES (5, 'Mango', 250.0, 100 );




/* PREPARED STATEMENTS  */

/*Compiling or Preparing statements*/.
PREPARE stockquantity FROM 'SELECT stock FROM sampletable WHERE id = ?';

/*Define a variable that will take value*/
SET @stockid = 1;


/* Execute the PREPARED STATEMENTS */
EXECUTE stockquantity USING @stockid;