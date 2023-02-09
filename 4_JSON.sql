/* MYSQL to store JSON data*/


/* CREATE A DATABASE */
CREATE DATABASE games;

USE games;

/* Create Table */
CREATE TABLE videogames(gameid float PRIMARY KEY, Attributes JSON);



/* Insert values or populate values in table*/
INSERT INTO videogames(gameid, Attributes) VALUES
(1.0, '{"PlayerID": "P1", "PlayerName":"Bob", "Active": "True"}'),
(2.0, '{"PlayerID": "A1", "PlayerName":"John", "Active": "False"}');

/*  Data Retrieval operation  */
SELECT gameid, Attributes -> '$.PlayerID', Attributes -> '$.PlayerName', Attributes -> '$.Active' 
FROM videogames;