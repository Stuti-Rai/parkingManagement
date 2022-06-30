SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `msgdate` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `msg` text NOT NULL
);



CREATE TABLE `users` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `id_no` int(20) NOT NULL,
  `plate_no` text NOT NULL,
  `id` int(11) NOT NULL,
  `pl_booked` text NOT NULL,
  `access` int(11) NOT NULL
);



INSERT INTO `users` (`username`, `email`, `phone`, `name`, `password`, `id_no`, `plate_no`, `id`, `pl_booked`, `access`) VALUES
('admin', '', '7054206111', 'Adminstrator', '1234', '99999', 'KAC 1234', 1, 'YES', 0);



CREATE TABLE `zones` (
  `street` text NOT NULL,
  `plot` text NOT NULL,
  `status` text NOT NULL,
  `model` text NOT NULL,
  `vehicle` text NOT NULL,
  `email` text NOT NULL,
  `platenumber` text NOT NULL,
  `account` int(20) NOT NULL,
  `d1` text NOT NULL,
  `d2` text NOT NULL,
  `charge` int(10) NOT NULL,
  `id` int(5) NOT NULL,
  `phone` text NOT NULL
);



ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `zones`
  ADD UNIQUE KEY `id` (`id`);



ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `zones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

