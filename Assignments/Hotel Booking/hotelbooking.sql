create database HotelBooking;

use HotelBooking;

CREATE TABLE `Customer`
(
 `CustID`         int NOT NULL ,
 `CustFirstName`  varchar(45) NOT NULL ,
 `CustLAstName`   varchar(45) NOT NULL ,
 `CustAge`        int NOT NULL ,
 `CustAddress`    varchar(45) NOT NULL ,
 `CustProfession` varchar(45) NULL ,

PRIMARY KEY (`CustID`)
);

CREATE TABLE `Hotel`
(
 `HotelID`      int NOT NULL ,
 `HotelName`    varchar(45) NOT NULL ,
 `CustID`       int NOT NULL ,
 `TotalRooms`   int NOT NULL ,
 `HotelAddress` varchar(45) NOT NULL ,

PRIMARY KEY (`HotelID`),
KEY `FK_24` (`CustID`),
CONSTRAINT `FK_22` FOREIGN KEY `FK_24` (`CustID`) REFERENCES `Customer` (`CustID`)
);

CREATE TABLE `HotelRoom`
(
 `RoomNumber` int NOT NULL ,
 `TotalBeds`  int NOT NULL ,
 `HotelID`    int NOT NULL ,
 `RoomPrice`  double NOT NULL ,

PRIMARY KEY (`RoomNumber`),
KEY `FK_30` (`HotelID`),
CONSTRAINT `FK_28` FOREIGN KEY `FK_30` (`HotelID`) REFERENCES `Hotel` (`HotelID`)
);
