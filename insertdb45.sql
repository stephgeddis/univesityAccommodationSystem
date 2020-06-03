SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Dumping data for table `Building`
--

INSERT INTO `Building` (`BuildingID`, `Address_Number`, `Address_Street`, `Address_Postcode`) VALUES
(1, 81, 'Baldock Street', 'IV1 3BP'),
(2, 47, 'Iffley Road', 'CA4 8WQ'),
(3, 87, 'Thames Street', 'LL55 2QG'),
(4, 52, 'Quay Street', 'TR20 7FY'),
(5, 25, 'Bootham Crescent', 'YO17 1DF');

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`PersonID`, `First_Name`, `Last_Name`, `Date_Of_Birth`) VALUES
(1, 'Issac', 'Lawrence', '1968-06-07'),
(2, 'Jessica', 'Clarke', '1991-12-09'),
(3, 'Skye', 'Banks', '1986-12-09'),
(4, 'Riley', 'Murphy', '1960-07-02'),
(5, 'Sienna', 'Clements', '1999-08-05'),
(6, 'George', 'Moore', '1985-11-08'),
(7, 'Dylan', 'Graham', '2000-12-12'),
(8, 'Edward', 'Blake', '1999-05-15'),
(9, 'Finlay', 'Nicholls', '1998-02-21'),
(10, 'Summer', 'Roberts', '1999-07-04'),
(11, 'Poppy', 'Morgan', '1999-09-24'),
(12, 'Jasmine', 'Grey', '1999-08-03'),
(13, 'Tia', 'Sykes', '2000-05-01'),
(14, 'Rosie', 'Johnson', '1997-11-10'),
(15, 'Charlotte', 'West', '1998-06-02'),
(16, 'Amelia', 'North', '2000-04-11'),
(17, 'Lily', 'Potter', '1999-02-06'),
(18, 'John', 'Davis', '1995-01-15'),
(19, 'Lara', 'Norman', '1997-08-02'),
(20, 'Samantha', 'Archer', '1999-04-26'),
(21, 'Michael', 'Fraser', '1995-02-26'),
(22, 'Daisy', 'Hurst', '1999-02-19'),
(23, 'Mason', 'Ross', '1994-11-21'),
(24, 'Harrison', 'Dawson', '1998-12-03'),
(25, 'Ben', 'Dunn', '1997-01-01'),
(26, 'Maddison', 'Summers', '1994-09-08'),
(27, 'Harley', 'Cameron', '1996-05-05'),
(28, 'Kyle', 'Howe', '1994-06-30'),
(29, 'Melissa', 'Anderson', '1994-04-16'),
(30, 'Lara', 'Lyons', '1998-05-08'),
(31, 'Jamie', 'Dickinson', '1998-10-25'),
(32, 'Abbie', 'Chadwick', '1997-10-29'),
(33, 'Alex', 'Goodwin', '1999-05-24'),
(34, 'Connor', 'McDonald', '1995-04-22'),
(35, 'Leon', 'Glover', '1996-11-27'),
(36, 'Jake', 'Kent', '1996-06-16'),
(37, 'Hannah', 'Hodgson', '1995-12-07'),
(38, 'Cerys', 'Barlow', '1994-01-15'),
(39, 'Lucy', 'Gould', '1995-06-01'),
(40, 'Summer', 'Marshall', '1999-09-25'),
(41, 'Kai', 'Hawkins', '1998-02-15'),
(42, 'Danielle', 'Wade', '1998-04-09'),
(43, 'Patrick', 'Rose', '1996-02-23'),
(44, 'Kayleigh', 'Potts', '1997-03-06'),
(45, 'Zak', 'Abbott', '1997-10-18'),
(46, 'Tilly', 'Nixon', '1994-10-12'),
(47, 'Ethan', 'Campbell', '1999-09-29'),
(48, 'Mia', 'O’Donnell', '1995-09-16'),
(49, 'Yasmin', 'Wilson', '1996-03-31'),
(50, 'Tom', 'Miller', '1996-11-20'),
(51, 'Lydia', 'Franklin', '1999-04-27'),
(52, 'Mason', 'Simmons', '1994-09-14'),
(53, 'Ellie', 'Berry', '1995-06-10'),
(54, 'Sam', 'Hopkins', '2000-02-07'),
(55, 'Alicia', 'Dixon', '1996-04-25'),
(56, 'Alexander', 'Lowe', '1998-01-03'),
(57, 'Ewan', 'Ford', '1998-11-28'),
(58, 'Freddie', 'Clarke', '1997-04-19');

--
-- Dumping data for table `EmergencyContact`
--

