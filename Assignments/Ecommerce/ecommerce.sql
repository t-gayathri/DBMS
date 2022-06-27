create database Ecommerce;

use Ecommerce;

CREATE TABLE `Customer`
(
 `CustId`        int NOT NULL ,
 `CustFirstName` varchar(45) NOT NULL ,
 `CustLastName`  varchar(45) NOT NULL ,
 `CustAge`       int NOT NULL ,
 `CustAddress`   varchar(45) NOT NULL ,

PRIMARY KEY (`CustId`)
);



CREATE TABLE `Item`
(
 `ItemId`          int NOT NULL ,
 `ItemName`        varchar(45) NOT NULL ,
 `OrderID`         int NOT NULL ,
 `SupplierId`      int NOT NULL ,
 `CustId`          int NOT NULL ,
 `ItemDescription` varchar(45) NOT NULL ,
 `ItemType`        varchar(45) NOT NULL ,
 `ItemCost`        double NOT NULL ,

PRIMARY KEY (`ItemId`),
KEY `FK_38` (`SupplierId`),
CONSTRAINT `supplies` FOREIGN KEY `FK_38` (`SupplierId`) REFERENCES `Supplier` (`SupplierId`),
KEY `FK_45` (`OrderID`, `CustId`),
CONSTRAINT `have` FOREIGN KEY `FK_45` (`OrderID`, `CustId`) REFERENCES `Order` (`OrderID`, `CustId`)
);




CREATE TABLE `Order`
(
 `OrderID`                int NOT NULL ,
 `CustId`                 int NOT NULL ,
 `OrderType`              varchar(45) NOT NULL ,
 `OrderDate`              datetime NOT NULL ,
 `OrderEstimatedDelivery` date NOT NULL ,

PRIMARY KEY (`OrderID`, `CustId`),
KEY `FK_35` (`CustId`),
CONSTRAINT `orders` FOREIGN KEY `FK_35` (`CustId`) REFERENCES `Customer` (`CustId`)
);



CREATE TABLE `Supplier`
(
 `SupplierId`      int NOT NULL ,
 `SupplierName`    varchar(45) NOT NULL ,
 `SupplierAge`     varchar(45) NOT NULL ,
 `SupplierAddress` varchar(45) NOT NULL ,

PRIMARY KEY (`SupplierId`)
);

