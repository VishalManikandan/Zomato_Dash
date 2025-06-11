create database Zomato_case

USE Zomato_case

CREATE TABLE Zomato_data_1 (
    RestaurantID INT AUTO_INCREMENT PRIMARY KEY,
    RestaurantName VARCHAR(255),
    CountryCode INT,
    City VARCHAR(100),
    Address VARCHAR(255),
    Locality VARCHAR(100),
    LocalityVerbose VARCHAR(255),
    Longitude VARCHAR(100),
    Latitude VARCHAR(100),
    Cuisines VARCHAR(255),
    Currency VARCHAR(50),
    Has_Table_Booking VARCHAR(50),
    Has_Online_Delivery VARCHAR(50),
    Is_Delivering_Now VARCHAR(50),
    Switch_to_Order_Menu VARCHAR(50),
    Price_Range INT,
    Votes INT,
    Average_Cost_for_Two INT,
    Rating FLOAT,
    Datekey_Opening DATE,
    New_Datekeys DATE,
    Year INT,
    Month INT,
    Month_Name VARCHAR(20),
    Quarter INT,
    Day_Name VARCHAR(20),
    Month_Year VARCHAR(7), -- Format: 'MM/YYYY'
    Cuisine VARCHAR(255)
);

select * from Zomato_data_1

select count(*) from Zomato_data_1

SELECT * FROM Zomato_data_1 LIMIT 10;

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zomato data.csv'
INTO TABLE Zomato_data_1
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


SHOW WARNINGS;

