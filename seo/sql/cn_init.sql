# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB  COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66  COMMENT = '常量表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'notice','object','','{\"title\":\"4.3.7 版本发布\",\"content\":\"快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n快来使用吧！\\n测试12123123\\n\",\"imageSrc\":\"/noticeImage/1647076649263_719911_noticeImage.jpeg\",\"isImageShown\":false,\"isTextShown\":true}','update','admin01','admin01','2022-03-12T17:19:50+08:00');
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'userStatus','array',NULL,'[{\"value\": \"active\", \"text\": \"正常\"}, {\"value\": \"banned\", \"text\": \"禁用\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'userType','array',NULL,'[{\"value\": \"common\", \"text\": \"普通用户\"},{\"value\": \"xiaochengxu\", \"text\": \"小程序机器人\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (61,'gender','array',NULL,'[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'version','object',NULL,'{\"testUserIdList\": \"\",\"version\": \"4.3.11\", \"title\": \"4.3.7 版本发布\", \"note\": \"新版本介绍\\n 1. 聊天输入优化\", \"apkVersion\": \"5.0.20\", \"apkLink\": \"https://duoxing.openjianghu.org/duoxing/upload/10002/1647840662817_956853_D多星MD-4.7.10.apk\", \"apkNote\": \"\", \"desktopVersion\": \"4.3.2\", \"desktopLink\": \"http://192.168.110.215:8082/duoxing/upload/duoxing-1.0.1.dmg.zip\", \"desktopNote\": \"测试桌面客户端升级\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (64,'emotion','array',NULL,'[\n  {\n    \"dir\":\"face01\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"png\",\n    \"cols\":5,\n    \"total\":86\n  },\n  {\n    \"dir\":\"face02\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face03\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face04\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face05\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":1,\n    \"total\":7\n  },\n  {\n    \"dir\":\"face06\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":24\n  },\n  {\n    \"dir\":\"face07\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face08\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":23\n  },\n  {\n    \"dir\":\"face09\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face10\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":3,\n    \"total\":20\n  },\n  {\n    \"dir\":\"face11\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":13\n  },\n  {\n    \"dir\":\"face12\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  },\n  {\n    \"dir\":\"face13\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":15\n  },\n  {\n    \"dir\":\"face14\",\n    \"cover\":\"face-lbl\",\n    \"ext\":\"gif\",\n    \"cols\":2,\n    \"total\":16\n  }\n]\n','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (65,'appLinkActionConfig','array',NULL,'[{\"regex\":\".openjianghu.org\\/*\", \"action\": \"internal\"}, {\"regex\":\"http:\\/\\/192.168.\\/*\", \"action\": \"internal\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant_ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant_ui`;
CREATE TABLE `_constant_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `pageId` varchar(255) DEFAULT 'all' COMMENT '页面id',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `en` text COMMENT '常量内容; object, array',
  `zh` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pageId_constantKey_unique` (`constantKey`, `pageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21  COMMENT = '常量表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant_ui
# ------------------------------------------------------------

INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'header','object','all',NULL,'{\n\t\"logo\": \"/logo.png\",\n\t\"menuList\": [{\n\t\t\"categoryId\": \"10004\",\n\t\t\"categoryName\": \"jianghuJS\",\n\t\t\"path\": \"/page/article/10004\",\n\t\t\"isLogin\": false\n\t}, {\n\t\t\"categoryName\": \"Training\",\n\t\t\"path\": \"/page/article/10083\",\n\t\t\"isLogin\": false\n\t}, {\n\t  \"categoryId\": \"10005\",\n\t\t\"categoryName\": \"duoxing-instant message\",\n\t\t\"path\": \"/page/article/10016\",\n\t\t\"isLogin\": true\n\t}, {\n\t    \"categoryId\": \"10009\",\n\t\t\"categoryName\": \"xuanfeng-content management\",\n\t\t\"path\": \"/page/article/10075\",\n\t\t\"isLogin\": true\n\t}, {\n\t  \"categoryId\": \"10010\",\n\t\t\"categoryName\": \"wulin-live classroom\",\n\t\t\"path\": \"/page/article/10076\",\n\t\t\"isLogin\": true\n\t}],\n\t\"userAction\": {\n\t\t\"isOpen\": true,\n\t\t\"admin\": true,\n\t\t\"password\": true,\n\t\t\"logout\": true\n\t}\n}','{\n\t\"logo\": \"/logo.png\",\n\t\"menuList\": [{\n\t\t\"categoryId\": \"10004\",\n\t\t\"categoryName\": \"江湖JS\",\n\t\t\"path\": \"/page/article/10004\",\n\t\t\"isLogin\": false\n\t}, {\n\t  \"categoryId\": \"10012\",\n     \"categoryName\": \"IT初级编程培训\",\n     \"path\": \"/page/article/10088\",\n\t\t\"isLogin\": false\n\t}, {\n\t  \"categoryId\": \"10013\",\n\t\t\"categoryName\": \"江湖JS框架编程培训\",\n\t\t\"path\": \"/page/article/10102\",\n\t\t\"isLogin\": false\n\t},{\n	  \"categoryId\": \"\",\n		\"articleId\": \"5719\",\n		\"categoryName\": \"项目与模板\",\n		\"path\": \"/page/xfArticle/5719\",\n		\"isLogin\": false\n	},{\n\t  \"categoryId\": \"10005\",\n\t\t\"categoryName\": \"多星-即时通讯\",\n\t\t\"path\": \"/page/article/10118\",\n\t\t\"isLogin\": true\n\t}, {\n\t  \"categoryId\": \"10009\",\n\t\t\"categoryName\": \"旋风-内容管理\",\n\t\t\"path\": \"/page/article/10075\",\n\t\t\"isLogin\": true\n\t}, {\n\t  \"categoryId\": \"10010\",\n\t\t\"categoryName\": \"武林-直播课堂\",\n\t\t\"path\": \"/page/article/10076\",\n\t\t\"isLogin\": true\n\t}, {\n\t  \"categoryId\": \"10015\",\n\t\t\"categoryName\": \"江湖JS-草稿\",\n\t\t\"path\": \"/page/article/10063\",\n\t\t\"isLogin\": true\n\t}],\n\t\"userAction\": {\n\t\t\"isOpen\": true,\n\t\t\"admin\": true,\n\t\t\"password\": true,\n\t\t\"logout\": true\n\t}\n}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'resource','object','all',NULL,'{\"version\": \"1.0.6\"}','{\"version\": \"1.0.6\"}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'body','object','home','首页说明文字','{ \n  \"title\": \"CN Enterprise-level framework\", \n  \"desc\": \"beginners are also easy to learn and use\",\n\t\"btnGettingStarted\": \"Getting Started\"\n}','{\"title\": \"企业级框架\", \"desc\": \"新手也容易学习和使用的\", \"btnGettingStarted\": \"开始使用\"}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'features','array','home',NULL,'[{\r\n\t\"title\": \"learn enterprise application development\\n the overall framework\",\r\n\t\"content\": \"start with the overall framework，easy for beginners to learn，grasp the core concepts，improve learning and development efficiency。\",\r\n\t\"img\": \"/images/home/icon-3.png\"\r\n}, {\r\n\t\"title\": \"build the shortest learning path\",\r\n\t\"content\": \"learn what you need，put aside what you dont，bulid the shortest lerning path for enterprise application development。\",\r\n\t\"img\": \"/images/home/icon-4.png\"\r\n}, {\r\n\t\"title\": \"jianghu scaffold \\n quick page generation\",\r\n\t\"content\": \"integrate scaffold jianghu-init，It can be used to quickly build frameworks, pages, management, and other business components。\",\r\n\t\"img\": \"/images/home/icon-2.png\"\r\n}, {\r\n\t\"title\": \"Based on lake JS ecology \\n Out of the box application\",\r\n\t\"content\": \"jianghuJS、duoxing-IM、xuanfeng-Content management、wulin live classroom、training、IT primary programming training。\",\r\n\t\"img\": \"/images/home/icon-1.png\"\r\n}]','[{\r\n\t\"title\": \"学习企业级应用开发\\n整体框架\",\r\n\t\"content\": \"先从整体框架入手，便于新手学习，把握核心概念，提升学习与开发效率。\",\r\n\t\"img\": \"/images/home/icon-3.png\"\r\n}, {\r\n\t\"title\": \"构建最短学习路径\",\r\n\t\"content\": \"用到学习，不用的先放一放，构建能够开发企业级应用的最短学习路径。\",\r\n\t\"img\": \"/images/home/icon-4.png\"\r\n}, {\r\n\t\"title\": \"江湖脚手架\\n快速生成页面\",\r\n\t\"content\": \"集成脚手架 jianghu-init，可用于快速构建框架、页面、管理等业务组件。\",\r\n\t\"img\": \"/images/home/icon-2.png\"\r\n}, {\r\n\t\"title\": \"基于江湖JS生态\\n开箱即用的江湖应用\",\r\n\t\"content\": \"江湖JS、多星-即时通讯、旋风-内容管理、武林直播课堂、training、IT初级编程培训等。\",\r\n\t\"img\": \"/images/home/icon-1.png\"\r\n}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'links','array','home',NULL,'[{\r\n\t\"label\": \"Reference\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"EggJS\",\r\n\t\t\"path\": \"https://www.eggjs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"CNode\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"jianghu application\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"jianghuJS\",\r\n\t\t\"path\": \"/page/article/10005\"\r\n\t}, {\r\n\t\t\"title\": \"duoxing-instant message\",\r\n\t\t\"path\": \"/page/article/10016\"\r\n\t}, {\r\n\t\t\"title\": \"xuanfeng content management\",\r\n\t\t\"path\": \"/page/article/10075\"\r\n\t}, {\r\n\t\t\"title\": \"wulin live classroom\",\r\n\t\t\"path\": \"/page/article/10076\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"community\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"CNode commuinty\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"BBS\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"submit feedback\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"release the log\",\r\n\t\t\"path\": \"\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"take part in the discussion\",\r\n\t\"img\": \"OR code link\"\r\n}]','[{\r\n\t\"label\": \"Reference\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"EggJS\",\r\n\t\t\"path\": \"https://www.eggjs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"CNode\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"江湖应用\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"江湖JS\",\r\n\t\t\"path\": \"/page/article/10005\"\r\n\t}, {\r\n\t\t\"title\": \"多星-即时通讯\",\r\n\t\t\"path\": \"/page/article/10118\"\r\n\t}, {\r\n\t\t\"title\": \"旋风内容管理\",\r\n\t\t\"path\": \"/page/article/10075\"\r\n\t}, {\r\n\t\t\"title\": \"武林直播课堂\",\r\n\t\t\"path\": \"/page/article/10076\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"社区\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"CNode 社区\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"论坛\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"提交反馈\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"发布日志\",\r\n\t\t\"path\": \"\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"参与讨论\",\r\n\t\"img\": \"二维码链接\"\r\n}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'footer','object','home','','{ \"copyright\": \"Copyright © 2022 openjianghu.org\" }','{ \"copyright\": \"Copyright © 2022 cn.openjianghu.org\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'article','object','article',NULL,'{\"comment\": {\"isOpen\": false}}','{\"comment\": {\"isOpen\": true}}','insert',NULL,NULL,NULL);

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132  COMMENT = '文件表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _file
# ------------------------------------------------------------

INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'1649252929341_746602','/material/audio/','1.mp3','1649252929341_746602_1.mp3','//material/audio//1649252929341_746602_1.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-06T21:48:49+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'1649252954237_667151','/material/audio/','2.mp4','2.mp4','//material/audio//2.mp4',NULL,NULL,'3.40MB','jhInsert','admin','武林盟主','2022-04-06T21:49:14+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'1649253102779_261969','/material/audio/','圣经.png','圣经.png','//material/audio//圣经.png',NULL,NULL,'4.05KB','jhInsert','admin','武林盟主','2022-04-06T21:51:42+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'1649253104878_933455','/material/audio/','数据库.png','数据库.png','//material/audio//数据库.png',NULL,NULL,'5.11KB','jhInsert','admin','武林盟主','2022-04-06T21:51:44+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'1649253106624_418323','/material/audio/','学校.png','学校.png','//material/audio//学校.png',NULL,NULL,'5.40KB','jhInsert','admin','武林盟主','2022-04-06T21:51:46+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'1649253108808_969252','/material/audio/','avatar.png','avatar.png','//material/audio//avatar.png',NULL,NULL,'6.19KB','jhInsert','admin','武林盟主','2022-04-06T21:51:48+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'1649253189828_628760','/material/audio/','恒星5.0.11.apk','恒星5.0.11.apk','//material/audio//恒星5.0.11.apk',NULL,NULL,'24.01MB','jhInsert','admin','武林盟主','2022-04-06T21:53:09+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'1649253321900_881225','/material/audio/','1.mp3','1.mp3','//material/audio//1.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-06T21:55:21+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'1649253567830_642905','/material/audio/','0002.mp3','0002.mp3','//material/audio//0002.mp3',NULL,NULL,'15.44MB','jhInsert','admin','武林盟主','2022-04-06T21:59:27+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'1649253683198_406541','/material/audio/','0005.mp4','0005.mp4','//material/audio//0005.mp4',NULL,NULL,'76.00MB','jhInsert','admin','武林盟主','2022-04-06T22:01:23+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'1649253770117_256720','/material/audio/','0001.mp3','0001.mp3','//material/audio//0001.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-06T22:02:50+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'1649253773739_568964','/material/audio/','0002.mp3','0002.mp3','//material/audio//0002.mp3',NULL,NULL,'15.44MB','jhInsert','admin','武林盟主','2022-04-06T22:02:53+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (24,'1649253775987_640948','/material/audio/','0003.mp4','0003.mp4','//material/audio//0003.mp4',NULL,NULL,'1.39MB','jhInsert','admin','武林盟主','2022-04-06T22:02:55+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (25,'1649253778706_292956','/material/audio/','0004.mp4','0004.mp4','//material/audio//0004.mp4',NULL,NULL,'3.40MB','jhInsert','admin','武林盟主','2022-04-06T22:02:58+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (26,'1649253790942_315276','/material/audio/','0005.mp4','0005.mp4','//material/audio//0005.mp4',NULL,NULL,'76.00MB','jhInsert','admin','武林盟主','2022-04-06T22:03:11+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (27,'1649253795628_804284','/material/audio/','1001.png','1001.png','//material/audio//1001.png',NULL,NULL,'265.51KB','jhInsert','admin','武林盟主','2022-04-06T22:03:15+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (28,'1649253799600_874309','/material/audio/','1002.png','1002.png','//material/audio//1002.png',NULL,NULL,'56.01KB','jhInsert','admin','武林盟主','2022-04-06T22:03:19+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (29,'1649253803470_282260','/material/audio/','1003.png','1003.png','//material/audio//1003.png',NULL,NULL,'666.11KB','jhInsert','admin','武林盟主','2022-04-06T22:03:23+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'1649253807398_637089','/material/audio/','1004.png','1004.png','//material/audio//1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-06T22:03:27+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'1649253812454_371500','/material/audio/','1005.png','1005.png','//material/audio//1005.png',NULL,NULL,'692.19KB','jhInsert','admin','武林盟主','2022-04-06T22:03:32+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'1649253817152_226425','/material/audio/','1006.png','1006.png','//material/audio//1006.png',NULL,NULL,'649.76KB','jhInsert','admin','武林盟主','2022-04-06T22:03:37+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'1649253843267_811027','/material/audio/','0005.mp4','0005.mp4','//material/audio//0005.mp4',NULL,NULL,'76.00MB','jhInsert','admin','武林盟主','2022-04-06T22:04:03+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'1649256282013_521335','/materialRepo/_recycle/','0004.mp4','0004.mp4','//materialRepo/_recycle//0004.mp4',NULL,NULL,'3.40MB','jhInsert','admin','武林盟主','2022-04-06T22:44:42+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'1649256347259_569061','/materialRepo/_recycle/','0005.mp4','0005.mp4','//materialRepo/_recycle//0005.mp4',NULL,NULL,'76.00MB','jhInsert','admin','武林盟主','2022-04-06T22:45:47+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (36,'1649259126452_736900','/materialRepo/image/','1001.png','1001.png','//materialRepo/image//1001.png',NULL,NULL,'265.51KB','jhInsert','admin','武林盟主','2022-04-06T23:32:06+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (37,'1649259128840_155704','/materialRepo/image/','1002.png','1002.png','//materialRepo/image//1002.png',NULL,NULL,'56.01KB','jhInsert','admin','武林盟主','2022-04-06T23:32:08+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (38,'1649259131490_706850','/materialRepo/image/','1003.png','1003.png','//materialRepo/image//1003.png',NULL,NULL,'666.11KB','jhInsert','admin','武林盟主','2022-04-06T23:32:11+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (39,'1649259134223_223102','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-06T23:32:14+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,'1649259136823_766020','/materialRepo/image/','1005.png','1005.png','//materialRepo/image//1005.png',NULL,NULL,'692.19KB','jhInsert','admin','武林盟主','2022-04-06T23:32:16+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,'1649259139385_966079','/materialRepo/image/','1006.png','1006.png','//materialRepo/image//1006.png',NULL,NULL,'649.76KB','jhInsert','admin','武林盟主','2022-04-06T23:32:19+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,'1649260588980_629374','/materialRepo/','1006.png','1006.png','//materialRepo//1006.png',NULL,NULL,'649.76KB','jhInsert','admin','武林盟主','2022-04-06T23:56:28+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,'1649260601203_774938','/materialRepo/image/','1001.png','1001.png','//materialRepo/image//1001.png',NULL,NULL,'265.51KB','jhInsert','admin','武林盟主','2022-04-06T23:56:41+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,'1649260601583_463482','/materialRepo/image/','1002.png','1002.png','//materialRepo/image//1002.png',NULL,NULL,'56.01KB','jhInsert','admin','武林盟主','2022-04-06T23:56:41+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,'1649260602301_127242','/materialRepo/image/','1003.png','1003.png','//materialRepo/image//1003.png',NULL,NULL,'666.11KB','jhInsert','admin','武林盟主','2022-04-06T23:56:42+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'1649260603052_629888','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-06T23:56:43+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,'1649260603621_717111','/materialRepo/image/','1005.png','1005.png','//materialRepo/image//1005.png',NULL,NULL,'692.19KB','jhInsert','admin','武林盟主','2022-04-06T23:56:43+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'1649260604216_141206','/materialRepo/image/','1006.png','1006.png','//materialRepo/image//1006.png',NULL,NULL,'649.76KB','jhInsert','admin','武林盟主','2022-04-06T23:56:44+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (49,'1649319674791_880794','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-07T16:21:14+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (50,'1649333807021_908479','/materialRepo/audio','0001.mp3','0001.mp3','//materialRepo/audio/0001.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-07T20:16:47+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'1649333811630_579352','/materialRepo/audio','0002.mp3','0002.mp3','//materialRepo/audio/0002.mp3',NULL,NULL,'15.44MB','jhInsert','admin','武林盟主','2022-04-07T20:16:51+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'1649334263610_761036','/materialRepo/image','SCR-20220404-la6.png','1649334263610_761036_SCR-20220404-la6.png','//materialRepo/image/1649334263610_761036_SCR-20220404-la6.png',NULL,NULL,'304.41KB','jhInsert','admin','武林盟主','2022-04-07T20:24:23+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'1649334740146_317533','/materialRepo/audio/10001/','0001.mp3','0001.mp3','//materialRepo/audio/10001//0001.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-07T20:32:20+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'1649335420799_769594','/materialRepo/attachment/','恒星5.0.11.apk','恒星5.0.11.apk','//materialRepo/attachment//恒星5.0.11.apk',NULL,NULL,'24.01MB','jhInsert','admin','武林盟主','2022-04-07T20:43:40+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'1649336540061_114964','/articleMaterial/100010','圣经.png','1649336540061_114964_圣经.png','//articleMaterial/100010/1649336540061_114964_圣经.png',NULL,NULL,'4.05KB','jhInsert','admin','武林盟主','2022-04-07T21:02:20+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'1649336633058_778196','/articleMaterial/100010','圣经.png','1649336633058_778196_圣经.png','//articleMaterial/100010/1649336633058_778196_圣经.png',NULL,NULL,'4.05KB','jhInsert','admin','武林盟主','2022-04-07T21:03:53+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'1649336727809_498342','/articleMaterial/100010','0001.mp3','1649336727809_498342_0001.mp3','//articleMaterial/100010/1649336727809_498342_0001.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-07T21:05:27+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (58,'1649336735689_869559','/articleMaterial/100010','0004.mp4','1649336735689_869559_0004.mp4','//articleMaterial/100010/1649336735689_869559_0004.mp4',NULL,NULL,'3.40MB','jhInsert','admin','武林盟主','2022-04-07T21:05:35+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'1649336746154_933938','/articleMaterial/100010','1003.png','1649336746154_933938_1003.png','//articleMaterial/100010/1649336746154_933938_1003.png',NULL,NULL,'666.11KB','jhInsert','admin','武林盟主','2022-04-07T21:05:46+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'1649337159025_254479','/articleMaterial/100010','1001.png','1649337159025_254479_1001.png','//articleMaterial/100010/1649337159025_254479_1001.png',NULL,NULL,'265.51KB','jhInsert','admin','武林盟主','2022-04-07T21:12:39+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (61,'1649337167478_435544','/articleMaterial/100010','0001.mp3','1649337167478_435544_0001.mp3','//articleMaterial/100010/1649337167478_435544_0001.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-07T21:12:47+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'1649337234749_247847','/articleMaterial/100010','1004.png','1649337234749_247847_1004.png','//articleMaterial/100010/1649337234749_247847_1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-07T21:13:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (63,'1649337274746_150558','articleMaterial/100010','1002.png','1649337274746_150558_1002.png','/articleMaterial/100010/1649337274746_150558_1002.png',NULL,NULL,'56.01KB','jhInsert','admin','武林盟主','2022-04-07T21:14:34+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (64,'1649337297939_881414','articleMaterial/100010','0002.mp3','1649337297939_881414_0002.mp3','/articleMaterial/100010/1649337297939_881414_0002.mp3',NULL,NULL,'15.44MB','jhInsert','admin','武林盟主','2022-04-07T21:14:58+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (65,'1649337319177_864283','articleMaterial/100010','0005.mp4','1649337319177_864283_0005.mp4','/articleMaterial/100010/1649337319177_864283_0005.mp4',NULL,NULL,'76.00MB','jhInsert','admin','武林盟主','2022-04-07T21:15:19+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (66,'1649340713142_315915','/materialRepo/image/10001/','1001.png','1001.png','//materialRepo/image/10001//1001.png',NULL,NULL,'265.51KB','jhInsert','admin','武林盟主','2022-04-07T22:11:53+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (67,'1649340715836_764489','/materialRepo/image/10001/','1002.png','1002.png','//materialRepo/image/10001//1002.png',NULL,NULL,'56.01KB','jhInsert','admin','武林盟主','2022-04-07T22:11:55+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (68,'1649340719237_980048','/materialRepo/image/10001/','1003.png','1003.png','//materialRepo/image/10001//1003.png',NULL,NULL,'666.11KB','jhInsert','admin','武林盟主','2022-04-07T22:11:59+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (69,'1649340722255_770253','/materialRepo/image/10001/','1004.png','1004.png','//materialRepo/image/10001//1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-07T22:12:02+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (70,'1649340724806_680778','/materialRepo/image/10001/','1005.png','1005.png','//materialRepo/image/10001//1005.png',NULL,NULL,'692.19KB','jhInsert','admin','武林盟主','2022-04-07T22:12:04+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (71,'1649340727997_252456','/materialRepo/image/10001/','1006.png','1006.png','//materialRepo/image/10001//1006.png',NULL,NULL,'649.76KB','jhInsert','admin','武林盟主','2022-04-07T22:12:08+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (72,'1649340806549_370270','/materialRepo/image/10001/test/','1003.png','1003.png','//materialRepo/image/10001/test//1003.png',NULL,NULL,'666.11KB','jhInsert','admin','武林盟主','2022-04-07T22:13:26+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (73,'1649340809953_281135','/materialRepo/image/10001/test/','1004.png','1004.png','//materialRepo/image/10001/test//1004.png',NULL,NULL,'381.66KB','jhInsert','admin','武林盟主','2022-04-07T22:13:29+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (74,'1649340812717_156336','/materialRepo/image/10001/test/','1005.png','1005.png','//materialRepo/image/10001/test//1005.png',NULL,NULL,'692.19KB','jhInsert','admin','武林盟主','2022-04-07T22:13:32+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (75,'1649409767101_138660','articleMaterial/100052','0001.mp3','1649409767101_138660_0001.mp3','/articleMaterial/100052/1649409767101_138660_0001.mp3',NULL,NULL,'4.94MB','jhInsert','admin','武林盟主','2022-04-08T17:22:47+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (76,'1649409772807_999233','articleMaterial/100052','0003.mp4','1649409772807_999233_0003.mp4','/articleMaterial/100052/1649409772807_999233_0003.mp4',NULL,NULL,'1.39MB','jhInsert','admin','武林盟主','2022-04-08T17:22:52+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (77,'1649514048945_407214','/materialRepo/attachment/','SCR-20220408-p2i.png','SCR-20220408-p2i.png','//materialRepo/attachment//SCR-20220408-p2i.png',NULL,NULL,'5.38KB','jhInsert','admin','武林盟主','2022-04-09T22:20:48+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (78,'1649515352842_447458','/materialRepo/attachment/','SCR-20220404-la6.png','SCR-20220404-la6.png','//materialRepo/attachment//SCR-20220404-la6.png',NULL,NULL,'304.41KB','jhInsert','admin','武林盟主','2022-04-09T22:42:32+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (79,'1649517563612_497722','/materialRepoaudio/','1649401761557.mp4','1649401761557.mp4','//materialRepoaudio//1649401761557.mp4',NULL,NULL,'84.23MB','jhInsert','admin','武林盟主','2022-04-09T23:19:24+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (80,'1649517694113_464183','/materialRepo/video/','2020.10.11联考方法精讲-资料1上.mp4','2020.10.11联考方法精讲-资料1上.mp4','//materialRepo/video//2020.10.11联考方法精讲-资料1上.mp4',NULL,NULL,'82.52MB','jhInsert','admin','武林盟主','2022-04-09T23:21:34+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (81,'1649517758037_217352','/materialRepoaudio/','19｜全篇通读（下）：不是所有的文章和书籍都值得读完.m4a','19｜全篇通读（下）：不是所有的文章和书籍都值得读完.m4a','//materialRepoaudio//19｜全篇通读（下）：不是所有的文章和书籍都值得读完.m4a',NULL,NULL,'14.22MB','jhInsert','admin','武林盟主','2022-04-09T23:22:38+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (82,'1649517816446_904418','/materialRepoaudio/','bamboo.mp3','bamboo.mp3','//materialRepoaudio//bamboo.mp3',NULL,NULL,'601.90KB','jhInsert','admin','武林盟主','2022-04-09T23:23:36+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (83,'1649518289014_556300','/materialRepo/audio/','bamboo.mp3','bamboo.mp3','//materialRepo/audio//bamboo.mp3',NULL,NULL,'601.90KB','jhInsert','admin','武林盟主','2022-04-09T23:31:29+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (84,'1649679954569_818570','/materialRepo/image/','1001.png','1001.png','//materialRepo/image//1001.png',NULL,NULL,'265.51KB','jhInsert','m3611F','刘计','2022-04-11T20:25:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (85,'1649679976156_637655','/materialRepo/video/','0004.mp4','0004.mp4','//materialRepo/video//0004.mp4',NULL,NULL,'3.40MB','jhInsert','m3611F','刘计','2022-04-11T20:26:16+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (86,'1649686114654_674840','/materialRepo/attachment/','app-arm64-v8a-dev-release.apk','app-arm64-v8a-dev-release.apk','//materialRepo/attachment//app-arm64-v8a-dev-release.apk',NULL,NULL,'18.21MB','jhInsert','admin','武林盟主','2022-04-11T22:08:34+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (87,'1649749508542_701201','/materialRepo/video/','0004.mp4','0004.mp4','//materialRepo/video//0004.mp4',NULL,NULL,'3.40MB','jhInsert','m3611F','刘计','2022-04-12T15:45:08+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (88,'1649771851248_183502','/materialRepo/attachment/123123/','3.txt','3.txt','//materialRepo/attachment/123123//3.txt',NULL,NULL,'76.56KB','jhInsert','admin','武林盟主','2022-04-12T21:57:31+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (89,'1649774920577_196939','/materialRepoimage/','pexels-francesco-ungaro-1525041.jpg','pexels-francesco-ungaro-1525041.jpg','//materialRepoimage//pexels-francesco-ungaro-1525041.jpg',NULL,NULL,'4.95MB','jhInsert','admin','武林盟主','2022-04-12T22:48:40+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (90,'1649774944877_161545','/materialRepoimage/','pexels-francesco-ungaro-1525041.jpg','pexels-francesco-ungaro-1525041.jpg','//materialRepoimage//pexels-francesco-ungaro-1525041.jpg',NULL,NULL,'4.95MB','jhInsert','admin','武林盟主','2022-04-12T22:49:04+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (91,'1649775028135_932353','/materialRepoimage/','pexels-francesco-ungaro-1525041.jpg','pexels-francesco-ungaro-1525041.jpg','//materialRepoimage//pexels-francesco-ungaro-1525041.jpg',NULL,NULL,'4.95MB','jhInsert','admin','武林盟主','2022-04-12T22:50:28+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (92,'1649775085907_936691','/materialRepoimage/','pexels-francesco-ungaro-1525041.jpg','pexels-francesco-ungaro-1525041.jpg','//materialRepoimage//pexels-francesco-ungaro-1525041.jpg',NULL,NULL,'4.95MB','jhInsert','admin','武林盟主','2022-04-12T22:51:25+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (93,'1649851939767_598700','/materialRepoimage/111/','函数.png','函数.png','//materialRepoimage/111//函数.png',NULL,NULL,'4.40KB','jhInsert','m3611F','刘计','2022-04-13T20:12:19+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (94,'1649851942334_151810','/materialRepoimage/111/','圣经.png','圣经.png','//materialRepoimage/111//圣经.png',NULL,NULL,'4.05KB','jhInsert','m3611F','刘计','2022-04-13T20:12:22+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (95,'1649851946627_518082','/materialRepoimage/111/','数据库.png','数据库.png','//materialRepoimage/111//数据库.png',NULL,NULL,'5.11KB','jhInsert','m3611F','刘计','2022-04-13T20:12:26+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (96,'1649851986470_459773','/materialRepo/image/','函数.png','函数.png','//materialRepo/image//函数.png',NULL,NULL,'4.40KB','jhInsert','m3611F','刘计','2022-04-13T20:13:06+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (97,'1649851988545_277211','/materialRepo/image/','圣经.png','圣经.png','//materialRepo/image//圣经.png',NULL,NULL,'4.05KB','jhInsert','m3611F','刘计','2022-04-13T20:13:08+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (98,'1649851991072_112341','/materialRepo/image/','数据库.png','数据库.png','//materialRepo/image//数据库.png',NULL,NULL,'5.11KB','jhInsert','m3611F','刘计','2022-04-13T20:13:11+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (99,'1649851994437_621403','/materialRepo/image/','学校.png','学校.png','//materialRepo/image//学校.png',NULL,NULL,'5.40KB','jhInsert','m3611F','刘计','2022-04-13T20:13:14+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (100,'1649851997077_332966','/materialRepo/image/','avatar.png','avatar.png','//materialRepo/image//avatar.png',NULL,NULL,'6.19KB','jhInsert','m3611F','刘计','2022-04-13T20:13:17+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,'1649852758594_521845','/materialRepo/video/','0003.mp4','0003.mp4','//materialRepo/video//0003.mp4',NULL,NULL,'1.39MB','jhInsert','m3611F','刘计','2022-04-13T20:25:58+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,'1649852763489_395133','/materialRepo/video/','0004.mp4','0004.mp4','//materialRepo/video//0004.mp4',NULL,NULL,'3.40MB','jhInsert','m3611F','刘计','2022-04-13T20:26:03+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (103,'1649853116647_837772','/materialRepovideo/','1004.png','1004.png','//materialRepovideo//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-13T20:31:56+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (104,'1649853205827_993690','/materialRepovideo/','1004.png','1004.png','//materialRepovideo//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-13T20:33:25+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (105,'1649853244109_961239','/materialRepovideo/','1005.png','1005.png','//materialRepovideo//1005.png',NULL,NULL,'692.19KB','jhInsert','m3611F','刘计','2022-04-13T20:34:04+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (106,'1649853536791_537197','/materialRepo/video/','1006.png','1006.png','//materialRepo/video//1006.png',NULL,NULL,'649.76KB','jhInsert','m3611F','刘计','2022-04-13T20:38:56+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (107,'1649853556344_762958','/materialRepo/video/222/','0003.mp4','0003.mp4','//materialRepo/video/222//0003.mp4',NULL,NULL,'1.39MB','jhInsert','m3611F','刘计','2022-04-13T20:39:16+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (108,'1649854106156_142650','/materialRepo/image/','1003.png','1003.png','//materialRepo/image//1003.png',NULL,NULL,'666.11KB','jhInsert','m3611F','刘计','2022-04-13T20:48:26+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (109,'1649854109677_121353','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-13T20:48:29+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (110,'1649855617351_753664','/materialRepo/','0002.mp3','0002.mp3','//materialRepo//0002.mp3',NULL,NULL,'15.44MB','jhInsert','m3611F','刘计','2022-04-13T21:13:37+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (111,'1649855634892_252718','/materialRepo/video/','0002.mp3','0002.mp3','//materialRepo/video//0002.mp3',NULL,NULL,'15.44MB','jhInsert','m3611F','刘计','2022-04-13T21:13:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,'1649909572589_955601','/materialRepoimage/','1002.png','1002.png','//materialRepoimage//1002.png',NULL,NULL,'56.01KB','jhInsert','m3611F','刘计','2022-04-14T12:12:52+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (113,'1649909574500_601979','/materialRepoimage/','1003.png','1003.png','//materialRepoimage//1003.png',NULL,NULL,'666.11KB','jhInsert','m3611F','刘计','2022-04-14T12:12:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (114,'1649909576431_878053','/materialRepoimage/','1004.png','1004.png','//materialRepoimage//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-14T12:12:56+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (115,'1649909578332_640964','/materialRepoimage/','1005.png','1005.png','//materialRepoimage//1005.png',NULL,NULL,'692.19KB','jhInsert','m3611F','刘计','2022-04-14T12:12:58+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (116,'1649932210038_686336','/materialRepo/image/','biblestudy-Gen.png','biblestudy-Gen.png','//materialRepo/image//biblestudy-Gen.png',NULL,NULL,'288.71KB','jhInsert','admin','武林盟主','2022-04-14T18:30:10+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,'1649945978798_735957','/materialRepo/image/','1003.png','1003.png','//materialRepo/image//1003.png',NULL,NULL,'666.11KB','jhInsert','m3611F','刘计','2022-04-14T22:19:38+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (118,'1649945983449_947888','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-14T22:19:43+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (119,'1649945987661_359094','/materialRepo/image/','1005.png','1005.png','//materialRepo/image//1005.png',NULL,NULL,'692.19KB','jhInsert','m3611F','刘计','2022-04-14T22:19:47+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (120,'1649945992601_175371','/materialRepo/image/','1006.png','1006.png','//materialRepo/image//1006.png',NULL,NULL,'649.76KB','jhInsert','m3611F','刘计','2022-04-14T22:19:52+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (121,'1650168317971_553000','/materialRepo/image/sermon/','sermon-2022-04-17.png','sermon-2022-04-17.png','//materialRepo/image/sermon//sermon-2022-04-17.png',NULL,NULL,'614.78KB','jhInsert','100002D','王番JH','2022-04-17T12:05:17+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (122,'1650168361271_424021','/materialRepo/audio/Chinese/sermon/','2022-04-17-2.mp3','2022-04-17-2.mp3','//materialRepo/audio/Chinese/sermon//2022-04-17-2.mp3',NULL,NULL,'24.09MB','jhInsert','100002D','王番JH','2022-04-17T12:06:01+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (123,'1650212802862_496737','/materialRepo/audio/Chinese/sermon/','2022-04-17QA.mp3','2022-04-17QA.mp3','//materialRepo/audio/Chinese/sermon//2022-04-17QA.mp3',NULL,NULL,'15.94MB','jhInsert','100002D','王番JH','2022-04-18T00:26:42+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (124,'1650413604356_410436','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-20T08:13:24+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (125,'1650413701085_188597','/materialRepo/image/','1003.png','1003.png','//materialRepo/image//1003.png',NULL,NULL,'666.11KB','jhInsert','m3611F','刘计','2022-04-20T08:15:01+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (126,'1650413701677_827732','/materialRepo/image/','1004.png','1004.png','//materialRepo/image//1004.png',NULL,NULL,'381.66KB','jhInsert','m3611F','刘计','2022-04-20T08:15:01+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (127,'1650413702299_789587','/materialRepo/image/','1005.png','1005.png','//materialRepo/image//1005.png',NULL,NULL,'692.19KB','jhInsert','m3611F','刘计','2022-04-20T08:15:02+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (128,'1650414609273_497626','/materialRepo/audio/','0001.mp3','0001.mp3','//materialRepo/audio//0001.mp3',NULL,NULL,'4.94MB','jhInsert','m3611F','刘计','2022-04-20T08:30:09+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (129,'1650414610402_563252','/materialRepo/audio/','0002.mp3','0002.mp3','//materialRepo/audio//0002.mp3',NULL,NULL,'15.44MB','jhInsert','m3611F','刘计','2022-04-20T08:30:10+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (130,'1650415838958_279939','/materialRepo/video/','0005.mp4','0005.mp4','//materialRepo/video//0005.mp4',NULL,NULL,'76.00MB','jhInsert','m3611F','刘计','2022-04-20T08:50:39+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (131,'1650546233845_632106','/materialRepo/image/','1001.png','1001.png','//materialRepo/image//1001.png',NULL,NULL,'265.51KB','jhInsert','m3611F','刘计','2022-04-21T21:03:53+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2  COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `pageHook` text COMMENT '{\n  "beforeHook":[\n  {"field": "doc", "service": "doc", "serviceFunc": "getDoc"}\n  ]\n}',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39  COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','dynamicInMenu','11',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','','',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual','操作手册','showInMenu','0',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'home','首页','seo','','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'userManagement','用户管理','showInMenu','6',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'article','文章详情','seo',NULL,'{\n  \"beforeHook\":[\n    {\"field\": \"article\", \"service\": \"article\", \"serviceFunc\": \"getArticleAndFillArticles\"},\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'main','命定index','seo','0','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','insert','vscode','vscode','2022-06-15T14:04:06+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (36,'kecheng',NULL,'seo',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (37,'chajing',NULL,'seo',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`pageHook`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (38,'connect',NULL,'seo',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageType`, `sort`, `pageHook`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (40, 'xfArticle', 'xfPage文章详情', 'seo', '', '{\n  \"beforeHook\":[\n    {\"field\": \"xfPage\", \"service\": \"xfPage\", \"serviceFunc\": \"getXfPageAndFillArticles\"},\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n		{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}', 'insert', NULL, NULL, NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` longtext COMMENT '数据JSON',
  `packageContent` longtext COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`, `operation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2900  COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '{ "before": [{"service": "xx", "serviceFunction": "xxx"}], "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 462  COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"logout\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,NULL,NULL,'allPage','resetPassword','✅修改用户密码','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (258,NULL,NULL,'allPage','getConstantList','✅查询常量','sql','{}','{ \"table\": \"_constant\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (345,NULL,NULL,'home','selectCategoryList','✅分类管理-查询列表','sql','{}','{ \"table\": \"view01_category\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (354,NULL,NULL,'userManagement','selectItemList','✅用户管理-查询信息','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-04-25T15:31:19+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (355,NULL,NULL,'userManagement','insertItem','✅用户管理-查询信息','service',NULL,'{ \"service\": \"userManagement\", \"serviceFunction\": \"addUser\" }','','','update',NULL,NULL,'2022-02-18T20:19:24+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (356,NULL,NULL,'userManagement','resetUserPassword','✅用户管理-修改密码','service',NULL,'{ \"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\" }','','','update',NULL,NULL,'2022-04-25T14:40:49+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (357,NULL,NULL,'userManagement','updateItem','✅用户管理-更新用户','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-04-25T14:38:08+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (461,NULL,NULL,'article','addComment','✅文章页面','sql','{}','{ \"table\": \"comment\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resourceId_index` (`resourceId`) USING BTREE,
  KEY `packageId_index` (`packageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19789  COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10  COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'appAdmin','系统管理员','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'editor','可编辑',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,'viewer','可查看',NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255)  DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255)  DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255)  DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255)  DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text  COMMENT '测试用例步骤;',
  `operation` varchar(255)  DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255)  DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255)  DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255)  DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 33   COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255)  DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255)  DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255)  DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255)  DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text  COMMENT 'ui 动作数据',
  `appDataSchema` text  COMMENT 'ui 校验数据',
  `operation` varchar(255)  DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255)  DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255)  DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255)  DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB   COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `contactNumber` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `gender` varchar(255) DEFAULT 'male' COMMENT '性别; male, female',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日E.g: 2021-05-28T10:24:54+08:00 ',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '初始明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT 'password',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userType` varchar(255) DEFAULT 'common' COMMENT '用户类型; common, xiaochengxu',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户类型; active, banned',
  `config` mediumtext COMMENT '置顶信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userId_unique` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179  COMMENT = '用户表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,NULL,'admin','武林盟主','/userAvatar/2022/4/4//1649055579149_130916_1.gif','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','P@ssword@@JH','29f4476875987aaa82940da0ba3de4a5','fdAmbjrYsjCe','common','active',NULL,'update','m3611F','Colin','2022-05-05T16:00:42+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,NULL,'100004Q','伽勒','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,NULL,'m3995Q','雪园','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,NULL,'m3862G','louis','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','Jsure123#','5e8557698fded69f9db5553670851cfd','970NYLt1AXIp','common','active',NULL,'jhUpdate','m3862G','louis','2022-05-05T19:47:16+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,NULL,'m3662X','张超','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,NULL,'m3659N','汗蒸','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,NULL,'m3658K','本善','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','123456','9d868aad4af212de6a26e39efbdd86ee','4ThJGJbAPe5m','common','active',NULL,'jhUpdate','admin','武林盟主','2022-04-08T20:55:17+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,NULL,'m3611F','Colin','/userAvatar/2022/4/8//1649422517016_792036_11.jpeg','17177777001','male','2022-04-15T00:00:00.000Z','FX啊水电费','电饭锅回电话','Colinliu','82d520ee7aa5db4b510355af0e96d9c9','7qs5fWwxU4_Q','common','active',NULL,'jhUpdate','m3611F','Colin','2022-05-05T15:50:16+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (173,'26260000','100005W','安宁',NULL,NULL,'male',NULL,NULL,NULL,'P2829301@','72b39c4256d89f145863d8453e3a37db','nNYc4EiE7t2J','common','active',NULL,'insert','admin','武林盟主','2022-04-28T17:03:01+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (174,'26260001','meilisearchW','meilisearch',NULL,NULL,'male',NULL,NULL,NULL,'dfsf#$FDfs324DSGfdsggfg','ad81c452af6255b7678aacd08fe06309','KGyZSNCy8JS8','common','active',NULL,'insert','m3611F','Colin','2022-06-07T20:37:53+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (175,'26260002','100080M','贝贝JH',NULL,NULL,'male',NULL,NULL,NULL,'123456','dec6267397db39adf9d36f3f001959ed','4EkXJCR5GHCs','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:00+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (176,'26260003','m3111G','安琪',NULL,NULL,'male',NULL,NULL,NULL,'123456','b2eb1801f8b789b23d6d990c238add96','7skcTMwMWFHw','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:18+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (177,'26260004','100062Y','雅飒JH',NULL,NULL,'male',NULL,NULL,NULL,'123456','890d470e0eeca98c8da8233fe29bd9d5','SBXQy2Qsi5jF','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:40+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`userAvatar`,`contactNumber`,`gender`,`birthday`,`signature`,`email`,`clearTextPassword`,`password`,`md5Salt`,`userType`,`userStatus`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (178,'26260005','100013V','杉泥JH',NULL,NULL,'male',NULL,NULL,NULL,'123456','421cb66c3fe808ac6408e6f83b1cbb5e','8Mzrf86i3HP6','common','active',NULL,'insert','m3611F','Colin','2022-06-16T16:21:57+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB  COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61  COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'*','public','*','help','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'*','public','*','login','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'*','public','*','home','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (58,'*','public','*','article','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (59,'*','public','*','manual','allow',' ','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'admin,10000Q,m3995Q,m3862G,m3666K,m3662X,m3659N,m3658K,m3611F,100005W','*','*','*','allow','管理用户, 开放所有页面权限','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56  COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'*','public','*','login.passwordLogin','allow','登录resouce, 赋予给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'*','login','*','allPage.*','allow','allPage 相关接口, 赋予给所有登录用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'admin,10000Q,m3995Q,m3862G,m3666K,m3662X,m3659N,m3658K,m3611F,100005W','*','*','*','allow','所有resource权限, 赋予给所有用户','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `userIpRegion` varchar(255) DEFAULT NULL,
  `socketStatus` varchar(255) NOT NULL DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_unique` (`userId`, `deviceId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93  COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 ;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: comment
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`userAvatar` AS `userAvatar`,
  `_user`.`contactNumber` AS `contactNumber`,
  `_user`.`gender` AS `gender`,
  `_user`.`birthday` AS `birthday`,
  `_user`.`signature` AS `signature`,
  `_user`.`email` AS `email`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userType` AS `userType`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`
from
  `_user`;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: xf_page
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `xf_page` AS
select
  `cn_openjianghu_admin`.`xf_page`.`id` AS `id`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageId` AS `xfPageId`,
  `cn_openjianghu_admin`.`xf_page`.`categoryId` AS `categoryId`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageTagList` AS `xfPageTagList`,
  `cn_openjianghu_admin`.`xf_page`.`xfPagePublishStatus` AS `xfPagePublishStatus`,
  `cn_openjianghu_admin`.`xf_page`.`xfPagePublishTime` AS `xfPagePublishTime`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageTitle` AS `xfPageTitle`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageCoverImage` AS `xfPageCoverImage`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageContent` AS `xfPageContent`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageContentForSeo` AS `xfPageContentForSeo`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageAudioUrl` AS `xfPageAudioUrl`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageVideoUrl` AS `xfPageVideoUrl`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageDescription` AS `xfPageDescription`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageCreateTime` AS `xfPageCreateTime`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageCreateUserId` AS `xfPageCreateUserId`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageCreateUsername` AS `xfPageCreateUsername`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageUpdateTime` AS `xfPageUpdateTime`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageUpdateUserId` AS `xfPageUpdateUserId`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageUpdateUsername` AS `xfPageUpdateUsername`,
  `cn_openjianghu_admin`.`xf_page`.`xfPageConfig` AS `xfPageConfig`,
  `cn_openjianghu_admin`.`xf_page`.`template` AS `template`,
  `cn_openjianghu_admin`.`xf_page`.`operation` AS `operation`,
  `cn_openjianghu_admin`.`xf_page`.`operationByUserId` AS `operationByUserId`,
  `cn_openjianghu_admin`.`xf_page`.`operationByUser` AS `operationByUser`,
  `cn_openjianghu_admin`.`xf_page`.`operationAt` AS `operationAt`
from
  `cn_openjianghu_admin`.`xf_page`;


# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `article` AS
select
  `cn_openjianghu_admin`.`article`.`id` AS `id`,
  `cn_openjianghu_admin`.`article`.`articleId` AS `articleId`,
  `cn_openjianghu_admin`.`article`.`categoryId` AS `categoryId`,
  `cn_openjianghu_admin`.`article`.`articleGroupName` AS `articleGroupName`,
  `cn_openjianghu_admin`.`article`.`articleTagList` AS `articleTagList`,
  `cn_openjianghu_admin`.`article`.`articlePublishStatus` AS `articlePublishStatus`,
  `cn_openjianghu_admin`.`article`.`articlePublishTime` AS `articlePublishTime`,
  `cn_openjianghu_admin`.`article`.`articleTitle` AS `articleTitle`,
  `cn_openjianghu_admin`.`article`.`articleCoverImage` AS `articleCoverImage`,
  `cn_openjianghu_admin`.`article`.`articleContent` AS `articleContent`,
  `cn_openjianghu_admin`.`article`.`articleContentForSeo` AS `articleContentForSeo`,
  `cn_openjianghu_admin`.`article`.`articleAssignmentList` AS `articleAssignmentList`,
  `cn_openjianghu_admin`.`article`.`articleAssignmentListWithAnswer` AS `articleAssignmentListWithAnswer`,
  `cn_openjianghu_admin`.`article`.`articleAudioUrl` AS `articleAudioUrl`,
  `cn_openjianghu_admin`.`article`.`articleVideoUrl` AS `articleVideoUrl`,
  `cn_openjianghu_admin`.`article`.`articleCreateTime` AS `articleCreateTime`,
  `cn_openjianghu_admin`.`article`.`articleCreateUserId` AS `articleCreateUserId`,
  `cn_openjianghu_admin`.`article`.`articleCreateUsername` AS `articleCreateUsername`,
  `cn_openjianghu_admin`.`article`.`articleUpdateTime` AS `articleUpdateTime`,
  `cn_openjianghu_admin`.`article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `cn_openjianghu_admin`.`article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `cn_openjianghu_admin`.`article`.`operation` AS `operation`,
  `cn_openjianghu_admin`.`article`.`operationByUserId` AS `operationByUserId`,
  `cn_openjianghu_admin`.`article`.`operationByUser` AS `operationByUser`,
  `cn_openjianghu_admin`.`article`.`operationAt` AS `operationAt`
from
  `cn_openjianghu_admin`.`article`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: category
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `category` AS
select
  `cn_openjianghu_admin`.`category`.`id` AS `id`,
  `cn_openjianghu_admin`.`category`.`categoryId` AS `categoryId`,
  `cn_openjianghu_admin`.`category`.`categoryName` AS `categoryName`,
  `cn_openjianghu_admin`.`category`.`categoryArticleIgnoreTiltle` AS `categoryArticleIgnoreTiltle`,
  `cn_openjianghu_admin`.`category`.`categoryIntro` AS `categoryIntro`,
  `cn_openjianghu_admin`.`category`.`categoryGroup` AS `categoryGroup`,
  `cn_openjianghu_admin`.`category`.`categoryGroupSort` AS `categoryGroupSort`,
  `cn_openjianghu_admin`.`category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `cn_openjianghu_admin`.`category`.`categoryCreateTime` AS `categoryCreateTime`,
  `cn_openjianghu_admin`.`category`.`categoryCreateUserId` AS `categoryCreateUserId`,
  `cn_openjianghu_admin`.`category`.`categoryCreateUsername` AS `categoryCreateUsername`,
  `cn_openjianghu_admin`.`category`.`categoryUpdateTime` AS `categoryUpdateTime`,
  `cn_openjianghu_admin`.`category`.`categoryUpdateUserId` AS `categoryUpdateUserId`,
  `cn_openjianghu_admin`.`category`.`categoryUpdateUsername` AS `categoryUpdateUsername`,
  `cn_openjianghu_admin`.`category`.`operation` AS `operation`,
  `cn_openjianghu_admin`.`category`.`operationByUserId` AS `operationByUserId`,
  `cn_openjianghu_admin`.`category`.`operationByUser` AS `operationByUser`,
  `cn_openjianghu_admin`.`category`.`operationAt` AS `operationAt`
from
  `cn_openjianghu_admin`.`category`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article` AS
select
  `article`.`id` AS `id`,
  `article`.`articleId` AS `articleId`,
  `article`.`categoryId` AS `categoryId`,
  `article`.`articleGroupName` AS `articleGroupName`,
  `article`.`articleTagList` AS `articleTagList`,
  `article`.`articlePublishStatus` AS `articlePublishStatus`,
  `article`.`articlePublishTime` AS `articlePublishTime`,
  `article`.`articleTitle` AS `articleTitle`,
  `article`.`articleCoverImage` AS `articleCoverImage`,
  `article`.`articleAudioUrl` AS `articleAudioUrl`,
  `article`.`articleVideoUrl` AS `articleVideoUrl`,
  `article`.`articleCreateTime` AS `articleCreateTime`,
  `article`.`articleCreateUserId` AS `articleCreateUserId`,
  `article`.`articleCreateUsername` AS `articleCreateUsername`,
  `article`.`articleUpdateTime` AS `articleUpdateTime`,
  `article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `article`.`operation` AS `operation`,
  `article`.`operationByUserId` AS `operationByUserId`,
  `article`.`operationByUser` AS `operationByUser`,
  `article`.`operationAt` AS `operationAt`,
  `category`.`categoryName` AS `categoryName`,
  `category`.`categoryArticleIgnoreTiltle` AS `categoryArticleIgnoreTiltle`,
  `category`.`categoryIntro` AS `categoryIntro`,
  `category`.`categoryGroup` AS `categoryGroup`,
  `category`.`categoryGroupSort` AS `categoryGroupSort`
from
  (
  `cn_openjianghu_seo`.`article`
  left join `cn_openjianghu_seo`.`category` on(
    (`article`.`categoryId` = `category`.`categoryId`)
  )
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_category
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_category` AS
select
  count(
  (
    `article`.`articlePublishStatus` in ('public', 'login')
  )
  ) AS `count`,
  `category`.`id` AS `id`,
  `category`.`categoryId` AS `categoryId`,
  `category`.`categoryName` AS `categoryName`,
  `category`.`categoryArticleIgnoreTiltle` AS `categoryArticleIgnoreTiltle`,
  `category`.`categoryGroup` AS `categoryGroup`,
  `category`.`categoryGroupSort` AS `categoryGroupSort`,
  concat(
  '<',
  `category`.`categoryGroup`,
  `category`.`categoryGroupSort`,
  '>'
  ) AS `categoryGroupConcat`,
  group_concat(`article`.`articleTitle` separator ',') AS `articleTitleList`,
  group_concat(`article`.`articleId` separator ',') AS `articleIdList`,
  group_concat(
  date_format(`article`.`articleUpdateTime`, '%m-%d') separator ','
  ) AS `articleUpdateTimeList`,
  `category`.`categoryIntro` AS `categoryIntro`,
  `category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `category`.`categoryCreateTime` AS `categoryCreateTime`,
  `category`.`categoryCreateUserId` AS `categoryCreateUserId`,
  `category`.`categoryCreateUsername` AS `categoryCreateUsername`,
  `category`.`categoryUpdateTime` AS `categoryUpdateTime`,
  `category`.`categoryUpdateUserId` AS `categoryUpdateUserId`,
  `category`.`categoryUpdateUsername` AS `categoryUpdateUsername`,
  `category`.`operation` AS `operation`,
  `category`.`operationByUserId` AS `operationByUserId`,
  `category`.`operationByUser` AS `operationByUser`,
  `category`.`operationAt` AS `operationAt`
from
  (
  `cn_openjianghu_seo`.`category`
  left join `cn_openjianghu_seo`.`article` on(
    (`category`.`categoryId` = `article`.`categoryId`)
  )
  )
group by
  `category`.`categoryId`;





