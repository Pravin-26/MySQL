/* CREATE A DATABASE */
CREATE DATABASE productdata;

/* use database */
USE productdata;

/* Create Table */
CREATE TABLE sampletable(id int, samplename varchar(50), cost float, count int);


/* Inserting values */
INSERT INTO sampletable(id int, samplename varchar(50), cost float, count int) VALUES (1, 'Apple', 50, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, count int) VALUES (2, 'Banana', 100, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, count int) VALUES (3, 'Orange', 150, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, count int) VALUES (4, 'Pineapple', 200, 100 );

INSERT INTO sampletable(id int, samplename varchar(50), cost float, count int) VALUES (5, 'Mango', 250, 100 );

/* Retreiving records from Table */
SELECT * FROM sampletable;


/* Process - Creating a Trigger */
DELIMITER //

/* Logic is triggered before inserting record in sampletable for cost price which is less than 0 */
CREATE Trigger costcheckforsamplename BEFORE INSERT ON sampletable FOR EACH ROW 
BEGIN
IF new.cost < 0 THEN  new.cost = 0;
END IF;

END //

DELIMITER ;