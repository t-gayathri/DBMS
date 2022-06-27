create database IRCTC;
use IRCTC;

CREATE TABLE `Customer`
(
 `CustId`      int NOT NULL ,
 `CustName`    varchar(45) NOT NULL ,
 `CustAge`     int NOT NULL ,
 `CustDOB`     date NOT NULL ,
 `CustAddress` varchar(45) NOT NULL ,

PRIMARY KEY (`CustId`)
);



CREATE TABLE `Train`
(
 `TrainNum`           int NOT NULL ,
 `TrainName`          varchar(45) NOT NULL ,
 `TrainPlatform`      int NOT NULL ,
 `TrainTime`          time NOT NULL ,
 `TrainDestination`   varchar(45) NOT NULL ,
 `TrainStartingPoint` varchar(45) NOT NULL ,
 `TotalTickets`       int NOT NULL ,

PRIMARY KEY (`TrainNum`)
);



CREATE TABLE `Ticket`
(
 `TicketNum`   int NOT NULL ,
 `TrainNum`    int NULL ,
 `CustId`      int NOT NULL ,
 `TicketFrom`  varchar(45) NOT NULL ,
 `TicketTo`    varchar(45) NOT NULL ,
 `TicketPrice` double NOT NULL ,
 `TicketDate`  date NOT NULL ,

PRIMARY KEY (`TicketNum`),
KEY `FK_33` (`CustId`),
CONSTRAINT `FK_31` FOREIGN KEY `FK_33` (`CustId`) REFERENCES `Customer` (`CustId`),
KEY `FK_36` (`TrainNum`),
CONSTRAINT `FK_34` FOREIGN KEY `FK_36` (`TrainNum`) REFERENCES `Train` (`TrainNum`)
);
