Create database if not exists RetailAnalytics;
use RetailAnalytics;

-- 1) CREATE schema 
create schema if not exists Staging;
DROP TABLE IF EXISTS staging.orders;
create table if not exists Staging.Orders(
	RowID INT,
	OrderID NVARCHAR(50),
	OrderDate varchar(20),
	ShipDate varchar(20),
	ShipMode varchar(40),
	CustomerID nvarchar(50),
	CustomerName varchar(100),
	Segment varchar(50),
    City NVARCHAR(50),
    State NVARCHAR(50),
    Country NVARCHAR(50),
    PostalCode NVARCHAR(20),
    Market varchar(50),
    Region NVARCHAR(50),
    ProductID NVARCHAR(100),
    Category NVARCHAR(50),
    SubCategory NVARCHAR(50),
    ProductName NVARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,4),
    ShippingCost Decimal(10,2),
    OrderPriority nvarchar(40)
)CHARACTER SET utf8mb4;

create table if not exists Staging.Returns (
	OrderID NVARCHAR(50),
    Returned NVARCHAR(10),
    Market VARCHAR(25)
);

ALTER table staging.orders
rename column oderid to OrderID;

create table if not exists Staging.People (
	 Person NVARCHAR(100),
    Region NVARCHAR(50)
);