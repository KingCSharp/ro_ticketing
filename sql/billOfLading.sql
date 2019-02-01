use ro_ticketing;

CREATE TABLE `billoflading` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BolNumber` varchar(100) DEFAULT NULL,  
  `OrderDate` datetime(6) NOT NULL,
  `RequestDate` datetime NOT NULL,
  `LoadDate` datetime NOT NULL,
  `DeliveredDate` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
   `VendorId` int(11) NOT NULL DEFAULT '0',
   `CarrierId` int(11) NOT NULL DEFAULT '0',   
   `RefineryId` int(11) NOT NULL DEFAULT '0',   
  `DriverId` int(11) NOT NULL DEFAULT '0',
  `TruckId` int(11) NOT NULL DEFAULT '0',
  `Gallons` decimal(13,5) NOT NULL DEFAULT '0',   
  `Cost` decimal(13,5) NOT NULL DEFAULT '0',
  `ReceivedBol` bit(1) NOT NULL DEFAULT b'0',  
  `ReceivedInvoice` bit(1) NOT NULL DEFAULT b'0',    
  `PriceCheck` bit(1) NOT NULL DEFAULT b'0',
  `TaxCheck` bit(1) NOT NULL DEFAULT b'0',      
  `Paid` bit(1) NOT NULL DEFAULT b'0',
  `BolStatusId` tinyint(3) unsigned NOT NULL DEFAULT '0',  
  `IsEnabled` bit(1) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `CreatedBy` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `UpdatedAt` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `UpdatedBy` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`Id`),
  KEY `DriverId_idx` (`DriverId`),
  KEY `TruckId_idx` (`TruckId`),
  KEY `VendorId_idx` (`VendorId`),
  KEY `CarrierId_idx` (`CarrierId`),      
  KEY `RefineryId_idx` (`RefineryId`)        
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;