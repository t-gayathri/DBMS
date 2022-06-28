create database IMDB;
use IMDB;

CREATE TABLE `Actor`
(
 `ActorId`              int NOT NULL ,
 `ActorName`            varchar(45) NOT NULL ,
 `ActorAge`             int NOT NULL ,
 `ActorCurrentProjects` varchar(45) NOT NULL ,
 `ActorLastMovie`       varchar(45) NOT NULL ,
 `ActorLastSerial`      varchar(45) NOT NULL ,

PRIMARY KEY (`ActorId`)
);



CREATE TABLE `Movie`
(
 `MovieNumber`      int NOT NULL ,
 `ActorId`          int NOT NULL ,
 `MovieName`        varchar(45) NOT NULL ,
 `MovieDirector`    varchar(45) NOT NULL ,
 `MovieProducer`    varchar(45) NOT NULL ,
 `MovieBudget`      double NOT NULL ,
 `MovieDescription` varchar(45) NOT NULL ,

PRIMARY KEY (`MovieNumber`, `ActorId`),
KEY `FK_28` (`ActorId`),
CONSTRAINT `FK_26` FOREIGN KEY `FK_28` (`ActorId`) REFERENCES `Actor` (`ActorId`)
);



CREATE TABLE `Serial`
(
 `SerialNumber`      int NOT NULL ,
 `ActorId`           int NOT NULL ,
 `SerialName`        varchar(45) NOT NULL ,
 `SerialDirector`    varchar(45) NOT NULL ,
 `SerialProducer`    varchar(45) NOT NULL ,
 `SerialDescription` varchar(45) NOT NULL ,
 `SerialBudget`      double NOT NULL ,

PRIMARY KEY (`SerialNumber`, `ActorId`),
KEY `FK_31` (`ActorId`),
CONSTRAINT `FK_29` FOREIGN KEY `FK_31` (`ActorId`) REFERENCES `Actor` (`ActorId`)
);
