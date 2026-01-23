-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `LittleLemonDB` ;

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Bookings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Bookings` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `BookingID` INT NOT NULL AUTO_INCREMENT,
  `TableNo` INT NOT NULL,
  `BookingDate` DATE NOT NULL,
  PRIMARY KEY (`BookingID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`CustomerDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`CustomerDetails` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`CustomerDetails` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `GuestFirstName` VARCHAR(100) NOT NULL,
  `GuestLastName` VARCHAR(100) NOT NULL,
  `mail` VARCHAR(45) NULL DEFAULT NULL,
  `CustomerPhone` VARCHAR(11) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `CustomerID_UNIQUE` (`CustomerID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`DeliveryStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`DeliveryStatus` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`DeliveryStatus` (
  `DeliveryStatusID` INT NOT NULL AUTO_INCREMENT,
  `DeliveryStatus` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DeliveryStatusID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`MenuItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`MenuItems` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`MenuItems` (
  `MenuItemsID` INT NOT NULL AUTO_INCREMENT,
  `CourseName` VARCHAR(45) NOT NULL,
  `StarterName` VARCHAR(45) NOT NULL,
  `DesertName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MenuItemsID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'This Table Changed from Module 1 as per instructions in Module 2';


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Menu` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Menu` (
  `MenuID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(200) NULL DEFAULT NULL,
  `MenuItemsID` INT NOT NULL,
  `Price` DECIMAL(5,2) NOT NULL,
  `Cuisine` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`MenuID`),
  INDEX `fk_Menu_FoodTypes_idx` (`MenuItemsID` ASC) VISIBLE,
  CONSTRAINT `fk_Menu_FoodTypes`
    FOREIGN KEY (`MenuItemsID`)
    REFERENCES `LittleLemonDB`.`MenuItems` (`MenuItemsID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
COMMENT = 'This Table Changed from Module 1 as per instructions in Module 2';

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`StaffInformation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`StaffInformation` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`StaffInformation` (
  `EmployeeID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `Role` VARCHAR(100) NOT NULL,
  `Salary` DECIMAL(7,2) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  `Contact_Number` INT NOT NULL,
  `Email` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Orders` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `OrderDate` DATE NOT NULL,
  `Quantity` INT NOT NULL,
  `TotalCost` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `MenuID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_Orders_Bookings_idx` (`BookingID` ASC) VISIBLE,
  INDEX `fk_Orders_Menu_idx` (`MenuID` ASC) VISIBLE,
  INDEX `fk_Orders_Customers_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `fk_Orders_Staff_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `fk_Orders_Bookings`
    FOREIGN KEY (`BookingID`)
    REFERENCES `LittleLemonDB`.`Bookings` (`BookingID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Orders_Customers`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`CustomerDetails` (`CustomerID`),
  CONSTRAINT `fk_Orders_Menu`
    FOREIGN KEY (`MenuID`)
    REFERENCES `LittleLemonDB`.`Menu` (`MenuID`),
  CONSTRAINT `fk_Orders_Staff`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `LittleLemonDB`.`StaffInformation` (`EmployeeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`OrderDeliveryStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`OrderDeliveryStatus` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`OrderDeliveryStatus` (
  `OrderDeliveryID` INT NOT NULL AUTO_INCREMENT,
  `OrderID` INT NOT NULL,
  `DeliveryDate` DATE NOT NULL,
  `DeliveryStatus` INT NOT NULL,
  PRIMARY KEY (`OrderDeliveryID`),
  INDEX `fk_OrderDeliveryStatus_DeliveryStatus_idx` (`DeliveryStatus` ASC) VISIBLE,
  INDEX `fk_OrderDeliveryStatus_Orders_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `fk_OrderDeliveryStatus_DeliveryStatus`
    FOREIGN KEY (`DeliveryStatus`)
    REFERENCES `LittleLemonDB`.`DeliveryStatus` (`DeliveryStatusID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_OrderDeliveryStatus_Orders`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemonDB`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
