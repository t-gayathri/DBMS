create database Paytm;
use Paytm;

CREATE TABLE `Account`
(
 `AccountNumber`  integer NOT NULL ,
 `AccountType`    varchar(45) NOT NULL ,
 `BranchId`       int NOT NULL ,
 `AccountOwner`   varchar(45) NOT NULL ,
 `CustID`         int NOT NULL ,
 `AccountNominee` varchar(45) NOT NULL ,
 `PhoneNumber`    integer NOT NULL ,

PRIMARY KEY (`AccountNumber`),
KEY `FK_28` (`BranchId`, `CustID`),
CONSTRAINT `FK_25` FOREIGN KEY `FK_28` (`BranchId`, `CustID`) REFERENCES `BankBranch` (`BranchId`, `CustID`)
);



CREATE TABLE `BankBranch`
(
 `BranchId`      int NOT NULL ,
 `CustID`        int NOT NULL ,
 `BankName`      varchar(45) NOT NULL ,
 `BranchIFSC`    varchar(45) NOT NULL ,
 `BranchAddress` varchar(45) NOT NULL ,

PRIMARY KEY (`BranchId`, `CustID`),
KEY `FK_24` (`CustID`),
CONSTRAINT `FK_22` FOREIGN KEY `FK_24` (`CustID`) REFERENCES `Customer` (`CustID`)
);

CREATE TABLE `Customer`
(
 `CustID`         int NOT NULL ,
 `CustName`       varchar(45) NOT NULL ,
 `CustAge`        int NOT NULL ,
 `CustAddress`    varchar(45) NOT NULL ,
 `CustOccupation` varchar(45) NOT NULL ,

PRIMARY KEY (`CustID`)
);
