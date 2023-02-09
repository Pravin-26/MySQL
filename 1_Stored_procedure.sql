/* MySQL Source Code for Stored Procedure */


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


/* Process - Creating a Stored Procedure */
DELIMITER //

CREATE PROCEDURE Getsummaryofitems(OUT Lowpriceproductcount int, OUT Highpriceproductcount int)
BEGIN

/* Select the samplename whose price is less than or equal to 150 */
SELECT COUNT(id) INTO Lowpriceproductcount FROM sampletable where cost <= 150;

/* Select the samplename whose price is more than 150 */
SELECT COUNT(id) INTO Highpriceproductcount FROM sampletable where cost > 150;

END //

DELIMITER ;

/* Invoking the stored procedure */
CALL Getsummaryofitems(@Lowpriceproductcount, @Highpriceproductcount);


/* Use of SELECT statements */
SELECT @Lowpriceproductcount, @Highpriceproductcount;
