create database Zomato_case

USE Zomato_case

CREATE TABLE Zomato_data_2 (
   countryID INT,
   country_name VARCHAR(220)
);

select * from Zomato_data_2

select count(*) from Zomato_data_2

SELECT * FROM Zomato_data_2 LIMIT 10;

LOAD DATA LOCAL INFILE 'C:/Users/visha/OneDrive/Desktop/Zomato_case/Zomato_case_2.csv'
INTO TABLE Zomato_data_2
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


SHOW WARNINGS;