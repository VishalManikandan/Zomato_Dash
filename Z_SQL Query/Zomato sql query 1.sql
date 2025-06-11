create database Zomato_case

SHOW DATABASES;

USE Zomato_case

CREATE TABLE Zomato_data (
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

    ALTER TABLE Zomato_data
MODIFY COLUMN Latitude DECIMAL(10, 6),
MODIFY COLUMN Longitude DECIMAL(10, 6);

    
    select count(*) from Zomato_data
    
    
SHOW WARNINGS;

    
LOAD DATA LOCAL INFILE "C:/Users/visha/Downloads/zomato data.txt"
INTO TABLE Zomato_data
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

    
    
    SHOW VARIABLES LIKE 'local_infile';
    
    
GRANT FILE ON *.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
    
    zomato_data_backup
    SELECT * FROM Zomato_data LIMIT 10;


DELETE FROM Zomato_data;
drop TABLE Zomato_data;
CREATE TABLE Zomato_data_backup AS SELECT * FROM Zomato_data;


SHOW CREATE TABLE Zomato_data;


ALTER TABLE Zomato_data CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zomato data.csv'
INTO TABLE Zomato_data
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


SHOW WARNINGS;

ALTER TABLE Zomato_data
MODIFY Longitude FLOAT NULL,
MODIFY Latitude FLOAT NULL;

-- temp line --