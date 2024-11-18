CREATE DATABASE `hotelinventory` ;
-- hotelinventory.inventorytransactions definition

CREATE TABLE `inventorytransactions` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `ItemID` int NOT NULL,
  `TransactionType` enum('Supply','Usage') NOT NULL,
  `Quantity` int NOT NULL,
  `TransactionDate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`TransactionID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `inventorytransactions_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- hotelinventory.items definition

CREATE TABLE `items` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(255) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `StockQuantity` int DEFAULT '0',
  `ReorderLevel` int NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- hotelinventory.purchaseorders definition

CREATE TABLE `purchaseorders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `ItemID` int NOT NULL,
  `SupplierID` int NOT NULL,
  `OrderQuantity` int NOT NULL,
  `OrderDate` date NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `ItemID` (`ItemID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `purchaseorders_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`),
  CONSTRAINT `purchaseorders_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- hotelinventory.suppliers definition

CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(255) NOT NULL,
  `Contact` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;