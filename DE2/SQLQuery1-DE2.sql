CREATE DATABASE SalesDW;
GO
USE SalesDW;
GO

CREATE TABLE DimProduct (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT NOT NULL,
    ProductName NVARCHAR(100) NOT NULL,
    QuantityPerUnit NVARCHAR(50)
);

CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    OrderYear INT,
    OrderMonth INT
);

CREATE TABLE FactSales (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductKey INT FOREIGN KEY REFERENCES DimProduct(ProductKey),
    DateKey INT FOREIGN KEY REFERENCES DimDate(DateKey),
    Quantity INT,
    UnitPrice DECIMAL(18,2),
    LineTotal DECIMAL(18,2)
);

INSERT INTO DimProduct (ProductID, ProductName, QuantityPerUnit)
VALUES 
(1, 'Chai', '10 boxes x 20 bags'),
(2, 'Chang', '24 - 12 oz bottles');

INSERT INTO DimDate (DateKey, FullDate, OrderYear, OrderMonth)
VALUES 
(20231001, '2023-10-01', 2023, 10),
(20231002, '2023-10-02', 2023, 10);

INSERT INTO FactSales (ProductKey, DateKey, Quantity, UnitPrice, LineTotal)
VALUES 
(1, 20231001, 15, 18.00, 270.00),
(2, 20231002, 20, 19.00, 380.00);