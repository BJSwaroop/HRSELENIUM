--
-- Table structure for table `CAPHRCustomContestWise`
--

DROP TABLE IF EXISTS `CAPHRCustomContestWise`;
CREATE TABLE `CAPHRCustomContestWise` (
  `sno` int(1) DEFAULT '0',
  `contestname` varchar(150) NOT NULL DEFAULT '',
  `hrmarks` int(1) DEFAULT '0',
  `lbmarks` int(1) DEFAULT '0',
  `display_status` int(1) DEFAULT '1',
  `sync_status` int(1) DEFAULT '1',
  PRIMARY KEY (`contestname`),
  UNIQUE KEY `contestname_UNIQUE` (`contestname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `capcompeteprog`
--

DROP TABLE IF EXISTS `capcompeteprog`;
CREATE TABLE `capcompeteprog` (
  `rollnumber` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(150) DEFAULT NULL,
  `hrun` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`rollnumber`),
  UNIQUE KEY `rollnumber_UNIQUE` (`rollnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table to store hackerrank contest cumulative scores
--
CREATE TABLE `CAPHRContestAttempt` (
    `hrun` varchar(150) NOT NULL,
    `contestname` varchar(150) NOT NULL,
    `score` int(1) NOT NULL DEFAULT 0
);

--
-- Table structure to store contest problem details
--
CREATE TABLE `CAPHRContestProblem` (
    `slug` varchar(150) NOT NULL,
    `max_Score` int(1) NOT NULL,
    `difficulty` ENUM('Easy', 'Medium', 'High') NOT NULL,
);

--
-- Table to store students attempts for hackerrank problems (direct or contest)
--
CREATE TABLE `CAPHRProblemBestAttempt` (
    `hrun` varchar(150) NOT NULL,
    `problem_slug` varchar(150) NOT NULL,
    `contestname` varchar(150),
    `lang` varchar(30) NOT NULL,
    `status` varchar(100) NOT NULL,
    `num_testcases_passed` int(1) NOT NULL,
    `num_testcases_failed` int(1) DEFAULT 0,
    `sourcecode` varchar(5000) NOT NULL DEFAULT '',
    `score` int(1) NOT NULL DEFAULT 0,
    `max_score` int(1) NOT NULL
);



