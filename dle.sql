/*
 Navicat Premium Data Transfer

 Source Server         : loc
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : dle

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 14/06/2020 23:57:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dle_admin_logs
-- ----------------------------
DROP TABLE IF EXISTS `dle_admin_logs`;
CREATE TABLE `dle_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_admin_logs
-- ----------------------------
BEGIN;
INSERT INTO `dle_admin_logs` VALUES (1, 'admin', 1590539051, '127.0.0.1', 82, '');
INSERT INTO `dle_admin_logs` VALUES (2, 'admin', 1590539149, '127.0.0.1', 59, 'glavnaja');
INSERT INTO `dle_admin_logs` VALUES (3, 'admin', 1590858307, '127.0.0.1', 86, 'Direct DLE Adminpanel');
INSERT INTO `dle_admin_logs` VALUES (4, 'admin', 1590858352, '127.0.0.1', 48, '');
INSERT INTO `dle_admin_logs` VALUES (5, 'admin', 1590858382, '127.0.0.1', 48, '');
INSERT INTO `dle_admin_logs` VALUES (6, 'admin', 1590858425, '127.0.0.1', 60, 'main');
INSERT INTO `dle_admin_logs` VALUES (7, 'admin', 1590858539, '127.0.0.1', 60, 'main');
INSERT INTO `dle_admin_logs` VALUES (8, 'admin', 1590858596, '127.0.0.1', 60, 'main');
INSERT INTO `dle_admin_logs` VALUES (9, 'admin', 1590858636, '127.0.0.1', 59, 'about');
INSERT INTO `dle_admin_logs` VALUES (10, 'admin', 1590858842, '127.0.0.1', 48, '');
INSERT INTO `dle_admin_logs` VALUES (11, 'admin', 1590859198, '127.0.0.1', 48, '');
INSERT INTO `dle_admin_logs` VALUES (12, 'admin', 1590872729, '127.0.0.1', 48, '');
INSERT INTO `dle_admin_logs` VALUES (13, 'admin', 1590873649, '127.0.0.1', 59, 'services');
INSERT INTO `dle_admin_logs` VALUES (14, 'admin', 1590873697, '127.0.0.1', 59, 'contacts');
INSERT INTO `dle_admin_logs` VALUES (15, 'admin', 1590873727, '127.0.0.1', 60, 'contacts');
INSERT INTO `dle_admin_logs` VALUES (16, 'admin', 1590873763, '127.0.0.1', 14, 'Новости');
INSERT INTO `dle_admin_logs` VALUES (17, 'admin', 1590873993, '127.0.0.1', 25, 'Добро пожаловать');
INSERT INTO `dle_admin_logs` VALUES (18, 'admin', 1590874115, '127.0.0.1', 25, 'Добро пожаловать');
INSERT INTO `dle_admin_logs` VALUES (19, 'admin', 1590874124, '127.0.0.1', 25, 'Приобретение и оплата скрипта');
INSERT INTO `dle_admin_logs` VALUES (20, 'admin', 1590874132, '127.0.0.1', 25, 'Осуществление технической поддержки скрипта');
INSERT INTO `dle_admin_logs` VALUES (21, 'admin', 1590874156, '127.0.0.1', 48, '');
COMMIT;

-- ----------------------------
-- Table structure for dle_admin_sections
-- ----------------------------
DROP TABLE IF EXISTS `dle_admin_sections`;
CREATE TABLE `dle_admin_sections` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_admin_sections
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_banned
-- ----------------------------
DROP TABLE IF EXISTS `dle_banned`;
CREATE TABLE `dle_banned` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_banned
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_banners
-- ----------------------------
DROP TABLE IF EXISTS `dle_banners`;
CREATE TABLE `dle_banners` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT '0',
  `innews` tinyint(1) NOT NULL DEFAULT '0',
  `devicelevel` varchar(10) NOT NULL DEFAULT '',
  `allow_views` tinyint(1) NOT NULL DEFAULT '0',
  `max_views` int(11) NOT NULL DEFAULT '0',
  `allow_counts` tinyint(1) NOT NULL DEFAULT '0',
  `max_counts` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `rubric` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_banners
-- ----------------------------
BEGIN;
INSERT INTO `dle_banners` VALUES (1, 'header', 'Верхний баннер', '<div style=\"text-align:center;\"><a href=\"https://dle-news.ru/\" target=\"_blank\"><img src=\"https://dle.test/templates/Default/images/_banner_.gif\" style=\"border: none;\" alt=\"\" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for dle_banners_logs
-- ----------------------------
DROP TABLE IF EXISTS `dle_banners_logs`;
CREATE TABLE `dle_banners_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL DEFAULT '0',
  `click` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_banners_logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_banners_rubrics
-- ----------------------------
DROP TABLE IF EXISTS `dle_banners_rubrics`;
CREATE TABLE `dle_banners_rubrics` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(70) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_banners_rubrics
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_category
-- ----------------------------
DROP TABLE IF EXISTS `dle_category`;
CREATE TABLE `dle_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) NOT NULL DEFAULT '0',
  `posi` mediumint(8) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `show_sub` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1',
  `fulldescr` text NOT NULL,
  `disable_search` tinyint(1) NOT NULL DEFAULT '0',
  `disable_main` tinyint(1) NOT NULL DEFAULT '0',
  `disable_rating` tinyint(1) NOT NULL DEFAULT '0',
  `disable_comments` tinyint(1) NOT NULL DEFAULT '0',
  `enable_dzen` tinyint(1) NOT NULL DEFAULT '1',
  `enable_turbo` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_category
-- ----------------------------
BEGIN;
INSERT INTO `dle_category` VALUES (1, 0, 1, 'Новости', 'news', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (2, 0, 1, 'В мире', 'v-mire', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (3, 0, 1, 'Экономика', 'ekonomika', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (4, 0, 1, 'Религия', 'religiya', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (5, 0, 1, 'Криминал', 'kriminal', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (6, 0, 1, 'Спорт', 'sport', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (7, 0, 1, 'Культура', 'kultura', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
INSERT INTO `dle_category` VALUES (8, 0, 1, 'Инопресса', 'inopressa', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for dle_comment_rating_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_comment_rating_log`;
CREATE TABLE `dle_comment_rating_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `member` (`member`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_comment_rating_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_comments
-- ----------------------------
DROP TABLE IF EXISTS `dle_comments`;
CREATE TABLE `dle_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `approve` (`approve`),
  KEY `parent` (`parent`),
  KEY `rating` (`rating`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_comments_files
-- ----------------------------
DROP TABLE IF EXISTS `dle_comments_files`;
CREATE TABLE `dle_comments_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `c_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_comments_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_complaint
-- ----------------------------
DROP TABLE IF EXISTS `dle_complaint`;
CREATE TABLE `dle_complaint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `p_id` (`p_id`),
  KEY `n_id` (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_complaint
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_email
-- ----------------------------
DROP TABLE IF EXISTS `dle_email`;
CREATE TABLE `dle_email` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `use_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_email
-- ----------------------------
BEGIN;
INSERT INTO `dle_email` VALUES (1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта https://dle.test/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/.', 0);
INSERT INTO `dle_email` VALUES (2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта https://dle.test/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\nГруппа: {%group%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
INSERT INTO `dle_email` VALUES (3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте https://dle.test/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
INSERT INTO `dle_email` VALUES (4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  https://dle.test/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
INSERT INTO `dle_email` VALUES (5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  https://dle.test/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
INSERT INTO `dle_email` VALUES (6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  https://dle.test/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
INSERT INTO `dle_email` VALUES (7, 'wait_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте https://dle.test/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
INSERT INTO `dle_email` VALUES (8, 'newsletter', '<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content=\"text/html; charset={%charset%}\" http-equiv=Content-Type>\r\n<style type=\"text/css\">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n	margin:0px;\r\n	padding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n	color: #4b719e;\r\n	text-decoration:none;\r\n}\r\n\r\na:hover {\r\n	color: #4b719e;\r\n	text-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>', 0);
INSERT INTO `dle_email` VALUES (9, 'twofactor', '{%username%},\r\n\r\nЭто письмо отправлено с сайта https://dle.test/\r\n\r\nВы получили это письмо, так как для вашего аккаунта включена двухфакторная авторизация. Для авторизации на сайте вам необходимо ввести полученный вами пин-код.\r\n\r\n------------------------------------------------\r\nПин-код:\r\n------------------------------------------------\r\n\r\n{%pin%}\r\n\r\n------------------------------------------------\r\nЕсли Вы не авторизовывались на нашем сайте, то ваш пароль известен посторонним лицам. Вам нужно незамедлительно зайти на сайт под своим логином и паролем, и в своем профиле изменить свой пароль.\r\n\r\nIP пользователя который ввел пароль: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация https://dle.test/', 0);
COMMIT;

-- ----------------------------
-- Table structure for dle_files
-- ----------------------------
DROP TABLE IF EXISTS `dle_files`;
CREATE TABLE `dle_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `checksum` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_flood
-- ----------------------------
DROP TABLE IF EXISTS `dle_flood`;
CREATE TABLE `dle_flood` (
  `f_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_id`),
  KEY `ip` (`ip`),
  KEY `id` (`id`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_flood
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_ignore_list
-- ----------------------------
DROP TABLE IF EXISTS `dle_ignore_list`;
CREATE TABLE `dle_ignore_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_ignore_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_images
-- ----------------------------
DROP TABLE IF EXISTS `dle_images`;
CREATE TABLE `dle_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_images
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_links
-- ----------------------------
DROP TABLE IF EXISTS `dle_links`;
CREATE TABLE `dle_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `only_one` tinyint(1) NOT NULL DEFAULT '0',
  `replacearea` tinyint(1) NOT NULL DEFAULT '1',
  `rcount` tinyint(3) NOT NULL DEFAULT '0',
  `targetblank` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_links
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_login_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_login_log`;
CREATE TABLE `dle_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_login_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_logs
-- ----------------------------
DROP TABLE IF EXISTS `dle_logs`;
CREATE TABLE `dle_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `member` (`member`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_lostdb
-- ----------------------------
DROP TABLE IF EXISTS `dle_lostdb`;
CREATE TABLE `dle_lostdb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lostname` mediumint(8) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lostid` (`lostid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_lostdb
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_mail_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_mail_log`;
CREATE TABLE `dle_mail_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_mail_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_metatags
-- ----------------------------
DROP TABLE IF EXISTS `dle_metatags`;
CREATE TABLE `dle_metatags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `page_description` text NOT NULL,
  `robots` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_metatags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_notice
-- ----------------------------
DROP TABLE IF EXISTS `dle_notice`;
CREATE TABLE `dle_notice` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_notice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_plugins
-- ----------------------------
DROP TABLE IF EXISTS `dle_plugins`;
CREATE TABLE `dle_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `dleversion` varchar(10) NOT NULL DEFAULT '',
  `versioncompare` char(2) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `mysqlinstall` text NOT NULL,
  `mysqlupgrade` text NOT NULL,
  `mysqlenable` text NOT NULL,
  `mysqldisable` text NOT NULL,
  `mysqldelete` text NOT NULL,
  `filedelete` tinyint(1) NOT NULL DEFAULT '0',
  `filelist` text NOT NULL,
  `upgradeurl` varchar(255) NOT NULL DEFAULT '',
  `needplugin` varchar(100) NOT NULL DEFAULT '',
  `phpinstall` text NOT NULL,
  `phpupgrade` text NOT NULL,
  `phpenable` text NOT NULL,
  `phpdisable` text NOT NULL,
  `phpdelete` text NOT NULL,
  `notice` text NOT NULL,
  `mnotice` tinyint(1) NOT NULL DEFAULT '0',
  `posi` mediumint(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_plugins
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_plugins_files
-- ----------------------------
DROP TABLE IF EXISTS `dle_plugins_files`;
CREATE TABLE `dle_plugins_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(10) NOT NULL DEFAULT '',
  `searchcode` text NOT NULL,
  `replacecode` mediumtext NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `searchcount` smallint(6) NOT NULL DEFAULT '0',
  `replacecount` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_id` (`plugin_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_plugins_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_plugins_logs
-- ----------------------------
DROP TABLE IF EXISTS `dle_plugins_logs`;
CREATE TABLE `dle_plugins_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  `area` text NOT NULL,
  `error` text NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `plugin_id` (`plugin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_plugins_logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_pm
-- ----------------------------
DROP TABLE IF EXISTS `dle_pm`;
CREATE TABLE `dle_pm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `pm_read` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  `sendid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `folder` (`folder`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`),
  KEY `pm_read` (`pm_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_pm
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_poll
-- ----------------------------
DROP TABLE IF EXISTS `dle_poll`;
CREATE TABLE `dle_poll` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_poll
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_poll_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_poll_log`;
CREATE TABLE `dle_poll_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `member` (`member`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_poll_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_post
-- ----------------------------
DROP TABLE IF EXISTS `dle_post`;
CREATE TABLE `dle_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `short_story` mediumtext NOT NULL,
  `full_story` mediumtext NOT NULL,
  `xfields` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(190) NOT NULL DEFAULT '0',
  `alt_name` varchar(190) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`),
  KEY `alt_name` (`alt_name`),
  KEY `category` (`category`),
  KEY `approve` (`approve`),
  KEY `allow_main` (`allow_main`),
  KEY `date` (`date`),
  KEY `symbol` (`symbol`),
  KEY `comm_num` (`comm_num`),
  KEY `fixed` (`fixed`),
  FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_post
-- ----------------------------
BEGIN;
INSERT INTO `dle_post` VALUES (1, 'admin', '2020-05-27 02:54:54', '<div style=\\\"text-align:center;\\\">шими функциональными возможностями. Движок предназначен, в первую очередь, для создания новостных блогов и сайтов с большим информационным контекстом. Однако, он имеет большое количество настроек, которые позволяют использовать его практически для любых целей. Движок может быть интегрирован практически в любой существующий дизайн, и не имеет никаких ограничений по созданию шаблонов для него. Еще одной ключевой особенностью DataLife Engine является низкая нагрузка на сис</div><br><br>', '', '', 'Добро пожаловать', 'шими функциональными возможностями. Движок предназначен, в первую очередь, для создания новостных блогов и сайтов с большим информационным контекстом. Однако, он имеет большое количество настроек, которые позволяют использовать его практически для любых целей. Движок может быть интегрирован', 'Движок, нагрузка, практически, имеет, функциональными, сайта, особенностью, DataLife, Engine, является, низкая, системные, ресурсы, очень, большой, аудитории, будет, сервер, одной, минимальной', '1', 'post1', 0, 1, 1, 1, 0, 0, '', 'по, новости', '');
INSERT INTO `dle_post` VALUES (2, 'admin', '2020-05-27 02:54:34', '<br>- <b>Базовая лицензия.</b> При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении <b>одного года</b>.', '', '', 'Приобретение и оплата скрипта', '- Базовая лицензия. При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении одного года.', 'Базовая, лицензия, приобретении, данной, лицензии, также, получаете, возможность, получения, бесплатно, новых, версий, скрипта, течении, одного', '1', 'post2', 0, 1, 1, 1, 0, 0, '', 'по, новости', '');
INSERT INTO `dle_post` VALUES (3, 'admin', '2020-05-27 02:54:04', '1. Приоритетное получение ответа на вопросы, которые задают пользователи впервые столкнувшиеся со скриптом и естественно не знающие всех нюансов работы скрипта. В к', '', '', 'Осуществление технической поддержки скрипта', '1. Приоритетное получение ответа на вопросы, которые задают пользователи впервые столкнувшиеся со скриптом и естественно не знающие всех нюансов работы скрипта. В к', 'Приоритетное, получение, ответа, вопросы, которые, задают, пользователи, впервые, столкнувшиеся, скриптом, естественно, знающие, нюансов, работы, скрипта', '1', 'post4', 0, 1, 1, 1, 0, 0, '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for dle_post_extras
-- ----------------------------
DROP TABLE IF EXISTS `dle_post_extras`;
CREATE TABLE `dle_post_extras` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_read` int(11) NOT NULL DEFAULT '0',
  `allow_rate` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `related_ids` varchar(255) NOT NULL DEFAULT '',
  `access` varchar(150) NOT NULL DEFAULT '',
  `editdate` int(11) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `disable_search` tinyint(1) NOT NULL DEFAULT '0',
  `need_pass` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1',
  `allow_rss_turbo` tinyint(1) NOT NULL DEFAULT '1',
  `allow_rss_dzen` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eid`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`),
  KEY `rating` (`rating`),
  KEY `disable_search` (`disable_search`),
  KEY `allow_rss` (`allow_rss`),
  KEY `news_read` (`news_read`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_post_extras
-- ----------------------------
BEGIN;
INSERT INTO `dle_post_extras` VALUES (1, 1, 9, 1, 0, 0, 0, 0, 0, '3,2', '', 1590874115, 'admin', '', 1, 0, 0, 1, 1, 1);
INSERT INTO `dle_post_extras` VALUES (2, 2, 2, 1, 0, 0, 0, 0, 0, '3,1', '', 1590874124, 'admin', '', 1, 0, 0, 1, 1, 1);
INSERT INTO `dle_post_extras` VALUES (3, 3, 1, 1, 0, 0, 0, 0, 0, '2,1', '', 1590874132, 'admin', '', 1, 0, 0, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for dle_post_extras_cats
-- ----------------------------
DROP TABLE IF EXISTS `dle_post_extras_cats`;
CREATE TABLE `dle_post_extras_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_post_extras_cats
-- ----------------------------
BEGIN;
INSERT INTO `dle_post_extras_cats` VALUES (1, 1, 1);
INSERT INTO `dle_post_extras_cats` VALUES (2, 2, 1);
INSERT INTO `dle_post_extras_cats` VALUES (3, 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for dle_post_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_post_log`;
CREATE TABLE `dle_post_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `move_cat` varchar(190) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_post_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_post_pass
-- ----------------------------
DROP TABLE IF EXISTS `dle_post_pass`;
CREATE TABLE `dle_post_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `password` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_post_pass
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_question
-- ----------------------------
DROP TABLE IF EXISTS `dle_question`;
CREATE TABLE `dle_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_question
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_read_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_read_log`;
CREATE TABLE `dle_read_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_read_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_redirects
-- ----------------------------
DROP TABLE IF EXISTS `dle_redirects`;
CREATE TABLE `dle_redirects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(250) NOT NULL DEFAULT '',
  `to` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_redirects
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_rss
-- ----------------------------
DROP TABLE IF EXISTS `dle_rss`;
CREATE TABLE `dle_rss` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT '0',
  `lastdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_rss
-- ----------------------------
BEGIN;
INSERT INTO `dle_rss` VALUES (1, 'https://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<div class=\"full-post-content row\">{get}</div><div class=\"full-post-footer ignore-select\">', 5, '', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for dle_rssinform
-- ----------------------------
DROP TABLE IF EXISTS `dle_rssinform`;
CREATE TABLE `dle_rssinform` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT '0',
  `tmax` smallint(5) NOT NULL DEFAULT '0',
  `dmax` smallint(5) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_rssinform
-- ----------------------------
BEGIN;
INSERT INTO `dle_rssinform` VALUES (1, 'dle', 'Новости с Яндекса', '0', 'https://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');
COMMIT;

-- ----------------------------
-- Table structure for dle_sendlog
-- ----------------------------
DROP TABLE IF EXISTS `dle_sendlog`;
CREATE TABLE `dle_sendlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `date` (`date`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_sendlog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_social_login
-- ----------------------------
DROP TABLE IF EXISTS `dle_social_login`;
CREATE TABLE `dle_social_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(40) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  `provider` varchar(15) NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  `waitlogin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_social_login
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_spam_log
-- ----------------------------
DROP TABLE IF EXISTS `dle_spam_log`;
CREATE TABLE `dle_spam_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `is_spammer` (`is_spammer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_spam_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_static
-- ----------------------------
DROP TABLE IF EXISTS `dle_static`;
CREATE TABLE `dle_static` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` mediumtext NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(300) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `disable_search` tinyint(1) NOT NULL DEFAULT '0',
  `password` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `disable_search` (`disable_search`),
  FULLTEXT KEY `template` (`template`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_static
-- ----------------------------
BEGIN;
INSERT INTO `dle_static` VALUES (1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br><br>Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br><br>Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br><br><b>На сайте строго запрещено:</b> <br><br>- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br>- оскорбление и угрозы в адрес посетителей сайта<br>- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br>- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br><br>Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br><br>При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br><br><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br><br><div style=\"text-align:center;\">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила', 'Общие правила', 0, '', 1590537294, '', 1, 1, 0, 0, '');
INSERT INTO `dle_static` VALUES (2, 'main', 'Добро пожаловать', '<span class=\\\"content_span\\\">Мы рады приветствовать Васна нашем сайте центра, который успешно работает более 20 лет. Всё это время мы дарим нашим клиентам красоту, радость жизни. Сегодня мы предлагаем своим клиентам самый широкий спектр услуг в области косметологии.</span><h5 class=\\\"content_detail\\\">Почему стоит выбрать именно нас :</h5><span class=\\\"content_span\\\">1) 26 лет профессиональной работы,<br>2) Гарантия результата,<br>3) Специалисты с мед. образованием,<br>4) Лицензированный медицинский центр,<br>5) Регулярное повышение квалификации. </span>', 2, 1, 'all', '', 'Добро пожаловатьМы рады приветствовать Васна нашем сайте центра, который успешно работает более 20 лет. Всё это время мы дарим нашим клиентам красоту, радость жизни. Сегодня мы предлагаем своим клиентам самый широкий спектр услуг в области косметологии.Почему стоит выбрать именно нас :1) 26 лет', 'клиентам, Добро, работы, области, косметологии, Почему, стоит, выбрать, именно, профессиональной, Гарантия, спектр, результата, Специалисты, образованием, Лицензированный, медицинский, центр, Регулярное, повышение', 496, '', 1590539149, '', 1, 1, 0, 0, '');
INSERT INTO `dle_static` VALUES (3, 'about', 'О центре', 'О центреО центреО центреО центреО центреО центре', 0, 1, 'all', '', 'О центреО центреО центреО центреО центреО центре', 'центреО, центре', 21, '', 1590858636, '', 1, 1, 0, 0, '');
INSERT INTO `dle_static` VALUES (4, 'services', 'Услуги', 'УслугиУслугиУслугиУслугиУслугиУслугиУслугиУслуги', 0, 1, 'all', '', 'УслугиУслугиУслугиУслугиУслугиУслугиУслугиУслуги', 'УслугиУслугиУслугиУслугиУслугиУслугиУслугиУслуги', 12, '', 1590873649, '', 1, 1, 0, 0, '');
INSERT INTO `dle_static` VALUES (5, 'contacts', 'КОнтакты', 'КОнтактыКОнтактыКОнтак тыКОнтактыКОнтактыКОн тактыКОнтактыКОнтакты', 0, 1, 'all', '', 'КОнтактыКОнтактыКОнтактыКОнтактыКОнтактыКОнтактыКОнтактыКОнтакты', 'КОнтактыКОнтактыКОнтактыКОнтактыКОнтактыКОнтактыКОнтактыКОнтакты', 8, '', 1590873697, '', 1, 1, 0, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for dle_static_files
-- ----------------------------
DROP TABLE IF EXISTS `dle_static_files`;
CREATE TABLE `dle_static_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `static_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `onserver` varchar(190) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `checksum` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `static_id` (`static_id`),
  KEY `onserver` (`onserver`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_static_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `dle_subscribe`;
CREATE TABLE `dle_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_subscribe
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_tags
-- ----------------------------
DROP TABLE IF EXISTS `dle_tags`;
CREATE TABLE `dle_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_tags
-- ----------------------------
BEGIN;
INSERT INTO `dle_tags` VALUES (1, 1, 'по');
INSERT INTO `dle_tags` VALUES (2, 2, 'по');
INSERT INTO `dle_tags` VALUES (3, 3, 'по');
INSERT INTO `dle_tags` VALUES (4, 1, 'новости');
INSERT INTO `dle_tags` VALUES (5, 2, 'новости');
COMMIT;

-- ----------------------------
-- Table structure for dle_twofactor
-- ----------------------------
DROP TABLE IF EXISTS `dle_twofactor`;
CREATE TABLE `dle_twofactor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(10) NOT NULL DEFAULT '',
  `attempt` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pin` (`pin`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_twofactor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_usergroups
-- ----------------------------
DROP TABLE IF EXISTS `dle_usergroups`;
CREATE TABLE `dle_usergroups` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(5) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(5) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  `max_comment_day` smallint(6) NOT NULL DEFAULT '0',
  `max_images` smallint(6) NOT NULL DEFAULT '0',
  `max_files` smallint(6) NOT NULL DEFAULT '0',
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT '0',
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT '0',
  `pm_question` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `feedback_question` tinyint(1) NOT NULL DEFAULT '0',
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT '0',
  `files_max_speed` smallint(6) NOT NULL DEFAULT '0',
  `spamfilter` tinyint(1) NOT NULL DEFAULT '2',
  `allow_comments_rating` tinyint(1) NOT NULL DEFAULT '1',
  `max_edit_days` tinyint(1) NOT NULL DEFAULT '0',
  `spampmfilter` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg_days` mediumint(9) NOT NULL DEFAULT '0',
  `force_reg_group` smallint(6) NOT NULL DEFAULT '4',
  `force_news` tinyint(1) NOT NULL DEFAULT '0',
  `force_news_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_news_group` smallint(6) NOT NULL DEFAULT '4',
  `force_comments` tinyint(1) NOT NULL DEFAULT '0',
  `force_comments_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_comments_group` smallint(6) NOT NULL DEFAULT '4',
  `force_rating` tinyint(1) NOT NULL DEFAULT '0',
  `force_rating_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_rating_group` smallint(6) NOT NULL DEFAULT '4',
  `not_allow_cats` text NOT NULL,
  `allow_up_image` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `up_count_image` smallint(6) NOT NULL DEFAULT '0',
  `up_image_side` varchar(20) NOT NULL DEFAULT '',
  `up_image_size` mediumint(9) NOT NULL DEFAULT '0',
  `up_thumb_size` varchar(20) NOT NULL DEFAULT '',
  `allow_mail_files` tinyint(1) NOT NULL DEFAULT '0',
  `max_mail_files` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_allfiles` mediumint(9) NOT NULL DEFAULT '0',
  `mail_files_type` varchar(100) NOT NULL DEFAULT '',
  `video_comments` tinyint(1) NOT NULL DEFAULT '0',
  `media_comments` tinyint(1) NOT NULL DEFAULT '0',
  `min_image_side` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_usergroups
-- ----------------------------
BEGIN;
INSERT INTO `dle_usergroups` VALUES (1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style=\"color:red\">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, '', 1, 1, 1, 3, '800x600', 300, '200x150', 1, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10');
INSERT INTO `dle_usergroups` VALUES (2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 2, 1, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, '', 1, 1, 1, 3, '800x600', 300, '200x150', 1, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10');
INSERT INTO `dle_usergroups` VALUES (3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 2, 1, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 3, 0, 0, 3, '', 1, 1, 1, 3, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10');
INSERT INTO `dle_usergroups` VALUES (4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0, 2, 1, 0, 2, 0, 0, 4, 0, 0, 4, 0, 0, 4, 0, 0, 4, '', 0, 0, 0, 1, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 0, 0, '10x10');
INSERT INTO `dle_usergroups` VALUES (5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 2, 1, 0, 2, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, '', 0, 0, 0, 1, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 0, 0, '10x10');
COMMIT;

-- ----------------------------
-- Table structure for dle_users
-- ----------------------------
DROP TABLE IF EXISTS `dle_users`;
CREATE TABLE `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_num` mediumint(8) NOT NULL DEFAULT '0',
  `comm_num` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` smallint(5) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) NOT NULL DEFAULT '',
  `reg_date` varchar(20) NOT NULL DEFAULT '',
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT '0',
  `pm_unread` smallint(5) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(46) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  `news_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `comments_reply_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `twofactor_auth` tinyint(1) NOT NULL DEFAULT '0',
  `cat_add` varchar(500) NOT NULL DEFAULT '',
  `cat_allow_addnews` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_users
-- ----------------------------
BEGIN;
INSERT INTO `dle_users` VALUES ('oprstfaq@gmail.com', '$2y$10$wbNmcpMgGgbFh1iTS3u2E.GCei2n/I.44RvUvA20h.oVGQb3fgMYu', 'admin', 1, 3, 0, 1, '1590873574', '1590537294', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', '0976c65aeb1b18fef711bcc080bebbfb', '127.0.0.1', 0, 0, '', '', 0, 0, 0, '', '');
COMMIT;

-- ----------------------------
-- Table structure for dle_views
-- ----------------------------
DROP TABLE IF EXISTS `dle_views`;
CREATE TABLE `dle_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_views
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_vote
-- ----------------------------
DROP TABLE IF EXISTS `dle_vote`;
CREATE TABLE `dle_vote` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  KEY `approve` (`approve`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_vote
-- ----------------------------
BEGIN;
INSERT INTO `dle_vote` VALUES (1, 'all', 0, '2020-05-27 02:54:54', 'Оцените работу движка', 'Лучший из новостных<br>Неплохой движок<br>Устраивает ... но ...<br>Встречал и получше<br>Совсем не понравился', 1, '', '', 'all');
COMMIT;

-- ----------------------------
-- Table structure for dle_vote_result
-- ----------------------------
DROP TABLE IF EXISTS `dle_vote_result`;
CREATE TABLE `dle_vote_result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer` (`answer`),
  KEY `vote_id` (`vote_id`),
  KEY `ip` (`ip`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_vote_result
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dle_xfsearch
-- ----------------------------
DROP TABLE IF EXISTS `dle_xfsearch`;
CREATE TABLE `dle_xfsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tagname` varchar(50) NOT NULL DEFAULT '',
  `tagvalue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tagname` (`tagname`),
  KEY `tagvalue` (`tagvalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dle_xfsearch
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
