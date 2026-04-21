-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2026-04-20 04:07:37
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `assignment2`
--

-- --------------------------------------------------------

--
-- 表的结构 `task3`
--

CREATE TABLE `task3` (
  `id` int(11) NOT NULL,
  `r_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `t_number` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `cbm` decimal(10,2) NOT NULL,
  `weight` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `task3`(
  `r_date`,
  `t_number`,
  `p_name`,
  `cbm`,
  `weight`
)VALUES('2025/8/25','asd','qwe','20.3','32.2');

UPDATE `task3` SET `CBM`='753' WHERE id=1

DELETE FORM `task3` WHERE id=1 

--
-- 转储表的索引
--

--
-- 表的索引 `task3`
--
ALTER TABLE `task3`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `task3`
--
ALTER TABLE `task3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
