DROP TABLE IF EXISTS `registered_user`;
CREATE TABLE `registered_user`(
	   `registered_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注册用户ID',
`user_name` varchar(64) NOT NULL UNIQUE comment '用户名',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (registered_user_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '注册用户';

DROP TABLE IF EXISTS `member_files`;
CREATE TABLE `member_files`(
	   `member_files_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员档案ID',
`user` int(11) DEFAULT 0 comment '用户',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`date_of_birth` date comment '出生日期',
`height` varchar(64) comment '身高',
`weight` varchar(64) comment '体重',
`genetic_history` text comment '遗传病史',
`disease_history` text comment '疾病史',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (member_files_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '会员档案';
insert into `member_files` values (1,0,'姓名1','性别1','2022-4-8','身高1','体重1','遗传病史1','疾病史1','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (2,0,'姓名2','性别2','2022-4-8','身高2','体重2','遗传病史2','疾病史2','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (3,0,'姓名3','性别3','2022-4-8','身高3','体重3','遗传病史3','疾病史3','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (4,0,'姓名4','性别4','2022-4-8','身高4','体重4','遗传病史4','疾病史4','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (5,0,'姓名5','性别5','2022-4-8','身高5','体重5','遗传病史5','疾病史5','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (6,0,'姓名6','性别6','2022-4-8','身高6','体重6','遗传病史6','疾病史6','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (7,0,'姓名7','性别7','2022-4-8','身高7','体重7','遗传病史7','疾病史7','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `member_files` values (8,0,'姓名8','性别8','2022-4-8','身高8','体重8','遗传病史8','疾病史8','0','2022-04-08 09:06:34','2022-04-08 09:06:34');

DROP TABLE IF EXISTS `health_assessment`;
CREATE TABLE `health_assessment`(
	   `health_assessment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '健康评估ID',
`user` int(11) DEFAULT 0 comment '用户',
`full_name` varchar(64) comment '姓名',
`evaluation_type` varchar(64) comment '评估类型',
`evaluation_time` datetime comment '测评时间',
`evaluation_report` varchar(255) comment '测评报告',
`evaluation_results` text comment '测评结果',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (health_assessment_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '健康评估';
insert into `health_assessment` values (1,0,'姓名1','评估类型1','2022-4-8 9:6:34','点此下载','测评结果1','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (2,0,'姓名2','评估类型2','2022-4-8 9:6:34','点此下载','测评结果2','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (3,0,'姓名3','评估类型3','2022-4-8 9:6:34','点此下载','测评结果3','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (4,0,'姓名4','评估类型4','2022-4-8 9:6:34','点此下载','测评结果4','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (5,0,'姓名5','评估类型5','2022-4-8 9:6:34','点此下载','测评结果5','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (6,0,'姓名6','评估类型6','2022-4-8 9:6:34','点此下载','测评结果6','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (7,0,'姓名7','评估类型7','2022-4-8 9:6:34','点此下载','测评结果7','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_assessment` values (8,0,'姓名8','评估类型8','2022-4-8 9:6:34','点此下载','测评结果8','0','2022-04-08 09:06:34','2022-04-08 09:06:34');

DROP TABLE IF EXISTS `physical_examination_package`;
CREATE TABLE `physical_examination_package`(
	   `physical_examination_package_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '体检套餐ID',
`package_number` varchar(64) comment '套餐编号',
`package_name` varchar(64) comment '套餐名称',
`cover` varchar(255) comment '封面',
`price` int(11) DEFAULT 0 comment '价格',
`test_item` text comment '检测项',
`matters_needing_attention` text comment '注意事项',
`details` longtext comment '详情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (physical_examination_package_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '体检套餐';
insert into `physical_examination_package` values (1,'套餐编号1','套餐名称1','/api/upload/image_1647497999250.jpg',5,'检测项1','注意事项1','此处可上传文字、图片、视频、超链接、表格等内容区1','392','760','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (2,'套餐编号2','套餐名称2','/api/upload/image_1647497999241.jpg',10,'检测项2','注意事项2','此处可上传文字、图片、视频、超链接、表格等内容区2','551','408','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (3,'套餐编号3','套餐名称3','/api/upload/image_1647497999234.jpg',15,'检测项3','注意事项3','此处可上传文字、图片、视频、超链接、表格等内容区3','147','537','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (4,'套餐编号4','套餐名称4','/api/upload/image_1647497999250.jpg',20,'检测项4','注意事项4','此处可上传文字、图片、视频、超链接、表格等内容区4','587','61','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (5,'套餐编号5','套餐名称5','/api/upload/image_1647497999250.jpg',25,'检测项5','注意事项5','此处可上传文字、图片、视频、超链接、表格等内容区5','175','527','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (6,'套餐编号6','套餐名称6','/api/upload/image_1647497999250.jpg',30,'检测项6','注意事项6','此处可上传文字、图片、视频、超链接、表格等内容区6','880','214','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (7,'套餐编号7','套餐名称7','/api/upload/image_1647497999234.jpg',35,'检测项7','注意事项7','此处可上传文字、图片、视频、超链接、表格等内容区7','191','575','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_package` values (8,'套餐编号8','套餐名称8','/api/upload/image_1647497999241.jpg',40,'检测项8','注意事项8','此处可上传文字、图片、视频、超链接、表格等内容区8','918','958','0','2022-04-08 09:06:34','2022-04-08 09:06:34');

DROP TABLE IF EXISTS `physical_examination_appointment`;
CREATE TABLE `physical_examination_appointment`(
	   `physical_examination_appointment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '体检预约ID',
`order_number` varchar(64) comment '订单号',
`package_number` varchar(64) comment '套餐编号',
`package_name` varchar(64) comment '套餐名称',
`price` varchar(64) comment '价格',
`number_of_appointments` int(11) DEFAULT 0 comment '预约人数',
`total_price` varchar(64) comment '总价格',
`user_name` int(11) DEFAULT 0 comment '用户名',
`contact_number` varchar(64) comment '联系电话',
`appointment_date_of_physical_examination` date comment '预约体检日期',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (physical_examination_appointment_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '体检预约';
insert into `physical_examination_appointment` values (1,'订单号1','套餐编号1','套餐名称1','价格1',5,'总价格1',0,'联系电话1','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (2,'订单号2','套餐编号2','套餐名称2','价格2',10,'总价格2',0,'联系电话2','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (3,'订单号3','套餐编号3','套餐名称3','价格3',15,'总价格3',0,'联系电话3','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (4,'订单号4','套餐编号4','套餐名称4','价格4',20,'总价格4',0,'联系电话4','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (5,'订单号5','套餐编号5','套餐名称5','价格5',25,'总价格5',0,'联系电话5','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (6,'订单号6','套餐编号6','套餐名称6','价格6',30,'总价格6',0,'联系电话6','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (7,'订单号7','套餐编号7','套餐名称7','价格7',35,'总价格7',0,'联系电话7','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_appointment` values (8,'订单号8','套餐编号8','套餐名称8','价格8',40,'总价格8',0,'联系电话8','2022-4-8','未审核','','未支付','支付宝','0','2022-04-08 09:06:34','2022-04-08 09:06:34');

DROP TABLE IF EXISTS `physical_examination_results`;
CREATE TABLE `physical_examination_results`(
	   `physical_examination_results_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '体检结果ID',
`order_number` varchar(64) comment '订单号',
`package_number` varchar(64) comment '套餐编号',
`package_name` varchar(64) comment '套餐名称',
`user_name` int(11) DEFAULT 0 comment '用户名',
`report` varchar(255) comment '报告',
`result_analysis` text comment '结果分析',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (physical_examination_results_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '体检结果';
insert into `physical_examination_results` values (1,'订单号1','套餐编号1','套餐名称1',0,'点此下载','结果分析1','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (2,'订单号2','套餐编号2','套餐名称2',0,'点此下载','结果分析2','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (3,'订单号3','套餐编号3','套餐名称3',0,'点此下载','结果分析3','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (4,'订单号4','套餐编号4','套餐名称4',0,'点此下载','结果分析4','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (5,'订单号5','套餐编号5','套餐名称5',0,'点此下载','结果分析5','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (6,'订单号6','套餐编号6','套餐名称6',0,'点此下载','结果分析6','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (7,'订单号7','套餐编号7','套餐名称7',0,'点此下载','结果分析7','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `physical_examination_results` values (8,'订单号8','套餐编号8','套餐名称8',0,'点此下载','结果分析8','0','2022-04-08 09:06:34','2022-04-08 09:06:34');

DROP TABLE IF EXISTS `health_intervention`;
CREATE TABLE `health_intervention`(
	   `health_intervention_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '健康干预ID',
`user_name` int(11) DEFAULT 0 comment '用户名',
`population_category` varchar(64) comment '人群类别',
`intervention_cycle` varchar(64) comment '干预周期',
`abnormal_index` text comment '异常指标',
`intervention_program` longtext comment '干预方案',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (health_intervention_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '健康干预';
insert into `health_intervention` values (1,0,'人群类别1','干预周期1','异常指标1','此处可上传文字、图片、视频、超链接、表格等内容区1','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (2,0,'人群类别2','干预周期2','异常指标2','此处可上传文字、图片、视频、超链接、表格等内容区2','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (3,0,'人群类别3','干预周期3','异常指标3','此处可上传文字、图片、视频、超链接、表格等内容区3','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (4,0,'人群类别4','干预周期4','异常指标4','此处可上传文字、图片、视频、超链接、表格等内容区4','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (5,0,'人群类别5','干预周期5','异常指标5','此处可上传文字、图片、视频、超链接、表格等内容区5','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (6,0,'人群类别6','干预周期6','异常指标6','此处可上传文字、图片、视频、超链接、表格等内容区6','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (7,0,'人群类别7','干预周期7','异常指标7','此处可上传文字、图片、视频、超链接、表格等内容区7','0','2022-04-08 09:06:34','2022-04-08 09:06:34');
insert into `health_intervention` values (8,0,'人群类别8','干预周期8','异常指标8','此处可上传文字、图片、视频、超链接、表格等内容区8','0','2022-04-08 09:06:34','2022-04-08 09:06:34');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '考试id',
  `name` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '考试名称：[2,32]',
  `duration` int(11) DEFAULT NULL COMMENT '答题时长',
  `score` double(8,2) DEFAULT NULL COMMENT '总分',
  `status` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '状态：启用、禁用',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='考试';
insert into `exam` values ('1','计算机基础考试','60','100','启用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam` values ('2','大学语文','90','120','启用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam` values ('3','C语言考试','70','100','禁用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `exam_question_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '类型',
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '题目',
  `question_item` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '选项',
  `answer` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '参考答案',
  `score` double(8,2) DEFAULT NULL COMMENT '总分',
  `question_order` int(11) DEFAULT NULL COMMENT '排序',
  `exam_id` mediumint(8) DEFAULT NULL COMMENT '所属试卷',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`exam_question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `exam_question` values ('1','单选题','启动Word后，空白文档的文档名为（　　）。','A、untitled
B、文档1.DOC
C、新文档.DOC
D、我的文档.DOC','C、新文档.DOC','10','1','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('2','单选题','Word软件处理的主要对象是（　　）。','A、表格
B、文档
C、图片
D、数据','B、文档','10','2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('3','单选题','当前活动窗口是文档dl.doc的窗口，单击该窗口的“最小化”按钮（　　）。','A、不显示dl.doc文档内容，但dl.doc文档并未关闭
B、dl.doc文档未关闭，且继续显示其内容
C、该窗口和dl.doc文档都被关闭
D、关闭了dl.doc文档但该窗口并未关闭','A、不显示dl.doc文档内容，但dl.doc文档并未关闭','10','3','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('4','多选题','文件或文件夹的属性一般有（　　）。','A、只读
B、隐藏
C、存档
D、系统','A、只读|B、隐藏','10','4','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('5','多选题','电子计算机根据外观可以分为（　　）。','A、巨型机
B、便携机
C、微型机
D、游戏机','A、巨型机|B、便携机|C、微型机','10','5','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('6','判断题','Word和Windows都是系统软件。','A、正确
B、错误','B、错误','5','6','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('7','判断题','ROM的是只读存储器。','A、正确
B、错误','A、正确','5','7','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('8','判断题','在存储器容量的表示中,1MB的含义是1024K个汉字。','A、正确
B、错误','B、错误','5','8','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('9','填空题','在Word文档中，每个段落都有自己的段落标记，段落标记的位置在______。','','段落的结尾处','10','9','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('10','填空题','能显示页眉和页脚的方式是______。','','页面视图','10','10','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('11','主观题','请简述一下计算机的工作原理？','','计算机最主要的工作原理是存储程序与程序控制','15','11','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('18','单选题','下列诗歌属于乐府旧题的有( )','A、《短歌行》
B、《饮酒》
C、《蛇》','A、《短歌行》','5','1','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('19','单选题','提倡“文章合为时而著，歌诗合为事而作”的唐代诗人是( )','A、韩愈
B、柳宗元
C、白居易','C、白居易','5','2','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('20','单选题','“甘其食，美其服，乐其俗”中的“甘”“美”“乐”属( )','A、使动词
B、意动词
C、名词','B、意动词','5','3','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('21','单选题','“功施到今”中“施”读作( )','A、yi
B、si
C、shi','A、yi','5','4','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('22','单选题','“回眸一笑百媚生，六宫粉黛无颜色”的作者是(  )','A、陆游
B、唐琬
C、白居易','C、白居易','5','5','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('23','多选题','《采薇》一诗的艺术特点是( )','A、反复咏叹
B、抒情和写景融为一体
C、起兴手法','A、反复咏叹|B、抒情和写景融为一体|C、起兴手法','10','6','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('24','多选题','“回眸一笑百媚生，六宫粉黛无颜色”运用的修辞手法有( )','A、夸张
B、对比
C、借代','A、夸张|B、对比|C、借代','10','7','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('25','多选题','不是《西厢记.长亭送别》一折戏的主角是( )','A、崔莺莺
B、张珙
C、红娘','C、红娘','10','8','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('26','填空题','《铸剑》属于____。','','小说','5','9','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('27','填空题','“对酒当歌，人生几何?”的作者是____。','','曹操','5','10','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('28','填空题','《诗经》中的“风”是____。','','国风','5','11','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('29','填空题','《采薇》是选自《诗经》的____。','','《小雅》','5','12','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('30','判断题','王维的《送梓州李使君》是一首赠别诗','A、正确
B、错误','A、正确','5','13','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('31','判断题','《乡愁》属于余秋雨的作品','A、正确
B、错误','B、错误','5','14','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('32','判断题','《雅舍》属于梁实秋的作品','A、正确
B、错误','A、正确','5','15','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('33','主观题','默写《短歌行》','','对酒当歌，人生几何！ 譬如朝露，去日苦多。 慨当以慷，忧思难忘。 何以解忧？唯有杜康。 青青子衿，悠悠我心。 但为君故，沉吟至今。 呦呦鹿鸣，食野之苹。 我有嘉宾，鼓瑟吹笙。 明明如月，何时可掇？ 忧从中来，不可断绝。 越陌度阡，枉用相存。 契阔谈讌，心念旧恩。 月明星稀，乌鹊南飞。 绕树三匝，何枝可依？ 山不厌高，海不厌深。 周公吐哺，天下归心。','15','16','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('34','主观题','分析王维的《送梓州李使君》是在什么时代背景下抒写的？体现了当时的社会环境是如何的？','','这是一首送别之作。具体创作时间不详，李使君当是初往梓州（治今四川三台）赴任，王维写此诗相赠。','15','17','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('35','单选题','以下选项中，不能作为合法常量的是______。','A、1.234e04
B、1.234e0.4
C、1.234e+4
D、1.234e0','B、1.234e0.4','5','1','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('36','单选题','以下符合C语言语法的实型常量是______。','A、1.2E0.5
B、3.14159E
C、.5E-3
D、E15','C、.5E-3','5','2','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('37','单选题','设int a=12，则执行完语句a+=a-=a*a后，a的值是______。','A、552
B、264
C、144
D、-264','D、-264','5','3','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('38','单选题','若要求在if后一对圆括号中表示a不等于0的关系,则能正确表示这一关系的表达式为______','A、a<>0
B、!a
C、a=0
D、a','D、a','5','4','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('39','单选题','已知有double型变量x=2.5,y=4.7,整型变量a=7,  则表达式 x+a%3*(int)(x+y)%2/4 的值是_______','A、2.4
B、2.5
C、2.75
D、0','B、2.5','5','5','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('40','判断题','一个C语言的执行是从本程序的第一个函数开始,到本程序的最后一个函数结束','A、正确
B、错误','B、错误','5','6','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('41','判断题','为了避免嵌套的if-else语句的二义性，C语言规定else总是与在其之前未配对的if组成配对关系.','A、正确
B、错误','B、错误','5','7','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('42','判断题','设x 、y 、z 、t均为int型变量,则执行以下语句后,t的值为1.  x=y=z=1;  t=++x || ++y && ++z;','A、正确
B、错误','A、正确','5','8','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('43','判断题','下面程序段的输出结果是输出错误信息.  x=3;  do { y=x--;  if (!y) {printf("*");continue;}  printf("#");  } while(x=2);','A、正确
B、错误','B、错误','5','9','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('44','判断题','下面程序段的运行结果是123.  int n=0;  while (n++<=2)  printf("%d",n);','A、正确
B、错误','A、正确','5','10','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('45','主观题','下面程序的运行结果是_______.  #include<stdio.h>  void main( )  { int a,b;  a=-1;  b=0;  do {  ++a;  ++a;  b+=a;  } while(a<9);  printf("%d
",b);  }','','25','8','11','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('46','主观题','以下函数的功能是：求x的y次方，请填空._______  #include<stdio.h>  void main()  { int i,x,y;  double z;  scanf("%d %d",&x,&y);  for(i=1,z=x;i<y;i++)  z=z*______ ;  printf("x^y=%e
",z);  }','','x','8','12','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('47','主观题','下面程序的输出结果是_____.  #include<stdio.h>  void main( )  { int i;  for(i=1;i<6;i++)  { if (i%2!=0) {printf("#");continue;}  printf("*");  }  printf("
");  }','','#*#*#','8','13','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('48','主观题','有如下程序  #include<stdio.h>  void main( )  { int n=9;  while(n>6) {n--;printf("%d",n);}  }  该程序段的输出结果是_____.','','876','8','14','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('49','主观题','阅读以下程序，程序运行后的输出结果是____.  #include<stdio.h>  void main( )  { int x;  for(x=5;x>0;x--)  if (x--<5) printf("%d,",x);  else printf("%d,",x++); }','','4,3,1','8','15','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('50','主观题','#include <stdio.h>  void main()  { int a[4][4]={{1,3,5,},{2,4,6},{3,5,7}};  printf("%d%d%d%d
",a[0][3],a[1][2],a[2][1],a[3][0]);  }，程序的输出结果是？','','0650','10','16','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_answer`;
CREATE TABLE `user_answer` (
  `user_answer_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `exam_id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '考试id',
  `score` double(8,2) DEFAULT '0.00' COMMENT '分数',
  `answers` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '答案',
  `score_detail` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '评分详情',
  `objective_score` double(8,2) DEFAULT '0.00' COMMENT '客观题得分',
  `subjective_score` double(8,2) DEFAULT '0.00' COMMENT '主观题得分',
  `score_state` tinyint(2) DEFAULT '0' COMMENT '评分状态',
  `nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '提交人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`user_answer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_answer` values ('1','1','2','100','[{"exam_question_id":12,"answer":"A.1"},{"exam_question_id":13,"answer":["A.1","B.5"]},{"exam_question_id":14,"answer":"A.正确"},{"exam_question_id":15,"answer":"挂号费"},{"exam_question_id":16,"answer":"发货的共和国"}]','[{"exam_question_id":12,"score":10},{"exam_question_id":13,"score":20},{"exam_question_id":14,"score":30},{"exam_question_id":15,"score":20},{"exam_question_id":16,"score":20}]','60','40','1','admin',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `user_answer` values ('2','1','1','75','[{"exam_question_id":1,"answer":"C、新文档.DOC"},{"exam_question_id":2,"answer":"B、文档"},{"exam_question_id":3,"answer":"A、不显示dl.doc文档内容，但dl.doc文档并未关闭"},{"exam_question_id":4,"answer":["B、隐藏","A、只读"]},{"exam_question_id":5,"answer":["A、巨型机","B、便携机","C、微型机"]},{"exam_question_id":6,"answer":"B、错误"},{"exam_question_id":7,"answer":"A、正确"},{"exam_question_id":8,"answer":"B、错误"},{"exam_question_id":9,"answer":"页面尾部"},{"exam_question_id":10,"answer":"页面尾部"},{"exam_question_id":11,"answer":"我也不知道呀"}]','[{"exam_question_id":1,"score":10},{"exam_question_id":2,"score":10},{"exam_question_id":3,"score":10},{"exam_question_id":4,"score":10},{"exam_question_id":5,"score":10},{"exam_question_id":6,"score":5},{"exam_question_id":7,"score":5},{"exam_question_id":8,"score":5},{"exam_question_id":9,"score":0},{"exam_question_id":10,"score":10},{"exam_question_id":11,"score":0}]','65','10','1','admin',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `auth` values ('1','管理员','注册用户','registered_user','注册用户','/registered_user/table','','_blank','1','1','1','1','user_name','user_name','user_name',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('2','管理员','注册用户','registered_user','注册用户详情','/registered_user/view','','_blank','1','1','1','1','user_name','user_name','user_name',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('3','管理员','会员档案','member_files','会员档案','/member_files/table','','_blank','1','1','1','1','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('4','管理员','会员档案','member_files','会员档案详情','/member_files/view','','_blank','1','1','1','1','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('5','管理员','健康评估','health_assessment','健康评估','/health_assessment/table','','_blank','1','1','1','1','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('6','管理员','健康评估','health_assessment','健康评估详情','/health_assessment/view','','_blank','1','1','1','1','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('7','管理员','体检套餐','physical_examination_package','体检套餐','/physical_examination_package/table','','_blank','1','1','1','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{"can_show_comment":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('8','管理员','体检套餐','physical_examination_package','体检套餐详情','/physical_examination_package/view','','_blank','1','1','1','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('9','管理员','体检套餐','physical_examination_package','体检套餐','/physical_examination_package/list','top','_blank','1','1','1','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('10','管理员','体检套餐','physical_examination_package','体检套餐详情','/physical_examination_package/details','','_blank','1','1','1','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('11','管理员','体检预约','physical_examination_appointment','体检预约','/physical_examination_appointment/table','','_blank','1','1','1','1','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'0','{"examine":true,"pay":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('12','管理员','体检预约','physical_examination_appointment','体检预约详情','/physical_examination_appointment/view','','_blank','1','1','1','1','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('13','管理员','体检预约','physical_examination_appointment','体检预约编辑','/physical_examination_appointment/edit','','_blank','1','1','1','1','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('14','管理员','体检结果','physical_examination_results','体检结果','/physical_examination_results/table','','_blank','1','1','1','1','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('15','管理员','体检结果','physical_examination_results','体检结果详情','/physical_examination_results/view','','_blank','1','1','1','1','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('16','管理员','健康干预','health_intervention','健康干预','/health_intervention/table','','_blank','1','1','1','1','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('17','管理员','健康干预','health_intervention','健康干预详情','/health_intervention/view','','_blank','1','1','1','1','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('18','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('19','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('20','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('21','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('22','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('23','管理员','考试','exam','考试列表','/exam/table','','_blank','1','1','1','1','','','',null,'0','{"export_db":true,"setting":true,"answers":true,"give_score":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('24','管理员','考试','exam','考试详情','/exam/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('25','管理员','考试','exam','前台列表','/exam/list','','_blank','1','1','1','1','','','',null,'0','{"answers":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('26','管理员','考试','exam','前台详情','/exam/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('27','管理员','新闻','article','知识库','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('28','管理员','新闻','article','新闻详情','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('29','管理员','新闻','article','知识库','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('30','管理员','新闻','article','新闻详情','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('31','管理员','新闻分类','article_type','知识分类','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('32','管理员','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('33','游客','注册用户','registered_user','注册用户','/registered_user/table','','_blank','1','0','0','0','user_name','user_name','user_name',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('34','游客','注册用户','registered_user','注册用户详情','/registered_user/view','','_blank','1','0','0','0','user_name','user_name','user_name',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('35','游客','会员档案','member_files','会员档案','/member_files/table','','_blank','0','0','0','0','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('36','游客','会员档案','member_files','会员档案详情','/member_files/view','','_blank','0','0','0','0','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('37','游客','健康评估','health_assessment','健康评估','/health_assessment/table','','_blank','0','0','0','0','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('38','游客','健康评估','health_assessment','健康评估详情','/health_assessment/view','','_blank','0','0','0','0','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('39','游客','体检套餐','physical_examination_package','体检套餐','/physical_examination_package/table','','_blank','0','0','0','0','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{"can_show_comment":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('40','游客','体检套餐','physical_examination_package','体检套餐详情','/physical_examination_package/view','','_blank','0','0','0','0','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('41','游客','体检套餐','physical_examination_package','体检套餐','/physical_examination_package/list','top','_blank','0','0','0','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('42','游客','体检套餐','physical_examination_package','体检套餐详情','/physical_examination_package/details','','_blank','0','0','0','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('43','游客','体检预约','physical_examination_appointment','体检预约','/physical_examination_appointment/table','','_blank','0','0','0','0','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'0','{"examine":false,"pay":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('44','游客','体检预约','physical_examination_appointment','体检预约详情','/physical_examination_appointment/view','','_blank','0','0','0','0','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('45','游客','体检预约','physical_examination_appointment','体检预约编辑','/physical_examination_appointment/edit','','_blank','0','0','0','0','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('46','游客','体检结果','physical_examination_results','体检结果','/physical_examination_results/table','','_blank','0','0','0','0','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('47','游客','体检结果','physical_examination_results','体检结果详情','/physical_examination_results/view','','_blank','0','0','0','0','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('48','游客','健康干预','health_intervention','健康干预','/health_intervention/table','','_blank','0','0','0','0','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('49','游客','健康干预','health_intervention','健康干预详情','/health_intervention/view','','_blank','0','0','0','0','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('50','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('51','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('52','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('53','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('54','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('55','游客','考试','exam','考试列表','/exam/table','','_blank','0','0','0','0','','','',null,'0','{"export_db":false,"setting":false,"answers":false,"give_score":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('56','游客','考试','exam','考试详情','/exam/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('57','游客','考试','exam','前台列表','/exam/list','','_blank','0','0','0','0','','','',null,'0','{"answers":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('58','游客','考试','exam','前台详情','/exam/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('59','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('60','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('61','游客','新闻','article','知识库','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('62','游客','新闻','article','新闻详情','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('63','游客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('64','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('65','注册用户','注册用户','registered_user','注册用户','/registered_user/table','','_blank','0','0','0','0','user_name','user_name','user_name',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('66','注册用户','注册用户','registered_user','注册用户详情','/registered_user/view','','_blank','0','0','0','0','user_name','user_name','user_name',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('67','注册用户','会员档案','member_files','会员档案','/member_files/table','','_blank','0','0','0','1','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('68','注册用户','会员档案','member_files','会员档案详情','/member_files/view','','_blank','0','0','0','1','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history','user,full_name,gender,date_of_birth,height,weight,genetic_history,disease_history',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('69','注册用户','健康评估','health_assessment','健康评估','/health_assessment/table','','_blank','0','0','0','1','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('70','注册用户','健康评估','health_assessment','健康评估详情','/health_assessment/view','','_blank','0','0','0','1','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results','user,full_name,evaluation_type,evaluation_time,evaluation_report,evaluation_results',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('71','注册用户','体检套餐','physical_examination_package','体检套餐','/physical_examination_package/table','','_blank','0','0','0','0','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{"can_show_comment":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('72','注册用户','体检套餐','physical_examination_package','体检套餐详情','/physical_examination_package/view','','_blank','0','0','0','0','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('73','注册用户','体检套餐','physical_examination_package','体检套餐','/physical_examination_package/list','top','_blank','1','1','1','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('74','注册用户','体检套餐','physical_examination_package','体检套餐详情','/physical_examination_package/details','','_blank','1','1','1','1','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details','package_number,package_name,cover,price,test_item,matters_needing_attention,details',null,'1','{"can_show_comment":true,"can_comment":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('75','注册用户','体检预约','physical_examination_appointment','体检预约','/physical_examination_appointment/table','','_blank','0','1','0','1','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'1','{"examine":false,"pay":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('76','注册用户','体检预约','physical_examination_appointment','体检预约详情','/physical_examination_appointment/view','','_blank','0','1','0','1','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('77','注册用户','体检预约','physical_examination_appointment','体检预约编辑','/physical_examination_appointment/edit','','_blank','1','1','1','1','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination','order_number,package_number,package_name,price,number_of_appointments,total_price,user_name,contact_number,appointment_date_of_physical_examination',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('78','注册用户','体检结果','physical_examination_results','体检结果','/physical_examination_results/table','','_blank','0','0','0','1','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('79','注册用户','体检结果','physical_examination_results','体检结果详情','/physical_examination_results/view','','_blank','0','0','0','1','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis','order_number,package_number,package_name,user_name,report,result_analysis',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('80','注册用户','健康干预','health_intervention','健康干预','/health_intervention/table','','_blank','0','0','0','1','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('81','注册用户','健康干预','health_intervention','健康干预详情','/health_intervention/view','','_blank','0','0','0','1','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program','user_name,population_category,intervention_cycle,abnormal_index,intervention_program',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('82','注册用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('83','注册用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('84','注册用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('85','注册用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('86','注册用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('87','注册用户','考试','exam','考试列表','/exam/table','','_blank','0','0','0','0','','','',null,'0','{"export_db":false,"setting":false,"answers":false,"give_score":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('88','注册用户','考试','exam','考试详情','/exam/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('89','注册用户','考试','exam','前台列表','/exam/list','','_blank','1','1','1','1','','','',null,'1','{"answers":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('90','注册用户','考试','exam','前台详情','/exam/details','','_blank','1','1','1','1','','','',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('91','注册用户','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('92','注册用户','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('93','注册用户','新闻','article','知识库','/article/list','','_blank','1','1','1','1','','','',null,'1','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('94','注册用户','新闻','article','新闻详情','/article/details','','_blank','1','1','1','1','','','',null,'1','{"can_show_comment":true,"can_comment":true}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('95','注册用户','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `auth` values ('96','注册用户','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `user_group` values ('3','100','注册用户',null,'registered_user','registered_user_id','0','3',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1643366383701.jpg','597',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1643366383699.jpg','57',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1643366383699.jpg','612',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
insert into `article` values ('1','孕期想知道宝宝的性别?医生的这些“哑谜”,妈妈要猜正确','医生','440','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p>２００３年起，不允许医生透露宝宝性别，也不允许产妇选择性终止妊娠。</p><p>从前因为人们的“重男轻女”和“养儿防老”思想，对于生儿子的执念很深，再加上计划生育，如果知道了肚子里孩子是女孩，很可能就放弃了这个生命。</p><p>但是现在生活条件不同了，人们对孩子的性别没有那么深的执念，甚至还有些“重女轻男”，对于想要探听宝宝性别的孕妈，医生对于透露孩子的性别也不是那么“严防死守”了。</p><p>孕妈没听懂医生“哑谜”，但是姥姥是个“明白人”</p><p>小洁备孕快一年，才怀上肚子里的宝宝，对于这个来之不易的孩子，她非常珍惜，早早就开始准备宝宝用品。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/174/w640h334/20210327/55cb-kmvwsvy6335195.jpg"></p><p>除了孩子平安健康，小洁最想知道的就是孩子的性别，这样以后给宝宝买衣服、想想以后怎么布置婴儿房等等都很方便。</p><p>产检的时候，这位新手妈妈，直愣愣地问医生：“医生，我这肚子里是小男孩还是小女孩啊？”医生却答非所问：“你想要男孩还是女孩？”</p><p>“男孩女孩都好，但是我更喜欢女孩，可可爱爱的。”小洁再怎么问医生也不说，最后只说了一句：“我也觉得女孩好。”</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/227/w640h387/20210327/8309-kmvwsvy6335207.jpg"></p><p>小洁妈妈兴高采烈地回家，路上跟小洁说：“医生这是赞同你的说法呢，说明肚子里了很有可能是个女孩哦。”小洁听了也很高兴，幸好妈妈跟着自己去了，不然就听不懂医生的哑谜了。</p><p>医生的“哑谜”都有什么样的？妈妈们都能猜出来谜底吗？</p><p>现在很多夫妻都不是很在乎宝宝的性别，毕竟家里现在基本都是一两个孩子，有的医生看见幸福甜蜜的小夫妻，还是愿意稍微“提示”一下的。</p><p>很多产妇都避免不了问医生问题，其实有的医生就在这一问一答之间，把宝宝性别的秘密告诉妈妈们了。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/192/w640h352/20210327/b096-kmvwsvy6335200.jpg"></p><p>通过名字暗示宝妈</p><p>“医生，你觉得宝宝叫萱萱怎么样，我觉这个名字特别好听。”</p><p>面对这类的问题，如果宝宝是女孩，医生可能会说：“这名字不错，挺合适的。”如果是个男娃，医生就可能会说：“这名字不是很大气，你要不再想个别的名字吧。”</p><p>通过孩子的衣服、婴儿房的布置</p><p>“医生，我这孩子穿明亮点能好看吗？比如粉红、黄色之类的。”</p><p>这种问题在产房里就比较常见了，医生如果想告诉孕妈的话，就会回答“粉粉嫩嫩的颜色很适合宝宝。”这个谜底的意思就是宝宝是个女孩啦。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/216/w640h376/20210327/39ec-kmvwsvy6335201.jpg"></p><p>通过妈妈的回答，反问妈妈</p><p>“医生，我肚子里男孩还是女孩呀？我喜欢女孩。”</p><p>可能医生会问：“你喜欢男孩还是女孩啊？”如果医生说：“你梦想成真了。”那很有可能就会如妈妈所愿了。</p><p>医生某些不经意间的回答，就可能暗示着宝宝的性别哦，但是孕妈如果碰到怎么都不张口的医生，就不要太执着了，只要宝宝健康就是妈妈最大的幸运了。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/234/w640h394/20210327/4776-kmvwsvy6335205.jpg"></p><p>孕期胎儿性别“女翻男”，是玄学还是科学？</p><p>“女翻男”这种说法其实在很多地区流传，甚至有很多家庭为了让肚子里的胎儿性别转变，使用各种手段，其实这都是不科学的。</p><p>宝宝的性别从一开始就确定了</p><p>胎儿的性别大约在４个月的时候就能分辨出来了。</p><p>但是在宝宝没发育出明显的性别特征之前，他们的性别就已经由染色体决定好了，如果卵子选择Ｙ染色体，那宝宝就是男孩，反之选择了Ｘ染色体，宝宝就是女孩了。</p><p><img src="http://n.sinaimg.cn/sinakd20210327ac/228/w640h388/20210327/b749-kmvwsvy6335202.jpg"></p>','/api/upload/image_1643366499709.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('2','刘峰：收集60多种废旧药盒问诊 基层医院医生也能有所作为','医生','671','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/754/w900h654/20210325/6b37-kmvwsvx8822711.jpg"></p><p class="ql-align-center">刘峰医生（央广网记者陈金莲摄）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;央广网宁波3月25日消息（记者杜金明 陈金莲 通讯员史俐俐）每天早上7：30，距离宁波市江北区慈城镇中心卫生院正式上班时间还有半小时，一楼的全科（2）诊室门口就围满了等候看病的患者。诊室里面，主任医师刘峰早就忙开了，一会儿给患者测量血压，一会儿仔细问询。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/775/w900h675/20210325/effd-kmvwsvx8822713.jpg"><strong>刘峰拿出收集的废旧药盒卡片让患者辨认药名 （央广网记者 陈金莲摄）</strong></p><p>提早半小时接诊是刘医生这些年的习惯。刘峰告诉记者，来这里看病的患者大多都是周边村里的老人，交通不是很方便。</p><p>任阿姨是从慈城镇公有村赶过来的，那里距离慈城镇中心卫生院有8公里的路程，公交车是村民往返镇上的主要交通工具，但每天从公有村到慈城镇上的公交车只有四个班次。早上6：25，任阿姨从公有村起点站乘坐头班车来到慈城站，7：30找刘医生看好病，等到8：00药房窗口开始上班便可以完成取药，这样她就能赶上8：30从慈城站开往公有村的班车，如果赶不上这趟，她就要等到下午13：30坐下一班车回家，一来一去差了5个小时。</p><p>“如果我8点准时开诊，很多像任阿姨这样的病人找我看病就要花费一天的时间，我只要每天提前半小时上班，就能让他们上午回到家里。”刘峰说。</p><p>刘峰的诊室除了电脑、血压计等办公用品，最引人注意的就是摆放在桌子上的两串用废旧药盒做成的卡片。</p><p>前来看糖尿病的姚大伯说，别小看这些卡片，这可是刘医生跟患者尤其是老年患者沟通的“法宝”。</p><p>10多年前，刘峰刚从妙山服务站到卫生院坐诊，发现不少老年患者不记得药名，也说不清曾经的用药史，这给他开具处方增加了困扰。有一次，一位患者无意将一个空药盒落在他的桌上，另一位患者指着那个药盒，说自己也正在服用这种药。刘峰灵感一现，从那时起他就开始收集常用药品的废旧药盒，并剪下药盒的正面包装，按照高血压、糖尿病分门别类整理出来。“我当时是用夹子夹着的，后来还是一位患者送了我几个金属钢圈把这些卡片串起来，这样翻看起来也方便多了”。刘峰笑着说。</p><p>记者了解到，目前，刘峰已经收集了60多种药盒卡片。信息化的时代，电脑都联网了，还需要这些卡片吗？</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/773/w900h673/20210325/1d6e-kmvwsvx8822878.jpg"><strong>刘峰医生收集的废旧药盒卡片&nbsp;（央广网记者 陈金莲摄）</strong></p><p><br></p><p>刘峰解释说，目前很多医院实现了门诊信息的互联互通，但周边偏远地区还未全覆盖，很多老百姓有的去药房买药，有的去个人诊所，他们的就诊信息，在卫生院就看不到。另外，现在互联互通的电子门诊信息所能看到的条数有限，患有慢性病的老人有的化验起来特别多，检查结果出来后，前面的记录会被刷新掉，之前的用药记录也就看不到了，因此这些卡片依然还有作用。</p><p>“刘医生很用心，他不是把我们当病人，而是把我们当亲人。”听到姚大伯在记者面前夸刘医生，路过的好几名老年患者也停下脚步，纷纷夸起了刘医生，有的说刘医生人热情，对老年患者很有耐心，有的说刘医生医术好，值得信任。</p><p>据悉，2015年，慈城镇中心卫生院开展家庭医生签约，刘峰已累计签约5545人次，目前签约服务期内在签1770人，2020全年门诊量达3.2万人次，这些数字的背后，是患者的信任。“要赢得患者的信任，首先得提升自己的医疗服务水平，让自己具备解决问题的能力。作为基层医院的医生，我们不仅仅是看病，更重要的是发现重病。其次跟患者沟通的方式方法也很重要。”刘峰说，基层医院的医生也可以有所作为。</p><p>&nbsp;&nbsp;&nbsp;作为医院招聘的第一批全日制本科医学生，刘峰经过多年摸爬滚打，已成为院内屈指可数的主任医师，每天都有患者排着队等着他看病。</p>','/api/upload/image_1643366522346.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('3','医生提醒：遇到这种情况，千万要注意','医生','570','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p>“你这个其实没啥问题，适当吃些对症的咳嗽药，过段时间自然就好了，倒是这么乱吃抗生素，反而危害更大。”3月25日，福建省级机关医院慢性咳嗽专病门诊，面对前来看咳嗽的林女士，滕忠强主任医师反复交代她，千万别在家自己乱吃药。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/407/w728h479/20210326/3997-kmvwsvy1869255.png"></p><p>原来，35岁的林女士前段时间感冒了，大约一周后，咽干、喉咙痛等症状逐渐好转，但咳嗽一直好不了。后来，她也到附近的社区医院去抽血，还进行了拍片检查，都没发现身体有什么问题。</p><p>但感觉咳嗽难受的她，看到家里有不少抗菌药物，于是抱着试一试的想法，按照说明书上的量，自己就在家吃了，但一段时间过去了，咳嗽并没有因为她吃了这些药好转。焦虑的林女士只好来到省级机关医院慢性咳嗽专病门诊就诊。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/259/w686h373/20210326/f2d3-kmvwsvy1869536.png"></p><p>滕主任诊断后，表示林女士所得的病症叫“感冒后咳嗽”，发病中往往表现出咽痒、刺激性干咳的症状，有的伴有少量白色黏液痰，这种情况经常会持续3周甚至8周，个别人持续的时间可能会更长。这是由于感染后呼吸道上皮受损，神经末梢暴露，导致气道对外界的刺激反应性增高，咳嗽经久不愈。只有随着气道上皮修复，咳嗽才会逐渐停止。“部分患者担心咳嗽时间过长使病情反复或更严重，误以为咳嗽就要消炎，于是翻箱倒柜，服用家里珍藏的五花八门的‘消炎药’，殊不知这种神操作不但对咳嗽缓解毫无益处，还容易出现各种不良反应，例如改变肠道菌群关系、引发肠道不适，久而久之甚至会让身体产生抗药性，等下次真的体内有炎症了，需要服用抗生素了，反而起不到作用了。”</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021326s/176/w452h524/20210326/9b76-kmvwsvy1869537.png"></p><p>那么得了这种“感冒后咳嗽”后要怎么办呢？滕主任表示，如果症状轻微，偶尔咳嗽一两声，不必过于紧张，只需要观察，大部分能自行缓解。如果咳嗽很明显，可以适当买一些止咳药水治疗，不过止咳药种类繁多，每种止咳药有其自身的成分和功效，都有特定的服用对象，如果不加辩解随意服用，不仅无效，还可能适得其反，延误病情，所以还是建议到正规医院诊断比较好。</p><p>“还有，特别要提醒的是，有部分年轻人认为生病后的偶尔咳嗽只是小事一桩，对自己的生活和工作不会造成太大影响，照常喝酒抽烟，结果导致咳嗽迁延不愈。所以更需要提醒的是，咳嗽后要饮食起居规律，比如少食煎炸和辛辣食品，少食肥甘厚腻的肉类和海鲜，拒绝喝酒抽烟和熬夜。平常可通过运动增强自身体质、每年注射流感疫苗、出门养成做好卫生和自身防护的习惯。”</p><p>在此提醒大家，如果是感冒后继续咳嗽，轻微的可以不用太在意，过段时间自然会好；严重的话就到医院对症治疗，可千万别自己乱吃抗生素了。</p>','/api/upload/image_1643366465644.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('4','刘峰：收集60多种废旧药盒问诊 基层医院医生也能有所作为','医生','962','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/754/w900h654/20210325/6b37-kmvwsvx8822711.jpg"></p><p class="ql-align-center">刘峰医生（央广网记者陈金莲摄）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;央广网宁波3月25日消息（记者杜金明 陈金莲 通讯员史俐俐）每天早上7：30，距离宁波市江北区慈城镇中心卫生院正式上班时间还有半小时，一楼的全科（2）诊室门口就围满了等候看病的患者。诊室里面，主任医师刘峰早就忙开了，一会儿给患者测量血压，一会儿仔细问询。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/775/w900h675/20210325/effd-kmvwsvx8822713.jpg"><strong>刘峰拿出收集的废旧药盒卡片让患者辨认药名 （央广网记者 陈金莲摄）</strong></p><p>提早半小时接诊是刘医生这些年的习惯。刘峰告诉记者，来这里看病的患者大多都是周边村里的老人，交通不是很方便。</p><p>任阿姨是从慈城镇公有村赶过来的，那里距离慈城镇中心卫生院有8公里的路程，公交车是村民往返镇上的主要交通工具，但每天从公有村到慈城镇上的公交车只有四个班次。早上6：25，任阿姨从公有村起点站乘坐头班车来到慈城站，7：30找刘医生看好病，等到8：00药房窗口开始上班便可以完成取药，这样她就能赶上8：30从慈城站开往公有村的班车，如果赶不上这趟，她就要等到下午13：30坐下一班车回家，一来一去差了5个小时。</p><p>“如果我8点准时开诊，很多像任阿姨这样的病人找我看病就要花费一天的时间，我只要每天提前半小时上班，就能让他们上午回到家里。”刘峰说。</p><p>刘峰的诊室除了电脑、血压计等办公用品，最引人注意的就是摆放在桌子上的两串用废旧药盒做成的卡片。</p><p>前来看糖尿病的姚大伯说，别小看这些卡片，这可是刘医生跟患者尤其是老年患者沟通的“法宝”。</p><p>10多年前，刘峰刚从妙山服务站到卫生院坐诊，发现不少老年患者不记得药名，也说不清曾经的用药史，这给他开具处方增加了困扰。有一次，一位患者无意将一个空药盒落在他的桌上，另一位患者指着那个药盒，说自己也正在服用这种药。刘峰灵感一现，从那时起他就开始收集常用药品的废旧药盒，并剪下药盒的正面包装，按照高血压、糖尿病分门别类整理出来。“我当时是用夹子夹着的，后来还是一位患者送了我几个金属钢圈把这些卡片串起来，这样翻看起来也方便多了”。刘峰笑着说。</p><p>记者了解到，目前，刘峰已经收集了60多种药盒卡片。信息化的时代，电脑都联网了，还需要这些卡片吗？</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/773/w900h673/20210325/1d6e-kmvwsvx8822878.jpg"><strong>刘峰医生收集的废旧药盒卡片&nbsp;（央广网记者 陈金莲摄）</strong></p><p><br></p><p>刘峰解释说，目前很多医院实现了门诊信息的互联互通，但周边偏远地区还未全覆盖，很多老百姓有的去药房买药，有的去个人诊所，他们的就诊信息，在卫生院就看不到。另外，现在互联互通的电子门诊信息所能看到的条数有限，患有慢性病的老人有的化验起来特别多，检查结果出来后，前面的记录会被刷新掉，之前的用药记录也就看不到了，因此这些卡片依然还有作用。</p><p>“刘医生很用心，他不是把我们当病人，而是把我们当亲人。”听到姚大伯在记者面前夸刘医生，路过的好几名老年患者也停下脚步，纷纷夸起了刘医生，有的说刘医生人热情，对老年患者很有耐心，有的说刘医生医术好，值得信任。</p><p>据悉，2015年，慈城镇中心卫生院开展家庭医生签约，刘峰已累计签约5545人次，目前签约服务期内在签1770人，2020全年门诊量达3.2万人次，这些数字的背后，是患者的信任。“要赢得患者的信任，首先得提升自己的医疗服务水平，让自己具备解决问题的能力。作为基层医院的医生，我们不仅仅是看病，更重要的是发现重病。其次跟患者沟通的方式方法也很重要。”刘峰说，基层医院的医生也可以有所作为。</p><p>&nbsp;&nbsp;&nbsp;作为医院招聘的第一批全日制本科医学生，刘峰经过多年摸爬滚打，已成为院内屈指可数的主任医师，每天都有患者排着队等着他看病。</p>','/api/upload/image_1643366522346.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('5','为何医学发达的日本，却叫停女性接种HPV疫苗？医生揭晓答案','医生','597','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p>据世卫组织数据显示，<strong>目前每年全球新增宫颈癌患者可达到60万名，而其中就有一半的人因晚期而被夺走性命。</strong></p><p>而我国也不容乐观，每年有13.5万名妇女确诊为宫颈癌，其中有5.3万人死亡，然而这仅仅只是官方数据，考虑到一些偏远地区，或许其数据要多一些。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/613/w848h565/20210326/c6c3-kmvwsvy2914969.jpg"></p><p><strong>而与我们一海之隔的日本，宫颈癌又是一种怎么样的现状呢？</strong></p><p>据NHK报道，日本癌症协会的调查表明：在怀孕女性接受的“孕妇体检”中，被确诊为宫颈癌的人，包括在2017年1年间最早期的人在内，全国至少有234人被确诊。</p><p>而这些患者中，大多数都是以病毒感染为由，在子宫入口附近形成的年轻女性。</p><p>而据国立癌症研究中心显示，<strong>日本国内每年大约有1万1000人被确诊，但却有2800人死亡，大多数都是20-30岁的年轻女性。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/295/w621h474/20210326/365c-kmvwsvy2914973.jpg"></p><p><strong>为何医学发达的日本，宫颈癌的发病率也不低？</strong></p><p>在我们大家印象中，日本自古以来都被誉为“长寿之国”，全国的人均寿命最长是全世界排名第一，为何宫颈癌这个癌症，却如此“特殊”呢？</p><p>事实上，最大根本----<strong>大多数日本女性不信任HPV疫苗</strong>。</p><p>在一部日剧中，就有提到一个孕妇查出了有宫颈癌1b1期，由于局部切除不成功，因此不得不进行子宫全切手术。</p><p>剧中医生也在感叹HPV疫苗若能受到普及，可以减少女性的痛苦。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/583/w641h742/20210326/941b-kmvwsvy2914982.jpg"></p><p>而早在2010年，日本政府就将HPV疫苗列入国家免疫接种计划，12岁以上的女性都能免费接种。</p><p>但随着疫苗的普及，不少地区就曝光了有些女性接种HPV疫苗后出现不良反应，甚至有媒体统计，每10万人中，约有15.6人出现过全身疼痛和站立困难等10种以上症状。</p><p>由于这些受害者一个个被曝光，再加上媒体的“添油加醋”，不少群众都纷纷抗议拒绝接HPV疫苗。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/166/w580h386/20210326/19ac-kmvwsvy2914980.png"></p><p><strong>问题是：HPV疫苗真的有害吗？</strong></p><p>事实上，在数据后半部分显示，在没有接种疫苗的取样，同样每10万人同样约有5.3人出现上述10种以上的症状。</p><p>而且经过一年的追踪，<strong>已接种疫苗的女性发病频率要比未接种者低，而且也没有直接证据可以证明接种HPV疫苗会出现以上这些的不良反应。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/181/w641h340/20210326/4efe-kmvwsvy2914970.jpg"></p><p>（世界卫生组织WHO官网声明）</p><p>尽管日本厚生省在2018年1月18日，就推出了新版本的HPV疫苗接种须知手册，呼吁群众不要盲目不信任HPV疫苗，但还是有不少女性选择拒绝。</p><p>最后被迫于舆论压力，日本厚生省暂停主动推荐HPV疫苗，改为自愿接种。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/323/w641h482/20210326/ec3e-kmvwsvy2914991.jpg"></p><p>（WebMD官网声明）</p><p><strong>除了接种HPV疫苗，女性还需要做好这些：</strong></p><p><strong>1.注重内裤卫生</strong></p><p>内裤是最为贴身的衣物，直接和女性的隐私部位接触，内裤是否卫生跟宫颈健康有着直接的联系。</p><p>所以，女性朋友每天都要换洗内裤，并且用温水清洗私处，另外在选择内裤时，应该倾向于那些品质高透气的内裤，这样才能使隐私部位处于干燥的环境，减少细菌滋生。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/640/w800h640/20210326/8379-kmvwsvy2914990.jpg"></p><p><strong>2.健康意识</strong></p><p>我国女性对于妇科病的了解很少，甚至在身体有了不舒服感觉时也不去医院检查，而是简单的买些药物。</p><p>而定期去医院做妇科检查，在这种情况下，才能更直观地了解身体的健康程度，如果有了健康隐患，也能做到早发现早治疗。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/640/w800h640/20210326/227b-kmvwsvy2914983.jpg"></p><p><strong>3.坚持运动</strong></p><p>如果每天花半小时左右的时间做简单的有氧运动，不仅能够减轻压力，还有助于提高人体的免疫力，防止炎症侵袭身体。</p><p>不过，因为女性来例假的那几天身体虚弱，所以应该选择强度小的运动，比如散步，瑜伽等，与此同时，睡觉前用热水泡脚，还有助于加快血液循环，消除体内的寒气。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/640/w800h640/20210326/6f79-kmvwsvy2914966.jpg"></p><p><strong>疫苗，多多少少都会出现不良反应</strong></p><p>很明确告诉大家，所有疫苗接种，都会出现不良反应，所有药物也都难以保证毫无副作用，这就是医学的局限性。</p><p>但问题是，疫苗所带的益处远远大于对人类健康的威胁，若没有疫苗，人类又会面临多少的伤痛和死亡呢？</p>','/api/upload/image_1643366489010.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('6','医生坦言：家人得了这5种病,或可能“传”给下一代,多注意','医生','137','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p>导语：当前社会我们被癌症这个可怕的噩梦控制住，并且自己身边的朋友被噩梦降临的也越来越多。但还是有一部分人没有将这件事情当回事，依旧每天生活的无拘无束，没有节制。其实不管是自己身边的朋友，孩子电视剧中演员的演绎，癌症一直是令大家恐惧的存在。在很多时候，癌症这种疾病并不是我们小心翼翼的生活就可以完全避免的，因为也有一部人人群患病，是来源于家族基因的遗传。这也就从另一方面加剧了我们内心的恐惧。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/208/w640h368/20210325/b046-kmvwsvx7469167.jpg"></p><p>一，家人得了这5种病，或可能“传”给下一代，疾病共性</p><p>1、遗传易感性</p><p>真实案例表明有很多人的癌症基因有十分之一的可能性自我们父母一辈就开始遗传，而这中家族类的基因遗传被称为癌症易感基因。但这种基因也并不是没有带有的人都会中招，只是相对于基因正常的人来说，癌症发生的概率会更大一点。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/221/w640h381/20210325/b6aa-kmvwsvx7469157.jpg"></p><p>2、不良习惯</p><p>不良的生活习惯和作息规律也可能会成为癌症的扎根身体的帮凶，增加患病的风险。举例说明一下，如果平时家中有吸烟的人，那么家中这一群经常生活在这个地方的人也会增加患癌的几率。因为二手烟对身体的伤害远远大于一手烟。3、环境因素</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/200/w640h360/20210325/26c3-kmvwsvx7469160.jpg"></p><p>再说一下乙肝病毒感染，因为乙肝病毒具有非常强的传染性，所以如果身边的朋友有人染上这类疾病，一定要注意防护，因为具有传染性的问题，会加大身边人的患病几率，像这种情况还有很多的可能性，像我们常见的大气污染严重，也是患癌的帮凶之一，对人的伤害也是非常大的。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/222/w640h382/20210325/0ccc-kmvwsvx7469161.jpg"></p><p>二、下面这5种癌症的遗传风险很大，不妨了解一下，做到心中有数</p><p>1，乳腺癌</p><p>据研究数据表明，乳腺癌患有家族遗传性的几率也有1/10的概率。行，如果我们家庭中的直系亲属有人患了这个病的话，那么后代的女性患这个病的概率就会增加几倍甚至几十倍，而家庭因素中，直系亲属家庭患这种病的人越多，那么遗传的风险也就越大。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/200/w640h360/20210325/0f32-kmvwsvx7469166.jpg"></p><p>2，肠癌</p><p>对于肠癌，相信大家是不陌生的，肠癌的遗传风险也是非常大的，高达20%~80%。生活中最常见的发病人群就是一些女性患者占绝大部分，而小黑斑，息肉综合征，腺瘤性息肉病和家族性大肠癌，这三个都是遗传患病率较高的。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/202/w640h362/20210325/e415-kmvwsvx7469164.jpg"></p><p>3，胃癌</p><p>胃癌在其他癌症中是最容易患生长的一种遗传性质的疾病。但它更多的可能性是来源于后天的饮食不当和生活习惯造成的。就像是家庭中比较有一部分人喜欢吃腌制的东西或是地摊上烧烤的东西，而这些食物都会加大癌症的患病几率，所以一旦身边有这种人和你一起吃饭的时候，你也会一直增大这种患病几率。因为长期放在一起聚餐，也增大了我们幽门螺杆菌的交叉感染，这也是癌症发生的条件之一。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/224/w640h384/20210325/50f7-kmvwsvx7469162.jpg"></p><p>4，肝癌</p><p>据医学资料显示肝癌的这种癌症是具有一定的遗传性的，由于乙肝病毒的传染性，所以家族中也非常容易感染这种疾病，这就是导致肝癌也具有家族聚集性特点的原因之一。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/212/w640h372/20210325/877e-kmvwsvx7469163.jpg"></p><p>5，前列腺癌</p><p>前列腺癌相较于各大癌症中，它的患病概率是较中等的。很多人会在65岁左右被诊断出前列腺癌，而这种疾病最大的特点就是止泻后代的患癌几率会大大增加。</p><p><img src="http://n.sinaimg.cn/sinakd20210325ac/224/w640h384/20210325/8c1d-kmvwsvx7469159.jpg"></p>','/api/upload/image_1643366574961.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('7','为何医学发达的日本，却叫停女性接种HPV疫苗？医生揭晓答案','医生','817','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p>据世卫组织数据显示，<strong>目前每年全球新增宫颈癌患者可达到60万名，而其中就有一半的人因晚期而被夺走性命。</strong></p><p>而我国也不容乐观，每年有13.5万名妇女确诊为宫颈癌，其中有5.3万人死亡，然而这仅仅只是官方数据，考虑到一些偏远地区，或许其数据要多一些。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/613/w848h565/20210326/c6c3-kmvwsvy2914969.jpg"></p><p><strong>而与我们一海之隔的日本，宫颈癌又是一种怎么样的现状呢？</strong></p><p>据NHK报道，日本癌症协会的调查表明：在怀孕女性接受的“孕妇体检”中，被确诊为宫颈癌的人，包括在2017年1年间最早期的人在内，全国至少有234人被确诊。</p><p>而这些患者中，大多数都是以病毒感染为由，在子宫入口附近形成的年轻女性。</p><p>而据国立癌症研究中心显示，<strong>日本国内每年大约有1万1000人被确诊，但却有2800人死亡，大多数都是20-30岁的年轻女性。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/295/w621h474/20210326/365c-kmvwsvy2914973.jpg"></p><p><strong>为何医学发达的日本，宫颈癌的发病率也不低？</strong></p><p>在我们大家印象中，日本自古以来都被誉为“长寿之国”，全国的人均寿命最长是全世界排名第一，为何宫颈癌这个癌症，却如此“特殊”呢？</p><p>事实上，最大根本----<strong>大多数日本女性不信任HPV疫苗</strong>。</p><p>在一部日剧中，就有提到一个孕妇查出了有宫颈癌1b1期，由于局部切除不成功，因此不得不进行子宫全切手术。</p><p>剧中医生也在感叹HPV疫苗若能受到普及，可以减少女性的痛苦。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/583/w641h742/20210326/941b-kmvwsvy2914982.jpg"></p><p>而早在2010年，日本政府就将HPV疫苗列入国家免疫接种计划，12岁以上的女性都能免费接种。</p><p>但随着疫苗的普及，不少地区就曝光了有些女性接种HPV疫苗后出现不良反应，甚至有媒体统计，每10万人中，约有15.6人出现过全身疼痛和站立困难等10种以上症状。</p><p>由于这些受害者一个个被曝光，再加上媒体的“添油加醋”，不少群众都纷纷抗议拒绝接HPV疫苗。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/166/w580h386/20210326/19ac-kmvwsvy2914980.png"></p><p><strong>问题是：HPV疫苗真的有害吗？</strong></p><p>事实上，在数据后半部分显示，在没有接种疫苗的取样，同样每10万人同样约有5.3人出现上述10种以上的症状。</p><p>而且经过一年的追踪，<strong>已接种疫苗的女性发病频率要比未接种者低，而且也没有直接证据可以证明接种HPV疫苗会出现以上这些的不良反应。</strong></p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/181/w641h340/20210326/4efe-kmvwsvy2914970.jpg"></p><p>（世界卫生组织WHO官网声明）</p><p>尽管日本厚生省在2018年1月18日，就推出了新版本的HPV疫苗接种须知手册，呼吁群众不要盲目不信任HPV疫苗，但还是有不少女性选择拒绝。</p><p>最后被迫于舆论压力，日本厚生省暂停主动推荐HPV疫苗，改为自愿接种。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/323/w641h482/20210326/ec3e-kmvwsvy2914991.jpg"></p><p>（WebMD官网声明）</p><p><strong>除了接种HPV疫苗，女性还需要做好这些：</strong></p><p><strong>1.注重内裤卫生</strong></p><p>内裤是最为贴身的衣物，直接和女性的隐私部位接触，内裤是否卫生跟宫颈健康有着直接的联系。</p><p>所以，女性朋友每天都要换洗内裤，并且用温水清洗私处，另外在选择内裤时，应该倾向于那些品质高透气的内裤，这样才能使隐私部位处于干燥的环境，减少细菌滋生。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/640/w800h640/20210326/8379-kmvwsvy2914990.jpg"></p><p><strong>2.健康意识</strong></p><p>我国女性对于妇科病的了解很少，甚至在身体有了不舒服感觉时也不去医院检查，而是简单的买些药物。</p><p>而定期去医院做妇科检查，在这种情况下，才能更直观地了解身体的健康程度，如果有了健康隐患，也能做到早发现早治疗。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/640/w800h640/20210326/227b-kmvwsvy2914983.jpg"></p><p><strong>3.坚持运动</strong></p><p>如果每天花半小时左右的时间做简单的有氧运动，不仅能够减轻压力，还有助于提高人体的免疫力，防止炎症侵袭身体。</p><p>不过，因为女性来例假的那几天身体虚弱，所以应该选择强度小的运动，比如散步，瑜伽等，与此同时，睡觉前用热水泡脚，还有助于加快血液循环，消除体内的寒气。</p><p><img src="http://n.sinaimg.cn/sinakd20210326ac/640/w800h640/20210326/6f79-kmvwsvy2914966.jpg"></p><p><strong>疫苗，多多少少都会出现不良反应</strong></p><p>很明确告诉大家，所有疫苗接种，都会出现不良反应，所有药物也都难以保证毫无副作用，这就是医学的局限性。</p><p>但问题是，疫苗所带的益处远远大于对人类健康的威胁，若没有疫苗，人类又会面临多少的伤痛和死亡呢？</p>','/api/upload/image_1643366489010.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('8','大医匠心 | 医生刘艳香：10年助1000多对不孕不育夫妇圆梦','医生','920','0',"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ",null,null,null,'<p>对于普通夫妻来说，生孩子是一件顺理成章的事，但随着不孕不育发病率的增加，生孩子对一些夫妇来说是件难事。</p><p>在东莞有一位叫刘艳香的医生，她专注于辅助生殖技术，也是东莞首例试管婴儿的参与医生，十年来，她帮助1000多对不孕不育夫妇圆了生孩子之梦。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/361/w663h498/20210325/e7c0-kmvwsvx9482774.png"></p><p><strong>第八次试管婴儿，终于成功生子</strong></p><p>韩女士今年36岁，结婚多年，但一直都无法正常怀孕，经诊断为不孕，需要做试管婴儿。多年来，她和丈夫曾在多家医院先后做过6次试管婴儿，均以失败告终。</p><p>经历了6次的失败，她有些灰心，后来因为一个熟人在东莞广济医院生殖中心助孕成功，她便试着去了解了一下，该院生殖中心副主任刘艳香接诊了她，并安排其做了系统的检查。</p><p>根据检查结果及过往病史记录，刘艳香明确了韩女士不孕的病因为：不典型的抗磷脂综合征导致胚胎反复着床失败，合并有卵巢储备功能下降。</p><p>对症治疗后，刘艳香给韩女士进行了2次胚胎移植，终于在第二次移植后成功怀孕，在孕39周生下了8斤的儿子，成功当妈。这也是她人生中的第八次试管婴儿。</p><p>根据国家卫生健康委公布的数据，中国育龄夫妇的不孕症发病率从20年前的2.5%-3%，攀升到近年的12%-15%，不孕不育人数已超过5000万人，这背后是一对对愁眉苦脸的夫妻。</p><p>刘艳香还接诊过一名38岁的患者王女士，她于2014年到2019年底，先后经历了5次生化妊娠（注：精卵结合了，但并没有成功回到子宫着床，随着月经一起流产的现象）、3次宫外孕，最终切除了双侧输卵管。</p><p>后来，她和丈夫找到刘艳香，检查结果发现，王女士的AMH值（AMH用于评价卵巢储备功能，得知女性卵巢中可能形成窦性卵子的数目，从而得知女性的生殖能力）只有0.77，卵巢储备功能低下。</p><p>根据王女士的病情以及年龄，刘艳香为她制定了个性化的促排卵方案，并做了试管婴儿。经过2个月的治疗，不孕6年的王女士成功怀孕，并于今年1月底生下了一个女儿。</p><p class="ql-align-center"><img src="http://n.sinaimg.cn/sinakd2021325s/363/w664h499/20210325/d77c-kmvwsvx9482775.png"></p><p><strong>看到患者笑逐颜开，她特别满足</strong></p><p>妇产科医生出身的刘艳香从事辅助生殖临床工作已有10年，10年来，为了提高助孕技术，除了日常实践积累，她还到南方医科大学南方医院生殖中心进修，先后到湖南湘雅医院、中山大学附属第三医院等大型三甲医院参观学习，平时也常利用休息时间参加业内的线上线下学术会议，不断钻研。</p>','','2022年03月23日 12:51 新浪网');
insert into `article_type` values ('1','100','医生','0',null,null,null,"2022-04-08 01:06:34.000 ","2022-04-08 01:06:34.000 ");
