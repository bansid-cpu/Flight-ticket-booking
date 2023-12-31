SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `adminlogin` (
  `AID` int(4) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `adminlogin` (`AID`, `Username`, `Password`) VALUES
(1234, 'prakhar', 'prakhar'),
(2345, 'dwij', 'dwij'),
(3456, 'karthik', 'karthik');


CREATE TABLE `booking` (
  `TicketID` int(6) NOT NULL,
  `F_no` varchar(5) NOT NULL,
  `Source` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Cid` int(5) NOT NULL,
  `Date` text NOT NULL,
  `Fare` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `booking` (`TicketID`, `F_no`, `Source`, `Destination`, `Cid`, `Date`, `Fare`) VALUES
(3, 'V123', 'Delhi', 'Bangalore', 3, '2017-10-23', '4500'),
(4, 'V194', 'Bangalore', 'Delhi', 3, '2017-10-11', '4100'),
(5, 'V289', 'Mumbai', 'Delhi', 1, '2017-10-29', '2530'),
(6, 'V12', 'Delhi', 'Mumbai', 1, '2017-11-23', '6464'),
(7, 'V289', 'Mumbai', 'Delhi', 1, '2017-10-29', '2530'),
(8, 'V12', 'Delhi', 'Mumbai', 1, '2017-11-23', '6464'),
(9, 'V12', 'Delhi', 'Mumbai', 4, '2017-11-02', '6464'),
(10, 'V289', 'Mumbai', 'Delhi', 4, '2017-11-03', '2530'),
(13, 'V717', 'Chennai', 'Mumbai', 3, '02-11-2017', '4100'),
(14, 'V34', 'Mumbai', 'Chennai', 3, '03-11-2017', '3501'),
(15, 'V34', 'Mumbai', 'Chennai', 5, '14-11-2017', '3501'),
(16, 'V717', 'Chennai', 'Mumbai', 5, '16-11-2017', '4100'),
(17, 'V989', 'Delhi', 'Kolkatta', 5, '09-11-2017', '4111'),
(18, 'V343', 'Kolkatta', 'Delhi', 5, '25-11-2017', '4154'),
(19, 'V717', 'Chennai', 'Mumbai', 11, '03-11-2017', '4100'),
(20, 'V34', 'Mumbai', 'Chennai', 11, '23-11-2017', '3501'),
(21, 'V310', 'Chennai', 'Kolkatta', 11, '12-12-2017', '4145'),
(22, 'V340', 'Kolkatta', 'Chennai', 11, '13-12-2017', '4105'),
(23, 'V718', 'Bangalore', 'Kolkatta', 13, '24-11-2017', '3655'),
(24, 'V789', 'Kolkatta', 'Bangalore', 13, '27-11-2017', '7800'),
(25, 'V717', 'Chennai', 'Mumbai', 13, '30-11-2017', '4100'),
(26, 'V34', 'Mumbai', 'Chennai', 13, '14-12-2017', '3501'),
(27, 'V717', 'Chennai', 'Mumbai', 13, '24-12-2017', '4100'),
(28, 'V34', 'Mumbai', 'Chennai', 13, '25-12-2017', '3501');

-- --------------------------------------------------------

--
-- Table structure for table `customerlogin`
--

CREATE TABLE `customerlogin` (
  `Customer_id` int(5) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Nationality` varchar(30) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Mobile_no` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerlogin`
--

INSERT INTO `customerlogin` (`Customer_id`, `First_name`, `Last_name`, `email_id`, `DOB`, `Gender`, `Nationality`, `Occupation`, `Address`, `City`, `State`, `Mobile_no`, `Password`) VALUES
(3, 'Dwij', 'Sheth', 'dwijhariket@gmail.com', '1998-12-28', 'Male', 'Indian', 'Student', 'Room No-318 A Block', 'Chennai', 'Tamil Nadu', '7889037976', 'dwij'),
(4, 'Shantanu', 'Singh', 'shaneya.singh13@gmail.com', '1998-12-28', 'Male', 'Indian', 'Student', 'Room No-318 A Block', 'Chennai', 'Tamil Nadu', '9876543210', 'shantanu'),
(7, 'Sandeep ', 'B', 's@gmail.com', '01-10-2008', 'Male', 'Indian', 'Student', '745 A Block VITCC', 'Chennai', 'Tamil Nadu', '9876543214', 'sandeep'),
(8, 'Aditya', 'Varma', 'apv@gmail.com', '03-07-2007', 'Male', 'Indian', 'Student', '745 A Block VITCC', 'Chennai', 'Tamil Nadu', '7418529637', 'apv'),
(9, 'Igor', 'Boryachev', 'igor@rmail.ru', '04-01-2008', 'Male', 'Russian', 'Armed forces', 'Dostomel', 'Moscow', 'Leningrad', '3652147892', 'igor'),
(11, 'Karthik', 'R', 'karthik.r@vit.ac.in', '02-01-1987', 'Male', 'Indian', 'Teacher', '2nd Flat', 'Chennai', 'Tamil Nadu', '9876541230', 'karthik'),
(12, 'Antonia', 'Kazanov', 'an@gov.ua', '09-10-1990', 'Female', 'Ukranian', 'Employee', '3rd street', 'Chernobyl', 'Ukraine', '6547893214', 'uk'),
(13, 'Viktor', 'Jaques', 'jac@mil.fr', '05-10-1997', 'Male', 'French', 'Armed forces', 'Rue de Seine', 'Paris', 'Centrale', '451278965', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `TID` int(11) NOT NULL,
  `F_no` varchar(6) NOT NULL,
  `Origin` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Dep` varchar(10) NOT NULL,
  `Arr` varchar(10) NOT NULL,
  `Fare` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

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
(10, 'V789', 'Kolkatta', 'Bangalore', '14:55', '16:10', 7800),
(11, 'V330', 'Delhi', 'Kolkatta', '1800', '2100', 4105),
(12, 'V310', 'Chennai', 'Kolkatta', '1830', '2130', 4145),
(13, 'V300', 'Kolkatta', 'Delhi', '1200', '1500', 4105),
(14, 'V340', 'Kolkatta', 'Chennai', '1300', '1600', 4105),
(16, 'V34', 'Mumbai', 'Chennai', '15:00', '17:00', 3501),
(17, 'V312', 'Mumbai', 'Bangalore', '08:00', '10:00', 3642),
(18, 'V311', 'Bangalore', 'Mumbai', '11:00', '13:00', 3541),
(19, 'V200', 'Bangalore', 'Chennai', '14:20', '15:00', 2138),
(20, 'V788', 'Bangalore', 'Kolkatta', '12:00', '14:15', 3876),
(21, 'V142', 'Kolkatta', 'Mumbai', '10:00', '12:15', 5400),
(22, 'V717', 'Chennai', 'Mumbai', '01:00', '02:45', 4100),
(23, 'V411', 'Mumbai', 'Bangalore', '04:00', '06:00', 3754),
(24, 'V718', 'Bangalore', 'Kolkatta', '07:15', '09:30', 3655),
(26, 'V343', 'Kolkatta', 'Delhi', '10:10', '13:03', 4154),
(27, 'V989', 'Delhi', 'Kolkatta', '07:00', '10:00', 4111),
(28, 'V817', 'Delhi', 'Chennai', '06:30', '09:00', 4005),
(29, 'V837', 'Delhi', 'Mumbai', '10:25', '13:15', 4209),
(30, 'V23', 'Delhi', 'Bangalore', '05:00', '07:45', 4235),
(31, 'V67', 'Delhi', 'Mumbai', '13:00', '15:45', 4216);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`AID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`TicketID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`);

--
-- Indexes for table `customerlogin`
--
ALTER TABLE `customerlogin`
  ADD PRIMARY KEY (`Customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD KEY `Mobile no` (`Mobile_no`),
  ADD KEY `Mobile no_2` (`Mobile_no`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`TID`),
  ADD UNIQUE KEY `F_no` (`F_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `TicketID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `customerlogin`
--
ALTER TABLE `customerlogin`
  MODIFY `Customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
