SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `adminlogin` (
  `AID` int(4) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `adminlogin` (`AID`, `Username`, `Password`) VALUES
(1234, 'prakhar', 'prakhar'),
(2345, 'dwij', 'dwij');


CREATE TABLE `booking` (
  `TicketID` int(6) NOT NULL,
  `F_no` varchar(5) NOT NULL,
  `Source` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Cid` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Fare` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `booking` (`TicketID`, `F_no`, `Source`, `Destination`, `Cid`, `Date`, `Fare`) VALUES
(3, 'V123', 'Delhi', 'Bangalore', 3, '2017-10-23', '4500'),
(4, 'V194', 'Bangalore', 'Delhi', 3, '2017-10-11', '4100'),
(5, 'V289', 'Mumbai', 'Delhi', 1, '2017-10-29', '2530'),
(6, 'V12', 'Delhi', 'Mumbai', 1, '2017-11-23', '6464'),
(7, 'V289', 'Mumbai', 'Delhi', 1, '2017-10-29', '2530'),
(8, 'V12', 'Delhi', 'Mumbai', 1, '2017-11-23', '6464');


CREATE TABLE `customerlogin` (
  `Customer_id` int(5) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Nationality` varchar(30) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Mobile_no` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `customerlogin` (`Customer_id`, `First_name`, `Last_name`, `email_id`, `DOB`, `Gender`, `Nationality`, `Occupation`, `Address`, `City`, `State`, `Mobile_no`, `Password`) VALUES
(1, 'Yash', 'Jain', 'yashjain.2016@vitstudent.ac.in', '1998-08-28', 'Male', 'Indian', 'Student', 'My Home Address', 'Hissar', 'Haryana', '9467533303', 'jains'),
(3, 'Dwij', 'Sheth', 'dwijhariket@gmail.com', '1998-12-28', 'Male', 'Indian', 'Student', 'Room No-318 A Block', 'Chennai', 'Tamil Nadu', '7889037976', 'dwij'),
(4, 'Shantanu', 'Singh', 'shaneya.singh13@gmail.com', '1998-12-28', 'Male', 'Indian', 'Student', 'Room No-318 A Block', 'Chennai', 'Tamil Nadu', '9876543210', 'shantanu');


CREATE TABLE `flight` (
  `TID` int(11) NOT NULL,
  `F_no` varchar(6) NOT NULL,
  `Origin` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Dep` varchar(10) NOT NULL,
  `Arr` varchar(10) NOT NULL,
  `Fare` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `flight` (`TID`, `F_no`, `Origin`, `Destination`, `Dep`, `Arr`, `Fare`) VALUES
(1, 'V12', 'Delhi', 'Mumbai', '04:06', '06:44', 6464),
(2, 'V123', 'Delhi', 'Bangalore', '12:00', '14:45', 4500),
(3, 'V143', 'Mumbai', 'Kolkatta', '14:45', '17:00', 5500),
(4, 'V194', 'Bangalore', 'Delhi', '20:00', '22:45', 4100),
(5, 'V201', 'Chennai', 'Bangalore', '15:40', '16:30', 1465),
(6, 'V289', 'Mumbai', 'Delhi', '00:00', '02:00', 2530),
(7, 'V747', 'Chennai', 'Delhi', '2000', '2230', 3800),
(8, 'V757', 'Delhi', 'Chennai', '1630', '1900', 3800),
(9, 'V767', 'Chennai ', 'Mumbai', '1500', '1645', 4200),
(10, 'V789', 'Kolkatta', 'Bangalore', '14:55', '16:10', 7800);

ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`AID`),
  ADD UNIQUE KEY `Username` (`Username`);

ALTER TABLE `booking`
  ADD PRIMARY KEY (`TicketID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`);

ALTER TABLE `customerlogin`
  ADD PRIMARY KEY (`Customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD KEY `Mobile no` (`Mobile_no`),
  ADD KEY `Mobile no_2` (`Mobile_no`);

ALTER TABLE `flight`
  ADD PRIMARY KEY (`TID`);

ALTER TABLE `booking`
  MODIFY `TicketID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `customerlogin`
  MODIFY `Customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `flight`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
