use staging;

SHOW VARIABLES LIKE 'local_infile';

SET GLOBAL local_infile = 1; -- explicitly telling mysql workbench to allow loading of local data infile

LOAD DATA LOCAL INFILE 'C:/Users/User/OneDrive/Documents/data samples for project/Global superstore/Orders.csv'
INTO TABLE staging.orders
CHARACTER SET latin1 -- CHARACTER SET latin1 tells MySQL Interpret incoming bytes as latin1, then convert to utf8mb4 internally
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