INSERT INTO `EmergencyContact` (`PersonID`, `Contact_First_Name`, `Contact_Last_Name`, `Contact_Phone_Number`) VALUES
(1, 'Ignatius', 'Kennicott', '6779228576'),
(2, 'Reagen', 'Giriardelli', '7674126619'),
(3, 'Vonni', 'Biddwell', '5619807390'),
(4, 'Edythe', 'Copp', '3407405088'),
(5, 'Melany', 'Hurll', '5009516077'),
(6, 'Kassi', 'Rumgay', '4789799067'),
(7, 'Thor', 'Tulk', '1804800849'),
(8, 'Rich', 'Crowd', '1438110243'),
(9, 'Mitchell', 'Bellin', '9431110187'),
(10, 'Tymothy', 'Midden', '2052309359'),
(11, 'Star', 'Splevins', '6001224980'),
(12, 'Flory', 'Vlahos', '6479744520'),
(13, 'Delcina', 'Neubigin', '1493768761'),
(14, 'Sari', 'Moncaster', '1717835176'),
(15, 'Celina', 'Broadway', '1489482198'),
(16, 'Gardie', 'Bullers', '2723104806'),
(17, 'Dori', 'Fydo', '4554677386'),
(18, 'Guthrie', 'Musson', '9897940326'),
(19, 'Adaline', 'Boch', '4506095424'),
(20, 'Jen', 'Corking', '4487834267'),
(21, 'Jillene', 'Brommage', '8958141536'),
(22, 'Hayley', 'Grundle', '8188546431'),
(23, 'Caron', 'Braund', '1609005684'),
(24, 'Major', 'Willishire', '7721986154'),
(25, 'Ciel', 'Cardenosa', '2402176794'),
(26, 'Chalmers', 'Gordon', '5135198854'),
(27, 'Reginald', 'Iskowitz', '2784916890'),
(28, 'Ferdie', 'Maclaine', '3263907225'),
(29, 'Edward', 'Crutcher', '9372525683'),
(30, 'Raddie', 'Gwillym', '8188883050'),
(31, 'Renault', 'Dudderidge', '4013615042'),
(32, 'Nerta', 'Collyns', '6571568805'),
(33, 'Nettle', 'Joinson', '9046669060'),
(34, 'Fields', 'Skillanders', '9784764573'),
(35, 'Frants', 'Guiso', '5763235451'),
(36, 'Berthe', 'Pasmore', '4759851383'),
(37, 'Bayard', 'Le feaver', '7116413637'),
(38, 'Felecia', 'McMurdo', '3049608589'),
(39, 'Papageno', 'Jovicic', '5311245538'),
(40, 'Ulrica', 'Leppington', '5003032750'),
(41, 'Giralda', 'Glancey', '9907001916'),
(42, 'Keir', 'Meachan', '7599217788'),
(43, 'Cordelie', 'O''Crevy', '9514563643'),
(44, 'Daune', 'Rowlett', '2293840657'),
(45, 'Morten', 'Melin', '1811666539'),
(46, 'Kimberly', 'Glozman', '8216995463'),
(47, 'Cymbre', 'Vernall', '6214067385'),
(48, 'Estevan', 'Mordy', '7998561104'),
(49, 'Silvain', 'Paolacci', '5499371272'),
(50, 'Emmalee', 'Daudray', '8318778992'),
(51, 'Garik', 'Holstein', '2821182876'),
(52, 'Rodie', 'Bengal', '4982981683'),
(53, 'Joana', 'Job', '2963926365'),
(54, 'Jacqui', 'Dunabie', '2655306162'),
(55, 'Rae', 'Hailwood', '6948823940'),
(56, 'Waylan', 'Beevis', '7175481613'),
(57, 'Elsy', 'Keelinge', '8637588645'),
(58, 'Allie', 'Hamnet', '6726925871');

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`PersonID`, `Salary`) VALUES
(1, 27000),
(2, 22000),
(3, 17000),
(4, 25000),
(6, 21000);

--
-- Dumping data for table `Manager`
--

INSERT INTO `Manager` (`PersonID`, `Office_Room_Number`) VALUES
(1, 2),
(4, 5);

--
-- Dumping data for table `Apartment`
--

INSERT INTO `Apartment` (`Apartment_Number`, `BuildingID`, `Number_Of_Bedrooms`, `Total_Area`, `Office_Room_Number`) VALUES
(1, 1, 4, 1400, 2),
(2, 1, 4, 1400, 2),
(3, 1, 4, 1400, 2),
(1, 2, 6, 2000, 2),
(2, 2, 6, 2000, 5),
(3, 2, 6, 2000, 5),
(1, 3, 3, 1200, 5),
(1, 4, 8, 2200, 2),
(2, 4, 8, 2200, 2),
(1, 5, 4, 1500, 5);

--
-- Dumping data for table `Technician`
--

