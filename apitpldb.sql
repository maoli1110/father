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
-- 表的结构 `adminuser`
--

CREATE TABLE IF NOT EXISTS `adminuser` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '电子邮箱',
  `status` int(11) NOT NULL DEFAULT '10' COMMENT '状态',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `auth_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '授权key',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码重置token',
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '访问token',
  `expire_at` int(11) DEFAULT NULL COMMENT '过期时间',
  `logged_at` int(11) DEFAULT NULL COMMENT '登入时间',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '最后修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `adminuser`
--

INSERT INTO `adminuser` (`id`, `username`, `realname`, `email`, `status`, `password_hash`, `auth_key`, `password_reset_token`, `access_token`, `expire_at`, `logged_at`, `created_at`, `updated_at`) VALUES
(1, 'weixi', '魏曦', 'weixistyle@qq.com', 10, '$2y$13$HtJqGRmc76KIRIwokii8AOQ1XZljXiuWCKUGFnH9vkTnfBpHtqgFu', 'pG7TRyTIXlEbcenpi34TzmMYS2zDsMTF', NULL, '', 1504152206, 1504152206, 1504152206, 1504729806),
(3, 'heyx', '何泳筱', 'heyx@weixistyle.com', 10, '$2y$13$4Y5KRDHPFYF.rYumLe6rx.34gBLpK6HROMklh9A8.TZwRFNrM5RyW', 'IXlEbcenpi34TzmMpG7TRTFyTYS2zDsM', '1', '1', 1504152206, 1504152206, 1504152206, 1504152206),
(4, 'demo', 'demo', 'demo@demo.cn', 10, '$2y$13$pXan2FHem2K6FrM8TToNRuMfJ.X3VD8hQv85YYPG9rkm58NXWVDty', 'a_TfFpwUoksewS-XVOlYxwaVxFn9j9hm', NULL, NULL, 1504726486, 1504726486, 1504726486, 1504736046),
(5, 'test', 'test', 'testinguser@gmail.com', 10, '$2y$13$7DBItUY6wR69xo/goDwKe.v7rXeqN8NnlxrBmPLHRPvDZXtKwRmhq', 'xXwhjQ5Wbt9260cSAGCvPFtA3qL4g8px', NULL, NULL, NULL, NULL, 1504725751, 1504754981);

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `stuffname` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '员工姓名',
  `type` varchar(10) NOT NULL COMMENT '借款or还款',
  `money` DECIMAL(5,2) NOT  NULL COMMENT '金额',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `stuffname`, `type`, `money`, `create_time`) VALUES
(1, '张一', '借', '100.01', 1504152206),
(2, '张二', '借', '100.01', 1504152207),
(3, '张三', '还', '100.01', 1504152208),
(4, '张四', 'borrow', '100.01', 1504152209);


