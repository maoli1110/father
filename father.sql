-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 09 月 08 日 09:01
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `father`
--

-- --------------------------------------------------------

--
-- 表的结构 `back_money_table`
--

CREATE TABLE IF NOT EXISTS `back_money_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `back_money` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `composite_pk`
--

CREATE TABLE IF NOT EXISTS `composite_pk` (
  `group_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `empty_table`
--

CREATE TABLE IF NOT EXISTS `empty_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `groups`
--

INSERT INTO `groups` (`id`, `name`, `enabled`, `created_at`) VALUES
(1, 'coders', 1, '2012-02-01 13:17:50'),
(2, 'jazzman', 0, '2012-02-01 13:18:40');

-- --------------------------------------------------------

--
-- 表的结构 `no_pk`
--

CREATE TABLE IF NOT EXISTS `no_pk` (
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `name`, `status`) VALUES
(1, 'main', 'open');

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_permissions` (`group_id`),
  KEY `FK_users` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `group_id`, `role`) VALUES
(1, 1, 1, 'member'),
(2, 2, 1, 'member'),
(5, 3, 2, 'member'),
(7, 4, 2, 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `table_with_reserved_primary_key`
--

CREATE TABLE IF NOT EXISTS `table_with_reserved_primary_key` (
  `unique` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`unique`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `table_with_reserved_primary_key`
--

INSERT INTO `table_with_reserved_primary_key` (`unique`, `name`, `status`) VALUES
(1, 'main', 'open');

-- --------------------------------------------------------

--
-- 表的结构 `take_money_table`
--

CREATE TABLE IF NOT EXISTS `take_money_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `take_money` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `username` varchar(255) NOT NULL COMMENT '�û���',
  `auth_key` varchar(32) NOT NULL COMMENT '�Զ���¼key',
  `password_hash` varchar(255) NOT NULL COMMENT '��������',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '��������token',
  `email_validate_token` varchar(255) DEFAULT NULL COMMENT '������֤token',
  `email` varchar(255) NOT NULL COMMENT '����',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '��ɫ�ȼ�',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '״̬',
  `avatar` varchar(255) DEFAULT NULL COMMENT 'ͷ��',
  `vip_lv` int(11) DEFAULT '0' COMMENT 'vip�ȼ�',
  `created_at` int(11) NOT NULL COMMENT '����ʱ��',
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='��Ա��' AUTO_INCREMENT=561 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email_validate_token`, `email`, `role`, `status`, `avatar`, `vip_lv`, `created_at`, `updated_at`) VALUES
(560, 'maoli', 'xlGGoKBZH2p04Z2K5Q8Q5u3jAba-ju9k', '$2y$13$g0Vbch.WGSY9NS2UOT2.Pu1CUb2R6zW39WQDZx3kNCsoqmF3wySuC', NULL, NULL, 'maoli@126.com', 10, 10, NULL, 0, 1504768194, 1504768194);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_active`, `created_at`) VALUES
(1, 'davert', 'davert@mail.ua', b'1', '2012-02-01 13:17:04'),
(2, 'nick', 'nick@mail.ua', b'1', '2012-02-01 13:17:15'),
(3, 'miles', 'miles@davis.com', b'1', '2012-02-01 13:17:25'),
(4, 'bird', 'charlie@parker.com', b'0', '2012-02-01 13:17:39');

--
-- 限制导出的表
--

--
-- 限制表 `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `FK_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_permissions` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