INSERT INTO `Technician` (`PersonID`) VALUES
(2),
(3),
(6);

--
-- Dumping data for table `TechnicianSkills`
--

INSERT INTO `TechnicianSkills` (`PersonID`, `Carpentry`, `Electricity`, `Plumming`) VALUES
(2, 0, 1, 0),
(3, 0, 0, 1),
(6, 0, 1, 0);

--
-- Dumping data for table `Tenant`
--

INSERT INTO `Tenant` (`PersonID`, `Bank_Account_Number`) VALUES
(5, 38632621469599560000),
(7, 69985027730775690000),
(8, 79691192096873790000),
(9, 20003101693024184000),
(10, 9152794828358133000),
(11, 2923490013019925000),
(12, 9018800611629980000),
(13, 7384238879661783000),
(14, 1526196000539515000),
(15, 6931576617032137000),
(16, 5868537667095742000),
(17, 8586073625381027000),
(18, 4736096706193020000),
(19, 4370563637191952000),
(20, 6108985058836730000),
(21, 6491271818531108000),
(22, 7021612919322341000),
(23, 4163521283593364500),
(24, 5701385447586464000),
(25, 4873320040032923000),
(26, 7562068631962876000),
(27, 5147313656394207000),
(28, 8192056178651959000),
(29, 7043199461105036000),
(30, 7440853223073596000),
(31, 3180456585808255500),
(32, 5035683001823543000),
(33, 8983993123386102000),
(34, 5747364921145299000),
(35, 8951662712130451000),
(36, 4555247753990842000),
(37, 7623417464979288000),
(38, 3463454485858852500),
(39, 5553264728591732000),
(40, 4291554393535114000),
(41, 6790046034095574000),
(42, 5073893589359858000),
(43, 3851778377917039000),
(44, 4416769046154531000),
(45, 9113947043260058000),
(46, 3818028934501533700),
(47, 3087001489781754400),
(48, 4858056388817661000),
(49, 6577731296391803000),
(50, 2123893426367702300),
(51, 1193553291184736800),
(52, 7117629169284905000),
(53, 6433987831469749000),
(54, 9201805448319038000),
(55, 3317516092016700400),
(56, 2967391155584274400),
(57, 8884055365331878000),
(58, 5887620941676902000);

--
-- Dumping data for table `Lease`
--

INSERT INTO `Lease` (`LeaseID`, `Monthly_Rent`, `Contract_Start_Date`, `Contract_End_Date`) VALUES
(1, 500, '2018-08-14', '2019-06-05'),
(2, 500, '2018-08-14', '2019-06-05'),
(3, 500, '2018-08-14', '2019-06-05'),
(4, 700, '2018-08-12', '2019-06-02'),
(5, 700, '2018-08-12', '2019-06-02'),
(6, 700, '2018-08-12', '2019-06-02'),
(7, 400, '2018-08-15', '2019-06-04'),
(8, 800, '2018-08-14', '2019-06-03'),
(9, 800, '2018-08-14', '2019-06-03'),
(10, 600, '2018-08-16', '2019-06-01'),
(11, 600, '2017-08-16', '2018-06-01'),
(12, 700, '2017-08-12', '2018-06-02'),
(13, 400, '2017-08-15', '2018-06-04');

--
-- Dumping data for table `LeaseManagerSigned`
--

INSERT INTO `LeaseManagerSigned` (`PersonID`, `LeaseID`) VALUES
(1, 1),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 12),
(4, 2),
(4, 3),
(4, 5),
(4, 9),
(4, 11),
(4, 13);

--
-- Dumping data for table `LeaseTenantSigned`
--

INSERT INTO `LeaseTenantSigned` (`PersonID`, `LeaseID`) VALUES
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 11),
(10, 2),
(10, 12),
(11, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 3),
(16, 3),
(16, 11),
(17, 3),
(17, 12),
(18, 4),
(18, 13),
(19, 4),
(20, 4),
(20, 12),
(21, 4),
(22, 4),
(22, 11),
(23, 4),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(28, 12),
(29, 5),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(34, 13),
(35, 6),
(36, 7),
(36, 13),
(37, 7),
(38, 7),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(42, 12),
(43, 8),
(43, 13),
(44, 8),
(45, 8),
(46, 8),
(47, 9),
(48, 9),
(49, 9),
(50, 9),
(51, 9),
(52, 9),
(53, 9),
(53, 12),
(54, 9),
(55, 10),
(56, 10),
(57, 10),
(57, 11),
(58, 10);

--
-- Dumping data for table `PersonApartment`
--

INSERT INTO `PersonApartment` (`PersonID`, `Apartment_Number`) VALUES
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 1),
(56, 1),
(57, 1),
(58, 1);