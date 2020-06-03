SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE IF NOT EXISTS `Apartment` (
  `Apartment_Number` bigint(20) unsigned NOT NULL,
  `BuildingID` bigint(20) unsigned NOT NULL,
  `Number_Of_Bedrooms` bigint(20) unsigned NOT NULL,
  `Total_Area` bigint(20) unsigned NOT NULL,
  `Office_Room_Number` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Building` (
  `BuildingID` bigint(20) unsigned NOT NULL,
  `Address_Number` bigint(20) unsigned NOT NULL,
  `Address_Street` varchar(255) NOT NULL,
  `Address_Postcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `EmergencyContact` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `Contact_First_Name` varchar(255) NOT NULL,
  `Contact_Last_Name` varchar(255) NOT NULL,
  `Contact_Phone_Number` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Employee` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `Salary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Lease` (
  `LeaseID` bigint(20) unsigned NOT NULL,
  `Monthly_Rent` bigint(20) unsigned NOT NULL,
  `Contract_Start_Date` date NOT NULL,
  `Contract_End_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `LeaseManagerSigned` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `LeaseID` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `LeaseTenantSigned` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `LeaseID` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Manager` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `Office_Room_Number` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Person` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Date_Of_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `PersonApartment` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `Apartment_Number` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Technician` (
  `PersonID` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `TechnicianSkills` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `Carpentry` tinyint(1) NOT NULL DEFAULT '0',
  `Electricity` tinyint(1) NOT NULL DEFAULT '0',
  `Plumming` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Tenant` (
  `PersonID` bigint(20) unsigned NOT NULL,
  `Bank_Account_Number` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `Apartment`
  ADD PRIMARY KEY (`BuildingID`,`Apartment_Number`),
  ADD KEY `BuildingID` (`BuildingID`),
  ADD KEY `Apartment_Number` (`Apartment_Number`),
  ADD KEY `Office_Room_Number` (`Office_Room_Number`);

ALTER TABLE `Building`
  ADD PRIMARY KEY (`BuildingID`),
  ADD UNIQUE KEY `BuildingID_2` (`BuildingID`),
  ADD KEY `BuildingID` (`BuildingID`);

ALTER TABLE `EmergencyContact`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`);

ALTER TABLE `Employee`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`);

ALTER TABLE `Lease`
  ADD PRIMARY KEY (`LeaseID`),
  ADD UNIQUE KEY `LeaseID_2` (`LeaseID`),
  ADD KEY `LeaseID` (`LeaseID`);

ALTER TABLE `LeaseManagerSigned`
  ADD PRIMARY KEY (`PersonID`,`LeaseID`),
  ADD KEY `PersonID` (`PersonID`),
  ADD KEY `LeaseID` (`LeaseID`);

ALTER TABLE `LeaseTenantSigned`
  ADD PRIMARY KEY (`PersonID`,`LeaseID`),
  ADD KEY `PersonID` (`PersonID`),
  ADD KEY `LeaseID` (`LeaseID`);

ALTER TABLE `Manager`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`),
  ADD KEY `Office_Room_Number` (`Office_Room_Number`);

ALTER TABLE `Person`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`);

ALTER TABLE `PersonApartment`
  ADD PRIMARY KEY (`PersonID`,`Apartment_Number`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`),
  ADD KEY `Apartment_Number` (`Apartment_Number`);

ALTER TABLE `Technician`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`);

ALTER TABLE `TechnicianSkills`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`);

ALTER TABLE `Tenant`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID_2` (`PersonID`),
  ADD KEY `PersonID` (`PersonID`);


ALTER TABLE `Building`
  MODIFY `BuildingID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `Lease`
  MODIFY `LeaseID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
ALTER TABLE `Person`
  MODIFY `PersonID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;

ALTER TABLE `Apartment`
  ADD CONSTRAINT `Apartment_ibfk_1` FOREIGN KEY (`BuildingID`) REFERENCES `Building` (`BuildingID`),
  ADD CONSTRAINT `Apartment_ibfk_2` FOREIGN KEY (`Office_Room_Number`) REFERENCES `Manager` (`Office_Room_Number`);

ALTER TABLE `EmergencyContact`
  ADD CONSTRAINT `EmergencyContact_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`);

ALTER TABLE `Employee`
  ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`);

ALTER TABLE `LeaseManagerSigned`
  ADD CONSTRAINT `LeaseManagerSigned_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Manager` (`PersonID`),
  ADD CONSTRAINT `LeaseManagerSigned_ibfk_2` FOREIGN KEY (`LeaseID`) REFERENCES `Lease` (`LeaseID`);

ALTER TABLE `LeaseTenantSigned`
  ADD CONSTRAINT `LeaseTenantSigned_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Tenant` (`PersonID`),
  ADD CONSTRAINT `LeaseTenantSigned_ibfk_2` FOREIGN KEY (`LeaseID`) REFERENCES `Lease` (`LeaseID`);

ALTER TABLE `Manager`
  ADD CONSTRAINT `Manager_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Employee` (`PersonID`);

ALTER TABLE `PersonApartment`
  ADD CONSTRAINT `PersonApartment_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`),
  ADD CONSTRAINT `PersonApartment_ibfk_2` FOREIGN KEY (`Apartment_Number`) REFERENCES `Apartment` (`Apartment_Number`);

ALTER TABLE `Technician`
  ADD CONSTRAINT `Technician_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Employee` (`PersonID`);

ALTER TABLE `TechnicianSkills`
  ADD CONSTRAINT `TechnicianSkills_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Technician` (`PersonID`);

ALTER TABLE `Tenant`
  ADD CONSTRAINT `Tenant_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
