-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 04 月 29 日 12:16
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `my_wow`
--

-- --------------------------------------------------------

--
-- 表的结构 `relate`
--

CREATE TABLE IF NOT EXISTS `relate` (
  `boss_num` int(11) NOT NULL,
  `eq_num` int(11) NOT NULL,
  `p1` float NOT NULL,
  `p2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `relate`
--

INSERT INTO `relate` (`boss_num`, `eq_num`, `p1`, `p2`) VALUES
(1, 5, 0.5, 0.75),
(1, 18, 0.75, 1),
(2, 3, 0, 0.33),
(2, 12, 0.33, 0.66),
(2, 15, 0.66, 1),
(3, 6, 0, 0.2),
(3, 14, 0.2, 0.4),
(3, 17, 0.4, 0.5),
(3, 18, 0.5, 1),
(4, 9, 0.5, 0.75),
(5, 12, 0, 0.1),
(5, 13, 0.1, 0.2),
(5, 14, 0.2, 1),
(6, 1, 0, 0.3),
(6, 3, 0.3, 0.6),
(6, 7, 0.6, 0.8),
(6, 6, 0.8, 1),
(7, 11, 0, 0.3),
(7, 13, 0.3, 0.6),
(7, 17, 0.6, 1),
(8, 8, 0, 0.36),
(8, 16, 0.36, 0.72),
(8, 17, 0.72, 1),
(9, 8, 0, 0.09),
(9, 9, 0.09, 0.46),
(9, 15, 0.46, 1),
(10, 13, 0, 0.12),
(10, 15, 0.12, 0.59),
(10, 16, 0.59, 1),
(11, 1, 0, 0.125),
(11, 15, 0.125, 0.58),
(11, 18, 0.58, 1),
(4, 5, 0, 0.5),
(4, 14, 0.75, 1);

-- --------------------------------------------------------

--
-- 表的结构 `wow_boss`
--

CREATE TABLE IF NOT EXISTS `wow_boss` (
  `boss_num` int(11) NOT NULL,
  `boss_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `boss_hp` int(11) NOT NULL,
  `boss_mp` int(11) NOT NULL,
  `boss_site` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wow_boss`
--

INSERT INTO `wow_boss` (`boss_num`, `boss_name`, `boss_hp`, `boss_mp`, `boss_site`) VALUES
(1, '凯尔撒斯王子', 1000, 1, 1),
(2, '法斯奇女士', 2000, 2, 2),
(3, '伊利丹·怒风', 3000, 3, 3),
(4, '玛瑟里顿', 4000, 4, 1),
(5, '泰兰德', 5000, 5, 2),
(6, '玛维·影歌', 6000, 6, 3),
(7, '萨尔', 7000, 7, 1),
(8, '阿尔萨斯王子', 8000, 8, 2),
(9, '希尔瓦娜斯 ', 9000, 9, 3),
(10, '沃金	', 10000, 10, 2),
(11, '玛法里奥·怒风', 11000, 11, 3);

-- --------------------------------------------------------

--
-- 表的结构 `wow_equipment`
--

CREATE TABLE IF NOT EXISTS `wow_equipment` (
  `eq_num` int(11) NOT NULL,
  `eq_name` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wow_equipment`
--

INSERT INTO `wow_equipment` (`eq_num`, `eq_name`) VALUES
(1, '黑暗秘密编年史'),
(2, '魔魂手杖'),
(3, '变幻的纳鲁薄片'),
(4, '全能之戒'),
(5, '混乱风暴'),
(6, '灾难护腿'),
(7, '阳炎护手'),
(8, '幽怨之袍'),
(9, '唤魔师护肩'),
(10, '自由魔法项链'),
(11, '远古知识之戒'),
(12, '黑暗咒术之环'),
(13, '元素导能护腿'),
(14, '吞噬者的法杖'),
(15, '发力聚焦护腕'),
(16, '罗宁之袍'),
(17, '遗忘胜利者的头盔'),
(18, '祝福之剑');

-- --------------------------------------------------------

--
-- 表的结构 `wow_site`
--

CREATE TABLE IF NOT EXISTS `wow_site` (
  `site_num` int(11) NOT NULL,
  `site_level` int(11) NOT NULL,
  `site_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `site_description` varchar(512) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wow_site`
--

INSERT INTO `wow_site` (`site_num`, `site_level`, `site_name`, `site_description`) VALUES
(1, 1, '塔纳利斯', '难度一般'),
(2, 2, '灰白丘陵', '难度中等'),
(3, 3, '龙骨荒野', '高级难度');

-- --------------------------------------------------------

--
-- 表的结构 `wow_user`
--

CREATE TABLE IF NOT EXISTS `wow_user` (
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `power` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wow_user`
--

INSERT INTO `wow_user` (`username`, `password`, `name`, `email`, `power`) VALUES
('赵海量', '12345', '', '', 15000);
