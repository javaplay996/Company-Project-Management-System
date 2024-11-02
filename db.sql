/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tgongshiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tgongshiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tgongshiguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-24 13:39:48'),(2,'sex_types','性别',2,'女',NULL,'2021-03-24 13:39:48'),(3,'shifou_types','是否验收',1,'是',NULL,'2021-03-24 13:39:48'),(4,'shifou_types','是否验收',2,'否',NULL,'2021-03-24 13:39:48'),(5,'bumen_types','部门名称',1,'部门1',NULL,'2021-03-24 13:39:48'),(6,'bumen_types','部门名称',2,'部门2',NULL,'2021-03-24 13:39:48'),(7,'bumen_types','部门名称',3,'部门3',NULL,'2021-03-24 13:39:48'),(8,'rwleix_types','任务类型名称',1,'任务1',NULL,'2021-03-24 13:39:48'),(9,'rwleix_types','任务类型名称',2,'任务2',NULL,'2021-03-24 13:39:48'),(10,'rwleix_types','任务类型名称',3,'任务3',NULL,'2021-03-24 13:39:48');

/*Table structure for table `feiyongbaoxiao` */

DROP TABLE IF EXISTS `feiyongbaoxiao`;

CREATE TABLE `feiyongbaoxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bxname` varchar(200) DEFAULT NULL COMMENT '花费原因 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '花费人',
  `expense` decimal(10,4) DEFAULT NULL COMMENT '花费金额',
  `bxexpense` decimal(10,4) DEFAULT NULL COMMENT '报销金额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='费用报销单';

/*Data for the table `feiyongbaoxiao` */

insert  into `feiyongbaoxiao`(`id`,`bxname`,`yonghu_id`,`expense`,`bxexpense`,`create_time`) values (1,'11',2,'11.0000','11.0000','2021-03-24 13:52:27'),(2,'22',1,'22.0000','22.0000','2021-03-24 15:26:01'),(3,'33',1,'33.0000','33.0000','2021-03-24 15:34:39');

/*Table structure for table `fenpei` */

DROP TABLE IF EXISTS `fenpei`;

CREATE TABLE `fenpei` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目名称',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '负责人',
  `renwu_id` int(11) DEFAULT NULL COMMENT '分配任务',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='项目分配';

/*Data for the table `fenpei` */

insert  into `fenpei`(`id`,`xiangmu_id`,`yonghu_id`,`renwu_id`,`create_time`) values (1,3,2,3,'2021-03-24 15:26:19'),(2,2,1,2,'2021-03-24 15:26:26'),(3,1,2,1,'2021-03-24 15:28:29');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `htname` varchar(200) DEFAULT NULL COMMENT '合同名称 Search111',
  `kehu_id` int(11) DEFAULT NULL COMMENT '签订客户',
  `httong_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `neirong_content` varchar(10) DEFAULT NULL COMMENT '合同详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='合同模块';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`htname`,`kehu_id`,`httong_file`,`neirong_content`,`create_time`) values (1,'合同名称1',2,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616566006735.doc','合同详情1\r\n','2021-03-24 14:14:11'),(2,'合同名称2',1,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616571313058.xls','合同详情2\r\n','2021-03-24 15:35:20');

/*Table structure for table `jindu` */

DROP TABLE IF EXISTS `jindu`;

CREATE TABLE `jindu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目名称',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '负责人',
  `goumai_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='项目进度';

/*Data for the table `jindu` */

insert  into `jindu`(`id`,`xiangmu_id`,`yonghu_id`,`goumai_time`,`create_time`) values (1,3,2,'2021-03-26 00:00:00','2021-03-24 15:31:53'),(2,3,1,'2021-03-24 02:06:03','2021-03-24 15:35:46');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `khname` varchar(200) DEFAULT NULL COMMENT '名称 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111 ',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `khphone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `gongshi` varchar(200) DEFAULT NULL COMMENT '所在公司',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户模块';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`khname`,`sex_types`,`img_photo`,`khphone`,`gongshi`,`create_time`) values (1,'客户1',2,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616565966269.jpg','17711111111','所在公司1','2021-03-24 14:06:07'),(2,'客户2',1,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616565981957.jpg','17712122313','所在公司2','2021-03-24 14:06:25'),(3,'客户3',2,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616571381000.JPG','177855664564','所在公司3','2021-03-24 15:36:15');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rwname` varchar(200) DEFAULT NULL COMMENT '任务名称 Search111',
  `rwleix_types` int(11) DEFAULT NULL COMMENT '任务类型',
  `neirong_content` varchar(200) DEFAULT NULL COMMENT '任务内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`rwname`,`rwleix_types`,`neirong_content`,`create_time`) values (1,'任务名称1',1,'任务内容1\r\n','2021-03-24 15:20:39'),(2,'任务名称2',2,'任务内容2\r\n','2021-03-24 15:25:12'),(3,'任务名称3',3,'任务内容3\r\n','2021-03-24 15:25:18'),(4,'任务名称4',3,'任务内容4\r\n','2021-03-24 15:36:34');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'111','yonghu','员工','qghhgnxwetn5c302dhu8jo0sxbebaxgp','2021-03-24 14:53:48','2021-03-24 16:36:39'),(10,1,'admin','users','管理员','01p1tva7ybk7hqgrn5xq7vs8j0lxt1pt','2021-03-24 14:55:48','2021-03-24 16:44:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xmname` varchar(200) DEFAULT NULL COMMENT '项目名称 Search111 ',
  `schedule` varchar(200) DEFAULT NULL COMMENT '进度报工  Search111 ',
  `expense` decimal(10,4) DEFAULT NULL COMMENT '项目费用 ',
  `shifou_types` int(11) DEFAULT NULL COMMENT '是否验收',
  `qidongshu_file` varchar(200) DEFAULT NULL COMMENT '项目启动书',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='项目信息模块';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`xmname`,`schedule`,`expense`,`shifou_types`,`qidongshu_file`,`create_time`) values (1,'项目名称1','进度报工1','1000.0000',1,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616567157644.doc','2021-03-24 14:25:58'),(2,'项目名称2','进度报工2','2000.0000',1,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616570731804.doc','2021-03-24 15:25:36'),(3,'项目名称3','进度报工3','3000.0000',2,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616570746779.doc','2021-03-24 15:25:48'),(4,'项目名称4','进度报工4','4000.0000',2,'http://localhost:8080/Tgongshiguanli/file/download?fileName=1616571244526.doc','2021-03-24 15:34:05');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`id_number`,`role`) values (1,'小金','111','111','http://localhost:8080/Tgongshiguanli/file/download?fileName=1616565172461.jpg',1,'17796312333','410882200011231234','员工'),(2,'小札','222','222','http://localhost:8080/Tgongshiguanli/file/download?fileName=1616565163202.jpg',2,'17754548971','410882200011274855','员工');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
