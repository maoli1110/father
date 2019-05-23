-- phpMyAdmin SQL Dump
-- version 4.3.13.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-09-08 15:31:06
-- 服务器版本： 5.6.26
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

create database `apitpldb`;
use `apitpldb`;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apitpldb`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `stuff_id` int(11) NOT NULL COMMENT 'ID',
  `stuffname` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '员工姓名',
  `type` varchar(10) NOT NULL DEFAULT 'borrow' COMMENT '借款or还款',
  `money` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `create_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` varchar(200) COMMENT '备注',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `stuff_id`, `stuffname`, `type`, `money`, `create_time`,`remark`) VALUES
(1, 1, '张一', '借', '100', '2019-04-16 19:26', '初始数据'),
(2, 2, '张二', '借', '100', '2019-04-16 19:26', '初始数据'),
(3, 3, '张三', '借', '100', '2019-04-16 19:26', '初始数据'),
(4, 4, '张四', '借', '100', '2019-04-16 19:26', '初始数据');


--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `stuff` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `stuffname` varchar(10) COLLATE utf8_unicode_ci UNIQUE NOT NULL COMMENT '员工姓名',
  `borrow_money` DECIMAL(10,2) NOT NULL COMMENT '当前欠款金额',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- 转存表中的数据 `user`
--
INSERT INTO `stuff` (`id`, `stuffname`, `borrow_money`, `create_time`) VALUES
(1, '张一', '100', '2019-04-16 19:26'),
(2, '张二', '100', '2019-04-16 19:26'),
(3, '张三', '100', '2019-04-16 19:26'),
(4, '张四', '100', '2019-04-16 19:26');