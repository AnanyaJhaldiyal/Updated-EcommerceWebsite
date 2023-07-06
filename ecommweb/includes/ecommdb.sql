SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `fee_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`sno`, `fname`, `lname`, `email`, `password`, `mobile`, `address`, `fee_status`) VALUES
(1, 'Prithvi', 'Singh', 'prithvisk@gmail.com', 'prithvi@123', 8077380183, 'Dehradun', 1),
(2, 'Abhinav', 'Rawat', 'abhinavg@gmail.com', 'abhinav@123', 8439821578, 'Dehradun', 1),
(3, 'Shaleen', 'Kapoor', 'shaleenk@gmail.com', 'shaleen@123', 7060501123, 'Dehradun', 1);


ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;