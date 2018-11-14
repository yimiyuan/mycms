/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : mycms

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-11-08 16:56:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('AU', 'Australia', '18886000');
INSERT INTO `country` VALUES ('BR', 'Brazil', '170115000');
INSERT INTO `country` VALUES ('CA', 'Canada', '1147000');
INSERT INTO `country` VALUES ('CN', 'China', '1277558000');
INSERT INTO `country` VALUES ('DE', 'Germany', '82164700');
INSERT INTO `country` VALUES ('FR', 'France', '59225700');
INSERT INTO `country` VALUES ('GB', 'United Kingdom', '59623400');
INSERT INTO `country` VALUES ('IN', 'India', '1013662000');
INSERT INTO `country` VALUES ('RU', 'Russia', '146934000');
INSERT INTO `country` VALUES ('US', 'United States', '278357000');

-- ----------------------------
-- Table structure for `yby_address`
-- ----------------------------
DROP TABLE IF EXISTS `yby_address`;
CREATE TABLE `yby_address` (
  `address_id` int(11) NOT NULL COMMENT '地址id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `address` varchar(50) NOT NULL COMMENT '收货地址',
  `mobile` varchar(11) NOT NULL COMMENT '电话',
  `city_id` int(11) NOT NULL COMMENT '城市id',
  `area_id` int(11) NOT NULL COMMENT '区域id',
  `postalcode` int(11) NOT NULL COMMENT '邮政编码',
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收货地址表';

-- ----------------------------
-- Records of yby_address
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yby_admin`;
CREATE TABLE `yby_admin` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `birth` date NOT NULL,
  `sex` tinyint(1) DEFAULT '1',
  `password` char(32) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '5',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `name` (`username`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yby_admin
-- ----------------------------
INSERT INTO `yby_admin` VALUES ('1', 'liujie', 'world', '2014-08-11', '1', '2256109f676c08b9b1b9a8db04b2068b', '1584978796@qq.com', '11111111', '5', '1');
INSERT INTO `yby_admin` VALUES ('2', 'admin', '管理员', '2014-08-06', '0', '6412121cbb2dc2cb9e460cfee7046be2', 'admin@qq.com', '187243243243', '5', '1');
INSERT INTO `yby_admin` VALUES ('88', 'jiejie', '姐姐', '2014-09-01', '0', 'd7a46cceae3f0f5421e163bd1fee1171', '123@qq.com', '18728475264', '5', '0');
INSERT INTO `yby_admin` VALUES ('89', 'jiege', '杰哥', '2014-09-03', '1', '5afd1539dcaac6e337d3ab9a2a22742e', '123@qq.com', '18425875141', '5', '0');
INSERT INTO `yby_admin` VALUES ('90', 'ad', 'ad', '2014-09-02', '0', '523af537946b79c4f8369ed39ba78605', '52@qq.com', '18728475641', '5', '0');
INSERT INTO `yby_admin` VALUES ('100', 'ds', 'asf', '2018-02-06', '1', 'asdf', 'sdf', 'asfd', '5', '0');
INSERT INTO `yby_admin` VALUES ('112', '435', '345', '2018-02-25', '1', '3453', '345', '345', '5', '0');
INSERT INTO `yby_admin` VALUES ('111', '1234', '1423', '2018-02-27', '1', '324143214', '3214', '3241', '5', '0');

-- ----------------------------
-- Table structure for `yby_banner`
-- ----------------------------
DROP TABLE IF EXISTS `yby_banner`;
CREATE TABLE `yby_banner` (
  `banner_id` tinyint(4) NOT NULL COMMENT '广告id',
  `banner_img` varchar(200) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='banner表';

-- ----------------------------
-- Records of yby_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_car`
-- ----------------------------
DROP TABLE IF EXISTS `yby_car`;
CREATE TABLE `yby_car` (
  `order_id` varchar(20) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '用户id号',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of yby_car
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_city`
-- ----------------------------
DROP TABLE IF EXISTS `yby_city`;
CREATE TABLE `yby_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_city
-- ----------------------------
INSERT INTO `yby_city` VALUES ('2', '西城区', '1');
INSERT INTO `yby_city` VALUES ('3', '崇文区', '1');
INSERT INTO `yby_city` VALUES ('4', '宣武区', '1');
INSERT INTO `yby_city` VALUES ('5', '朝阳区', '1');
INSERT INTO `yby_city` VALUES ('6', '丰台区', '1');
INSERT INTO `yby_city` VALUES ('7', '石景山区', '1');
INSERT INTO `yby_city` VALUES ('8', '海淀区', '1');
INSERT INTO `yby_city` VALUES ('9', '门头沟区', '1');
INSERT INTO `yby_city` VALUES ('10', '房山区', '1');
INSERT INTO `yby_city` VALUES ('11', '通州区', '1');
INSERT INTO `yby_city` VALUES ('12', '顺义区', '1');
INSERT INTO `yby_city` VALUES ('13', '昌平区', '1');
INSERT INTO `yby_city` VALUES ('14', '大兴区', '1');
INSERT INTO `yby_city` VALUES ('15', '怀柔区', '1');
INSERT INTO `yby_city` VALUES ('16', '平谷区', '1');
INSERT INTO `yby_city` VALUES ('17', '密云县', '1');
INSERT INTO `yby_city` VALUES ('18', '延庆县', '1');
INSERT INTO `yby_city` VALUES ('19', '黄浦区', '2');
INSERT INTO `yby_city` VALUES ('20', '卢湾区', '2');
INSERT INTO `yby_city` VALUES ('21', '徐汇区', '2');
INSERT INTO `yby_city` VALUES ('22', '长宁区', '2');
INSERT INTO `yby_city` VALUES ('23', '静安区', '2');
INSERT INTO `yby_city` VALUES ('24', '普陀区', '2');
INSERT INTO `yby_city` VALUES ('25', '闸北区', '2');
INSERT INTO `yby_city` VALUES ('26', '虹口区', '2');
INSERT INTO `yby_city` VALUES ('27', '杨浦区', '2');
INSERT INTO `yby_city` VALUES ('28', '闵行区', '2');
INSERT INTO `yby_city` VALUES ('29', '宝山区', '2');
INSERT INTO `yby_city` VALUES ('30', '嘉定区', '2');
INSERT INTO `yby_city` VALUES ('31', '浦东新区', '2');
INSERT INTO `yby_city` VALUES ('32', '金山区', '2');
INSERT INTO `yby_city` VALUES ('33', '松江区', '2');
INSERT INTO `yby_city` VALUES ('34', '青浦区', '2');
INSERT INTO `yby_city` VALUES ('35', '南汇区', '2');
INSERT INTO `yby_city` VALUES ('36', '奉贤区', '2');
INSERT INTO `yby_city` VALUES ('37', '崇明县', '2');
INSERT INTO `yby_city` VALUES ('38', '和平区', '3');
INSERT INTO `yby_city` VALUES ('39', '河东区', '3');
INSERT INTO `yby_city` VALUES ('40', '河西区', '3');
INSERT INTO `yby_city` VALUES ('41', '南开区', '3');
INSERT INTO `yby_city` VALUES ('42', '河北区', '3');
INSERT INTO `yby_city` VALUES ('43', '红桥区', '3');
INSERT INTO `yby_city` VALUES ('44', '塘沽区', '3');
INSERT INTO `yby_city` VALUES ('45', '汉沽区', '3');
INSERT INTO `yby_city` VALUES ('46', '大港区', '3');
INSERT INTO `yby_city` VALUES ('47', '东丽区', '3');
INSERT INTO `yby_city` VALUES ('48', '西青区', '3');
INSERT INTO `yby_city` VALUES ('49', '津南区', '3');
INSERT INTO `yby_city` VALUES ('50', '北辰区', '3');
INSERT INTO `yby_city` VALUES ('51', '武清区', '3');
INSERT INTO `yby_city` VALUES ('52', '宝坻区', '3');
INSERT INTO `yby_city` VALUES ('53', '宁河县', '3');
INSERT INTO `yby_city` VALUES ('54', '静海县', '3');
INSERT INTO `yby_city` VALUES ('55', '蓟县', '3');
INSERT INTO `yby_city` VALUES ('56', '万州区', '4');
INSERT INTO `yby_city` VALUES ('57', '涪陵区', '4');
INSERT INTO `yby_city` VALUES ('58', '渝中区', '4');
INSERT INTO `yby_city` VALUES ('59', '大渡口区', '4');
INSERT INTO `yby_city` VALUES ('60', '江北区', '4');
INSERT INTO `yby_city` VALUES ('61', '沙坪坝区', '4');
INSERT INTO `yby_city` VALUES ('62', '九龙坡区', '4');
INSERT INTO `yby_city` VALUES ('63', '南岸区', '4');
INSERT INTO `yby_city` VALUES ('64', '北碚区', '4');
INSERT INTO `yby_city` VALUES ('65', '万盛区', '4');
INSERT INTO `yby_city` VALUES ('66', '双桥区', '4');
INSERT INTO `yby_city` VALUES ('67', '渝北区', '4');
INSERT INTO `yby_city` VALUES ('68', '巴南区', '4');
INSERT INTO `yby_city` VALUES ('69', '黔江区', '4');
INSERT INTO `yby_city` VALUES ('70', '长寿区', '4');
INSERT INTO `yby_city` VALUES ('71', '江津区', '4');
INSERT INTO `yby_city` VALUES ('72', '合川区', '4');
INSERT INTO `yby_city` VALUES ('73', '永川区', '4');
INSERT INTO `yby_city` VALUES ('74', '南川区', '4');
INSERT INTO `yby_city` VALUES ('75', '綦江县', '4');
INSERT INTO `yby_city` VALUES ('76', '潼南县', '4');
INSERT INTO `yby_city` VALUES ('77', '铜梁县', '4');
INSERT INTO `yby_city` VALUES ('78', '大足县', '4');
INSERT INTO `yby_city` VALUES ('79', '荣昌县', '4');
INSERT INTO `yby_city` VALUES ('80', '璧山县', '4');
INSERT INTO `yby_city` VALUES ('81', '梁平县', '4');
INSERT INTO `yby_city` VALUES ('82', '城口县', '4');
INSERT INTO `yby_city` VALUES ('83', '丰都县', '4');
INSERT INTO `yby_city` VALUES ('84', '垫江县', '4');
INSERT INTO `yby_city` VALUES ('85', '武隆县', '4');
INSERT INTO `yby_city` VALUES ('86', '忠县', '4');
INSERT INTO `yby_city` VALUES ('87', '开县', '4');
INSERT INTO `yby_city` VALUES ('88', '云阳县', '4');
INSERT INTO `yby_city` VALUES ('89', '奉节县', '4');
INSERT INTO `yby_city` VALUES ('90', '巫山县', '4');
INSERT INTO `yby_city` VALUES ('91', '巫溪县', '4');
INSERT INTO `yby_city` VALUES ('92', '石柱土家族自治县', '4');
INSERT INTO `yby_city` VALUES ('93', '秀山土家族苗族自治县', '4');
INSERT INTO `yby_city` VALUES ('94', '酉阳土家族苗族自治县', '4');
INSERT INTO `yby_city` VALUES ('95', '彭水苗族土家族自治县', '4');
INSERT INTO `yby_city` VALUES ('96', '哈尔滨市', '5');
INSERT INTO `yby_city` VALUES ('97', '齐齐哈尔市', '5');
INSERT INTO `yby_city` VALUES ('98', '鸡西市', '5');
INSERT INTO `yby_city` VALUES ('99', '鹤岗市', '5');
INSERT INTO `yby_city` VALUES ('100', '双鸭山市', '5');
INSERT INTO `yby_city` VALUES ('101', '大庆市', '5');
INSERT INTO `yby_city` VALUES ('102', '伊春市', '5');
INSERT INTO `yby_city` VALUES ('103', '佳木斯市', '5');
INSERT INTO `yby_city` VALUES ('104', '七台河市', '5');
INSERT INTO `yby_city` VALUES ('105', '牡丹江市', '5');
INSERT INTO `yby_city` VALUES ('106', '黑河市', '5');
INSERT INTO `yby_city` VALUES ('107', '绥化市', '5');
INSERT INTO `yby_city` VALUES ('108', '大兴安岭地区', '5');
INSERT INTO `yby_city` VALUES ('109', '长春市', '6');
INSERT INTO `yby_city` VALUES ('110', '吉林市', '6');
INSERT INTO `yby_city` VALUES ('111', '四平市', '6');
INSERT INTO `yby_city` VALUES ('112', '辽源市', '6');
INSERT INTO `yby_city` VALUES ('113', '通化市', '6');
INSERT INTO `yby_city` VALUES ('114', '白山市', '6');
INSERT INTO `yby_city` VALUES ('115', '松原市', '6');
INSERT INTO `yby_city` VALUES ('116', '白城市', '6');
INSERT INTO `yby_city` VALUES ('117', '延边朝鲜族自治州', '6');
INSERT INTO `yby_city` VALUES ('118', '沈阳市', '7');
INSERT INTO `yby_city` VALUES ('119', '大连市', '7');
INSERT INTO `yby_city` VALUES ('120', '鞍山市', '7');
INSERT INTO `yby_city` VALUES ('121', '抚顺市', '7');
INSERT INTO `yby_city` VALUES ('122', '本溪市', '7');
INSERT INTO `yby_city` VALUES ('123', '丹东市', '7');
INSERT INTO `yby_city` VALUES ('124', '锦州市', '7');
INSERT INTO `yby_city` VALUES ('125', '营口市', '7');
INSERT INTO `yby_city` VALUES ('126', '阜新市', '7');
INSERT INTO `yby_city` VALUES ('127', '辽阳市', '7');
INSERT INTO `yby_city` VALUES ('128', '盘锦市', '7');
INSERT INTO `yby_city` VALUES ('129', '铁岭市', '7');
INSERT INTO `yby_city` VALUES ('130', '朝阳市', '7');
INSERT INTO `yby_city` VALUES ('131', '葫芦岛市', '7');
INSERT INTO `yby_city` VALUES ('132', '济南市', '8');
INSERT INTO `yby_city` VALUES ('133', '青岛市', '8');
INSERT INTO `yby_city` VALUES ('134', '淄博市', '8');
INSERT INTO `yby_city` VALUES ('135', '枣庄市', '8');
INSERT INTO `yby_city` VALUES ('136', '东营市', '8');
INSERT INTO `yby_city` VALUES ('137', '烟台市', '8');
INSERT INTO `yby_city` VALUES ('138', '潍坊市', '8');
INSERT INTO `yby_city` VALUES ('139', '济宁市', '8');
INSERT INTO `yby_city` VALUES ('140', '泰安市', '8');
INSERT INTO `yby_city` VALUES ('141', '威海市', '8');
INSERT INTO `yby_city` VALUES ('142', '日照市', '8');
INSERT INTO `yby_city` VALUES ('143', '莱芜市', '8');
INSERT INTO `yby_city` VALUES ('144', '临沂市', '8');
INSERT INTO `yby_city` VALUES ('145', '德州市', '8');
INSERT INTO `yby_city` VALUES ('146', '聊城市', '8');
INSERT INTO `yby_city` VALUES ('147', '滨州市', '8');
INSERT INTO `yby_city` VALUES ('148', '菏泽市', '8');
INSERT INTO `yby_city` VALUES ('149', '太原市', '9');
INSERT INTO `yby_city` VALUES ('150', '大同市', '9');
INSERT INTO `yby_city` VALUES ('151', '阳泉市', '9');
INSERT INTO `yby_city` VALUES ('152', '长治市', '9');
INSERT INTO `yby_city` VALUES ('153', '晋城市', '9');
INSERT INTO `yby_city` VALUES ('154', '朔州市', '9');
INSERT INTO `yby_city` VALUES ('155', '晋中市', '9');
INSERT INTO `yby_city` VALUES ('156', '运城市', '9');
INSERT INTO `yby_city` VALUES ('157', '忻州市', '9');
INSERT INTO `yby_city` VALUES ('158', '临汾市', '9');
INSERT INTO `yby_city` VALUES ('159', '吕梁市', '9');
INSERT INTO `yby_city` VALUES ('160', '西安市', '10');
INSERT INTO `yby_city` VALUES ('161', '铜川市', '10');
INSERT INTO `yby_city` VALUES ('162', '宝鸡市', '10');
INSERT INTO `yby_city` VALUES ('163', '咸阳市', '10');
INSERT INTO `yby_city` VALUES ('164', '渭南市', '10');
INSERT INTO `yby_city` VALUES ('165', '延安市', '10');
INSERT INTO `yby_city` VALUES ('166', '汉中市', '10');
INSERT INTO `yby_city` VALUES ('167', '榆林市', '10');
INSERT INTO `yby_city` VALUES ('168', '安康市', '10');
INSERT INTO `yby_city` VALUES ('169', '商洛市', '10');
INSERT INTO `yby_city` VALUES ('170', '石家庄市', '11');
INSERT INTO `yby_city` VALUES ('171', '唐山市', '11');
INSERT INTO `yby_city` VALUES ('172', '秦皇岛市', '11');
INSERT INTO `yby_city` VALUES ('173', '邯郸市', '11');
INSERT INTO `yby_city` VALUES ('174', '邢台市', '11');
INSERT INTO `yby_city` VALUES ('175', '保定市', '11');
INSERT INTO `yby_city` VALUES ('176', '张家口市', '11');
INSERT INTO `yby_city` VALUES ('177', '承德市', '11');
INSERT INTO `yby_city` VALUES ('178', '沧州市', '11');
INSERT INTO `yby_city` VALUES ('179', '廊坊市', '11');
INSERT INTO `yby_city` VALUES ('180', '衡水市', '11');
INSERT INTO `yby_city` VALUES ('181', '郑州市', '12');
INSERT INTO `yby_city` VALUES ('182', '开封市', '12');
INSERT INTO `yby_city` VALUES ('183', '洛阳市', '12');
INSERT INTO `yby_city` VALUES ('184', '平顶山市', '12');
INSERT INTO `yby_city` VALUES ('185', '安阳市', '12');
INSERT INTO `yby_city` VALUES ('186', '鹤壁市', '12');
INSERT INTO `yby_city` VALUES ('187', '新乡市', '12');
INSERT INTO `yby_city` VALUES ('188', '焦作市', '12');
INSERT INTO `yby_city` VALUES ('189', '济源市', '12');
INSERT INTO `yby_city` VALUES ('190', '濮阳市', '12');
INSERT INTO `yby_city` VALUES ('191', '许昌市', '12');
INSERT INTO `yby_city` VALUES ('192', '漯河市', '12');
INSERT INTO `yby_city` VALUES ('193', '三门峡市', '12');
INSERT INTO `yby_city` VALUES ('194', '南阳市', '12');
INSERT INTO `yby_city` VALUES ('195', '商丘市', '12');
INSERT INTO `yby_city` VALUES ('196', '信阳市', '12');
INSERT INTO `yby_city` VALUES ('197', '周口市', '12');
INSERT INTO `yby_city` VALUES ('198', '驻马店市', '12');
INSERT INTO `yby_city` VALUES ('199', '武汉市', '13');
INSERT INTO `yby_city` VALUES ('200', '黄石市', '13');
INSERT INTO `yby_city` VALUES ('201', '十堰市', '13');
INSERT INTO `yby_city` VALUES ('202', '宜昌市', '13');
INSERT INTO `yby_city` VALUES ('203', '襄樊市', '13');
INSERT INTO `yby_city` VALUES ('204', '鄂州市', '13');
INSERT INTO `yby_city` VALUES ('205', '荆门市', '13');
INSERT INTO `yby_city` VALUES ('206', '孝感市', '13');
INSERT INTO `yby_city` VALUES ('207', '荆州市', '13');
INSERT INTO `yby_city` VALUES ('208', '黄冈市', '13');
INSERT INTO `yby_city` VALUES ('209', '咸宁市', '13');
INSERT INTO `yby_city` VALUES ('210', '随州市', '13');
INSERT INTO `yby_city` VALUES ('211', '恩施土家族苗族自治州', '13');
INSERT INTO `yby_city` VALUES ('212', '仙桃市', '13');
INSERT INTO `yby_city` VALUES ('213', '潜江市', '13');
INSERT INTO `yby_city` VALUES ('214', '天门市', '13');
INSERT INTO `yby_city` VALUES ('215', '神农架林区', '13');
INSERT INTO `yby_city` VALUES ('216', '长沙市', '14');
INSERT INTO `yby_city` VALUES ('217', '株洲市', '14');
INSERT INTO `yby_city` VALUES ('218', '湘潭市', '14');
INSERT INTO `yby_city` VALUES ('219', '衡阳市', '14');
INSERT INTO `yby_city` VALUES ('220', '邵阳市', '14');
INSERT INTO `yby_city` VALUES ('221', '岳阳市', '14');
INSERT INTO `yby_city` VALUES ('222', '常德市', '14');
INSERT INTO `yby_city` VALUES ('223', '张家界市', '14');
INSERT INTO `yby_city` VALUES ('224', '益阳市', '14');
INSERT INTO `yby_city` VALUES ('225', '郴州市', '14');
INSERT INTO `yby_city` VALUES ('226', '永州市', '14');
INSERT INTO `yby_city` VALUES ('227', '怀化市', '14');
INSERT INTO `yby_city` VALUES ('228', '娄底市', '14');
INSERT INTO `yby_city` VALUES ('229', '湘西土家族苗族自治州', '14');
INSERT INTO `yby_city` VALUES ('230', '海口市', '15');
INSERT INTO `yby_city` VALUES ('231', '三亚市', '15');
INSERT INTO `yby_city` VALUES ('232', '五指山市', '15');
INSERT INTO `yby_city` VALUES ('233', '琼海市', '15');
INSERT INTO `yby_city` VALUES ('234', '儋州市', '15');
INSERT INTO `yby_city` VALUES ('235', '文昌市', '15');
INSERT INTO `yby_city` VALUES ('236', '万宁市', '15');
INSERT INTO `yby_city` VALUES ('237', '东方市', '15');
INSERT INTO `yby_city` VALUES ('238', '定安县', '15');
INSERT INTO `yby_city` VALUES ('239', '屯昌县', '15');
INSERT INTO `yby_city` VALUES ('240', '澄迈县', '15');
INSERT INTO `yby_city` VALUES ('241', '临高县', '15');
INSERT INTO `yby_city` VALUES ('242', '白沙黎族自治县', '15');
INSERT INTO `yby_city` VALUES ('243', '昌江黎族自治县', '15');
INSERT INTO `yby_city` VALUES ('244', '乐东黎族自治县', '15');
INSERT INTO `yby_city` VALUES ('245', '陵水黎族自治县', '15');
INSERT INTO `yby_city` VALUES ('246', '保亭黎族苗族自治县', '15');
INSERT INTO `yby_city` VALUES ('247', '琼中黎族苗族自治县', '15');
INSERT INTO `yby_city` VALUES ('248', '南京市', '16');
INSERT INTO `yby_city` VALUES ('249', '无锡市', '16');
INSERT INTO `yby_city` VALUES ('250', '徐州市', '16');
INSERT INTO `yby_city` VALUES ('251', '常州市', '16');
INSERT INTO `yby_city` VALUES ('252', '苏州市', '16');
INSERT INTO `yby_city` VALUES ('253', '南通市', '16');
INSERT INTO `yby_city` VALUES ('254', '连云港市', '16');
INSERT INTO `yby_city` VALUES ('255', '淮安市', '16');
INSERT INTO `yby_city` VALUES ('256', '盐城市', '16');
INSERT INTO `yby_city` VALUES ('257', '扬州市', '16');
INSERT INTO `yby_city` VALUES ('258', '镇江市', '16');
INSERT INTO `yby_city` VALUES ('259', '泰州市', '16');
INSERT INTO `yby_city` VALUES ('260', '宿迁市', '16');
INSERT INTO `yby_city` VALUES ('261', '南昌市', '17');
INSERT INTO `yby_city` VALUES ('262', '景德镇市', '17');
INSERT INTO `yby_city` VALUES ('263', '萍乡市', '17');
INSERT INTO `yby_city` VALUES ('264', '九江市', '17');
INSERT INTO `yby_city` VALUES ('265', '新余市', '17');
INSERT INTO `yby_city` VALUES ('266', '鹰潭市', '17');
INSERT INTO `yby_city` VALUES ('267', '赣州市', '17');
INSERT INTO `yby_city` VALUES ('268', '吉安市', '17');
INSERT INTO `yby_city` VALUES ('269', '宜春市', '17');
INSERT INTO `yby_city` VALUES ('270', '抚州市', '17');
INSERT INTO `yby_city` VALUES ('271', '上饶市', '17');
INSERT INTO `yby_city` VALUES ('272', '广州市', '18');
INSERT INTO `yby_city` VALUES ('273', '韶关市', '18');
INSERT INTO `yby_city` VALUES ('274', '深圳市', '18');
INSERT INTO `yby_city` VALUES ('275', '珠海市', '18');
INSERT INTO `yby_city` VALUES ('276', '汕头市', '18');
INSERT INTO `yby_city` VALUES ('277', '佛山市', '18');
INSERT INTO `yby_city` VALUES ('278', '江门市', '18');
INSERT INTO `yby_city` VALUES ('279', '湛江市', '18');
INSERT INTO `yby_city` VALUES ('280', '茂名市', '18');
INSERT INTO `yby_city` VALUES ('281', '肇庆市', '18');
INSERT INTO `yby_city` VALUES ('282', '惠州市', '18');
INSERT INTO `yby_city` VALUES ('283', '梅州市', '18');
INSERT INTO `yby_city` VALUES ('284', '汕尾市', '18');
INSERT INTO `yby_city` VALUES ('285', '河源市', '18');
INSERT INTO `yby_city` VALUES ('286', '阳江市', '18');
INSERT INTO `yby_city` VALUES ('287', '清远市', '18');
INSERT INTO `yby_city` VALUES ('288', '东莞市', '18');
INSERT INTO `yby_city` VALUES ('289', '中山市', '18');
INSERT INTO `yby_city` VALUES ('290', '潮州市', '18');
INSERT INTO `yby_city` VALUES ('291', '揭阳市', '18');
INSERT INTO `yby_city` VALUES ('292', '云浮市', '18');
INSERT INTO `yby_city` VALUES ('293', '南宁市', '19');
INSERT INTO `yby_city` VALUES ('294', '柳州市', '19');
INSERT INTO `yby_city` VALUES ('295', '桂林市', '19');
INSERT INTO `yby_city` VALUES ('296', '梧州市', '19');
INSERT INTO `yby_city` VALUES ('297', '北海市', '19');
INSERT INTO `yby_city` VALUES ('298', '防城港市', '19');
INSERT INTO `yby_city` VALUES ('299', '钦州市', '19');
INSERT INTO `yby_city` VALUES ('300', '贵港市', '19');
INSERT INTO `yby_city` VALUES ('301', '玉林市', '19');
INSERT INTO `yby_city` VALUES ('302', '百色市', '19');
INSERT INTO `yby_city` VALUES ('303', '贺州市', '19');
INSERT INTO `yby_city` VALUES ('304', '河池市', '19');
INSERT INTO `yby_city` VALUES ('305', '来宾市', '19');
INSERT INTO `yby_city` VALUES ('306', '崇左市', '19');
INSERT INTO `yby_city` VALUES ('307', '昆明市', '20');
INSERT INTO `yby_city` VALUES ('308', '曲靖市', '20');
INSERT INTO `yby_city` VALUES ('309', '玉溪市', '20');
INSERT INTO `yby_city` VALUES ('310', '保山市', '20');
INSERT INTO `yby_city` VALUES ('311', '昭通市', '20');
INSERT INTO `yby_city` VALUES ('312', '丽江市', '20');
INSERT INTO `yby_city` VALUES ('313', '思茅市', '20');
INSERT INTO `yby_city` VALUES ('314', '临沧市', '20');
INSERT INTO `yby_city` VALUES ('315', '楚雄彝族自治州', '20');
INSERT INTO `yby_city` VALUES ('316', '红河哈尼族彝族自治州', '20');
INSERT INTO `yby_city` VALUES ('317', '文山壮族苗族自治州', '20');
INSERT INTO `yby_city` VALUES ('318', '西双版纳傣族自治州', '20');
INSERT INTO `yby_city` VALUES ('319', '大理白族自治州', '20');
INSERT INTO `yby_city` VALUES ('320', '德宏傣族景颇族自治州', '20');
INSERT INTO `yby_city` VALUES ('321', '怒江傈僳族自治州', '20');
INSERT INTO `yby_city` VALUES ('322', '迪庆藏族自治州', '20');
INSERT INTO `yby_city` VALUES ('323', '贵阳市', '21');
INSERT INTO `yby_city` VALUES ('324', '六盘水市', '21');
INSERT INTO `yby_city` VALUES ('325', '遵义市', '21');
INSERT INTO `yby_city` VALUES ('326', '安顺市', '21');
INSERT INTO `yby_city` VALUES ('327', '铜仁地区', '21');
INSERT INTO `yby_city` VALUES ('328', '黔西南布依族苗族自治州', '21');
INSERT INTO `yby_city` VALUES ('329', '毕节地区', '21');
INSERT INTO `yby_city` VALUES ('330', '黔东南苗族侗族自治州', '21');
INSERT INTO `yby_city` VALUES ('331', '黔南布依族苗族自治州', '21');
INSERT INTO `yby_city` VALUES ('332', '成都市', '22');
INSERT INTO `yby_city` VALUES ('333', '自贡市', '22');
INSERT INTO `yby_city` VALUES ('334', '攀枝花市', '22');
INSERT INTO `yby_city` VALUES ('335', '泸州市', '22');
INSERT INTO `yby_city` VALUES ('336', '德阳市', '22');
INSERT INTO `yby_city` VALUES ('337', '绵阳市', '22');
INSERT INTO `yby_city` VALUES ('338', '广元市', '22');
INSERT INTO `yby_city` VALUES ('339', '遂宁市', '22');
INSERT INTO `yby_city` VALUES ('340', '内江市', '22');
INSERT INTO `yby_city` VALUES ('341', '乐山市', '22');
INSERT INTO `yby_city` VALUES ('342', '南充市', '22');
INSERT INTO `yby_city` VALUES ('343', '眉山市', '22');
INSERT INTO `yby_city` VALUES ('344', '宜宾市', '22');
INSERT INTO `yby_city` VALUES ('345', '广安市', '22');
INSERT INTO `yby_city` VALUES ('346', '达州市', '22');
INSERT INTO `yby_city` VALUES ('347', '雅安市', '22');
INSERT INTO `yby_city` VALUES ('348', '巴中市', '22');
INSERT INTO `yby_city` VALUES ('349', '资阳市', '22');
INSERT INTO `yby_city` VALUES ('350', '阿坝藏族羌族自治州', '22');
INSERT INTO `yby_city` VALUES ('351', '甘孜藏族自治州', '22');
INSERT INTO `yby_city` VALUES ('352', '凉山彝族自治州', '22');
INSERT INTO `yby_city` VALUES ('353', '呼和浩特市', '23');
INSERT INTO `yby_city` VALUES ('354', '包头市', '23');
INSERT INTO `yby_city` VALUES ('355', '乌海市', '23');
INSERT INTO `yby_city` VALUES ('356', '赤峰市', '23');
INSERT INTO `yby_city` VALUES ('357', '通辽市', '23');
INSERT INTO `yby_city` VALUES ('358', '鄂尔多斯市', '23');
INSERT INTO `yby_city` VALUES ('359', '呼伦贝尔市', '23');
INSERT INTO `yby_city` VALUES ('360', '巴彦淖尔市', '23');
INSERT INTO `yby_city` VALUES ('361', '乌兰察布市', '23');
INSERT INTO `yby_city` VALUES ('362', '兴安盟', '23');
INSERT INTO `yby_city` VALUES ('363', '锡林郭勒盟', '23');
INSERT INTO `yby_city` VALUES ('364', '阿拉善盟', '23');
INSERT INTO `yby_city` VALUES ('365', '银川市', '24');
INSERT INTO `yby_city` VALUES ('366', '石嘴山市', '24');
INSERT INTO `yby_city` VALUES ('367', '吴忠市', '24');
INSERT INTO `yby_city` VALUES ('368', '固原市', '24');
INSERT INTO `yby_city` VALUES ('369', '中卫市', '24');
INSERT INTO `yby_city` VALUES ('370', '兰州市', '25');
INSERT INTO `yby_city` VALUES ('371', '嘉峪关市', '25');
INSERT INTO `yby_city` VALUES ('372', '金昌市', '25');
INSERT INTO `yby_city` VALUES ('373', '白银市', '25');
INSERT INTO `yby_city` VALUES ('374', '天水市', '25');
INSERT INTO `yby_city` VALUES ('375', '武威市', '25');
INSERT INTO `yby_city` VALUES ('376', '张掖市', '25');
INSERT INTO `yby_city` VALUES ('377', '平凉市', '25');
INSERT INTO `yby_city` VALUES ('378', '酒泉市', '25');
INSERT INTO `yby_city` VALUES ('379', '庆阳市', '25');
INSERT INTO `yby_city` VALUES ('380', '定西市', '25');
INSERT INTO `yby_city` VALUES ('381', '陇南市', '25');
INSERT INTO `yby_city` VALUES ('382', '临夏回族自治州', '25');
INSERT INTO `yby_city` VALUES ('383', '甘南藏族自治州', '25');
INSERT INTO `yby_city` VALUES ('384', '西宁市', '26');
INSERT INTO `yby_city` VALUES ('385', '海东地区', '26');
INSERT INTO `yby_city` VALUES ('386', '海北藏族自治州', '26');
INSERT INTO `yby_city` VALUES ('387', '黄南藏族自治州', '26');
INSERT INTO `yby_city` VALUES ('388', '海南藏族自治州', '26');
INSERT INTO `yby_city` VALUES ('389', '果洛藏族自治州', '26');
INSERT INTO `yby_city` VALUES ('390', '玉树藏族自治州', '26');
INSERT INTO `yby_city` VALUES ('391', '海西蒙古族藏族自治州', '26');
INSERT INTO `yby_city` VALUES ('392', '拉萨市', '27');
INSERT INTO `yby_city` VALUES ('393', '昌都地区', '27');
INSERT INTO `yby_city` VALUES ('394', '山南地区', '27');
INSERT INTO `yby_city` VALUES ('395', '日喀则地区', '27');
INSERT INTO `yby_city` VALUES ('396', '那曲地区', '27');
INSERT INTO `yby_city` VALUES ('397', '阿里地区', '27');
INSERT INTO `yby_city` VALUES ('398', '林芝地区', '27');
INSERT INTO `yby_city` VALUES ('399', '乌鲁木齐市', '28');
INSERT INTO `yby_city` VALUES ('400', '克拉玛依市', '28');
INSERT INTO `yby_city` VALUES ('401', '吐鲁番地区', '28');
INSERT INTO `yby_city` VALUES ('402', '哈密地区', '28');
INSERT INTO `yby_city` VALUES ('403', '昌吉回族自治州', '28');
INSERT INTO `yby_city` VALUES ('404', '博尔塔拉蒙古自治州', '28');
INSERT INTO `yby_city` VALUES ('405', '巴音郭楞蒙古自治州', '28');
INSERT INTO `yby_city` VALUES ('406', '阿克苏地区', '28');
INSERT INTO `yby_city` VALUES ('407', '克孜勒苏柯尔克孜自治州', '28');
INSERT INTO `yby_city` VALUES ('408', '喀什地区', '28');
INSERT INTO `yby_city` VALUES ('409', '和田地区', '28');
INSERT INTO `yby_city` VALUES ('410', '伊犁哈萨克自治州', '28');
INSERT INTO `yby_city` VALUES ('411', '塔城地区', '28');
INSERT INTO `yby_city` VALUES ('412', '阿勒泰地区', '28');
INSERT INTO `yby_city` VALUES ('413', '石河子市', '28');
INSERT INTO `yby_city` VALUES ('414', '阿拉尔市', '28');
INSERT INTO `yby_city` VALUES ('415', '图木舒克市', '28');
INSERT INTO `yby_city` VALUES ('416', '五家渠市', '28');
INSERT INTO `yby_city` VALUES ('417', '合肥市', '29');
INSERT INTO `yby_city` VALUES ('418', '芜湖市', '29');
INSERT INTO `yby_city` VALUES ('419', '蚌埠市', '29');
INSERT INTO `yby_city` VALUES ('420', '淮南市', '29');
INSERT INTO `yby_city` VALUES ('421', '马鞍山市', '29');
INSERT INTO `yby_city` VALUES ('422', '淮北市', '29');
INSERT INTO `yby_city` VALUES ('423', '铜陵市', '29');
INSERT INTO `yby_city` VALUES ('424', '安庆市', '29');
INSERT INTO `yby_city` VALUES ('425', '黄山市', '29');
INSERT INTO `yby_city` VALUES ('426', '滁州市', '29');
INSERT INTO `yby_city` VALUES ('427', '阜阳市', '29');
INSERT INTO `yby_city` VALUES ('428', '宿州市', '29');
INSERT INTO `yby_city` VALUES ('429', '巢湖市', '29');
INSERT INTO `yby_city` VALUES ('430', '六安市', '29');
INSERT INTO `yby_city` VALUES ('431', '亳州市', '29');
INSERT INTO `yby_city` VALUES ('432', '池州市', '29');
INSERT INTO `yby_city` VALUES ('433', '宣城市', '29');
INSERT INTO `yby_city` VALUES ('434', '杭州市', '30');
INSERT INTO `yby_city` VALUES ('435', '宁波市', '30');
INSERT INTO `yby_city` VALUES ('436', '温州市', '30');
INSERT INTO `yby_city` VALUES ('437', '嘉兴市', '30');
INSERT INTO `yby_city` VALUES ('438', '湖州市', '30');
INSERT INTO `yby_city` VALUES ('439', '绍兴市', '30');
INSERT INTO `yby_city` VALUES ('440', '金华市', '30');
INSERT INTO `yby_city` VALUES ('441', '衢州市', '30');
INSERT INTO `yby_city` VALUES ('442', '舟山市', '30');
INSERT INTO `yby_city` VALUES ('443', '台州市', '30');
INSERT INTO `yby_city` VALUES ('444', '丽水市', '30');
INSERT INTO `yby_city` VALUES ('445', '福州市', '31');
INSERT INTO `yby_city` VALUES ('446', '厦门市', '31');
INSERT INTO `yby_city` VALUES ('447', '莆田市', '31');
INSERT INTO `yby_city` VALUES ('448', '三明市', '31');
INSERT INTO `yby_city` VALUES ('449', '泉州市', '31');
INSERT INTO `yby_city` VALUES ('450', '漳州市', '31');
INSERT INTO `yby_city` VALUES ('451', '南平市', '31');
INSERT INTO `yby_city` VALUES ('452', '龙岩市', '31');
INSERT INTO `yby_city` VALUES ('453', '宁德市', '31');
INSERT INTO `yby_city` VALUES ('454', '中西区', '32');
INSERT INTO `yby_city` VALUES ('455', '湾仔区', '32');
INSERT INTO `yby_city` VALUES ('456', '东区', '32');
INSERT INTO `yby_city` VALUES ('457', '南区', '32');
INSERT INTO `yby_city` VALUES ('458', '油尖旺区', '32');
INSERT INTO `yby_city` VALUES ('459', '深水埗区', '32');
INSERT INTO `yby_city` VALUES ('460', '九龙城区', '32');
INSERT INTO `yby_city` VALUES ('461', '黄大仙区', '32');
INSERT INTO `yby_city` VALUES ('462', '观塘区', '32');
INSERT INTO `yby_city` VALUES ('463', '荃湾区', '32');
INSERT INTO `yby_city` VALUES ('464', '葵青区', '32');
INSERT INTO `yby_city` VALUES ('465', '沙田区', '32');
INSERT INTO `yby_city` VALUES ('466', '西贡区', '32');
INSERT INTO `yby_city` VALUES ('467', '大埔区', '32');
INSERT INTO `yby_city` VALUES ('468', '北区', '32');
INSERT INTO `yby_city` VALUES ('469', '元朗区', '32');
INSERT INTO `yby_city` VALUES ('470', '屯门区', '32');
INSERT INTO `yby_city` VALUES ('471', '离岛区', '32');
INSERT INTO `yby_city` VALUES ('472', '澳门', '33');
INSERT INTO `yby_city` VALUES ('473', '台北', '34');
INSERT INTO `yby_city` VALUES ('474', '高雄', '34');
INSERT INTO `yby_city` VALUES ('475', '基隆', '34');
INSERT INTO `yby_city` VALUES ('476', '台中', '34');
INSERT INTO `yby_city` VALUES ('477', '台南', '34');
INSERT INTO `yby_city` VALUES ('478', '新竹', '34');
INSERT INTO `yby_city` VALUES ('479', '嘉义', '34');
INSERT INTO `yby_city` VALUES ('480', '东城区', '1');

-- ----------------------------
-- Table structure for `yby_company`
-- ----------------------------
DROP TABLE IF EXISTS `yby_company`;
CREATE TABLE `yby_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_company
-- ----------------------------
INSERT INTO `yby_company` VALUES ('1', '<p>\r\n	<img src=\"/yby/Public/upload/image/20141104/20141104171855_49663.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-size:14px;font-family:\'Microsoft YaHei\';line-height:2;\">&nbsp; </span><span style=\"color:#333333;font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\"><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;\">&nbsp;\r\n&nbsp;&nbsp;中国科学院科技网络—北京星辰万有科技有限公司是注册在中关村科技园区昌平园的高新技术企业，注册资金500万元。公司的前身于1985年5月靠\r\n2000元人民币起家，经过26年的艰苦努力，现已成为初具规模的家用和医用医疗器械的生产企业。公司拥有两个工厂和四个专营店北京工厂占地面积\r\n11000m²，建筑面积4900m²；深圳工厂建筑面积2000 \r\nm²，共有四条生产流水线和各类专用设备。公司下设开发部、采购部、生产部、质管部、销售部、行政部、物流部、财务部，实现研发、生产、销售一条龙。公司\r\n于2003年已通过ISO9001:2000版和ISO13485:2003版国际质量体系认证和中国质量认证中心国家强制性产品认证（CCC）；公司\r\n以\"重科技、出新品，以康复保健为方向；抓质量、创品牌，以人类健康为己任\"作为发展宗旨；以\"创新模式，引导市场，引导消费\"为营销理念；以海纳百川的\r\n气魄吸收了一批高学历、高素质、高技能的人才，为您顺利登陆保健品市场提供一条绿色通道。 \r\n公司的拳头产品OO眼保仪不仅获得了中华人民共和国发明专利，而且还荣获了英国发明专利，在我国防近产品中曾获得过骄人的业绩，现公司经过几年的整合，又\r\n研发了更新一代的产品，为公司的二次腾飞奠定了良好的基础，公司将适时推出同步降压仪、消痛仪、痛经仪、消毒宝、空气宝、肺功能锻炼器、多功能训练箱、认\r\n知训导仪、神经训导仪等十几种新产品，为携手合作的有识之士提供一展身手的广阔舞台</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>');

-- ----------------------------
-- Table structure for `yby_contact`
-- ----------------------------
DROP TABLE IF EXISTS `yby_contact`;
CREATE TABLE `yby_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_contact
-- ----------------------------
INSERT INTO `yby_contact` VALUES ('1', '<ul>\r\n	<li>\r\n		<span style=\"font-family:\'Microsoft YaHei\';line-height:2;font-size:14px;color:#333333;\">公司地址：成都市武侯区磨子桥15号</span> \r\n	</li>\r\n	<li>\r\n		<span style=\"font-family:\'Microsoft YaHei\';line-height:2;font-size:14px;color:#333333;\">电话：028-88525471</span> \r\n	</li>\r\n	<li>\r\n		<span style=\"font-family:\'Microsoft YaHei\';line-height:2;font-size:14px;color:#333333;\">邮编：610041</span> \r\n	</li>\r\n</ul>');

-- ----------------------------
-- Table structure for `yby_culture`
-- ----------------------------
DROP TABLE IF EXISTS `yby_culture`;
CREATE TABLE `yby_culture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_culture
-- ----------------------------
INSERT INTO `yby_culture` VALUES ('1', '<p>\r\n	<img src=\"/yby/Public/upload/image/20141104/20141104220525_34606.jpg\" alt=\"\" height=\"311\" width=\"759\" />\r\n</p>\r\n<p>\r\n	<p>\r\n		<span style=\"font-size:18px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">OO</span><span style=\"font-size:18px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">品牌文化</span> \r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:12pt;line-height:150%;font-family:\'Microsoft YaHei\';color:#000000;\"><span style=\"color:#333333;line-height:2;\">&nbsp; &nbsp;</span><span style=\"font-size:14px;color:#333333;line-height:2;\">&nbsp; &nbsp;&nbsp;</span></span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">北京星辰万有科技有限公司成立于</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">1985</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">年，公司长期致力于中国青少年近视课题的研究，以独有的“睫状肌潜能训练法”为核心，持续深入研发了“</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">OO</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">视力训练仪”系列产品，开创了青少年近视治疗领域的全新产品品类——</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">OO</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">眼保仪。产品一经上市即获得了全国少年儿童的广泛关注和喜爱，成为他们恢复视力、预防近视的好帮手、好朋友。</span><span style=\"font-size:12.0pt;line-height:150%;\"></span> \r\n	</p>\r\n	<p style=\"text-indent:21.75pt;\">\r\n		<span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">OO</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">眼\r\n保仪是为满足广大有视力问题的人群，特别是帮助青少年通过眼保仪锻炼、恢复正常视力的需要而设计的。它能够有效训练孩子的睫状肌调节功能，提升视力，促进\r\n感光细胞增长，改善弱视、散光等症状；同时增加眼部养份供给，修复眼组织机能。仪器内部内置的学习成长课件，使孩子能在娱乐和学习过程中完成治疗。多年\r\n来，经临床试用证明，该仪器对学生性近视及成年人消除视疲劳，尤其是长时间看书、写字、用电脑人群，均能起到很好的预防和保健作用。</span><span style=\"font-size:12.0pt;line-height:150%;\"></span> \r\n	</p>\r\n	<p style=\"text-indent:21.75pt;\">\r\n		<span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">作为中国青少年视力康复训练仪器，</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">OO</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">眼保仪是由中国科学院高级工程师——苏洪泉先生研制发明的专利产品，中国发明专利号为：</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">92101546.1</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">，还荣获英国发明专利，属于国家二类医疗器械，并成为中国科学院科技产品销售网络的产品。同时，由于其卓越的功能实现，在教育部、卫生部等</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">12</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">部委的联合倡议下，通过中国校园健康行动，成为了“中国校园健康行动学生视力康复工程办公室”，向全国推广这一康复视力的优良产品。</span><span style=\"font-size:12.0pt;line-height:150%;\"></span> \r\n	</p>\r\n	<p style=\"text-indent:21.75pt;\">\r\n		<span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">星辰万有公司将始终不渝的致力于中国青少年儿童视力康复这一特定领域，专注学生性近视患者的迫切需求，通过用户体验、技术革新、完善服务等一系列举措，为客户不断提供更优质、更丰富的产品选择！“</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">OO</span><span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\">，看见未来！”</span> \r\n	</p>\r\n	<p style=\"text-indent:21.75pt;\">\r\n		<span style=\"font-size:14px;line-height:2;font-family:\'Microsoft YaHei\';color:#333333;\"><br />\r\n</span> \r\n	</p>\r\n	<p style=\"text-indent:21.75pt;\">\r\n		<br />\r\n	</p>\r\n	<ul>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;line-height:2;color:#333333;\">企业理念</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">重科技、出新品、以康复保健为方向</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">抓质量、创名牌、以人类健康为己任</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:medium;\"><span style=\"line-height:27px;\"><br />\r\n</span></span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;line-height:2;color:#333333;\">企业目标</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">创造健康--以富有创新的高科技产品，满足现代社会人群对健康的需要</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:medium;\"><span style=\"line-height:27px;\"><br />\r\n</span></span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;line-height:2;color:#333333;\">企业精神</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">团结、务实、敬业、创新</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:medium;\"><span style=\"line-height:27px;\"><br />\r\n</span></span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;line-height:2;color:#333333;\">营销理念</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">&nbsp; &nbsp;&nbsp;</span> \r\n		</li>\r\n		<li>\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:14px;line-height:2;color:#333333;\">引导市场、引导消费</span> \r\n		</li>\r\n	</ul>\r\n</p>');

-- ----------------------------
-- Table structure for `yby_eye_active`
-- ----------------------------
DROP TABLE IF EXISTS `yby_eye_active`;
CREATE TABLE `yby_eye_active` (
  `active_id` int(11) NOT NULL COMMENT '自增id',
  `title` varchar(200) NOT NULL COMMENT '活动标题',
  `date` varchar(20) NOT NULL COMMENT '发布日期',
  `file_path` varchar(200) NOT NULL COMMENT '图片地址',
  `content` text NOT NULL COMMENT '活动内容',
  PRIMARY KEY (`active_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='爱眼活动表';

-- ----------------------------
-- Records of yby_eye_active
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_eye_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `yby_eye_knowledge`;
CREATE TABLE `yby_eye_knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `content` text,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_eye_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_eye_vedio`
-- ----------------------------
DROP TABLE IF EXISTS `yby_eye_vedio`;
CREATE TABLE `yby_eye_vedio` (
  `vedio_id` int(11) NOT NULL COMMENT '自增id',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容详情',
  `date` varchar(20) NOT NULL COMMENT '发布日期',
  `file_path` varchar(200) NOT NULL COMMENT '视频地址',
  PRIMARY KEY (`vedio_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='爱眼视频表';

-- ----------------------------
-- Records of yby_eye_vedio
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_img`
-- ----------------------------
DROP TABLE IF EXISTS `yby_img`;
CREATE TABLE `yby_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_img
-- ----------------------------
INSERT INTO `yby_img` VALUES ('6', '7', '/yby/Public/upload/store/20141003154141725.jpg');
INSERT INTO `yby_img` VALUES ('2', '1', '/yby/Public/upload/store/20141003145118715.jpg');
INSERT INTO `yby_img` VALUES ('3', '1', '/yby/Public/upload/store/20141003145118558.jpg');
INSERT INTO `yby_img` VALUES ('5', '7', '/yby/Public/upload/store/20141003154141057.jpg');
INSERT INTO `yby_img` VALUES ('7', '8', '/yby/Public/upload/store/20141003154242063.jpg');
INSERT INTO `yby_img` VALUES ('15', '12', '/yby/Public/upload/store/20141007141536181.png');
INSERT INTO `yby_img` VALUES ('14', '12', '/yby/Public/upload/store/20141007141536417.png');
INSERT INTO `yby_img` VALUES ('13', '12', '/yby/Public/upload/store/20141007141536066.png');
INSERT INTO `yby_img` VALUES ('12', '12', '/yby/Public/upload/store/20141007141536269.png');
INSERT INTO `yby_img` VALUES ('16', '12', '/yby/Public/upload/store/20141007141536207.png');
INSERT INTO `yby_img` VALUES ('17', '12', '/yby/Public/upload/store/20141007141536969.png');
INSERT INTO `yby_img` VALUES ('58', '11', '/yby/Public/upload/store/20141020155011560.jpg');
INSERT INTO `yby_img` VALUES ('19', '11', '/yby/Public/upload/store/20141007141733758.jpg');
INSERT INTO `yby_img` VALUES ('55', '11', '/yby/Public/upload/store/20141020155011532.jpg');
INSERT INTO `yby_img` VALUES ('56', '11', '/yby/Public/upload/store/20141020155011057.jpg');
INSERT INTO `yby_img` VALUES ('57', '11', '/yby/Public/upload/store/20141020155011908.jpg');
INSERT INTO `yby_img` VALUES ('24', '15', '/yby/Public/upload/store/20141007143333484.jpg');
INSERT INTO `yby_img` VALUES ('25', '15', '/yby/Public/upload/store/20141007143333343.jpg');
INSERT INTO `yby_img` VALUES ('26', '15', '/yby/Public/upload/store/20141007143333372.jpg');
INSERT INTO `yby_img` VALUES ('27', '15', '/yby/Public/upload/store/20141007143333301.jpg');
INSERT INTO `yby_img` VALUES ('28', '15', '/yby/Public/upload/store/20141007143333193.jpg');
INSERT INTO `yby_img` VALUES ('29', '15', '/yby/Public/upload/store/20141007143333758.jpg');
INSERT INTO `yby_img` VALUES ('30', '16', '/yby/Public/upload/store/20141007143427701.jpg');
INSERT INTO `yby_img` VALUES ('31', '16', '/yby/Public/upload/store/20141007143427481.jpg');
INSERT INTO `yby_img` VALUES ('32', '16', '/yby/Public/upload/store/20141007143427221.jpg');
INSERT INTO `yby_img` VALUES ('33', '16', '/yby/Public/upload/store/20141007143427527.jpg');
INSERT INTO `yby_img` VALUES ('34', '16', '/yby/Public/upload/store/20141007143427157.jpg');
INSERT INTO `yby_img` VALUES ('35', '16', '/yby/Public/upload/store/20141007143427121.jpg');
INSERT INTO `yby_img` VALUES ('36', '17', '/yby/Public/upload/store/20141009105032604.jpg');
INSERT INTO `yby_img` VALUES ('37', '17', '/yby/Public/upload/store/20141009105032333.jpg');
INSERT INTO `yby_img` VALUES ('38', '17', '/yby/Public/upload/store/20141009105032555.jpg');
INSERT INTO `yby_img` VALUES ('39', '17', '/yby/Public/upload/store/20141009105032808.jpg');
INSERT INTO `yby_img` VALUES ('40', '17', '/yby/Public/upload/store/20141009105032780.jpg');
INSERT INTO `yby_img` VALUES ('41', '17', '/yby/Public/upload/store/20141009105032277.jpg');
INSERT INTO `yby_img` VALUES ('42', '18', '/yby/Public/upload/store/20141009105356182.jpg');
INSERT INTO `yby_img` VALUES ('43', '18', '/yby/Public/upload/store/20141009105356787.jpg');
INSERT INTO `yby_img` VALUES ('44', '18', '/yby/Public/upload/store/20141009105356136.jpg');
INSERT INTO `yby_img` VALUES ('45', '18', '/yby/Public/upload/store/20141009105356087.jpg');
INSERT INTO `yby_img` VALUES ('46', '18', '/yby/Public/upload/store/20141009105356873.jpg');
INSERT INTO `yby_img` VALUES ('47', '18', '/yby/Public/upload/store/20141009105356512.jpg');
INSERT INTO `yby_img` VALUES ('48', '19', '/yby/Public/upload/store/20141011155013347.jpg');
INSERT INTO `yby_img` VALUES ('49', '19', '/yby/Public/upload/store/20141011155013834.jpg');
INSERT INTO `yby_img` VALUES ('50', '19', '/yby/Public/upload/store/20141011155013129.jpg');
INSERT INTO `yby_img` VALUES ('51', '19', '/yby/Public/upload/store/20141011155013682.jpg');
INSERT INTO `yby_img` VALUES ('52', '19', '/yby/Public/upload/store/20141011155013544.jpg');
INSERT INTO `yby_img` VALUES ('53', '19', '/yby/Public/upload/store/20141011155013064.jpg');
INSERT INTO `yby_img` VALUES ('54', '19', '/yby/Public/upload/store/20141011155013818.jpg');
INSERT INTO `yby_img` VALUES ('59', '11', '/yby/Public/upload/store/20141020155011167.jpg');

-- ----------------------------
-- Table structure for `yby_join_message`
-- ----------------------------
DROP TABLE IF EXISTS `yby_join_message`;
CREATE TABLE `yby_join_message` (
  `join_message_id` int(11) NOT NULL COMMENT '自增id',
  `type` tinyint(4) NOT NULL COMMENT '留言类别',
  `content` text NOT NULL COMMENT '留言内容',
  `people` varchar(10) NOT NULL COMMENT '留言人姓名',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `mobile` int(11) NOT NULL COMMENT '手机',
  `phone` int(11) NOT NULL COMMENT '电话',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `code` varchar(10) NOT NULL COMMENT '验证码',
  PRIMARY KEY (`join_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='加盟留言联系表';

-- ----------------------------
-- Records of yby_join_message
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_join_user`
-- ----------------------------
DROP TABLE IF EXISTS `yby_join_user`;
CREATE TABLE `yby_join_user` (
  `join_user_id` int(11) NOT NULL COMMENT '自增id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `join_area` varchar(20) NOT NULL COMMENT '负责区域',
  `phone` int(11) NOT NULL COMMENT '联系方式',
  PRIMARY KEY (`join_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已加盟用户表';

-- ----------------------------
-- Records of yby_join_user
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_meet`
-- ----------------------------
DROP TABLE IF EXISTS `yby_meet`;
CREATE TABLE `yby_meet` (
  `meet_id` int(11) NOT NULL COMMENT '自增id',
  `order_id` varchar(20) NOT NULL COMMENT '订单号',
  `file_path` varchar(200) NOT NULL COMMENT '店铺图片',
  `meet_people` varchar(20) NOT NULL COMMENT '预约人',
  `date` varchar(20) NOT NULL COMMENT '预约时间',
  `status` tinyint(4) NOT NULL COMMENT '预约状态',
  PRIMARY KEY (`meet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预约表';

-- ----------------------------
-- Records of yby_meet
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_message`
-- ----------------------------
DROP TABLE IF EXISTS `yby_message`;
CREATE TABLE `yby_message` (
  `messege_id` int(11) NOT NULL COMMENT '留言id',
  `messege_content` text NOT NULL COMMENT '留言内容',
  `message_phone` int(11) NOT NULL COMMENT '留言人电话',
  `message_qq` int(11) NOT NULL COMMENT '留言人qq',
  PRIMARY KEY (`messege_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员在线留言内容';

-- ----------------------------
-- Records of yby_message
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_order`
-- ----------------------------
DROP TABLE IF EXISTS `yby_order`;
CREATE TABLE `yby_order` (
  `order_id` varchar(20) NOT NULL COMMENT '订单号',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `flag` tinyint(1) DEFAULT '0',
  `file_path` varchar(200) NOT NULL COMMENT '图片地址',
  `buyer` varchar(10) NOT NULL COMMENT '收货人',
  `money` float NOT NULL COMMENT '订单金额',
  `pay_method` varchar(20) NOT NULL COMMENT '付款方式',
  `status` tinyint(4) NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `product_id` (`product_id`),
  UNIQUE KEY `uid` (`user_id`),
  UNIQUE KEY `uid_2` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of yby_order
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_product`
-- ----------------------------
DROP TABLE IF EXISTS `yby_product`;
CREATE TABLE `yby_product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '商品编号',
  `name` varchar(25) NOT NULL COMMENT '商品名称',
  `quanlity` int(11) NOT NULL COMMENT '商品总数',
  `sales` int(11) NOT NULL COMMENT '销量',
  `price` float NOT NULL COMMENT '价格',
  `color` varchar(10) NOT NULL COMMENT '颜色',
  `introduce` text NOT NULL COMMENT '产品介绍',
  `spec` text NOT NULL COMMENT '产品规格',
  `service` text NOT NULL COMMENT '售后服务',
  `img` varchar(500) NOT NULL COMMENT '图片',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of yby_product
-- ----------------------------
INSERT INTO `yby_product` VALUES ('3', 'TOXX', 'OO眼膏', '500', '34', '288', '', '', '<div class=\"detail\">\r\n	<div class=\"left\">\r\n		<div class=\"show_img\">\r\n			<img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1407828932.jpg\" id=\"bigImg\" /> \r\n		</div>\r\n		<div class=\"slide\">\r\n			<div class=\"left_arrow\">\r\n				<img src=\"http://yanbaoyi.xinlingmingdeng.com/html/images/left_arrow_show.png\" />\r\n			</div>\r\n			<div class=\"scroll\" id=\"photo-list\">\r\n				<ul id=\"scroll\">\r\n					<li>\r\n						<img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1407828932.jpg\" />\r\n					</li>\r\n				</ul>\r\n			</div>\r\n			<div class=\"right_arrow\">\r\n				<img src=\"http://yanbaoyi.xinlingmingdeng.com/html/images/right_arrow_show.png\" />\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"right\">\r\n		<div class=\"t\" id=\"product_name\">\r\n			OO眼膏\r\n		</div>\r\n		<div class=\"info\">\r\n			<ul>\r\n				<li>\r\n					<span class=\"w\">商品编号:</span><span id=\"product_code\"></span>\r\n				</li>\r\n				<li>\r\n					<span class=\"w\">全国统一价:</span><span class=\"red\" id=\"now_price\">￥288.00</span>\r\n				</li>\r\n				<li>\r\n					<span class=\"w\">浏览次数:</span><span id=\"visit_num\">26</span>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"color\">\r\n		</div>\r\n		<div class=\"con_bt\">\r\n			<div class=\"orange\">\r\n				<a>加入购物车</a>\r\n			</div>\r\n			<div class=\"blue\">\r\n				<a>预约体验</a>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"pro_commend\">\r\n	<div class=\"com_title\">\r\n		推荐购买\r\n	</div>\r\n	<ul id=\"sameList\">\r\n		<li>\r\n			<a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=15\"><img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1407481627.jpg\" border=\"0\" /></a><span class=\"txt\"><a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=15\">鸭嘴灯</a></span><span class=\"price\">￥330.00</span>\r\n		</li>\r\n		<li>\r\n			<a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=14\"><img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1407485617.jpg\" border=\"0\" /></a><span class=\"txt\"><a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=14\">LED眼保灯</a></span><span class=\"price\">￥598.00</span>\r\n		</li>\r\n		<li>\r\n			<a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=13\"><img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1408692092.jpg\" border=\"0\" /></a><span class=\"txt\"><a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=13\">眼保仪SU-001A</a></span><span class=\"price\">￥1590.00</span>\r\n		</li>\r\n		<li>\r\n			<a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=12\"><img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1408692157.jpg\" border=\"0\" /></a><span class=\"txt\"><a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=12\">眼保仪SU-002</a></span><span class=\"price\">￥2980.00</span>\r\n		</li>\r\n		<li>\r\n			<a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=11\"><img src=\"http://yanbaoyi.xinlingmingdeng.com/attachments/uploadfile/0_1408692226.jpg\" border=\"0\" /></a><span class=\"txt\"><a href=\"http://yanbaoyi.xinlingmingdeng.com/html/product_detail.html?id=11\">眼保仪SU-003</a></span><span class=\"price\">￥3990.00</span>\r\n		</li>\r\n	</ul>\r\n</div>\r\n<div class=\"taocan\">\r\n	<div class=\"t_title\">\r\n		<span class=\"bold\">套餐搭配</span> \r\n	</div>\r\n	<div class=\"new_price\">\r\n		<div class=\"equal\">\r\n			<img src=\"http://yanbaoyi.xinlingmingdeng.com/html/images/equal_icon.png\" />\r\n		</div>\r\n		<div class=\"buy\">\r\n			<ul>\r\n				<li>\r\n					<span>套装价:</span><span class=\"red\" id=\"suite_price\">￥0.00</span>\r\n				</li>\r\n				<li>\r\n					<span>原价:</span><span class=\"del\" id=\"suite_old_price\">￥0.00</span>\r\n				</li>\r\n				<li>\r\n					<span class=\"bt\"><a id=\"goumai\">购买套餐</a></span>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"introduce_title\">\r\n	<a class=\"on\">产品介绍</a><a>产品评价</a> <a>产品规格</a><a>售后服务</a> \r\n</div>\r\n<span>成份：硬脂酸、单甘脂，十八醇、甘油、透明质酸钠、氮酮、维生素B族、维生素C、烟酰胺、牛磺酸、薄荷脑、冰片、香精保健</span><br />\r\n<span><br />\r\n</span><br />\r\n<span>功能：具有改善眼部血液循环，缓解视觉疲劳，促进眼部不适症状的康复。</span><br />\r\n<span><br />\r\n</span><br />\r\n<span>适宜人群：青少年及成人近视、远视、弱视及视力疲劳人群；</span><br />\r\n<span><br />\r\n</span><br />\r\n<p>\r\n	<span>使用方法：皮肤外用。用手指将眼膏涂在眉上半寸、上眼皮、下眼眶及太阳穴（切莫涂入眼内）并从眼角向外轻轻按摩至吸收为</span> \r\n</p>\r\n<p>\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;止。每次按摩5-10分钟为宜。</span> \r\n</p>', '<div id=\"product_service\">\r\n	<span style=\"font-family:微软雅黑;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;font-family:SimSun;\"><strong>1.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"font-size:14px;font-family:SimSun;\"><strong>关于发货</strong></span></span><br />\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">&nbsp; &nbsp;&nbsp;凡在官网订购产品的用户，我们将通过中国邮政快递EMS和顺丰快递全国送货上门，大约是2-4日左右送达，偏远乡镇的送达时</span> \r\n	</p>\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">间约为5-7日，为保证您在第一时间收到您给孩子订购的产品，提交订单后，请保持您的电话通畅。你有任何疑问也可以直接拨打</span> \r\n	</p>\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">咨询电话：400-6666-146。</span> \r\n	</p>\r\n<span style=\"font-family:微软雅黑;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;\"><strong>2.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"font-size:14px;\"><strong>关于签收验货</strong></span></span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">亲，快递在送货前会电话联系您，签收时请注意：</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">A 外包装如有破损，请当场开箱验货，如有问题请联系客服；</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">B外包装完好请先签收并开箱验货，开箱后请核对产品型号、数量、附件及外观，如有问题请及时联系我们的售后客服。</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">C 如若产品有质量问题，按国家三包法负责，亲可放心购买！</span>\r\n</div>', '20141031161252461.jpg');
INSERT INTO `yby_product` VALUES ('2', 'T101', 'LED眼保灯', '1000', '20', '598', '珍珠白', '<p>\r\n	图片介绍\r\n</p>\r\n<p>\r\n	<img src=\"/yby/Public/upload/image/20141031/20141031152916_61350.jpg\" alt=\"\" />\r\n</p>', '<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">商品名称：OO-LED眼保灯</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">商品编号：T101</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">商品毛重：1.2kg</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">商品产地：中国大陆</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">尺寸（mm）：386*200*380 mm</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">色 &nbsp;温：4200±300k</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">光源功率：6w</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">电源：外置电源</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">输入电压：AC100-240v</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">工作电压：DC12V</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">工作电流：0.58A</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">照度均匀度；300mm半径内优于3</span><br />\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">防护等级：IP20</span><br />\r\n<div style=\"margin:0px;padding:0px;font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;text-align:start;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:12px;font-family:微软雅黑;\">表面处理：珍珠白1</span> \r\n</div>', '<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;font-family:SimSun;\"><strong>1.</strong></span><span class=\"Apple-tab-span\" style=\"font-size:12px;font-family:微软雅黑;\"> </span><span style=\"font-size:14px;font-family:SimSun;\"><strong>关于发货</strong></span></span><br />\r\n<p style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:12px;font-family:SimSun;\">&nbsp; &nbsp;&nbsp;凡在官网订购产品的用户，我们将通过中国邮政快递EMS和顺丰快递全国送货上门，大约是2-4日左右送达，偏远乡镇的送达时</span> \r\n</p>\r\n<p style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:12px;font-family:SimSun;\">间约为5-7日，为保证您在第一时间收到您给孩子订购的产品，提交订单后，请保持您的电话通畅。你有任何疑问也可以直接拨打</span> \r\n</p>\r\n<p style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:12px;font-family:SimSun;\">咨询电话：400-6666-146。</span> \r\n</p>\r\n<span style=\"font-size:12px;font-family:微软雅黑;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;font-family:微软雅黑;\"><strong>2.</strong></span><span class=\"Apple-tab-span\" style=\"font-size:12px;font-family:微软雅黑;\"> </span><span style=\"font-size:14px;font-family:微软雅黑;\"><strong>关于签收验货</strong></span></span><br />\r\n<span style=\"font-size:12px;font-family:SimSun;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">亲，快递在送货前会电话联系您，签收时请注意：</span><br />\r\n<span style=\"font-size:12px;font-family:SimSun;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">A 外包装如有破损，请当场开箱验货，如有问题请联系客服；</span><br />\r\n<span style=\"font-size:12px;font-family:SimSun;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">B外包装完好请先签收并开箱验货，开箱后请核对产品型号、数量、附件及外观，如有问题请及时联系我们的售后客服。</span><br />\r\n<span style=\"font-size:12px;font-family:SimSun;color:#000000;font-style:normal;font-weight:normal;line-height:normal;background-color:#FFFFFF;\">C 如若产品有质量问题，按国家三包法负责，亲可放心购买！</span>', '20141029121854106.jpg,20141029121854376.jpg');
INSERT INTO `yby_product` VALUES ('4', 'NO12', '鸭嘴灯', '500', '56', '330', '', '鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯', '鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯鸭嘴灯', '<div id=\"product_service\">\r\n	<span style=\"font-family:微软雅黑;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;font-family:SimSun;\"><strong>1.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"font-size:14px;font-family:SimSun;\"><strong>关于发货</strong></span></span><br />\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">&nbsp; &nbsp;&nbsp;凡在官网订购产品的用户，我们将通过中国邮政快递EMS和顺丰快递全国送货上门，大约是2-4日左右送达，偏远乡镇的送达时</span> \r\n	</p>\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">间约为5-7日，为保证您在第一时间收到您给孩子订购的产品，提交订单后，请保持您的电话通畅。你有任何疑问也可以直接拨打</span> \r\n	</p>\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">咨询电话：400-6666-146。</span> \r\n	</p>\r\n<span style=\"font-family:微软雅黑;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;\"><strong>2.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"font-size:14px;\"><strong>关于签收验货</strong></span></span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">亲，快递在送货前会电话联系您，签收时请注意：</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">A 外包装如有破损，请当场开箱验货，如有问题请联系客服；</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">B外包装完好请先签收并开箱验货，开箱后请核对产品型号、数量、附件及外观，如有问题请及时联系我们的售后客服。</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">C 如若产品有质量问题，按国家三包法负责，亲可放心购买！</span>\r\n</div>', '20141031161850575.jpg,20141031161850796.jpg,20141031161850171.jpg,20141031161850705.jpg,20141031161850058.jpg,20141031161850411.jpg');
INSERT INTO `yby_product` VALUES ('5', 'SU-001A', '眼保仪SU-001A', '800', '45', '1590', '白色', '<img src=\"/yby/Public/upload/image/20141031/20141031172823_66118.jpg\" alt=\"\" />', '<span style=\"line-height:1.5;font-family:SimSun;\">商品名称：SU-001A型眼保仪 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;商品毛重：2500g</span><span style=\"font-family:SimSun;\"><br />\r\n</span><span style=\"font-family:SimSun;\">商品产地：中国大陆 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;环境温度范围：＋10℃～＋40℃</span><br />\r\n<span style=\"font-family:SimSun;\">相对湿度范围： 30%～70% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;大气压力范围： 700 hPa ～1060 hPa</span><br />\r\n<span style=\"font-family:SimSun;\">电源：交流220V、50Hz &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;输入功率：10VA</span><br />\r\n<span style=\"font-family:SimSun;\">熔断器参数：F 250V 1A &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;适用范围：6-17岁青少年</span>', '<span><span style=\"color:#000000;font-family:SimSun;font-size:14px;\"><strong>1.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"color:#000000;font-family:SimSun;font-size:14px;\"><strong>关于发货</strong></span></span><br />\r\n<p>\r\n	<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">&nbsp; &nbsp;&nbsp;凡在官网订购产品的用户，我们将通过中国邮政快递EMS和顺丰快递全国送货上门，大约是2-4日左右送达，偏远乡镇的送达时</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">间约为5-7日，为保证您在第一时间收到您给孩子订购的产品，提交订单后，请保持您的电话通畅。你有任何疑问也可以直接拨打</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">咨询电话：400-6666-146。</span> \r\n</p>\r\n<span><span style=\"color:#000000;font-size:14px;\"><strong>2.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"color:#000000;font-size:14px;\"><strong>关于签收验货</strong></span></span><br />\r\n<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">亲，快递在送货前会电话联系您，签收时请注意：</span><br />\r\n<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">A 外包装如有破损，请当场开箱验货，如有问题请联系客服；</span><br />\r\n<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">B外包装完好请先签收并开箱验货，开箱后请核对产品型号、数量、附件及外观，如有问题请及时联系我们的售后客服。</span><br />\r\n<span style=\"color:#000000;font-family:SimSun;font-size:12px;\">C 如若产品有质量问题，按国家三包法负责，亲可放心购买！</span>', '20141031172826086.jpg,20141031172826128.jpg,20141031172826758.jpg,20141031172826110.jpg');
INSERT INTO `yby_product` VALUES ('6', 'SU-002', '眼保仪SU-002', '1000', '15', '2980', '蓝色', '<img src=\"/yby/Public/upload/image/20141031/20141031173747_97085.jpg\" alt=\"\" />', '<span style=\"font-family:SimSun;\"><span>商品名称：SU-002智能型眼保仪</span><br />\r\n<span>商品编号：</span><br />\r\n<span>商品毛重：3000g</span><br />\r\n<span>商品产地：中国大陆</span><br />\r\n<span>环境温度范围：＋10℃～＋40℃</span><br />\r\n<span>相对湿度范围： 30%～70%</span><br />\r\n</span> \r\n<p>\r\n	<span style=\"font-family:SimSun;\"><span>大气压力范围： 700 hPa ～1060 hPa</span></span> \r\n</p>\r\n<span style=\"font-family:SimSun;\"><span><span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">适用范围：6-17岁青少年</span><br />\r\n</span></span>', '<div id=\"product_service\">\r\n	<span style=\"font-family:微软雅黑;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;font-family:SimSun;\"><strong>1.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"font-size:14px;font-family:SimSun;\"><strong>关于发货</strong></span></span><br />\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">&nbsp; &nbsp;&nbsp;凡在官网订购产品的用户，我们将通过中国邮政快递EMS和顺丰快递全国送货上门，大约是2-4日左右送达，偏远乡镇的送达时</span> \r\n	</p>\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">间约为5-7日，为保证您在第一时间收到您给孩子订购的产品，提交订单后，请保持您的电话通畅。你有任何疑问也可以直接拨打</span> \r\n	</p>\r\n	<p style=\"font-family:微软雅黑;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:SimSun;\">咨询电话：400-6666-146。</span> \r\n	</p>\r\n<span style=\"font-family:微软雅黑;line-height:normal;background-color:#FFFFFF;\"><span style=\"font-size:14px;\"><strong>2.</strong></span><span class=\"Apple-tab-span\"> </span><span style=\"font-size:14px;\"><strong>关于签收验货</strong></span></span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">亲，快递在送货前会电话联系您，签收时请注意：</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">A 外包装如有破损，请当场开箱验货，如有问题请联系客服；</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">B外包装完好请先签收并开箱验货，开箱后请核对产品型号、数量、附件及外观，如有问题请及时联系我们的售后客服。</span><br />\r\n<span style=\"font-family:SimSun;line-height:normal;background-color:#FFFFFF;\">C 如若产品有质量问题，按国家三包法负责，亲可放心购买！</span>\r\n</div>', '20141031173749321.jpg,20141031173749930.jpg,20141031173749605.jpg,20141031173749320.jpg');
INSERT INTO `yby_product` VALUES ('7', 'a', 'a', '0', '0', '0', 'a', 'a', 'a', 'a', '20141105001428268.jpg');
INSERT INTO `yby_product` VALUES ('8', 'ab', 'ab', '0', '0', '1', '1', '1', '1', '1', '20141105001446563.jpg');

-- ----------------------------
-- Table structure for `yby_product_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yby_product_comment`;
CREATE TABLE `yby_product_comment` (
  `product_comment_id` int(11) NOT NULL COMMENT '产品评价表id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `star` tinyint(4) NOT NULL COMMENT '评几颗星',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `date` int(11) NOT NULL COMMENT '评论日期',
  `content` varchar(250) NOT NULL COMMENT '评论内容',
  `idea` tinyint(4) NOT NULL COMMENT '满意度(1好评2中评3差评)',
  PRIMARY KEY (`product_comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品评价表';

-- ----------------------------
-- Records of yby_product_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_province`
-- ----------------------------
DROP TABLE IF EXISTS `yby_province`;
CREATE TABLE `yby_province` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_province
-- ----------------------------
INSERT INTO `yby_province` VALUES ('34', '台湾');
INSERT INTO `yby_province` VALUES ('33', '澳门\r');
INSERT INTO `yby_province` VALUES ('32', '香港\r');
INSERT INTO `yby_province` VALUES ('31', '福建\r');
INSERT INTO `yby_province` VALUES ('30', '浙江\r');
INSERT INTO `yby_province` VALUES ('29', '安徽\r');
INSERT INTO `yby_province` VALUES ('28', '新疆\r');
INSERT INTO `yby_province` VALUES ('27', '西藏\r');
INSERT INTO `yby_province` VALUES ('26', '青海\r');
INSERT INTO `yby_province` VALUES ('25', '甘肃\r');
INSERT INTO `yby_province` VALUES ('24', '宁夏\r');
INSERT INTO `yby_province` VALUES ('23', '内蒙古\r');
INSERT INTO `yby_province` VALUES ('22', '四川');
INSERT INTO `yby_province` VALUES ('21', '贵州\r');
INSERT INTO `yby_province` VALUES ('20', '云南\r');
INSERT INTO `yby_province` VALUES ('19', '广西\r');
INSERT INTO `yby_province` VALUES ('18', '广东\r');
INSERT INTO `yby_province` VALUES ('17', '江西\r');
INSERT INTO `yby_province` VALUES ('16', '江苏\r');
INSERT INTO `yby_province` VALUES ('15', '海南\r');
INSERT INTO `yby_province` VALUES ('14', '湖南\r');
INSERT INTO `yby_province` VALUES ('13', '湖北\r');
INSERT INTO `yby_province` VALUES ('12', '河南\r');
INSERT INTO `yby_province` VALUES ('11', '河北\r');
INSERT INTO `yby_province` VALUES ('10', '陕西');
INSERT INTO `yby_province` VALUES ('9', '山西\r');
INSERT INTO `yby_province` VALUES ('8', '山东\r');
INSERT INTO `yby_province` VALUES ('7', '辽宁\r');
INSERT INTO `yby_province` VALUES ('6', '吉林\r');
INSERT INTO `yby_province` VALUES ('5', '黑龙江\r');
INSERT INTO `yby_province` VALUES ('4', '重庆\r');
INSERT INTO `yby_province` VALUES ('3', '天津\r');
INSERT INTO `yby_province` VALUES ('2', '上海\r');
INSERT INTO `yby_province` VALUES ('1', '北京\r');

-- ----------------------------
-- Table structure for `yby_store`
-- ----------------------------
DROP TABLE IF EXISTS `yby_store`;
CREATE TABLE `yby_store` (
  `store_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_detail` text NOT NULL COMMENT '店铺详情',
  `notice` text NOT NULL,
  `meet_number` int(11) NOT NULL DEFAULT '0' COMMENT '预约人数',
  `comment_number` int(11) NOT NULL DEFAULT '0' COMMENT '评价条数',
  `phone` varchar(11) NOT NULL,
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `address` varchar(250) NOT NULL,
  `province_id` smallint(6) NOT NULL,
  `city_id` smallint(6) NOT NULL,
  `town_id` smallint(6) NOT NULL,
  `province_name` varchar(20) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  `town_name` varchar(20) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='店铺表';

-- ----------------------------
-- Records of yby_store
-- ----------------------------
INSERT INTO `yby_store` VALUES ('12', '这是一个眼保仪分店', '请携带好身份证等相关证件到店铺预约', '100', '67', '13258479856', '宝鸡扶风店', '宝鸡市扶风县东二路仁和家园楼下欧欧眼保中心', '10', '162', '574', '陕西', '宝鸡市', '扶风县');
INSERT INTO `yby_store` VALUES ('17', '这是昆明市西山区一个分店', '请携带好相关证件到相应店铺', '0', '0', '18728472676', '昆明西山店', '昆明市西山区前福路198号7-7商铺广福小区', '20', '307', '1676', '云南\r', '昆明市', '西山区');
INSERT INTO `yby_store` VALUES ('18', '这里是大连市旅顺口区惠民街30号欧欧视力训练仪', '请携带好相关证件到相应大连旅顺店', '0', '0', '13524678945', '大连旅顺店', '大连市旅顺口区惠民街30号欧欧视力训练仪', '7', '119', '210', '辽宁\r', '大连市', '旅顺口区');
INSERT INTO `yby_store` VALUES ('15', '这是眼保仪成都武侯一个分店', '请携带好相关证件到店铺中心', '0', '0', '13694879652', '成都武侯店', '成都市武侯区磨子桥3号', '22', '332', '1893', '四川', '成都市', '武侯区');
INSERT INTO `yby_store` VALUES ('16', '这是成都青羊区一个分店', '请携带好相关证件到相应店铺', '0', '0', '13852845679', '成都青羊店', '成都市青羊区103号', '22', '332', '1891', '四川', '成都市', '青羊区');
INSERT INTO `yby_store` VALUES ('11', '店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店店铺位于杭州市萧山区山水苑一楼,是眼保仪一个分店', '请携带好相关证件到相应店铺请携带好相关证件到相应店铺请携带好相关证件到相应店铺请携带好相关证件到相应店铺请携带好相关证件到相应店铺请携带好相关证件到相应店铺请携带好相关证件到相应店铺', '0', '0', '13689785247', '杭州萧山店', '杭州市萧山区山水苑一楼', '30', '434', '2603', '浙江\r', '杭州市', '拱墅区');
INSERT INTO `yby_store` VALUES ('19', '这是连锁店之一,石家庄新华店.', '请携带好相关证件到石家庄新华店进行体验.', '0', '0', '13254879658', '石家庄新华店', '石家庄市新华区联盟路联强小区22号楼眼保中心', '11', '170', '662', '河北\r', '石家庄市', '新华区');

-- ----------------------------
-- Table structure for `yby_store_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yby_store_comment`;
CREATE TABLE `yby_store_comment` (
  `store_comment_id` int(11) NOT NULL COMMENT '自增id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_id` int(11) NOT NULL COMMENT '店铺id',
  `detail` text NOT NULL COMMENT '店铺评价内容',
  `date` varchar(20) NOT NULL COMMENT '评价日期',
  PRIMARY KEY (`store_comment_id`),
  KEY `comment_id` (`store_comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='店铺评价表';

-- ----------------------------
-- Records of yby_store_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yby_town`
-- ----------------------------
DROP TABLE IF EXISTS `yby_town`;
CREATE TABLE `yby_town` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2775 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yby_town
-- ----------------------------
INSERT INTO `yby_town` VALUES ('1', '道里区', '96');
INSERT INTO `yby_town` VALUES ('2', '南岗区', '96');
INSERT INTO `yby_town` VALUES ('3', '道外区', '96');
INSERT INTO `yby_town` VALUES ('4', '平房区', '96');
INSERT INTO `yby_town` VALUES ('5', '松北区', '96');
INSERT INTO `yby_town` VALUES ('6', '香坊区', '96');
INSERT INTO `yby_town` VALUES ('7', '呼兰区', '96');
INSERT INTO `yby_town` VALUES ('8', '阿城区', '96');
INSERT INTO `yby_town` VALUES ('9', '依兰县', '96');
INSERT INTO `yby_town` VALUES ('10', '方正县', '96');
INSERT INTO `yby_town` VALUES ('11', '宾县', '96');
INSERT INTO `yby_town` VALUES ('12', '巴彦县', '96');
INSERT INTO `yby_town` VALUES ('13', '木兰县', '96');
INSERT INTO `yby_town` VALUES ('14', '通河县', '96');
INSERT INTO `yby_town` VALUES ('15', '延寿县', '96');
INSERT INTO `yby_town` VALUES ('16', '双城市', '96');
INSERT INTO `yby_town` VALUES ('17', '尚志市', '96');
INSERT INTO `yby_town` VALUES ('18', '五常市', '96');
INSERT INTO `yby_town` VALUES ('19', '龙沙区', '97');
INSERT INTO `yby_town` VALUES ('20', '建华区', '97');
INSERT INTO `yby_town` VALUES ('21', '铁锋区', '97');
INSERT INTO `yby_town` VALUES ('22', '昂昂溪区', '97');
INSERT INTO `yby_town` VALUES ('23', '富拉尔基区', '97');
INSERT INTO `yby_town` VALUES ('24', '碾子山区', '97');
INSERT INTO `yby_town` VALUES ('25', '梅里斯达斡尔族区', '97');
INSERT INTO `yby_town` VALUES ('26', '龙江县', '97');
INSERT INTO `yby_town` VALUES ('27', '依安县', '97');
INSERT INTO `yby_town` VALUES ('28', '泰来县', '97');
INSERT INTO `yby_town` VALUES ('29', '甘南县', '97');
INSERT INTO `yby_town` VALUES ('30', '富裕县', '97');
INSERT INTO `yby_town` VALUES ('31', '克山县', '97');
INSERT INTO `yby_town` VALUES ('32', '克东县', '97');
INSERT INTO `yby_town` VALUES ('33', '拜泉县', '97');
INSERT INTO `yby_town` VALUES ('34', '讷河市', '97');
INSERT INTO `yby_town` VALUES ('35', '鸡冠区', '98');
INSERT INTO `yby_town` VALUES ('36', '恒山区', '98');
INSERT INTO `yby_town` VALUES ('37', '滴道区', '98');
INSERT INTO `yby_town` VALUES ('38', '梨树区', '98');
INSERT INTO `yby_town` VALUES ('39', '城子河区', '98');
INSERT INTO `yby_town` VALUES ('40', '麻山区', '98');
INSERT INTO `yby_town` VALUES ('41', '鸡东县', '98');
INSERT INTO `yby_town` VALUES ('42', '虎林市', '98');
INSERT INTO `yby_town` VALUES ('43', '密山市', '98');
INSERT INTO `yby_town` VALUES ('44', '向阳区', '99');
INSERT INTO `yby_town` VALUES ('45', '工农区', '99');
INSERT INTO `yby_town` VALUES ('46', '南山区', '99');
INSERT INTO `yby_town` VALUES ('47', '兴安区', '99');
INSERT INTO `yby_town` VALUES ('48', '东山区', '99');
INSERT INTO `yby_town` VALUES ('49', '兴山区', '99');
INSERT INTO `yby_town` VALUES ('50', '萝北县', '99');
INSERT INTO `yby_town` VALUES ('51', '绥滨县', '99');
INSERT INTO `yby_town` VALUES ('52', '尖山区', '100');
INSERT INTO `yby_town` VALUES ('53', '岭东区', '100');
INSERT INTO `yby_town` VALUES ('54', '四方台区', '100');
INSERT INTO `yby_town` VALUES ('55', '宝山区', '100');
INSERT INTO `yby_town` VALUES ('56', '集贤县', '100');
INSERT INTO `yby_town` VALUES ('57', '友谊县', '100');
INSERT INTO `yby_town` VALUES ('58', '宝清县', '100');
INSERT INTO `yby_town` VALUES ('59', '饶河县', '100');
INSERT INTO `yby_town` VALUES ('60', '萨尔图区', '101');
INSERT INTO `yby_town` VALUES ('61', '龙凤区', '101');
INSERT INTO `yby_town` VALUES ('62', '让胡路区', '101');
INSERT INTO `yby_town` VALUES ('63', '红岗区', '101');
INSERT INTO `yby_town` VALUES ('64', '大同区', '101');
INSERT INTO `yby_town` VALUES ('65', '肇州县', '101');
INSERT INTO `yby_town` VALUES ('66', '肇源县', '101');
INSERT INTO `yby_town` VALUES ('67', '林甸县', '101');
INSERT INTO `yby_town` VALUES ('68', '杜尔伯特蒙古族自治县', '101');
INSERT INTO `yby_town` VALUES ('69', '伊春区', '102');
INSERT INTO `yby_town` VALUES ('70', '南岔区', '102');
INSERT INTO `yby_town` VALUES ('71', '友好区', '102');
INSERT INTO `yby_town` VALUES ('72', '西林区', '102');
INSERT INTO `yby_town` VALUES ('73', '翠峦区', '102');
INSERT INTO `yby_town` VALUES ('74', '新青区', '102');
INSERT INTO `yby_town` VALUES ('75', '美溪区', '102');
INSERT INTO `yby_town` VALUES ('76', '金山屯区', '102');
INSERT INTO `yby_town` VALUES ('77', '五营区', '102');
INSERT INTO `yby_town` VALUES ('78', '乌马河区', '102');
INSERT INTO `yby_town` VALUES ('79', '汤旺河区', '102');
INSERT INTO `yby_town` VALUES ('80', '带岭区', '102');
INSERT INTO `yby_town` VALUES ('81', '乌伊岭区', '102');
INSERT INTO `yby_town` VALUES ('82', '红星区', '102');
INSERT INTO `yby_town` VALUES ('83', '上甘岭区', '102');
INSERT INTO `yby_town` VALUES ('84', '嘉荫县', '102');
INSERT INTO `yby_town` VALUES ('85', '铁力市', '102');
INSERT INTO `yby_town` VALUES ('86', '向阳区', '103');
INSERT INTO `yby_town` VALUES ('87', '前进区', '103');
INSERT INTO `yby_town` VALUES ('88', '东风区', '103');
INSERT INTO `yby_town` VALUES ('89', '郊区', '103');
INSERT INTO `yby_town` VALUES ('90', '桦南县', '103');
INSERT INTO `yby_town` VALUES ('91', '桦川县', '103');
INSERT INTO `yby_town` VALUES ('92', '汤原县', '103');
INSERT INTO `yby_town` VALUES ('93', '抚远县', '103');
INSERT INTO `yby_town` VALUES ('94', '同江市', '103');
INSERT INTO `yby_town` VALUES ('95', '富锦市', '103');
INSERT INTO `yby_town` VALUES ('96', '新兴区', '104');
INSERT INTO `yby_town` VALUES ('97', '桃山区', '104');
INSERT INTO `yby_town` VALUES ('98', '茄子河区', '104');
INSERT INTO `yby_town` VALUES ('99', '勃利县', '104');
INSERT INTO `yby_town` VALUES ('100', '东安区', '105');
INSERT INTO `yby_town` VALUES ('101', '阳明区', '105');
INSERT INTO `yby_town` VALUES ('102', '爱民区', '105');
INSERT INTO `yby_town` VALUES ('103', '西安区', '105');
INSERT INTO `yby_town` VALUES ('104', '东宁县', '105');
INSERT INTO `yby_town` VALUES ('105', '林口县', '105');
INSERT INTO `yby_town` VALUES ('106', '绥芬河市', '105');
INSERT INTO `yby_town` VALUES ('107', '海林市', '105');
INSERT INTO `yby_town` VALUES ('108', '宁安市', '105');
INSERT INTO `yby_town` VALUES ('109', '穆棱市', '105');
INSERT INTO `yby_town` VALUES ('110', '爱辉区', '106');
INSERT INTO `yby_town` VALUES ('111', '嫩江县', '106');
INSERT INTO `yby_town` VALUES ('112', '逊克县', '106');
INSERT INTO `yby_town` VALUES ('113', '孙吴县', '106');
INSERT INTO `yby_town` VALUES ('114', '北安市', '106');
INSERT INTO `yby_town` VALUES ('115', '五大连池市', '106');
INSERT INTO `yby_town` VALUES ('116', '北林区', '107');
INSERT INTO `yby_town` VALUES ('117', '望奎县', '107');
INSERT INTO `yby_town` VALUES ('118', '兰西县', '107');
INSERT INTO `yby_town` VALUES ('119', '青冈县', '107');
INSERT INTO `yby_town` VALUES ('120', '庆安县', '107');
INSERT INTO `yby_town` VALUES ('121', '明水县', '107');
INSERT INTO `yby_town` VALUES ('122', '绥棱县', '107');
INSERT INTO `yby_town` VALUES ('123', '安达市', '107');
INSERT INTO `yby_town` VALUES ('124', '肇东市', '107');
INSERT INTO `yby_town` VALUES ('125', '海伦市', '107');
INSERT INTO `yby_town` VALUES ('126', '加格达奇区', '108');
INSERT INTO `yby_town` VALUES ('127', '松岭区', '108');
INSERT INTO `yby_town` VALUES ('128', '新林区', '108');
INSERT INTO `yby_town` VALUES ('129', '呼中区', '108');
INSERT INTO `yby_town` VALUES ('130', '呼玛县', '108');
INSERT INTO `yby_town` VALUES ('131', '塔河县', '108');
INSERT INTO `yby_town` VALUES ('132', '漠河县', '108');
INSERT INTO `yby_town` VALUES ('133', '南关区', '109');
INSERT INTO `yby_town` VALUES ('134', '宽城区', '109');
INSERT INTO `yby_town` VALUES ('135', '朝阳区', '109');
INSERT INTO `yby_town` VALUES ('136', '二道区', '109');
INSERT INTO `yby_town` VALUES ('137', '绿园区', '109');
INSERT INTO `yby_town` VALUES ('138', '双阳区', '109');
INSERT INTO `yby_town` VALUES ('139', '农安县', '109');
INSERT INTO `yby_town` VALUES ('140', '九台市', '109');
INSERT INTO `yby_town` VALUES ('141', '榆树市', '109');
INSERT INTO `yby_town` VALUES ('142', '德惠市', '109');
INSERT INTO `yby_town` VALUES ('143', '昌邑区', '110');
INSERT INTO `yby_town` VALUES ('144', '龙潭区', '110');
INSERT INTO `yby_town` VALUES ('145', '船营区', '110');
INSERT INTO `yby_town` VALUES ('146', '丰满区', '110');
INSERT INTO `yby_town` VALUES ('147', '永吉县', '110');
INSERT INTO `yby_town` VALUES ('148', '蛟河市', '110');
INSERT INTO `yby_town` VALUES ('149', '桦甸市', '110');
INSERT INTO `yby_town` VALUES ('150', '舒兰市', '110');
INSERT INTO `yby_town` VALUES ('151', '磐石市', '110');
INSERT INTO `yby_town` VALUES ('152', '铁西区', '111');
INSERT INTO `yby_town` VALUES ('153', '铁东区', '111');
INSERT INTO `yby_town` VALUES ('154', '梨树县', '111');
INSERT INTO `yby_town` VALUES ('155', '伊通满族自治县', '111');
INSERT INTO `yby_town` VALUES ('156', '公主岭市', '111');
INSERT INTO `yby_town` VALUES ('157', '双辽市', '111');
INSERT INTO `yby_town` VALUES ('158', '龙山区', '112');
INSERT INTO `yby_town` VALUES ('159', '西安区', '112');
INSERT INTO `yby_town` VALUES ('160', '东丰县', '112');
INSERT INTO `yby_town` VALUES ('161', '东辽县', '112');
INSERT INTO `yby_town` VALUES ('162', '东昌区', '113');
INSERT INTO `yby_town` VALUES ('163', '二道江区', '113');
INSERT INTO `yby_town` VALUES ('164', '通化县', '113');
INSERT INTO `yby_town` VALUES ('165', '辉南县', '113');
INSERT INTO `yby_town` VALUES ('166', '柳河县', '113');
INSERT INTO `yby_town` VALUES ('167', '梅河口市', '113');
INSERT INTO `yby_town` VALUES ('168', '集安市', '113');
INSERT INTO `yby_town` VALUES ('169', '八道江区', '114');
INSERT INTO `yby_town` VALUES ('170', '江源区', '114');
INSERT INTO `yby_town` VALUES ('171', '抚松县', '114');
INSERT INTO `yby_town` VALUES ('172', '靖宇县', '114');
INSERT INTO `yby_town` VALUES ('173', '长白朝鲜族自治县', '114');
INSERT INTO `yby_town` VALUES ('174', '临江市', '114');
INSERT INTO `yby_town` VALUES ('175', '宁江区', '115');
INSERT INTO `yby_town` VALUES ('176', '前郭尔罗斯蒙古族自治县', '115');
INSERT INTO `yby_town` VALUES ('177', '长岭县', '115');
INSERT INTO `yby_town` VALUES ('178', '乾安县', '115');
INSERT INTO `yby_town` VALUES ('179', '扶余县', '115');
INSERT INTO `yby_town` VALUES ('180', '洮北区', '116');
INSERT INTO `yby_town` VALUES ('181', '镇赉县', '116');
INSERT INTO `yby_town` VALUES ('182', '通榆县', '116');
INSERT INTO `yby_town` VALUES ('183', '洮南市', '116');
INSERT INTO `yby_town` VALUES ('184', '大安市', '116');
INSERT INTO `yby_town` VALUES ('185', '延吉市', '117');
INSERT INTO `yby_town` VALUES ('186', '图们市', '117');
INSERT INTO `yby_town` VALUES ('187', '敦化市', '117');
INSERT INTO `yby_town` VALUES ('188', '珲春市', '117');
INSERT INTO `yby_town` VALUES ('189', '龙井市', '117');
INSERT INTO `yby_town` VALUES ('190', '和龙市', '117');
INSERT INTO `yby_town` VALUES ('191', '汪清县', '117');
INSERT INTO `yby_town` VALUES ('192', '安图县', '117');
INSERT INTO `yby_town` VALUES ('193', '和平区', '118');
INSERT INTO `yby_town` VALUES ('194', '沈河区', '118');
INSERT INTO `yby_town` VALUES ('195', '大东区', '118');
INSERT INTO `yby_town` VALUES ('196', '皇姑区', '118');
INSERT INTO `yby_town` VALUES ('197', '铁西区', '118');
INSERT INTO `yby_town` VALUES ('198', '苏家屯区', '118');
INSERT INTO `yby_town` VALUES ('199', '东陵区', '118');
INSERT INTO `yby_town` VALUES ('200', '新城子区', '118');
INSERT INTO `yby_town` VALUES ('201', '于洪区', '118');
INSERT INTO `yby_town` VALUES ('202', '辽中县', '118');
INSERT INTO `yby_town` VALUES ('203', '康平县', '118');
INSERT INTO `yby_town` VALUES ('204', '法库县', '118');
INSERT INTO `yby_town` VALUES ('205', '新民市', '118');
INSERT INTO `yby_town` VALUES ('206', '中山区', '119');
INSERT INTO `yby_town` VALUES ('207', '西岗区', '119');
INSERT INTO `yby_town` VALUES ('208', '沙河口区', '119');
INSERT INTO `yby_town` VALUES ('209', '甘井子区', '119');
INSERT INTO `yby_town` VALUES ('210', '旅顺口区', '119');
INSERT INTO `yby_town` VALUES ('211', '金州区', '119');
INSERT INTO `yby_town` VALUES ('212', '长海县', '119');
INSERT INTO `yby_town` VALUES ('213', '瓦房店市', '119');
INSERT INTO `yby_town` VALUES ('214', '普兰店市', '119');
INSERT INTO `yby_town` VALUES ('215', '庄河市', '119');
INSERT INTO `yby_town` VALUES ('216', '铁东区', '120');
INSERT INTO `yby_town` VALUES ('217', '铁西区', '120');
INSERT INTO `yby_town` VALUES ('218', '立山区', '120');
INSERT INTO `yby_town` VALUES ('219', '千山区', '120');
INSERT INTO `yby_town` VALUES ('220', '台安县', '120');
INSERT INTO `yby_town` VALUES ('221', '岫岩满族自治县', '120');
INSERT INTO `yby_town` VALUES ('222', '海城市', '120');
INSERT INTO `yby_town` VALUES ('223', '新抚区', '121');
INSERT INTO `yby_town` VALUES ('224', '东洲区', '121');
INSERT INTO `yby_town` VALUES ('225', '望花区', '121');
INSERT INTO `yby_town` VALUES ('226', '顺城区', '121');
INSERT INTO `yby_town` VALUES ('227', '抚顺县', '121');
INSERT INTO `yby_town` VALUES ('228', '新宾满族自治县', '121');
INSERT INTO `yby_town` VALUES ('229', '清原满族自治县', '121');
INSERT INTO `yby_town` VALUES ('230', '平山区', '122');
INSERT INTO `yby_town` VALUES ('231', '溪湖区', '122');
INSERT INTO `yby_town` VALUES ('232', '明山区', '122');
INSERT INTO `yby_town` VALUES ('233', '南芬区', '122');
INSERT INTO `yby_town` VALUES ('234', '本溪满族自治县', '122');
INSERT INTO `yby_town` VALUES ('235', '桓仁满族自治县', '122');
INSERT INTO `yby_town` VALUES ('236', '元宝区', '123');
INSERT INTO `yby_town` VALUES ('237', '振兴区', '123');
INSERT INTO `yby_town` VALUES ('238', '振安区', '123');
INSERT INTO `yby_town` VALUES ('239', '宽甸满族自治县', '123');
INSERT INTO `yby_town` VALUES ('240', '东港市', '123');
INSERT INTO `yby_town` VALUES ('241', '凤城市', '123');
INSERT INTO `yby_town` VALUES ('242', '古塔区', '124');
INSERT INTO `yby_town` VALUES ('243', '凌河区', '124');
INSERT INTO `yby_town` VALUES ('244', '太和区', '124');
INSERT INTO `yby_town` VALUES ('245', '黑山县', '124');
INSERT INTO `yby_town` VALUES ('246', '义县', '124');
INSERT INTO `yby_town` VALUES ('247', '凌海市', '124');
INSERT INTO `yby_town` VALUES ('248', '北宁市', '124');
INSERT INTO `yby_town` VALUES ('249', '站前区', '125');
INSERT INTO `yby_town` VALUES ('250', '西市区', '125');
INSERT INTO `yby_town` VALUES ('251', '鲅鱼圈区', '125');
INSERT INTO `yby_town` VALUES ('252', '老边区', '125');
INSERT INTO `yby_town` VALUES ('253', '盖州市', '125');
INSERT INTO `yby_town` VALUES ('254', '大石桥市', '125');
INSERT INTO `yby_town` VALUES ('255', '海州区', '126');
INSERT INTO `yby_town` VALUES ('256', '新邱区', '126');
INSERT INTO `yby_town` VALUES ('257', '太平区', '126');
INSERT INTO `yby_town` VALUES ('258', '清河门区', '126');
INSERT INTO `yby_town` VALUES ('259', '细河区', '126');
INSERT INTO `yby_town` VALUES ('260', '阜新蒙古族自治县', '126');
INSERT INTO `yby_town` VALUES ('261', '彰武县', '126');
INSERT INTO `yby_town` VALUES ('262', '白塔区', '127');
INSERT INTO `yby_town` VALUES ('263', '文圣区', '127');
INSERT INTO `yby_town` VALUES ('264', '宏伟区', '127');
INSERT INTO `yby_town` VALUES ('265', '弓长岭区', '127');
INSERT INTO `yby_town` VALUES ('266', '太子河区', '127');
INSERT INTO `yby_town` VALUES ('267', '辽阳县', '127');
INSERT INTO `yby_town` VALUES ('268', '灯塔市', '127');
INSERT INTO `yby_town` VALUES ('269', '双台子区', '128');
INSERT INTO `yby_town` VALUES ('270', '兴隆台区', '128');
INSERT INTO `yby_town` VALUES ('271', '大洼县', '128');
INSERT INTO `yby_town` VALUES ('272', '盘山县', '128');
INSERT INTO `yby_town` VALUES ('273', '银州区', '129');
INSERT INTO `yby_town` VALUES ('274', '清河区', '129');
INSERT INTO `yby_town` VALUES ('275', '铁岭县', '129');
INSERT INTO `yby_town` VALUES ('276', '西丰县', '129');
INSERT INTO `yby_town` VALUES ('277', '昌图县', '129');
INSERT INTO `yby_town` VALUES ('278', '调兵山市', '129');
INSERT INTO `yby_town` VALUES ('279', '开原市', '129');
INSERT INTO `yby_town` VALUES ('280', '双塔区', '130');
INSERT INTO `yby_town` VALUES ('281', '龙城区', '130');
INSERT INTO `yby_town` VALUES ('282', '朝阳县', '130');
INSERT INTO `yby_town` VALUES ('283', '建平县', '130');
INSERT INTO `yby_town` VALUES ('284', '喀喇沁左翼蒙古族自治县', '130');
INSERT INTO `yby_town` VALUES ('285', '北票市', '130');
INSERT INTO `yby_town` VALUES ('286', '凌源市', '130');
INSERT INTO `yby_town` VALUES ('287', '连山区', '131');
INSERT INTO `yby_town` VALUES ('288', '龙港区', '131');
INSERT INTO `yby_town` VALUES ('289', '南票区', '131');
INSERT INTO `yby_town` VALUES ('290', '绥中县', '131');
INSERT INTO `yby_town` VALUES ('291', '建昌县', '131');
INSERT INTO `yby_town` VALUES ('292', '兴城市', '131');
INSERT INTO `yby_town` VALUES ('293', '历下区', '132');
INSERT INTO `yby_town` VALUES ('294', '市中区', '132');
INSERT INTO `yby_town` VALUES ('295', '槐荫区', '132');
INSERT INTO `yby_town` VALUES ('296', '天桥区', '132');
INSERT INTO `yby_town` VALUES ('297', '历城区', '132');
INSERT INTO `yby_town` VALUES ('298', '长清区', '132');
INSERT INTO `yby_town` VALUES ('299', '平阴县', '132');
INSERT INTO `yby_town` VALUES ('300', '济阳县', '132');
INSERT INTO `yby_town` VALUES ('301', '商河县', '132');
INSERT INTO `yby_town` VALUES ('302', '章丘市', '132');
INSERT INTO `yby_town` VALUES ('303', '市南区', '133');
INSERT INTO `yby_town` VALUES ('304', '市北区', '133');
INSERT INTO `yby_town` VALUES ('305', '四方区', '133');
INSERT INTO `yby_town` VALUES ('306', '黄岛区', '133');
INSERT INTO `yby_town` VALUES ('307', '崂山区', '133');
INSERT INTO `yby_town` VALUES ('308', '李沧区', '133');
INSERT INTO `yby_town` VALUES ('309', '城阳区', '133');
INSERT INTO `yby_town` VALUES ('310', '胶州市', '133');
INSERT INTO `yby_town` VALUES ('311', '即墨市', '133');
INSERT INTO `yby_town` VALUES ('312', '平度市', '133');
INSERT INTO `yby_town` VALUES ('313', '胶南市', '133');
INSERT INTO `yby_town` VALUES ('314', '莱西市', '133');
INSERT INTO `yby_town` VALUES ('315', '淄川区', '134');
INSERT INTO `yby_town` VALUES ('316', '张店区', '134');
INSERT INTO `yby_town` VALUES ('317', '博山区', '134');
INSERT INTO `yby_town` VALUES ('318', '临淄区', '134');
INSERT INTO `yby_town` VALUES ('319', '周村区', '134');
INSERT INTO `yby_town` VALUES ('320', '桓台县', '134');
INSERT INTO `yby_town` VALUES ('321', '高青县', '134');
INSERT INTO `yby_town` VALUES ('322', '沂源县', '134');
INSERT INTO `yby_town` VALUES ('323', '市中区', '135');
INSERT INTO `yby_town` VALUES ('324', '薛城区', '135');
INSERT INTO `yby_town` VALUES ('325', '峄城区', '135');
INSERT INTO `yby_town` VALUES ('326', '台儿庄区', '135');
INSERT INTO `yby_town` VALUES ('327', '山亭区', '135');
INSERT INTO `yby_town` VALUES ('328', '滕州市', '135');
INSERT INTO `yby_town` VALUES ('329', '东营区', '136');
INSERT INTO `yby_town` VALUES ('330', '河口区', '136');
INSERT INTO `yby_town` VALUES ('331', '垦利县', '136');
INSERT INTO `yby_town` VALUES ('332', '利津县', '136');
INSERT INTO `yby_town` VALUES ('333', '广饶县', '136');
INSERT INTO `yby_town` VALUES ('334', '芝罘区', '137');
INSERT INTO `yby_town` VALUES ('335', '福山区', '137');
INSERT INTO `yby_town` VALUES ('336', '牟平区', '137');
INSERT INTO `yby_town` VALUES ('337', '莱山区', '137');
INSERT INTO `yby_town` VALUES ('338', '长岛县', '137');
INSERT INTO `yby_town` VALUES ('339', '龙口市', '137');
INSERT INTO `yby_town` VALUES ('340', '莱阳市', '137');
INSERT INTO `yby_town` VALUES ('341', '莱州市', '137');
INSERT INTO `yby_town` VALUES ('342', '蓬莱市', '137');
INSERT INTO `yby_town` VALUES ('343', '招远市', '137');
INSERT INTO `yby_town` VALUES ('344', '栖霞市', '137');
INSERT INTO `yby_town` VALUES ('345', '海阳市', '137');
INSERT INTO `yby_town` VALUES ('346', '潍城区', '138');
INSERT INTO `yby_town` VALUES ('347', '寒亭区', '138');
INSERT INTO `yby_town` VALUES ('348', '坊子区', '138');
INSERT INTO `yby_town` VALUES ('349', '奎文区', '138');
INSERT INTO `yby_town` VALUES ('350', '临朐县', '138');
INSERT INTO `yby_town` VALUES ('351', '昌乐县', '138');
INSERT INTO `yby_town` VALUES ('352', '青州市', '138');
INSERT INTO `yby_town` VALUES ('353', '诸城市', '138');
INSERT INTO `yby_town` VALUES ('354', '寿光市', '138');
INSERT INTO `yby_town` VALUES ('355', '安丘市', '138');
INSERT INTO `yby_town` VALUES ('356', '高密市', '138');
INSERT INTO `yby_town` VALUES ('357', '昌邑市', '138');
INSERT INTO `yby_town` VALUES ('358', '市中区', '139');
INSERT INTO `yby_town` VALUES ('359', '任城区', '139');
INSERT INTO `yby_town` VALUES ('360', '微山县', '139');
INSERT INTO `yby_town` VALUES ('361', '鱼台县', '139');
INSERT INTO `yby_town` VALUES ('362', '金乡县', '139');
INSERT INTO `yby_town` VALUES ('363', '嘉祥县', '139');
INSERT INTO `yby_town` VALUES ('364', '汶上县', '139');
INSERT INTO `yby_town` VALUES ('365', '泗水县', '139');
INSERT INTO `yby_town` VALUES ('366', '梁山县', '139');
INSERT INTO `yby_town` VALUES ('367', '曲阜市', '139');
INSERT INTO `yby_town` VALUES ('368', '兖州市', '139');
INSERT INTO `yby_town` VALUES ('369', '邹城市', '139');
INSERT INTO `yby_town` VALUES ('370', '泰山区', '140');
INSERT INTO `yby_town` VALUES ('371', '岱岳区', '140');
INSERT INTO `yby_town` VALUES ('372', '宁阳县', '140');
INSERT INTO `yby_town` VALUES ('373', '东平县', '140');
INSERT INTO `yby_town` VALUES ('374', '新泰市', '140');
INSERT INTO `yby_town` VALUES ('375', '肥城市', '140');
INSERT INTO `yby_town` VALUES ('376', '环翠区', '141');
INSERT INTO `yby_town` VALUES ('377', '文登市', '141');
INSERT INTO `yby_town` VALUES ('378', '荣成市', '141');
INSERT INTO `yby_town` VALUES ('379', '乳山市', '141');
INSERT INTO `yby_town` VALUES ('380', '东港区', '142');
INSERT INTO `yby_town` VALUES ('381', '岚山区', '142');
INSERT INTO `yby_town` VALUES ('382', '五莲县', '142');
INSERT INTO `yby_town` VALUES ('383', '莒县', '142');
INSERT INTO `yby_town` VALUES ('384', '莱城区', '143');
INSERT INTO `yby_town` VALUES ('385', '钢城区', '143');
INSERT INTO `yby_town` VALUES ('386', '兰山区', '144');
INSERT INTO `yby_town` VALUES ('387', '罗庄区', '144');
INSERT INTO `yby_town` VALUES ('388', '河东区', '144');
INSERT INTO `yby_town` VALUES ('389', '沂南县', '144');
INSERT INTO `yby_town` VALUES ('390', '郯城县', '144');
INSERT INTO `yby_town` VALUES ('391', '沂水县', '144');
INSERT INTO `yby_town` VALUES ('392', '苍山县', '144');
INSERT INTO `yby_town` VALUES ('393', '费县', '144');
INSERT INTO `yby_town` VALUES ('394', '平邑县', '144');
INSERT INTO `yby_town` VALUES ('395', '莒南县', '144');
INSERT INTO `yby_town` VALUES ('396', '蒙阴县', '144');
INSERT INTO `yby_town` VALUES ('397', '临沭县', '144');
INSERT INTO `yby_town` VALUES ('398', '德城区', '145');
INSERT INTO `yby_town` VALUES ('399', '陵县', '145');
INSERT INTO `yby_town` VALUES ('400', '宁津县', '145');
INSERT INTO `yby_town` VALUES ('401', '庆云县', '145');
INSERT INTO `yby_town` VALUES ('402', '临邑县', '145');
INSERT INTO `yby_town` VALUES ('403', '齐河县', '145');
INSERT INTO `yby_town` VALUES ('404', '平原县', '145');
INSERT INTO `yby_town` VALUES ('405', '夏津县', '145');
INSERT INTO `yby_town` VALUES ('406', '武城县', '145');
INSERT INTO `yby_town` VALUES ('407', '乐陵市', '145');
INSERT INTO `yby_town` VALUES ('408', '禹城市', '145');
INSERT INTO `yby_town` VALUES ('409', '东昌府区', '146');
INSERT INTO `yby_town` VALUES ('410', '阳谷县', '146');
INSERT INTO `yby_town` VALUES ('411', '莘县', '146');
INSERT INTO `yby_town` VALUES ('412', '茌平县', '146');
INSERT INTO `yby_town` VALUES ('413', '东阿县', '146');
INSERT INTO `yby_town` VALUES ('414', '冠县', '146');
INSERT INTO `yby_town` VALUES ('415', '高唐县', '146');
INSERT INTO `yby_town` VALUES ('416', '临清市', '146');
INSERT INTO `yby_town` VALUES ('417', '滨城区', '147');
INSERT INTO `yby_town` VALUES ('418', '惠民县', '147');
INSERT INTO `yby_town` VALUES ('419', '阳信县', '147');
INSERT INTO `yby_town` VALUES ('420', '无棣县', '147');
INSERT INTO `yby_town` VALUES ('421', '沾化县', '147');
INSERT INTO `yby_town` VALUES ('422', '博兴县', '147');
INSERT INTO `yby_town` VALUES ('423', '邹平县', '147');
INSERT INTO `yby_town` VALUES ('424', '牡丹区', '148');
INSERT INTO `yby_town` VALUES ('425', '曹县', '148');
INSERT INTO `yby_town` VALUES ('426', '单县', '148');
INSERT INTO `yby_town` VALUES ('427', '成武县', '148');
INSERT INTO `yby_town` VALUES ('428', '巨野县', '148');
INSERT INTO `yby_town` VALUES ('429', '郓城县', '148');
INSERT INTO `yby_town` VALUES ('430', '鄄城县', '148');
INSERT INTO `yby_town` VALUES ('431', '定陶县', '148');
INSERT INTO `yby_town` VALUES ('432', '东明县', '148');
INSERT INTO `yby_town` VALUES ('433', '小店区', '149');
INSERT INTO `yby_town` VALUES ('434', '迎泽区', '149');
INSERT INTO `yby_town` VALUES ('435', '杏花岭区', '149');
INSERT INTO `yby_town` VALUES ('436', '尖草坪区', '149');
INSERT INTO `yby_town` VALUES ('437', '万柏林区', '149');
INSERT INTO `yby_town` VALUES ('438', '晋源区', '149');
INSERT INTO `yby_town` VALUES ('439', '清徐县', '149');
INSERT INTO `yby_town` VALUES ('440', '阳曲县', '149');
INSERT INTO `yby_town` VALUES ('441', '娄烦县', '149');
INSERT INTO `yby_town` VALUES ('442', '古交市', '149');
INSERT INTO `yby_town` VALUES ('443', '城区', '150');
INSERT INTO `yby_town` VALUES ('444', '矿区', '150');
INSERT INTO `yby_town` VALUES ('445', '南郊区', '150');
INSERT INTO `yby_town` VALUES ('446', '新荣区', '150');
INSERT INTO `yby_town` VALUES ('447', '阳高县', '150');
INSERT INTO `yby_town` VALUES ('448', '天镇县', '150');
INSERT INTO `yby_town` VALUES ('449', '广灵县', '150');
INSERT INTO `yby_town` VALUES ('450', '灵丘县', '150');
INSERT INTO `yby_town` VALUES ('451', '浑源县', '150');
INSERT INTO `yby_town` VALUES ('452', '左云县', '150');
INSERT INTO `yby_town` VALUES ('453', '大同县', '150');
INSERT INTO `yby_town` VALUES ('454', '城区', '151');
INSERT INTO `yby_town` VALUES ('455', '矿区', '151');
INSERT INTO `yby_town` VALUES ('456', '郊区', '151');
INSERT INTO `yby_town` VALUES ('457', '平定县', '151');
INSERT INTO `yby_town` VALUES ('458', '盂县', '151');
INSERT INTO `yby_town` VALUES ('459', '城区', '152');
INSERT INTO `yby_town` VALUES ('460', '郊区', '152');
INSERT INTO `yby_town` VALUES ('461', '长治县', '152');
INSERT INTO `yby_town` VALUES ('462', '襄垣县', '152');
INSERT INTO `yby_town` VALUES ('463', '屯留县', '152');
INSERT INTO `yby_town` VALUES ('464', '平顺县', '152');
INSERT INTO `yby_town` VALUES ('465', '黎城县', '152');
INSERT INTO `yby_town` VALUES ('466', '壶关县', '152');
INSERT INTO `yby_town` VALUES ('467', '长子县', '152');
INSERT INTO `yby_town` VALUES ('468', '武乡县', '152');
INSERT INTO `yby_town` VALUES ('469', '沁县', '152');
INSERT INTO `yby_town` VALUES ('470', '沁源县', '152');
INSERT INTO `yby_town` VALUES ('471', '潞城市', '152');
INSERT INTO `yby_town` VALUES ('472', '城区', '153');
INSERT INTO `yby_town` VALUES ('473', '沁水县', '153');
INSERT INTO `yby_town` VALUES ('474', '阳城县', '153');
INSERT INTO `yby_town` VALUES ('475', '陵川县', '153');
INSERT INTO `yby_town` VALUES ('476', '泽州县', '153');
INSERT INTO `yby_town` VALUES ('477', '高平市', '153');
INSERT INTO `yby_town` VALUES ('478', '朔城区', '154');
INSERT INTO `yby_town` VALUES ('479', '平鲁区', '154');
INSERT INTO `yby_town` VALUES ('480', '山阴县', '154');
INSERT INTO `yby_town` VALUES ('481', '应县', '154');
INSERT INTO `yby_town` VALUES ('482', '右玉县', '154');
INSERT INTO `yby_town` VALUES ('483', '怀仁县', '154');
INSERT INTO `yby_town` VALUES ('484', '榆次区', '155');
INSERT INTO `yby_town` VALUES ('485', '榆社县', '155');
INSERT INTO `yby_town` VALUES ('486', '左权县', '155');
INSERT INTO `yby_town` VALUES ('487', '和顺县', '155');
INSERT INTO `yby_town` VALUES ('488', '昔阳县', '155');
INSERT INTO `yby_town` VALUES ('489', '寿阳县', '155');
INSERT INTO `yby_town` VALUES ('490', '太谷县', '155');
INSERT INTO `yby_town` VALUES ('491', '祁县', '155');
INSERT INTO `yby_town` VALUES ('492', '平遥县', '155');
INSERT INTO `yby_town` VALUES ('493', '灵石县', '155');
INSERT INTO `yby_town` VALUES ('494', '介休市', '155');
INSERT INTO `yby_town` VALUES ('495', '盐湖区', '156');
INSERT INTO `yby_town` VALUES ('496', '临猗县', '156');
INSERT INTO `yby_town` VALUES ('497', '万荣县', '156');
INSERT INTO `yby_town` VALUES ('498', '闻喜县', '156');
INSERT INTO `yby_town` VALUES ('499', '稷山县', '156');
INSERT INTO `yby_town` VALUES ('500', '新绛县', '156');
INSERT INTO `yby_town` VALUES ('501', '绛县', '156');
INSERT INTO `yby_town` VALUES ('502', '垣曲县', '156');
INSERT INTO `yby_town` VALUES ('503', '夏县', '156');
INSERT INTO `yby_town` VALUES ('504', '平陆县', '156');
INSERT INTO `yby_town` VALUES ('505', '芮城县', '156');
INSERT INTO `yby_town` VALUES ('506', '永济市', '156');
INSERT INTO `yby_town` VALUES ('507', '河津市', '156');
INSERT INTO `yby_town` VALUES ('508', '忻府区', '157');
INSERT INTO `yby_town` VALUES ('509', '定襄县', '157');
INSERT INTO `yby_town` VALUES ('510', '五台县', '157');
INSERT INTO `yby_town` VALUES ('511', '代县', '157');
INSERT INTO `yby_town` VALUES ('512', '繁峙县', '157');
INSERT INTO `yby_town` VALUES ('513', '宁武县', '157');
INSERT INTO `yby_town` VALUES ('514', '静乐县', '157');
INSERT INTO `yby_town` VALUES ('515', '神池县', '157');
INSERT INTO `yby_town` VALUES ('516', '五寨县', '157');
INSERT INTO `yby_town` VALUES ('517', '岢岚县', '157');
INSERT INTO `yby_town` VALUES ('518', '河曲县', '157');
INSERT INTO `yby_town` VALUES ('519', '保德县', '157');
INSERT INTO `yby_town` VALUES ('520', '偏关县', '157');
INSERT INTO `yby_town` VALUES ('521', '原平市', '157');
INSERT INTO `yby_town` VALUES ('522', '尧都区', '158');
INSERT INTO `yby_town` VALUES ('523', '曲沃县', '158');
INSERT INTO `yby_town` VALUES ('524', '翼城县', '158');
INSERT INTO `yby_town` VALUES ('525', '襄汾县', '158');
INSERT INTO `yby_town` VALUES ('526', '洪洞县', '158');
INSERT INTO `yby_town` VALUES ('527', '古县', '158');
INSERT INTO `yby_town` VALUES ('528', '安泽县', '158');
INSERT INTO `yby_town` VALUES ('529', '浮山县', '158');
INSERT INTO `yby_town` VALUES ('530', '吉县', '158');
INSERT INTO `yby_town` VALUES ('531', '乡宁县', '158');
INSERT INTO `yby_town` VALUES ('532', '大宁县', '158');
INSERT INTO `yby_town` VALUES ('533', '隰县', '158');
INSERT INTO `yby_town` VALUES ('534', '永和县', '158');
INSERT INTO `yby_town` VALUES ('535', '蒲县', '158');
INSERT INTO `yby_town` VALUES ('536', '汾西县', '158');
INSERT INTO `yby_town` VALUES ('537', '侯马市', '158');
INSERT INTO `yby_town` VALUES ('538', '霍州市', '158');
INSERT INTO `yby_town` VALUES ('539', '离石区', '159');
INSERT INTO `yby_town` VALUES ('540', '文水县', '159');
INSERT INTO `yby_town` VALUES ('541', '交城县', '159');
INSERT INTO `yby_town` VALUES ('542', '兴县', '159');
INSERT INTO `yby_town` VALUES ('543', '临县', '159');
INSERT INTO `yby_town` VALUES ('544', '柳林县', '159');
INSERT INTO `yby_town` VALUES ('545', '石楼县', '159');
INSERT INTO `yby_town` VALUES ('546', '岚县', '159');
INSERT INTO `yby_town` VALUES ('547', '方山县', '159');
INSERT INTO `yby_town` VALUES ('548', '中阳县', '159');
INSERT INTO `yby_town` VALUES ('549', '交口县', '159');
INSERT INTO `yby_town` VALUES ('550', '孝义市', '159');
INSERT INTO `yby_town` VALUES ('551', '汾阳市', '159');
INSERT INTO `yby_town` VALUES ('552', '新城区', '160');
INSERT INTO `yby_town` VALUES ('553', '碑林区', '160');
INSERT INTO `yby_town` VALUES ('554', '莲湖区', '160');
INSERT INTO `yby_town` VALUES ('555', '灞桥区', '160');
INSERT INTO `yby_town` VALUES ('556', '未央区', '160');
INSERT INTO `yby_town` VALUES ('557', '雁塔区', '160');
INSERT INTO `yby_town` VALUES ('558', '阎良区', '160');
INSERT INTO `yby_town` VALUES ('559', '临潼区', '160');
INSERT INTO `yby_town` VALUES ('560', '长安区', '160');
INSERT INTO `yby_town` VALUES ('561', '蓝田县', '160');
INSERT INTO `yby_town` VALUES ('562', '周至县', '160');
INSERT INTO `yby_town` VALUES ('563', '户县', '160');
INSERT INTO `yby_town` VALUES ('564', '高陵县', '160');
INSERT INTO `yby_town` VALUES ('565', '王益区', '161');
INSERT INTO `yby_town` VALUES ('566', '印台区', '161');
INSERT INTO `yby_town` VALUES ('567', '耀州区', '161');
INSERT INTO `yby_town` VALUES ('568', '宜君县', '161');
INSERT INTO `yby_town` VALUES ('569', '渭滨区', '162');
INSERT INTO `yby_town` VALUES ('570', '金台区', '162');
INSERT INTO `yby_town` VALUES ('571', '陈仓区', '162');
INSERT INTO `yby_town` VALUES ('572', '凤翔县', '162');
INSERT INTO `yby_town` VALUES ('573', '岐山县', '162');
INSERT INTO `yby_town` VALUES ('574', '扶风县', '162');
INSERT INTO `yby_town` VALUES ('575', '眉县', '162');
INSERT INTO `yby_town` VALUES ('576', '陇县', '162');
INSERT INTO `yby_town` VALUES ('577', '千阳县', '162');
INSERT INTO `yby_town` VALUES ('578', '麟游县', '162');
INSERT INTO `yby_town` VALUES ('579', '凤县', '162');
INSERT INTO `yby_town` VALUES ('580', '太白县', '162');
INSERT INTO `yby_town` VALUES ('581', '秦都区', '163');
INSERT INTO `yby_town` VALUES ('582', '杨凌区', '163');
INSERT INTO `yby_town` VALUES ('583', '渭城区', '163');
INSERT INTO `yby_town` VALUES ('584', '三原县', '163');
INSERT INTO `yby_town` VALUES ('585', '泾阳县', '163');
INSERT INTO `yby_town` VALUES ('586', '乾县', '163');
INSERT INTO `yby_town` VALUES ('587', '礼泉县', '163');
INSERT INTO `yby_town` VALUES ('588', '永寿县', '163');
INSERT INTO `yby_town` VALUES ('589', '彬县', '163');
INSERT INTO `yby_town` VALUES ('590', '长武县', '163');
INSERT INTO `yby_town` VALUES ('591', '旬邑县', '163');
INSERT INTO `yby_town` VALUES ('592', '淳化县', '163');
INSERT INTO `yby_town` VALUES ('593', '武功县', '163');
INSERT INTO `yby_town` VALUES ('594', '兴平市', '163');
INSERT INTO `yby_town` VALUES ('595', '临渭区', '164');
INSERT INTO `yby_town` VALUES ('596', '华县', '164');
INSERT INTO `yby_town` VALUES ('597', '潼关县', '164');
INSERT INTO `yby_town` VALUES ('598', '大荔县', '164');
INSERT INTO `yby_town` VALUES ('599', '合阳县', '164');
INSERT INTO `yby_town` VALUES ('600', '澄城县', '164');
INSERT INTO `yby_town` VALUES ('601', '蒲城县', '164');
INSERT INTO `yby_town` VALUES ('602', '白水县', '164');
INSERT INTO `yby_town` VALUES ('603', '富平县', '164');
INSERT INTO `yby_town` VALUES ('604', '韩城市', '164');
INSERT INTO `yby_town` VALUES ('605', '华阴市', '164');
INSERT INTO `yby_town` VALUES ('606', '宝塔区', '165');
INSERT INTO `yby_town` VALUES ('607', '延长县', '165');
INSERT INTO `yby_town` VALUES ('608', '延川县', '165');
INSERT INTO `yby_town` VALUES ('609', '子长县', '165');
INSERT INTO `yby_town` VALUES ('610', '安塞县', '165');
INSERT INTO `yby_town` VALUES ('611', '志丹县', '165');
INSERT INTO `yby_town` VALUES ('612', '吴起县', '165');
INSERT INTO `yby_town` VALUES ('613', '甘泉县', '165');
INSERT INTO `yby_town` VALUES ('614', '富县', '165');
INSERT INTO `yby_town` VALUES ('615', '洛川县', '165');
INSERT INTO `yby_town` VALUES ('616', '宜川县', '165');
INSERT INTO `yby_town` VALUES ('617', '黄龙县', '165');
INSERT INTO `yby_town` VALUES ('618', '黄陵县', '165');
INSERT INTO `yby_town` VALUES ('619', '汉台区', '166');
INSERT INTO `yby_town` VALUES ('620', '南郑县', '166');
INSERT INTO `yby_town` VALUES ('621', '城固县', '166');
INSERT INTO `yby_town` VALUES ('622', '洋县', '166');
INSERT INTO `yby_town` VALUES ('623', '西乡县', '166');
INSERT INTO `yby_town` VALUES ('624', '勉县', '166');
INSERT INTO `yby_town` VALUES ('625', '宁强县', '166');
INSERT INTO `yby_town` VALUES ('626', '略阳县', '166');
INSERT INTO `yby_town` VALUES ('627', '镇巴县', '166');
INSERT INTO `yby_town` VALUES ('628', '留坝县', '166');
INSERT INTO `yby_town` VALUES ('629', '佛坪县', '166');
INSERT INTO `yby_town` VALUES ('630', '榆阳区', '167');
INSERT INTO `yby_town` VALUES ('631', '神木县', '167');
INSERT INTO `yby_town` VALUES ('632', '府谷县', '167');
INSERT INTO `yby_town` VALUES ('633', '横山县', '167');
INSERT INTO `yby_town` VALUES ('634', '靖边县', '167');
INSERT INTO `yby_town` VALUES ('635', '定边县', '167');
INSERT INTO `yby_town` VALUES ('636', '绥德县', '167');
INSERT INTO `yby_town` VALUES ('637', '米脂县', '167');
INSERT INTO `yby_town` VALUES ('638', '佳县', '167');
INSERT INTO `yby_town` VALUES ('639', '吴堡县', '167');
INSERT INTO `yby_town` VALUES ('640', '清涧县', '167');
INSERT INTO `yby_town` VALUES ('641', '子洲县', '167');
INSERT INTO `yby_town` VALUES ('642', '汉滨区', '168');
INSERT INTO `yby_town` VALUES ('643', '汉阴县', '168');
INSERT INTO `yby_town` VALUES ('644', '石泉县', '168');
INSERT INTO `yby_town` VALUES ('645', '宁陕县', '168');
INSERT INTO `yby_town` VALUES ('646', '紫阳县', '168');
INSERT INTO `yby_town` VALUES ('647', '岚皋县', '168');
INSERT INTO `yby_town` VALUES ('648', '平利县', '168');
INSERT INTO `yby_town` VALUES ('649', '镇坪县', '168');
INSERT INTO `yby_town` VALUES ('650', '旬阳县', '168');
INSERT INTO `yby_town` VALUES ('651', '白河县', '168');
INSERT INTO `yby_town` VALUES ('652', '商州区', '169');
INSERT INTO `yby_town` VALUES ('653', '洛南县', '169');
INSERT INTO `yby_town` VALUES ('654', '丹凤县', '169');
INSERT INTO `yby_town` VALUES ('655', '商南县', '169');
INSERT INTO `yby_town` VALUES ('656', '山阳县', '169');
INSERT INTO `yby_town` VALUES ('657', '镇安县', '169');
INSERT INTO `yby_town` VALUES ('658', '柞水县', '169');
INSERT INTO `yby_town` VALUES ('659', '长安区', '170');
INSERT INTO `yby_town` VALUES ('660', '桥东区', '170');
INSERT INTO `yby_town` VALUES ('661', '桥西区', '170');
INSERT INTO `yby_town` VALUES ('662', '新华区', '170');
INSERT INTO `yby_town` VALUES ('663', '井陉矿区', '170');
INSERT INTO `yby_town` VALUES ('664', '裕华区', '170');
INSERT INTO `yby_town` VALUES ('665', '井陉县', '170');
INSERT INTO `yby_town` VALUES ('666', '正定县', '170');
INSERT INTO `yby_town` VALUES ('667', '栾城县', '170');
INSERT INTO `yby_town` VALUES ('668', '行唐县', '170');
INSERT INTO `yby_town` VALUES ('669', '灵寿县', '170');
INSERT INTO `yby_town` VALUES ('670', '高邑县', '170');
INSERT INTO `yby_town` VALUES ('671', '深泽县', '170');
INSERT INTO `yby_town` VALUES ('672', '赞皇县', '170');
INSERT INTO `yby_town` VALUES ('673', '无极县', '170');
INSERT INTO `yby_town` VALUES ('674', '平山县', '170');
INSERT INTO `yby_town` VALUES ('675', '元氏县', '170');
INSERT INTO `yby_town` VALUES ('676', '赵县', '170');
INSERT INTO `yby_town` VALUES ('677', '辛集市', '170');
INSERT INTO `yby_town` VALUES ('678', '藁城市', '170');
INSERT INTO `yby_town` VALUES ('679', '晋州市', '170');
INSERT INTO `yby_town` VALUES ('680', '新乐市', '170');
INSERT INTO `yby_town` VALUES ('681', '鹿泉市', '170');
INSERT INTO `yby_town` VALUES ('682', '路南区', '171');
INSERT INTO `yby_town` VALUES ('683', '路北区', '171');
INSERT INTO `yby_town` VALUES ('684', '古冶区', '171');
INSERT INTO `yby_town` VALUES ('685', '开平区', '171');
INSERT INTO `yby_town` VALUES ('686', '丰南区', '171');
INSERT INTO `yby_town` VALUES ('687', '丰润区', '171');
INSERT INTO `yby_town` VALUES ('688', '滦县', '171');
INSERT INTO `yby_town` VALUES ('689', '滦南县', '171');
INSERT INTO `yby_town` VALUES ('690', '乐亭县', '171');
INSERT INTO `yby_town` VALUES ('691', '迁西县', '171');
INSERT INTO `yby_town` VALUES ('692', '玉田县', '171');
INSERT INTO `yby_town` VALUES ('693', '唐海县', '171');
INSERT INTO `yby_town` VALUES ('694', '遵化市', '171');
INSERT INTO `yby_town` VALUES ('695', '迁安市', '171');
INSERT INTO `yby_town` VALUES ('696', '海港区', '172');
INSERT INTO `yby_town` VALUES ('697', '山海关区', '172');
INSERT INTO `yby_town` VALUES ('698', '北戴河区', '172');
INSERT INTO `yby_town` VALUES ('699', '青龙满族自治县', '172');
INSERT INTO `yby_town` VALUES ('700', '昌黎县', '172');
INSERT INTO `yby_town` VALUES ('701', '抚宁县', '172');
INSERT INTO `yby_town` VALUES ('702', '卢龙县', '172');
INSERT INTO `yby_town` VALUES ('703', '邯山区', '173');
INSERT INTO `yby_town` VALUES ('704', '丛台区', '173');
INSERT INTO `yby_town` VALUES ('705', '复兴区', '173');
INSERT INTO `yby_town` VALUES ('706', '峰峰矿区', '173');
INSERT INTO `yby_town` VALUES ('707', '邯郸县', '173');
INSERT INTO `yby_town` VALUES ('708', '临漳县', '173');
INSERT INTO `yby_town` VALUES ('709', '成安县', '173');
INSERT INTO `yby_town` VALUES ('710', '大名县', '173');
INSERT INTO `yby_town` VALUES ('711', '涉县', '173');
INSERT INTO `yby_town` VALUES ('712', '磁县', '173');
INSERT INTO `yby_town` VALUES ('713', '肥乡县', '173');
INSERT INTO `yby_town` VALUES ('714', '永年县', '173');
INSERT INTO `yby_town` VALUES ('715', '邱县', '173');
INSERT INTO `yby_town` VALUES ('716', '鸡泽县', '173');
INSERT INTO `yby_town` VALUES ('717', '广平县', '173');
INSERT INTO `yby_town` VALUES ('718', '馆陶县', '173');
INSERT INTO `yby_town` VALUES ('719', '魏县', '173');
INSERT INTO `yby_town` VALUES ('720', '曲周县', '173');
INSERT INTO `yby_town` VALUES ('721', '武安市', '173');
INSERT INTO `yby_town` VALUES ('722', '桥东区', '174');
INSERT INTO `yby_town` VALUES ('723', '桥西区', '174');
INSERT INTO `yby_town` VALUES ('724', '邢台县', '174');
INSERT INTO `yby_town` VALUES ('725', '临城县', '174');
INSERT INTO `yby_town` VALUES ('726', '内丘县', '174');
INSERT INTO `yby_town` VALUES ('727', '柏乡县', '174');
INSERT INTO `yby_town` VALUES ('728', '隆尧县', '174');
INSERT INTO `yby_town` VALUES ('729', '任县', '174');
INSERT INTO `yby_town` VALUES ('730', '南和县', '174');
INSERT INTO `yby_town` VALUES ('731', '宁晋县', '174');
INSERT INTO `yby_town` VALUES ('732', '巨鹿县', '174');
INSERT INTO `yby_town` VALUES ('733', '新河县', '174');
INSERT INTO `yby_town` VALUES ('734', '广宗县', '174');
INSERT INTO `yby_town` VALUES ('735', '平乡县', '174');
INSERT INTO `yby_town` VALUES ('736', '威县', '174');
INSERT INTO `yby_town` VALUES ('737', '清河县', '174');
INSERT INTO `yby_town` VALUES ('738', '临西县', '174');
INSERT INTO `yby_town` VALUES ('739', '南宫市', '174');
INSERT INTO `yby_town` VALUES ('740', '沙河市', '174');
INSERT INTO `yby_town` VALUES ('741', '新市区', '175');
INSERT INTO `yby_town` VALUES ('742', '北市区', '175');
INSERT INTO `yby_town` VALUES ('743', '南市区', '175');
INSERT INTO `yby_town` VALUES ('744', '满城县', '175');
INSERT INTO `yby_town` VALUES ('745', '清苑县', '175');
INSERT INTO `yby_town` VALUES ('746', '涞水县', '175');
INSERT INTO `yby_town` VALUES ('747', '阜平县', '175');
INSERT INTO `yby_town` VALUES ('748', '徐水县', '175');
INSERT INTO `yby_town` VALUES ('749', '定兴县', '175');
INSERT INTO `yby_town` VALUES ('750', '唐县', '175');
INSERT INTO `yby_town` VALUES ('751', '高阳县', '175');
INSERT INTO `yby_town` VALUES ('752', '容城县', '175');
INSERT INTO `yby_town` VALUES ('753', '涞源县', '175');
INSERT INTO `yby_town` VALUES ('754', '望都县', '175');
INSERT INTO `yby_town` VALUES ('755', '安新县', '175');
INSERT INTO `yby_town` VALUES ('756', '易县', '175');
INSERT INTO `yby_town` VALUES ('757', '曲阳县', '175');
INSERT INTO `yby_town` VALUES ('758', '蠡县', '175');
INSERT INTO `yby_town` VALUES ('759', '顺平县', '175');
INSERT INTO `yby_town` VALUES ('760', '博野县', '175');
INSERT INTO `yby_town` VALUES ('761', '雄县', '175');
INSERT INTO `yby_town` VALUES ('762', '涿州市', '175');
INSERT INTO `yby_town` VALUES ('763', '定州市', '175');
INSERT INTO `yby_town` VALUES ('764', '安国市', '175');
INSERT INTO `yby_town` VALUES ('765', '高碑店市', '175');
INSERT INTO `yby_town` VALUES ('766', '桥东区', '176');
INSERT INTO `yby_town` VALUES ('767', '桥西区', '176');
INSERT INTO `yby_town` VALUES ('768', '宣化区', '176');
INSERT INTO `yby_town` VALUES ('769', '下花园区', '176');
INSERT INTO `yby_town` VALUES ('770', '宣化县', '176');
INSERT INTO `yby_town` VALUES ('771', '张北县', '176');
INSERT INTO `yby_town` VALUES ('772', '康保县', '176');
INSERT INTO `yby_town` VALUES ('773', '沽源县', '176');
INSERT INTO `yby_town` VALUES ('774', '尚义县', '176');
INSERT INTO `yby_town` VALUES ('775', '蔚县', '176');
INSERT INTO `yby_town` VALUES ('776', '阳原县', '176');
INSERT INTO `yby_town` VALUES ('777', '怀安县', '176');
INSERT INTO `yby_town` VALUES ('778', '万全县', '176');
INSERT INTO `yby_town` VALUES ('779', '怀来县', '176');
INSERT INTO `yby_town` VALUES ('780', '涿鹿县', '176');
INSERT INTO `yby_town` VALUES ('781', '赤城县', '176');
INSERT INTO `yby_town` VALUES ('782', '崇礼县', '176');
INSERT INTO `yby_town` VALUES ('783', '双桥区', '177');
INSERT INTO `yby_town` VALUES ('784', '双滦区', '177');
INSERT INTO `yby_town` VALUES ('785', '鹰手营子矿区', '177');
INSERT INTO `yby_town` VALUES ('786', '承德县', '177');
INSERT INTO `yby_town` VALUES ('787', '兴隆县', '177');
INSERT INTO `yby_town` VALUES ('788', '平泉县', '177');
INSERT INTO `yby_town` VALUES ('789', '滦平县', '177');
INSERT INTO `yby_town` VALUES ('790', '隆化县', '177');
INSERT INTO `yby_town` VALUES ('791', '丰宁满族自治县', '177');
INSERT INTO `yby_town` VALUES ('792', '宽城满族自治县', '177');
INSERT INTO `yby_town` VALUES ('793', '围场满族蒙古族自治县', '177');
INSERT INTO `yby_town` VALUES ('794', '新华区', '178');
INSERT INTO `yby_town` VALUES ('795', '运河区', '178');
INSERT INTO `yby_town` VALUES ('796', '沧县', '178');
INSERT INTO `yby_town` VALUES ('797', '青县', '178');
INSERT INTO `yby_town` VALUES ('798', '东光县', '178');
INSERT INTO `yby_town` VALUES ('799', '海兴县', '178');
INSERT INTO `yby_town` VALUES ('800', '盐山县', '178');
INSERT INTO `yby_town` VALUES ('801', '肃宁县', '178');
INSERT INTO `yby_town` VALUES ('802', '南皮县', '178');
INSERT INTO `yby_town` VALUES ('803', '吴桥县', '178');
INSERT INTO `yby_town` VALUES ('804', '献县', '178');
INSERT INTO `yby_town` VALUES ('805', '孟村回族自治县', '178');
INSERT INTO `yby_town` VALUES ('806', '泊头市', '178');
INSERT INTO `yby_town` VALUES ('807', '任丘市', '178');
INSERT INTO `yby_town` VALUES ('808', '黄骅市', '178');
INSERT INTO `yby_town` VALUES ('809', '河间市', '178');
INSERT INTO `yby_town` VALUES ('810', '安次区', '179');
INSERT INTO `yby_town` VALUES ('811', '广阳区', '179');
INSERT INTO `yby_town` VALUES ('812', '固安县', '179');
INSERT INTO `yby_town` VALUES ('813', '永清县', '179');
INSERT INTO `yby_town` VALUES ('814', '香河县', '179');
INSERT INTO `yby_town` VALUES ('815', '大城县', '179');
INSERT INTO `yby_town` VALUES ('816', '文安县', '179');
INSERT INTO `yby_town` VALUES ('817', '大厂回族自治县', '179');
INSERT INTO `yby_town` VALUES ('818', '霸州市', '179');
INSERT INTO `yby_town` VALUES ('819', '三河市', '179');
INSERT INTO `yby_town` VALUES ('820', '桃城区', '180');
INSERT INTO `yby_town` VALUES ('821', '枣强县', '180');
INSERT INTO `yby_town` VALUES ('822', '武邑县', '180');
INSERT INTO `yby_town` VALUES ('823', '武强县', '180');
INSERT INTO `yby_town` VALUES ('824', '饶阳县', '180');
INSERT INTO `yby_town` VALUES ('825', '安平县', '180');
INSERT INTO `yby_town` VALUES ('826', '故城县', '180');
INSERT INTO `yby_town` VALUES ('827', '景县', '180');
INSERT INTO `yby_town` VALUES ('828', '阜城县', '180');
INSERT INTO `yby_town` VALUES ('829', '冀州市', '180');
INSERT INTO `yby_town` VALUES ('830', '深州市', '180');
INSERT INTO `yby_town` VALUES ('831', '中原区', '181');
INSERT INTO `yby_town` VALUES ('832', '二七区', '181');
INSERT INTO `yby_town` VALUES ('833', '管城回族区', '181');
INSERT INTO `yby_town` VALUES ('834', '金水区', '181');
INSERT INTO `yby_town` VALUES ('835', '上街区', '181');
INSERT INTO `yby_town` VALUES ('836', '惠济区', '181');
INSERT INTO `yby_town` VALUES ('837', '中牟县', '181');
INSERT INTO `yby_town` VALUES ('838', '巩义市', '181');
INSERT INTO `yby_town` VALUES ('839', '荥阳市', '181');
INSERT INTO `yby_town` VALUES ('840', '新密市', '181');
INSERT INTO `yby_town` VALUES ('841', '新郑市', '181');
INSERT INTO `yby_town` VALUES ('842', '登封市', '181');
INSERT INTO `yby_town` VALUES ('843', '龙亭区', '182');
INSERT INTO `yby_town` VALUES ('844', '顺河回族区', '182');
INSERT INTO `yby_town` VALUES ('845', '鼓楼区', '182');
INSERT INTO `yby_town` VALUES ('846', '禹王台区', '182');
INSERT INTO `yby_town` VALUES ('847', '金明区', '182');
INSERT INTO `yby_town` VALUES ('848', '杞县', '182');
INSERT INTO `yby_town` VALUES ('849', '通许县', '182');
INSERT INTO `yby_town` VALUES ('850', '尉氏县', '182');
INSERT INTO `yby_town` VALUES ('851', '开封县', '182');
INSERT INTO `yby_town` VALUES ('852', '兰考县', '182');
INSERT INTO `yby_town` VALUES ('853', '老城区', '183');
INSERT INTO `yby_town` VALUES ('854', '西工区', '183');
INSERT INTO `yby_town` VALUES ('855', '廛河回族区', '183');
INSERT INTO `yby_town` VALUES ('856', '涧西区', '183');
INSERT INTO `yby_town` VALUES ('857', '吉利区', '183');
INSERT INTO `yby_town` VALUES ('858', '洛龙区', '183');
INSERT INTO `yby_town` VALUES ('859', '孟津县', '183');
INSERT INTO `yby_town` VALUES ('860', '新安县', '183');
INSERT INTO `yby_town` VALUES ('861', '栾川县', '183');
INSERT INTO `yby_town` VALUES ('862', '嵩县', '183');
INSERT INTO `yby_town` VALUES ('863', '汝阳县', '183');
INSERT INTO `yby_town` VALUES ('864', '宜阳县', '183');
INSERT INTO `yby_town` VALUES ('865', '洛宁县', '183');
INSERT INTO `yby_town` VALUES ('866', '伊川县', '183');
INSERT INTO `yby_town` VALUES ('867', '偃师市', '183');
INSERT INTO `yby_town` VALUES ('868', '新华区', '184');
INSERT INTO `yby_town` VALUES ('869', '卫东区', '184');
INSERT INTO `yby_town` VALUES ('870', '石龙区', '184');
INSERT INTO `yby_town` VALUES ('871', '湛河区', '184');
INSERT INTO `yby_town` VALUES ('872', '宝丰县', '184');
INSERT INTO `yby_town` VALUES ('873', '叶县', '184');
INSERT INTO `yby_town` VALUES ('874', '鲁山县', '184');
INSERT INTO `yby_town` VALUES ('875', '郏县', '184');
INSERT INTO `yby_town` VALUES ('876', '舞钢市', '184');
INSERT INTO `yby_town` VALUES ('877', '汝州市', '184');
INSERT INTO `yby_town` VALUES ('878', '文峰区', '185');
INSERT INTO `yby_town` VALUES ('879', '北关区', '185');
INSERT INTO `yby_town` VALUES ('880', '殷都区', '185');
INSERT INTO `yby_town` VALUES ('881', '龙安区', '185');
INSERT INTO `yby_town` VALUES ('882', '安阳县', '185');
INSERT INTO `yby_town` VALUES ('883', '汤阴县', '185');
INSERT INTO `yby_town` VALUES ('884', '滑县', '185');
INSERT INTO `yby_town` VALUES ('885', '内黄县', '185');
INSERT INTO `yby_town` VALUES ('886', '林州市', '185');
INSERT INTO `yby_town` VALUES ('887', '鹤山区', '186');
INSERT INTO `yby_town` VALUES ('888', '山城区', '186');
INSERT INTO `yby_town` VALUES ('889', '淇滨区', '186');
INSERT INTO `yby_town` VALUES ('890', '浚县', '186');
INSERT INTO `yby_town` VALUES ('891', '淇县', '186');
INSERT INTO `yby_town` VALUES ('892', '红旗区', '187');
INSERT INTO `yby_town` VALUES ('893', '卫滨区', '187');
INSERT INTO `yby_town` VALUES ('894', '凤泉区', '187');
INSERT INTO `yby_town` VALUES ('895', '牧野区', '187');
INSERT INTO `yby_town` VALUES ('896', '新乡县', '187');
INSERT INTO `yby_town` VALUES ('897', '获嘉县', '187');
INSERT INTO `yby_town` VALUES ('898', '原阳县', '187');
INSERT INTO `yby_town` VALUES ('899', '延津县', '187');
INSERT INTO `yby_town` VALUES ('900', '封丘县', '187');
INSERT INTO `yby_town` VALUES ('901', '长垣县', '187');
INSERT INTO `yby_town` VALUES ('902', '卫辉市', '187');
INSERT INTO `yby_town` VALUES ('903', '辉县市', '187');
INSERT INTO `yby_town` VALUES ('904', '解放区', '188');
INSERT INTO `yby_town` VALUES ('905', '中站区', '188');
INSERT INTO `yby_town` VALUES ('906', '马村区', '188');
INSERT INTO `yby_town` VALUES ('907', '山阳区', '188');
INSERT INTO `yby_town` VALUES ('908', '修武县', '188');
INSERT INTO `yby_town` VALUES ('909', '博爱县', '188');
INSERT INTO `yby_town` VALUES ('910', '武陟县', '188');
INSERT INTO `yby_town` VALUES ('911', '温县', '188');
INSERT INTO `yby_town` VALUES ('912', '济源市', '188');
INSERT INTO `yby_town` VALUES ('913', '沁阳市', '188');
INSERT INTO `yby_town` VALUES ('914', '孟州市', '188');
INSERT INTO `yby_town` VALUES ('915', '济源市', '189');
INSERT INTO `yby_town` VALUES ('916', '华龙区', '190');
INSERT INTO `yby_town` VALUES ('917', '清丰县', '190');
INSERT INTO `yby_town` VALUES ('918', '南乐县', '190');
INSERT INTO `yby_town` VALUES ('919', '范县', '190');
INSERT INTO `yby_town` VALUES ('920', '台前县', '190');
INSERT INTO `yby_town` VALUES ('921', '濮阳县', '190');
INSERT INTO `yby_town` VALUES ('922', '魏都区', '191');
INSERT INTO `yby_town` VALUES ('923', '许昌县', '191');
INSERT INTO `yby_town` VALUES ('924', '鄢陵县', '191');
INSERT INTO `yby_town` VALUES ('925', '襄城县', '191');
INSERT INTO `yby_town` VALUES ('926', '禹州市', '191');
INSERT INTO `yby_town` VALUES ('927', '长葛市', '191');
INSERT INTO `yby_town` VALUES ('928', '源汇区', '192');
INSERT INTO `yby_town` VALUES ('929', '郾城区', '192');
INSERT INTO `yby_town` VALUES ('930', '召陵区', '192');
INSERT INTO `yby_town` VALUES ('931', '舞阳县', '192');
INSERT INTO `yby_town` VALUES ('932', '临颍县', '192');
INSERT INTO `yby_town` VALUES ('933', '湖滨区', '193');
INSERT INTO `yby_town` VALUES ('934', '渑池县', '193');
INSERT INTO `yby_town` VALUES ('935', '陕县', '193');
INSERT INTO `yby_town` VALUES ('936', '卢氏县', '193');
INSERT INTO `yby_town` VALUES ('937', '义马市', '193');
INSERT INTO `yby_town` VALUES ('938', '灵宝市', '193');
INSERT INTO `yby_town` VALUES ('939', '宛城区', '194');
INSERT INTO `yby_town` VALUES ('940', '卧龙区', '194');
INSERT INTO `yby_town` VALUES ('941', '南召县', '194');
INSERT INTO `yby_town` VALUES ('942', '方城县', '194');
INSERT INTO `yby_town` VALUES ('943', '西峡县', '194');
INSERT INTO `yby_town` VALUES ('944', '镇平县', '194');
INSERT INTO `yby_town` VALUES ('945', '内乡县', '194');
INSERT INTO `yby_town` VALUES ('946', '淅川县', '194');
INSERT INTO `yby_town` VALUES ('947', '社旗县', '194');
INSERT INTO `yby_town` VALUES ('948', '唐河县', '194');
INSERT INTO `yby_town` VALUES ('949', '新野县', '194');
INSERT INTO `yby_town` VALUES ('950', '桐柏县', '194');
INSERT INTO `yby_town` VALUES ('951', '邓州市', '194');
INSERT INTO `yby_town` VALUES ('952', '梁园区', '195');
INSERT INTO `yby_town` VALUES ('953', '睢阳区', '195');
INSERT INTO `yby_town` VALUES ('954', '民权县', '195');
INSERT INTO `yby_town` VALUES ('955', '睢县', '195');
INSERT INTO `yby_town` VALUES ('956', '宁陵县', '195');
INSERT INTO `yby_town` VALUES ('957', '柘城县', '195');
INSERT INTO `yby_town` VALUES ('958', '虞城县', '195');
INSERT INTO `yby_town` VALUES ('959', '夏邑县', '195');
INSERT INTO `yby_town` VALUES ('960', '永城市', '195');
INSERT INTO `yby_town` VALUES ('961', '浉河区', '196');
INSERT INTO `yby_town` VALUES ('962', '平桥区', '196');
INSERT INTO `yby_town` VALUES ('963', '罗山县', '196');
INSERT INTO `yby_town` VALUES ('964', '光山县', '196');
INSERT INTO `yby_town` VALUES ('965', '新县', '196');
INSERT INTO `yby_town` VALUES ('966', '商城县', '196');
INSERT INTO `yby_town` VALUES ('967', '固始县', '196');
INSERT INTO `yby_town` VALUES ('968', '潢川县', '196');
INSERT INTO `yby_town` VALUES ('969', '淮滨县', '196');
INSERT INTO `yby_town` VALUES ('970', '息县', '196');
INSERT INTO `yby_town` VALUES ('971', '川汇区', '197');
INSERT INTO `yby_town` VALUES ('972', '扶沟县', '197');
INSERT INTO `yby_town` VALUES ('973', '西华县', '197');
INSERT INTO `yby_town` VALUES ('974', '商水县', '197');
INSERT INTO `yby_town` VALUES ('975', '沈丘县', '197');
INSERT INTO `yby_town` VALUES ('976', '郸城县', '197');
INSERT INTO `yby_town` VALUES ('977', '淮阳县', '197');
INSERT INTO `yby_town` VALUES ('978', '太康县', '197');
INSERT INTO `yby_town` VALUES ('979', '鹿邑县', '197');
INSERT INTO `yby_town` VALUES ('980', '项城市', '197');
INSERT INTO `yby_town` VALUES ('981', '驿城区', '198');
INSERT INTO `yby_town` VALUES ('982', '西平县', '198');
INSERT INTO `yby_town` VALUES ('983', '上蔡县', '198');
INSERT INTO `yby_town` VALUES ('984', '平舆县', '198');
INSERT INTO `yby_town` VALUES ('985', '正阳县', '198');
INSERT INTO `yby_town` VALUES ('986', '确山县', '198');
INSERT INTO `yby_town` VALUES ('987', '泌阳县', '198');
INSERT INTO `yby_town` VALUES ('988', '汝南县', '198');
INSERT INTO `yby_town` VALUES ('989', '遂平县', '198');
INSERT INTO `yby_town` VALUES ('990', '新蔡县', '198');
INSERT INTO `yby_town` VALUES ('991', '江岸区', '199');
INSERT INTO `yby_town` VALUES ('992', '江汉区', '199');
INSERT INTO `yby_town` VALUES ('993', '硚口区', '199');
INSERT INTO `yby_town` VALUES ('994', '汉阳区', '199');
INSERT INTO `yby_town` VALUES ('995', '武昌区', '199');
INSERT INTO `yby_town` VALUES ('996', '青山区', '199');
INSERT INTO `yby_town` VALUES ('997', '洪山区', '199');
INSERT INTO `yby_town` VALUES ('998', '东西湖区', '199');
INSERT INTO `yby_town` VALUES ('999', '汉南区', '199');
INSERT INTO `yby_town` VALUES ('1000', '蔡甸区', '199');
INSERT INTO `yby_town` VALUES ('1001', '江夏区', '199');
INSERT INTO `yby_town` VALUES ('1002', '黄陂区', '199');
INSERT INTO `yby_town` VALUES ('1003', '新洲区', '199');
INSERT INTO `yby_town` VALUES ('1004', '黄石港区', '200');
INSERT INTO `yby_town` VALUES ('1005', '西塞山区', '200');
INSERT INTO `yby_town` VALUES ('1006', '下陆区', '200');
INSERT INTO `yby_town` VALUES ('1007', '铁山区', '200');
INSERT INTO `yby_town` VALUES ('1008', '阳新县', '200');
INSERT INTO `yby_town` VALUES ('1009', '大冶市', '200');
INSERT INTO `yby_town` VALUES ('1010', '茅箭区', '201');
INSERT INTO `yby_town` VALUES ('1011', '张湾区', '201');
INSERT INTO `yby_town` VALUES ('1012', '郧县', '201');
INSERT INTO `yby_town` VALUES ('1013', '郧西县', '201');
INSERT INTO `yby_town` VALUES ('1014', '竹山县', '201');
INSERT INTO `yby_town` VALUES ('1015', '竹溪县', '201');
INSERT INTO `yby_town` VALUES ('1016', '房县', '201');
INSERT INTO `yby_town` VALUES ('1017', '丹江口市', '201');
INSERT INTO `yby_town` VALUES ('1018', '西陵区', '202');
INSERT INTO `yby_town` VALUES ('1019', '伍家岗区', '202');
INSERT INTO `yby_town` VALUES ('1020', '点军区', '202');
INSERT INTO `yby_town` VALUES ('1021', '猇亭区', '202');
INSERT INTO `yby_town` VALUES ('1022', '夷陵区', '202');
INSERT INTO `yby_town` VALUES ('1023', '远安县', '202');
INSERT INTO `yby_town` VALUES ('1024', '兴山县', '202');
INSERT INTO `yby_town` VALUES ('1025', '秭归县', '202');
INSERT INTO `yby_town` VALUES ('1026', '长阳土家族自治县', '202');
INSERT INTO `yby_town` VALUES ('1027', '五峰土家族自治县', '202');
INSERT INTO `yby_town` VALUES ('1028', '宜都市', '202');
INSERT INTO `yby_town` VALUES ('1029', '当阳市', '202');
INSERT INTO `yby_town` VALUES ('1030', '枝江市', '202');
INSERT INTO `yby_town` VALUES ('1031', '襄城区', '203');
INSERT INTO `yby_town` VALUES ('1032', '樊城区', '203');
INSERT INTO `yby_town` VALUES ('1033', '襄阳区', '203');
INSERT INTO `yby_town` VALUES ('1034', '南漳县', '203');
INSERT INTO `yby_town` VALUES ('1035', '谷城县', '203');
INSERT INTO `yby_town` VALUES ('1036', '保康县', '203');
INSERT INTO `yby_town` VALUES ('1037', '老河口市', '203');
INSERT INTO `yby_town` VALUES ('1038', '枣阳市', '203');
INSERT INTO `yby_town` VALUES ('1039', '宜城市', '203');
INSERT INTO `yby_town` VALUES ('1040', '梁子湖区', '204');
INSERT INTO `yby_town` VALUES ('1041', '华容区', '204');
INSERT INTO `yby_town` VALUES ('1042', '鄂城区', '204');
INSERT INTO `yby_town` VALUES ('1043', '东宝区', '205');
INSERT INTO `yby_town` VALUES ('1044', '掇刀区', '205');
INSERT INTO `yby_town` VALUES ('1045', '京山县', '205');
INSERT INTO `yby_town` VALUES ('1046', '沙洋县', '205');
INSERT INTO `yby_town` VALUES ('1047', '钟祥市', '205');
INSERT INTO `yby_town` VALUES ('1048', '孝南区', '206');
INSERT INTO `yby_town` VALUES ('1049', '孝昌县', '206');
INSERT INTO `yby_town` VALUES ('1050', '大悟县', '206');
INSERT INTO `yby_town` VALUES ('1051', '云梦县', '206');
INSERT INTO `yby_town` VALUES ('1052', '应城市', '206');
INSERT INTO `yby_town` VALUES ('1053', '安陆市', '206');
INSERT INTO `yby_town` VALUES ('1054', '汉川市', '206');
INSERT INTO `yby_town` VALUES ('1055', '沙市区', '207');
INSERT INTO `yby_town` VALUES ('1056', '荆州区', '207');
INSERT INTO `yby_town` VALUES ('1057', '公安县', '207');
INSERT INTO `yby_town` VALUES ('1058', '监利县', '207');
INSERT INTO `yby_town` VALUES ('1059', '江陵县', '207');
INSERT INTO `yby_town` VALUES ('1060', '石首市', '207');
INSERT INTO `yby_town` VALUES ('1061', '洪湖市', '207');
INSERT INTO `yby_town` VALUES ('1062', '松滋市', '207');
INSERT INTO `yby_town` VALUES ('1063', '黄州区', '208');
INSERT INTO `yby_town` VALUES ('1064', '团风县', '208');
INSERT INTO `yby_town` VALUES ('1065', '红安县', '208');
INSERT INTO `yby_town` VALUES ('1066', '罗田县', '208');
INSERT INTO `yby_town` VALUES ('1067', '英山县', '208');
INSERT INTO `yby_town` VALUES ('1068', '浠水县', '208');
INSERT INTO `yby_town` VALUES ('1069', '蕲春县', '208');
INSERT INTO `yby_town` VALUES ('1070', '黄梅县', '208');
INSERT INTO `yby_town` VALUES ('1071', '麻城市', '208');
INSERT INTO `yby_town` VALUES ('1072', '武穴市', '208');
INSERT INTO `yby_town` VALUES ('1073', '咸安区', '209');
INSERT INTO `yby_town` VALUES ('1074', '嘉鱼县', '209');
INSERT INTO `yby_town` VALUES ('1075', '通城县', '209');
INSERT INTO `yby_town` VALUES ('1076', '崇阳县', '209');
INSERT INTO `yby_town` VALUES ('1077', '通山县', '209');
INSERT INTO `yby_town` VALUES ('1078', '赤壁市', '209');
INSERT INTO `yby_town` VALUES ('1079', '曾都区', '210');
INSERT INTO `yby_town` VALUES ('1080', '广水市', '210');
INSERT INTO `yby_town` VALUES ('1081', '恩施市', '211');
INSERT INTO `yby_town` VALUES ('1082', '利川市', '211');
INSERT INTO `yby_town` VALUES ('1083', '建始县', '211');
INSERT INTO `yby_town` VALUES ('1084', '巴东县', '211');
INSERT INTO `yby_town` VALUES ('1085', '宣恩县', '211');
INSERT INTO `yby_town` VALUES ('1086', '咸丰县', '211');
INSERT INTO `yby_town` VALUES ('1087', '来凤县', '211');
INSERT INTO `yby_town` VALUES ('1088', '鹤峰县', '211');
INSERT INTO `yby_town` VALUES ('1089', '仙桃市', '212');
INSERT INTO `yby_town` VALUES ('1090', '潜江市', '213');
INSERT INTO `yby_town` VALUES ('1091', '天门市', '214');
INSERT INTO `yby_town` VALUES ('1092', '神农架林区', '215');
INSERT INTO `yby_town` VALUES ('1093', '芙蓉区', '216');
INSERT INTO `yby_town` VALUES ('1094', '天心区', '216');
INSERT INTO `yby_town` VALUES ('1095', '岳麓区', '216');
INSERT INTO `yby_town` VALUES ('1096', '开福区', '216');
INSERT INTO `yby_town` VALUES ('1097', '雨花区', '216');
INSERT INTO `yby_town` VALUES ('1098', '长沙县', '216');
INSERT INTO `yby_town` VALUES ('1099', '望城县', '216');
INSERT INTO `yby_town` VALUES ('1100', '宁乡县', '216');
INSERT INTO `yby_town` VALUES ('1101', '浏阳市', '216');
INSERT INTO `yby_town` VALUES ('1102', '荷塘区', '217');
INSERT INTO `yby_town` VALUES ('1103', '芦淞区', '217');
INSERT INTO `yby_town` VALUES ('1104', '石峰区', '217');
INSERT INTO `yby_town` VALUES ('1105', '天元区', '217');
INSERT INTO `yby_town` VALUES ('1106', '株洲县', '217');
INSERT INTO `yby_town` VALUES ('1107', '攸县', '217');
INSERT INTO `yby_town` VALUES ('1108', '茶陵县', '217');
INSERT INTO `yby_town` VALUES ('1109', '炎陵县', '217');
INSERT INTO `yby_town` VALUES ('1110', '醴陵市', '217');
INSERT INTO `yby_town` VALUES ('1111', '雨湖区', '218');
INSERT INTO `yby_town` VALUES ('1112', '岳塘区', '218');
INSERT INTO `yby_town` VALUES ('1113', '湘潭县', '218');
INSERT INTO `yby_town` VALUES ('1114', '湘乡市', '218');
INSERT INTO `yby_town` VALUES ('1115', '韶山市', '218');
INSERT INTO `yby_town` VALUES ('1116', '珠晖区', '219');
INSERT INTO `yby_town` VALUES ('1117', '雁峰区', '219');
INSERT INTO `yby_town` VALUES ('1118', '石鼓区', '219');
INSERT INTO `yby_town` VALUES ('1119', '蒸湘区', '219');
INSERT INTO `yby_town` VALUES ('1120', '南岳区', '219');
INSERT INTO `yby_town` VALUES ('1121', '衡阳县', '219');
INSERT INTO `yby_town` VALUES ('1122', '衡南县', '219');
INSERT INTO `yby_town` VALUES ('1123', '衡山县', '219');
INSERT INTO `yby_town` VALUES ('1124', '衡东县', '219');
INSERT INTO `yby_town` VALUES ('1125', '祁东县', '219');
INSERT INTO `yby_town` VALUES ('1126', '耒阳市', '219');
INSERT INTO `yby_town` VALUES ('1127', '常宁市', '219');
INSERT INTO `yby_town` VALUES ('1128', '双清区', '220');
INSERT INTO `yby_town` VALUES ('1129', '大祥区', '220');
INSERT INTO `yby_town` VALUES ('1130', '北塔区', '220');
INSERT INTO `yby_town` VALUES ('1131', '邵东县', '220');
INSERT INTO `yby_town` VALUES ('1132', '新邵县', '220');
INSERT INTO `yby_town` VALUES ('1133', '邵阳县', '220');
INSERT INTO `yby_town` VALUES ('1134', '隆回县', '220');
INSERT INTO `yby_town` VALUES ('1135', '洞口县', '220');
INSERT INTO `yby_town` VALUES ('1136', '绥宁县', '220');
INSERT INTO `yby_town` VALUES ('1137', '新宁县', '220');
INSERT INTO `yby_town` VALUES ('1138', '城步苗族自治县', '220');
INSERT INTO `yby_town` VALUES ('1139', '武冈市', '220');
INSERT INTO `yby_town` VALUES ('1140', '岳阳楼区', '221');
INSERT INTO `yby_town` VALUES ('1141', '云溪区', '221');
INSERT INTO `yby_town` VALUES ('1142', '君山区', '221');
INSERT INTO `yby_town` VALUES ('1143', '岳阳县', '221');
INSERT INTO `yby_town` VALUES ('1144', '华容县', '221');
INSERT INTO `yby_town` VALUES ('1145', '湘阴县', '221');
INSERT INTO `yby_town` VALUES ('1146', '平江县', '221');
INSERT INTO `yby_town` VALUES ('1147', '汨罗市', '221');
INSERT INTO `yby_town` VALUES ('1148', '临湘市', '221');
INSERT INTO `yby_town` VALUES ('1149', '武陵区', '222');
INSERT INTO `yby_town` VALUES ('1150', '鼎城区', '222');
INSERT INTO `yby_town` VALUES ('1151', '安乡县', '222');
INSERT INTO `yby_town` VALUES ('1152', '汉寿县', '222');
INSERT INTO `yby_town` VALUES ('1153', '澧县', '222');
INSERT INTO `yby_town` VALUES ('1154', '临澧县', '222');
INSERT INTO `yby_town` VALUES ('1155', '桃源县', '222');
INSERT INTO `yby_town` VALUES ('1156', '石门县', '222');
INSERT INTO `yby_town` VALUES ('1157', '津市市', '222');
INSERT INTO `yby_town` VALUES ('1158', '永定区', '223');
INSERT INTO `yby_town` VALUES ('1159', '武陵源区', '223');
INSERT INTO `yby_town` VALUES ('1160', '慈利县', '223');
INSERT INTO `yby_town` VALUES ('1161', '桑植县', '223');
INSERT INTO `yby_town` VALUES ('1162', '资阳区', '224');
INSERT INTO `yby_town` VALUES ('1163', '赫山区', '224');
INSERT INTO `yby_town` VALUES ('1164', '南县', '224');
INSERT INTO `yby_town` VALUES ('1165', '桃江县', '224');
INSERT INTO `yby_town` VALUES ('1166', '安化县', '224');
INSERT INTO `yby_town` VALUES ('1167', '沅江市', '224');
INSERT INTO `yby_town` VALUES ('1168', '北湖区', '225');
INSERT INTO `yby_town` VALUES ('1169', '苏仙区', '225');
INSERT INTO `yby_town` VALUES ('1170', '桂阳县', '225');
INSERT INTO `yby_town` VALUES ('1171', '宜章县', '225');
INSERT INTO `yby_town` VALUES ('1172', '永兴县', '225');
INSERT INTO `yby_town` VALUES ('1173', '嘉禾县', '225');
INSERT INTO `yby_town` VALUES ('1174', '临武县', '225');
INSERT INTO `yby_town` VALUES ('1175', '汝城县', '225');
INSERT INTO `yby_town` VALUES ('1176', '桂东县', '225');
INSERT INTO `yby_town` VALUES ('1177', '安仁县', '225');
INSERT INTO `yby_town` VALUES ('1178', '资兴市', '225');
INSERT INTO `yby_town` VALUES ('1179', '零陵区', '226');
INSERT INTO `yby_town` VALUES ('1180', '冷水滩区', '226');
INSERT INTO `yby_town` VALUES ('1181', '祁阳县', '226');
INSERT INTO `yby_town` VALUES ('1182', '东安县', '226');
INSERT INTO `yby_town` VALUES ('1183', '双牌县', '226');
INSERT INTO `yby_town` VALUES ('1184', '道县', '226');
INSERT INTO `yby_town` VALUES ('1185', '江永县', '226');
INSERT INTO `yby_town` VALUES ('1186', '宁远县', '226');
INSERT INTO `yby_town` VALUES ('1187', '蓝山县', '226');
INSERT INTO `yby_town` VALUES ('1188', '新田县', '226');
INSERT INTO `yby_town` VALUES ('1189', '江华瑶族自治县', '226');
INSERT INTO `yby_town` VALUES ('1190', '鹤城区', '227');
INSERT INTO `yby_town` VALUES ('1191', '中方县', '227');
INSERT INTO `yby_town` VALUES ('1192', '沅陵县', '227');
INSERT INTO `yby_town` VALUES ('1193', '辰溪县', '227');
INSERT INTO `yby_town` VALUES ('1194', '溆浦县', '227');
INSERT INTO `yby_town` VALUES ('1195', '会同县', '227');
INSERT INTO `yby_town` VALUES ('1196', '麻阳苗族自治县', '227');
INSERT INTO `yby_town` VALUES ('1197', '新晃侗族自治县', '227');
INSERT INTO `yby_town` VALUES ('1198', '芷江侗族自治县', '227');
INSERT INTO `yby_town` VALUES ('1199', '靖州苗族侗族自治县', '227');
INSERT INTO `yby_town` VALUES ('1200', '通道侗族自治县', '227');
INSERT INTO `yby_town` VALUES ('1201', '洪江市', '227');
INSERT INTO `yby_town` VALUES ('1202', '娄星区', '228');
INSERT INTO `yby_town` VALUES ('1203', '双峰县', '228');
INSERT INTO `yby_town` VALUES ('1204', '新化县', '228');
INSERT INTO `yby_town` VALUES ('1205', '冷水江市', '228');
INSERT INTO `yby_town` VALUES ('1206', '涟源市', '228');
INSERT INTO `yby_town` VALUES ('1207', '吉首市', '229');
INSERT INTO `yby_town` VALUES ('1208', '泸溪县', '229');
INSERT INTO `yby_town` VALUES ('1209', '凤凰县', '229');
INSERT INTO `yby_town` VALUES ('1210', '花垣县', '229');
INSERT INTO `yby_town` VALUES ('1211', '保靖县', '229');
INSERT INTO `yby_town` VALUES ('1212', '古丈县', '229');
INSERT INTO `yby_town` VALUES ('1213', '永顺县', '229');
INSERT INTO `yby_town` VALUES ('1214', '龙山县', '229');
INSERT INTO `yby_town` VALUES ('1215', '秀英区', '230');
INSERT INTO `yby_town` VALUES ('1216', '龙华区', '230');
INSERT INTO `yby_town` VALUES ('1217', '琼山区', '230');
INSERT INTO `yby_town` VALUES ('1218', '美兰区', '230');
INSERT INTO `yby_town` VALUES ('1219', '三亚市', '231');
INSERT INTO `yby_town` VALUES ('1220', '五指山市', '232');
INSERT INTO `yby_town` VALUES ('1221', '琼海市', '233');
INSERT INTO `yby_town` VALUES ('1222', '儋州市', '234');
INSERT INTO `yby_town` VALUES ('1223', '文昌市', '235');
INSERT INTO `yby_town` VALUES ('1224', '万宁市', '236');
INSERT INTO `yby_town` VALUES ('1225', '东方市', '237');
INSERT INTO `yby_town` VALUES ('1226', '定安县', '238');
INSERT INTO `yby_town` VALUES ('1227', '屯昌县', '239');
INSERT INTO `yby_town` VALUES ('1228', '澄迈县', '240');
INSERT INTO `yby_town` VALUES ('1229', '临高县', '241');
INSERT INTO `yby_town` VALUES ('1230', '白沙黎族自治县', '242');
INSERT INTO `yby_town` VALUES ('1231', '昌江黎族自治县', '243');
INSERT INTO `yby_town` VALUES ('1232', '乐东黎族自治县', '244');
INSERT INTO `yby_town` VALUES ('1233', '陵水黎族自治县', '245');
INSERT INTO `yby_town` VALUES ('1234', '保亭黎族苗族自治县', '246');
INSERT INTO `yby_town` VALUES ('1235', '琼中黎族苗族自治县', '247');
INSERT INTO `yby_town` VALUES ('1236', '玄武区', '248');
INSERT INTO `yby_town` VALUES ('1237', '白下区', '248');
INSERT INTO `yby_town` VALUES ('1238', '秦淮区', '248');
INSERT INTO `yby_town` VALUES ('1239', '建邺区', '248');
INSERT INTO `yby_town` VALUES ('1240', '鼓楼区', '248');
INSERT INTO `yby_town` VALUES ('1241', '下关区', '248');
INSERT INTO `yby_town` VALUES ('1242', '浦口区', '248');
INSERT INTO `yby_town` VALUES ('1243', '栖霞区', '248');
INSERT INTO `yby_town` VALUES ('1244', '雨花台区', '248');
INSERT INTO `yby_town` VALUES ('1245', '江宁区', '248');
INSERT INTO `yby_town` VALUES ('1246', '六合区', '248');
INSERT INTO `yby_town` VALUES ('1247', '溧水县', '248');
INSERT INTO `yby_town` VALUES ('1248', '高淳县', '248');
INSERT INTO `yby_town` VALUES ('1249', '崇安区', '249');
INSERT INTO `yby_town` VALUES ('1250', '南长区', '249');
INSERT INTO `yby_town` VALUES ('1251', '北塘区', '249');
INSERT INTO `yby_town` VALUES ('1252', '锡山区', '249');
INSERT INTO `yby_town` VALUES ('1253', '惠山区', '249');
INSERT INTO `yby_town` VALUES ('1254', '滨湖区', '249');
INSERT INTO `yby_town` VALUES ('1255', '江阴市', '249');
INSERT INTO `yby_town` VALUES ('1256', '宜兴市', '249');
INSERT INTO `yby_town` VALUES ('1257', '鼓楼区', '250');
INSERT INTO `yby_town` VALUES ('1258', '云龙区', '250');
INSERT INTO `yby_town` VALUES ('1259', '九里区', '250');
INSERT INTO `yby_town` VALUES ('1260', '贾汪区', '250');
INSERT INTO `yby_town` VALUES ('1261', '泉山区', '250');
INSERT INTO `yby_town` VALUES ('1262', '丰县', '250');
INSERT INTO `yby_town` VALUES ('1263', '沛县', '250');
INSERT INTO `yby_town` VALUES ('1264', '铜山县', '250');
INSERT INTO `yby_town` VALUES ('1265', '睢宁县', '250');
INSERT INTO `yby_town` VALUES ('1266', '新沂市', '250');
INSERT INTO `yby_town` VALUES ('1267', '邳州市', '250');
INSERT INTO `yby_town` VALUES ('1268', '天宁区', '251');
INSERT INTO `yby_town` VALUES ('1269', '钟楼区', '251');
INSERT INTO `yby_town` VALUES ('1270', '戚墅堰区', '251');
INSERT INTO `yby_town` VALUES ('1271', '新北区', '251');
INSERT INTO `yby_town` VALUES ('1272', '武进区', '251');
INSERT INTO `yby_town` VALUES ('1273', '溧阳市', '251');
INSERT INTO `yby_town` VALUES ('1274', '金坛市', '251');
INSERT INTO `yby_town` VALUES ('1275', '沧浪区', '252');
INSERT INTO `yby_town` VALUES ('1276', '平江区', '252');
INSERT INTO `yby_town` VALUES ('1277', '金阊区', '252');
INSERT INTO `yby_town` VALUES ('1278', '虎丘区', '252');
INSERT INTO `yby_town` VALUES ('1279', '吴中区', '252');
INSERT INTO `yby_town` VALUES ('1280', '相城区', '252');
INSERT INTO `yby_town` VALUES ('1281', '常熟市', '252');
INSERT INTO `yby_town` VALUES ('1282', '张家港市', '252');
INSERT INTO `yby_town` VALUES ('1283', '昆山市', '252');
INSERT INTO `yby_town` VALUES ('1284', '吴江市', '252');
INSERT INTO `yby_town` VALUES ('1285', '太仓市', '252');
INSERT INTO `yby_town` VALUES ('1286', '崇川区', '253');
INSERT INTO `yby_town` VALUES ('1287', '港闸区', '253');
INSERT INTO `yby_town` VALUES ('1288', '海安县', '253');
INSERT INTO `yby_town` VALUES ('1289', '如东县', '253');
INSERT INTO `yby_town` VALUES ('1290', '启东市', '253');
INSERT INTO `yby_town` VALUES ('1291', '如皋市', '253');
INSERT INTO `yby_town` VALUES ('1292', '通州市', '253');
INSERT INTO `yby_town` VALUES ('1293', '海门市', '253');
INSERT INTO `yby_town` VALUES ('1294', '连云区', '254');
INSERT INTO `yby_town` VALUES ('1295', '新浦区', '254');
INSERT INTO `yby_town` VALUES ('1296', '海州区', '254');
INSERT INTO `yby_town` VALUES ('1297', '赣榆县', '254');
INSERT INTO `yby_town` VALUES ('1298', '东海县', '254');
INSERT INTO `yby_town` VALUES ('1299', '灌云县', '254');
INSERT INTO `yby_town` VALUES ('1300', '灌南县', '254');
INSERT INTO `yby_town` VALUES ('1301', '清河区', '255');
INSERT INTO `yby_town` VALUES ('1302', '楚州区', '255');
INSERT INTO `yby_town` VALUES ('1303', '淮阴区', '255');
INSERT INTO `yby_town` VALUES ('1304', '清浦区', '255');
INSERT INTO `yby_town` VALUES ('1305', '涟水县', '255');
INSERT INTO `yby_town` VALUES ('1306', '洪泽县', '255');
INSERT INTO `yby_town` VALUES ('1307', '盱眙县', '255');
INSERT INTO `yby_town` VALUES ('1308', '金湖县', '255');
INSERT INTO `yby_town` VALUES ('1309', '亭湖区', '256');
INSERT INTO `yby_town` VALUES ('1310', '盐都区', '256');
INSERT INTO `yby_town` VALUES ('1311', '响水县', '256');
INSERT INTO `yby_town` VALUES ('1312', '滨海县', '256');
INSERT INTO `yby_town` VALUES ('1313', '阜宁县', '256');
INSERT INTO `yby_town` VALUES ('1314', '射阳县', '256');
INSERT INTO `yby_town` VALUES ('1315', '建湖县', '256');
INSERT INTO `yby_town` VALUES ('1316', '东台市', '256');
INSERT INTO `yby_town` VALUES ('1317', '大丰市', '256');
INSERT INTO `yby_town` VALUES ('1318', '广陵区', '257');
INSERT INTO `yby_town` VALUES ('1319', '邗江区', '257');
INSERT INTO `yby_town` VALUES ('1320', '维扬区', '257');
INSERT INTO `yby_town` VALUES ('1321', '宝应县', '257');
INSERT INTO `yby_town` VALUES ('1322', '仪征市', '257');
INSERT INTO `yby_town` VALUES ('1323', '高邮市', '257');
INSERT INTO `yby_town` VALUES ('1324', '江都市', '257');
INSERT INTO `yby_town` VALUES ('1325', '京口区', '258');
INSERT INTO `yby_town` VALUES ('1326', '润州区', '258');
INSERT INTO `yby_town` VALUES ('1327', '丹徒区', '258');
INSERT INTO `yby_town` VALUES ('1328', '丹阳市', '258');
INSERT INTO `yby_town` VALUES ('1329', '扬中市', '258');
INSERT INTO `yby_town` VALUES ('1330', '句容市', '258');
INSERT INTO `yby_town` VALUES ('1331', '海陵区', '259');
INSERT INTO `yby_town` VALUES ('1332', '高港区', '259');
INSERT INTO `yby_town` VALUES ('1333', '兴化市', '259');
INSERT INTO `yby_town` VALUES ('1334', '靖江市', '259');
INSERT INTO `yby_town` VALUES ('1335', '泰兴市', '259');
INSERT INTO `yby_town` VALUES ('1336', '姜堰市', '259');
INSERT INTO `yby_town` VALUES ('1337', '宿城区', '260');
INSERT INTO `yby_town` VALUES ('1338', '宿豫区', '260');
INSERT INTO `yby_town` VALUES ('1339', '沭阳县', '260');
INSERT INTO `yby_town` VALUES ('1340', '泗阳县', '260');
INSERT INTO `yby_town` VALUES ('1341', '泗洪县', '260');
INSERT INTO `yby_town` VALUES ('1342', '东湖区', '261');
INSERT INTO `yby_town` VALUES ('1343', '西湖区', '261');
INSERT INTO `yby_town` VALUES ('1344', '青云谱区', '261');
INSERT INTO `yby_town` VALUES ('1345', '湾里区', '261');
INSERT INTO `yby_town` VALUES ('1346', '青山湖区', '261');
INSERT INTO `yby_town` VALUES ('1347', '南昌县', '261');
INSERT INTO `yby_town` VALUES ('1348', '新建县', '261');
INSERT INTO `yby_town` VALUES ('1349', '安义县', '261');
INSERT INTO `yby_town` VALUES ('1350', '进贤县', '261');
INSERT INTO `yby_town` VALUES ('1351', '昌江区', '262');
INSERT INTO `yby_town` VALUES ('1352', '珠山区', '262');
INSERT INTO `yby_town` VALUES ('1353', '浮梁县', '262');
INSERT INTO `yby_town` VALUES ('1354', '乐平市', '262');
INSERT INTO `yby_town` VALUES ('1355', '安源区', '263');
INSERT INTO `yby_town` VALUES ('1356', '湘东区', '263');
INSERT INTO `yby_town` VALUES ('1357', '莲花县', '263');
INSERT INTO `yby_town` VALUES ('1358', '上栗县', '263');
INSERT INTO `yby_town` VALUES ('1359', '芦溪县', '263');
INSERT INTO `yby_town` VALUES ('1360', '庐山区', '264');
INSERT INTO `yby_town` VALUES ('1361', '浔阳区', '264');
INSERT INTO `yby_town` VALUES ('1362', '九江县', '264');
INSERT INTO `yby_town` VALUES ('1363', '武宁县', '264');
INSERT INTO `yby_town` VALUES ('1364', '修水县', '264');
INSERT INTO `yby_town` VALUES ('1365', '永修县', '264');
INSERT INTO `yby_town` VALUES ('1366', '德安县', '264');
INSERT INTO `yby_town` VALUES ('1367', '星子县', '264');
INSERT INTO `yby_town` VALUES ('1368', '都昌县', '264');
INSERT INTO `yby_town` VALUES ('1369', '湖口县', '264');
INSERT INTO `yby_town` VALUES ('1370', '彭泽县', '264');
INSERT INTO `yby_town` VALUES ('1371', '瑞昌市', '264');
INSERT INTO `yby_town` VALUES ('1372', '渝水区', '265');
INSERT INTO `yby_town` VALUES ('1373', '分宜县', '265');
INSERT INTO `yby_town` VALUES ('1374', '月湖区', '266');
INSERT INTO `yby_town` VALUES ('1375', '余江县', '266');
INSERT INTO `yby_town` VALUES ('1376', '贵溪市', '266');
INSERT INTO `yby_town` VALUES ('1377', '章贡区', '267');
INSERT INTO `yby_town` VALUES ('1378', '赣县', '267');
INSERT INTO `yby_town` VALUES ('1379', '信丰县', '267');
INSERT INTO `yby_town` VALUES ('1380', '大余县', '267');
INSERT INTO `yby_town` VALUES ('1381', '上犹县', '267');
INSERT INTO `yby_town` VALUES ('1382', '崇义县', '267');
INSERT INTO `yby_town` VALUES ('1383', '安远县', '267');
INSERT INTO `yby_town` VALUES ('1384', '龙南县', '267');
INSERT INTO `yby_town` VALUES ('1385', '定南县', '267');
INSERT INTO `yby_town` VALUES ('1386', '全南县', '267');
INSERT INTO `yby_town` VALUES ('1387', '宁都县', '267');
INSERT INTO `yby_town` VALUES ('1388', '于都县', '267');
INSERT INTO `yby_town` VALUES ('1389', '兴国县', '267');
INSERT INTO `yby_town` VALUES ('1390', '会昌县', '267');
INSERT INTO `yby_town` VALUES ('1391', '寻乌县', '267');
INSERT INTO `yby_town` VALUES ('1392', '石城县', '267');
INSERT INTO `yby_town` VALUES ('1393', '瑞金市', '267');
INSERT INTO `yby_town` VALUES ('1394', '南康市', '267');
INSERT INTO `yby_town` VALUES ('1395', '吉州区', '268');
INSERT INTO `yby_town` VALUES ('1396', '青原区', '268');
INSERT INTO `yby_town` VALUES ('1397', '吉安县', '268');
INSERT INTO `yby_town` VALUES ('1398', '吉水县', '268');
INSERT INTO `yby_town` VALUES ('1399', '峡江县', '268');
INSERT INTO `yby_town` VALUES ('1400', '新干县', '268');
INSERT INTO `yby_town` VALUES ('1401', '永丰县', '268');
INSERT INTO `yby_town` VALUES ('1402', '泰和县', '268');
INSERT INTO `yby_town` VALUES ('1403', '遂川县', '268');
INSERT INTO `yby_town` VALUES ('1404', '万安县', '268');
INSERT INTO `yby_town` VALUES ('1405', '安福县', '268');
INSERT INTO `yby_town` VALUES ('1406', '永新县', '268');
INSERT INTO `yby_town` VALUES ('1407', '井冈山市', '268');
INSERT INTO `yby_town` VALUES ('1408', '袁州区', '269');
INSERT INTO `yby_town` VALUES ('1409', '奉新县', '269');
INSERT INTO `yby_town` VALUES ('1410', '万载县', '269');
INSERT INTO `yby_town` VALUES ('1411', '上高县', '269');
INSERT INTO `yby_town` VALUES ('1412', '宜丰县', '269');
INSERT INTO `yby_town` VALUES ('1413', '靖安县', '269');
INSERT INTO `yby_town` VALUES ('1414', '铜鼓县', '269');
INSERT INTO `yby_town` VALUES ('1415', '丰城市', '269');
INSERT INTO `yby_town` VALUES ('1416', '樟树市', '269');
INSERT INTO `yby_town` VALUES ('1417', '高安市', '269');
INSERT INTO `yby_town` VALUES ('1418', '临川区', '270');
INSERT INTO `yby_town` VALUES ('1419', '南城县', '270');
INSERT INTO `yby_town` VALUES ('1420', '黎川县', '270');
INSERT INTO `yby_town` VALUES ('1421', '南丰县', '270');
INSERT INTO `yby_town` VALUES ('1422', '崇仁县', '270');
INSERT INTO `yby_town` VALUES ('1423', '乐安县', '270');
INSERT INTO `yby_town` VALUES ('1424', '宜黄县', '270');
INSERT INTO `yby_town` VALUES ('1425', '金溪县', '270');
INSERT INTO `yby_town` VALUES ('1426', '资溪县', '270');
INSERT INTO `yby_town` VALUES ('1427', '东乡县', '270');
INSERT INTO `yby_town` VALUES ('1428', '广昌县', '270');
INSERT INTO `yby_town` VALUES ('1429', '信州区', '271');
INSERT INTO `yby_town` VALUES ('1430', '上饶县', '271');
INSERT INTO `yby_town` VALUES ('1431', '广丰县', '271');
INSERT INTO `yby_town` VALUES ('1432', '玉山县', '271');
INSERT INTO `yby_town` VALUES ('1433', '铅山县', '271');
INSERT INTO `yby_town` VALUES ('1434', '横峰县', '271');
INSERT INTO `yby_town` VALUES ('1435', '弋阳县', '271');
INSERT INTO `yby_town` VALUES ('1436', '余干县', '271');
INSERT INTO `yby_town` VALUES ('1437', '鄱阳县', '271');
INSERT INTO `yby_town` VALUES ('1438', '万年县', '271');
INSERT INTO `yby_town` VALUES ('1439', '婺源县', '271');
INSERT INTO `yby_town` VALUES ('1440', '德兴市', '271');
INSERT INTO `yby_town` VALUES ('1441', '荔湾区', '272');
INSERT INTO `yby_town` VALUES ('1442', '越秀区', '272');
INSERT INTO `yby_town` VALUES ('1443', '海珠区', '272');
INSERT INTO `yby_town` VALUES ('1444', '天河区', '272');
INSERT INTO `yby_town` VALUES ('1445', '白云区', '272');
INSERT INTO `yby_town` VALUES ('1446', '黄埔区', '272');
INSERT INTO `yby_town` VALUES ('1447', '番禺区', '272');
INSERT INTO `yby_town` VALUES ('1448', '花都区', '272');
INSERT INTO `yby_town` VALUES ('1449', '南沙区', '272');
INSERT INTO `yby_town` VALUES ('1450', '萝岗区', '272');
INSERT INTO `yby_town` VALUES ('1451', '增城市', '272');
INSERT INTO `yby_town` VALUES ('1452', '从化市', '272');
INSERT INTO `yby_town` VALUES ('1453', '武江区', '273');
INSERT INTO `yby_town` VALUES ('1454', '浈江区', '273');
INSERT INTO `yby_town` VALUES ('1455', '曲江区', '273');
INSERT INTO `yby_town` VALUES ('1456', '始兴县', '273');
INSERT INTO `yby_town` VALUES ('1457', '仁化县', '273');
INSERT INTO `yby_town` VALUES ('1458', '翁源县', '273');
INSERT INTO `yby_town` VALUES ('1459', '乳源瑶族自治县', '273');
INSERT INTO `yby_town` VALUES ('1460', '新丰县', '273');
INSERT INTO `yby_town` VALUES ('1461', '乐昌市', '273');
INSERT INTO `yby_town` VALUES ('1462', '南雄市', '273');
INSERT INTO `yby_town` VALUES ('1463', '罗湖区', '274');
INSERT INTO `yby_town` VALUES ('1464', '福田区', '274');
INSERT INTO `yby_town` VALUES ('1465', '南山区', '274');
INSERT INTO `yby_town` VALUES ('1466', '宝安区', '274');
INSERT INTO `yby_town` VALUES ('1467', '龙岗区', '274');
INSERT INTO `yby_town` VALUES ('1468', '盐田区', '274');
INSERT INTO `yby_town` VALUES ('1469', '香洲区', '275');
INSERT INTO `yby_town` VALUES ('1470', '斗门区', '275');
INSERT INTO `yby_town` VALUES ('1471', '金湾区', '275');
INSERT INTO `yby_town` VALUES ('1472', '龙湖区', '276');
INSERT INTO `yby_town` VALUES ('1473', '金平区', '276');
INSERT INTO `yby_town` VALUES ('1474', '濠江区', '276');
INSERT INTO `yby_town` VALUES ('1475', '潮阳区', '276');
INSERT INTO `yby_town` VALUES ('1476', '潮南区', '276');
INSERT INTO `yby_town` VALUES ('1477', '澄海区', '276');
INSERT INTO `yby_town` VALUES ('1478', '南澳县', '276');
INSERT INTO `yby_town` VALUES ('1479', '禅城区', '277');
INSERT INTO `yby_town` VALUES ('1480', '南海区', '277');
INSERT INTO `yby_town` VALUES ('1481', '顺德区', '277');
INSERT INTO `yby_town` VALUES ('1482', '三水区', '277');
INSERT INTO `yby_town` VALUES ('1483', '高明区', '277');
INSERT INTO `yby_town` VALUES ('1484', '蓬江区', '278');
INSERT INTO `yby_town` VALUES ('1485', '江海区', '278');
INSERT INTO `yby_town` VALUES ('1486', '新会区', '278');
INSERT INTO `yby_town` VALUES ('1487', '台山市', '278');
INSERT INTO `yby_town` VALUES ('1488', '开平市', '278');
INSERT INTO `yby_town` VALUES ('1489', '鹤山市', '278');
INSERT INTO `yby_town` VALUES ('1490', '恩平市', '278');
INSERT INTO `yby_town` VALUES ('1491', '赤坎区', '279');
INSERT INTO `yby_town` VALUES ('1492', '霞山区', '279');
INSERT INTO `yby_town` VALUES ('1493', '坡头区', '279');
INSERT INTO `yby_town` VALUES ('1494', '麻章区', '279');
INSERT INTO `yby_town` VALUES ('1495', '遂溪县', '279');
INSERT INTO `yby_town` VALUES ('1496', '徐闻县', '279');
INSERT INTO `yby_town` VALUES ('1497', '廉江市', '279');
INSERT INTO `yby_town` VALUES ('1498', '雷州市', '279');
INSERT INTO `yby_town` VALUES ('1499', '吴川市', '279');
INSERT INTO `yby_town` VALUES ('1500', '茂南区', '280');
INSERT INTO `yby_town` VALUES ('1501', '茂港区', '280');
INSERT INTO `yby_town` VALUES ('1502', '电白县', '280');
INSERT INTO `yby_town` VALUES ('1503', '高州市', '280');
INSERT INTO `yby_town` VALUES ('1504', '化州市', '280');
INSERT INTO `yby_town` VALUES ('1505', '信宜市', '280');
INSERT INTO `yby_town` VALUES ('1506', '端州区', '281');
INSERT INTO `yby_town` VALUES ('1507', '鼎湖区', '281');
INSERT INTO `yby_town` VALUES ('1508', '广宁县', '281');
INSERT INTO `yby_town` VALUES ('1509', '怀集县', '281');
INSERT INTO `yby_town` VALUES ('1510', '封开县', '281');
INSERT INTO `yby_town` VALUES ('1511', '德庆县', '281');
INSERT INTO `yby_town` VALUES ('1512', '高要市', '281');
INSERT INTO `yby_town` VALUES ('1513', '四会市', '281');
INSERT INTO `yby_town` VALUES ('1514', '惠城区', '282');
INSERT INTO `yby_town` VALUES ('1515', '惠阳区', '282');
INSERT INTO `yby_town` VALUES ('1516', '博罗县', '282');
INSERT INTO `yby_town` VALUES ('1517', '惠东县', '282');
INSERT INTO `yby_town` VALUES ('1518', '龙门县', '282');
INSERT INTO `yby_town` VALUES ('1519', '梅江区', '283');
INSERT INTO `yby_town` VALUES ('1520', '梅县', '283');
INSERT INTO `yby_town` VALUES ('1521', '大埔县', '283');
INSERT INTO `yby_town` VALUES ('1522', '丰顺县', '283');
INSERT INTO `yby_town` VALUES ('1523', '五华县', '283');
INSERT INTO `yby_town` VALUES ('1524', '平远县', '283');
INSERT INTO `yby_town` VALUES ('1525', '蕉岭县', '283');
INSERT INTO `yby_town` VALUES ('1526', '兴宁市', '283');
INSERT INTO `yby_town` VALUES ('1527', '城区', '284');
INSERT INTO `yby_town` VALUES ('1528', '海丰县', '284');
INSERT INTO `yby_town` VALUES ('1529', '陆河县', '284');
INSERT INTO `yby_town` VALUES ('1530', '陆丰市', '284');
INSERT INTO `yby_town` VALUES ('1531', '源城区', '285');
INSERT INTO `yby_town` VALUES ('1532', '紫金县', '285');
INSERT INTO `yby_town` VALUES ('1533', '龙川县', '285');
INSERT INTO `yby_town` VALUES ('1534', '连平县', '285');
INSERT INTO `yby_town` VALUES ('1535', '和平县', '285');
INSERT INTO `yby_town` VALUES ('1536', '东源县', '285');
INSERT INTO `yby_town` VALUES ('1537', '江城区', '286');
INSERT INTO `yby_town` VALUES ('1538', '阳西县', '286');
INSERT INTO `yby_town` VALUES ('1539', '阳东县', '286');
INSERT INTO `yby_town` VALUES ('1540', '阳春市', '286');
INSERT INTO `yby_town` VALUES ('1541', '清城区', '287');
INSERT INTO `yby_town` VALUES ('1542', '佛冈县', '287');
INSERT INTO `yby_town` VALUES ('1543', '阳山县', '287');
INSERT INTO `yby_town` VALUES ('1544', '连山壮族瑶族自治县', '287');
INSERT INTO `yby_town` VALUES ('1545', '连南瑶族自治县', '287');
INSERT INTO `yby_town` VALUES ('1546', '清新县', '287');
INSERT INTO `yby_town` VALUES ('1547', '英德市', '287');
INSERT INTO `yby_town` VALUES ('1548', '连州市', '287');
INSERT INTO `yby_town` VALUES ('1549', '东莞市', '288');
INSERT INTO `yby_town` VALUES ('1550', '中山市', '289');
INSERT INTO `yby_town` VALUES ('1551', '湘桥区', '290');
INSERT INTO `yby_town` VALUES ('1552', '潮安县', '290');
INSERT INTO `yby_town` VALUES ('1553', '饶平县', '290');
INSERT INTO `yby_town` VALUES ('1554', '榕城区', '291');
INSERT INTO `yby_town` VALUES ('1555', '揭东县', '291');
INSERT INTO `yby_town` VALUES ('1556', '揭西县', '291');
INSERT INTO `yby_town` VALUES ('1557', '惠来县', '291');
INSERT INTO `yby_town` VALUES ('1558', '普宁市', '291');
INSERT INTO `yby_town` VALUES ('1559', '云城区', '292');
INSERT INTO `yby_town` VALUES ('1560', '新兴县', '292');
INSERT INTO `yby_town` VALUES ('1561', '郁南县', '292');
INSERT INTO `yby_town` VALUES ('1562', '云安县', '292');
INSERT INTO `yby_town` VALUES ('1563', '罗定市', '292');
INSERT INTO `yby_town` VALUES ('1564', '兴宁区', '293');
INSERT INTO `yby_town` VALUES ('1565', '青秀区', '293');
INSERT INTO `yby_town` VALUES ('1566', '江南区', '293');
INSERT INTO `yby_town` VALUES ('1567', '西乡塘区', '293');
INSERT INTO `yby_town` VALUES ('1568', '良庆区', '293');
INSERT INTO `yby_town` VALUES ('1569', '邕宁区', '293');
INSERT INTO `yby_town` VALUES ('1570', '武鸣县', '293');
INSERT INTO `yby_town` VALUES ('1571', '隆安县', '293');
INSERT INTO `yby_town` VALUES ('1572', '马山县', '293');
INSERT INTO `yby_town` VALUES ('1573', '上林县', '293');
INSERT INTO `yby_town` VALUES ('1574', '宾阳县', '293');
INSERT INTO `yby_town` VALUES ('1575', '横县', '293');
INSERT INTO `yby_town` VALUES ('1576', '城中区', '294');
INSERT INTO `yby_town` VALUES ('1577', '鱼峰区', '294');
INSERT INTO `yby_town` VALUES ('1578', '柳南区', '294');
INSERT INTO `yby_town` VALUES ('1579', '柳北区', '294');
INSERT INTO `yby_town` VALUES ('1580', '柳江县', '294');
INSERT INTO `yby_town` VALUES ('1581', '柳城县', '294');
INSERT INTO `yby_town` VALUES ('1582', '鹿寨县', '294');
INSERT INTO `yby_town` VALUES ('1583', '融安县', '294');
INSERT INTO `yby_town` VALUES ('1584', '融水苗族自治县', '294');
INSERT INTO `yby_town` VALUES ('1585', '三江侗族自治县', '294');
INSERT INTO `yby_town` VALUES ('1586', '秀峰区', '295');
INSERT INTO `yby_town` VALUES ('1587', '叠彩区', '295');
INSERT INTO `yby_town` VALUES ('1588', '象山区', '295');
INSERT INTO `yby_town` VALUES ('1589', '七星区', '295');
INSERT INTO `yby_town` VALUES ('1590', '雁山区', '295');
INSERT INTO `yby_town` VALUES ('1591', '阳朔县', '295');
INSERT INTO `yby_town` VALUES ('1592', '临桂县', '295');
INSERT INTO `yby_town` VALUES ('1593', '灵川县', '295');
INSERT INTO `yby_town` VALUES ('1594', '全州县', '295');
INSERT INTO `yby_town` VALUES ('1595', '兴安县', '295');
INSERT INTO `yby_town` VALUES ('1596', '永福县', '295');
INSERT INTO `yby_town` VALUES ('1597', '灌阳县', '295');
INSERT INTO `yby_town` VALUES ('1598', '龙胜各族自治县', '295');
INSERT INTO `yby_town` VALUES ('1599', '资源县', '295');
INSERT INTO `yby_town` VALUES ('1600', '平乐县', '295');
INSERT INTO `yby_town` VALUES ('1601', '荔蒲县', '295');
INSERT INTO `yby_town` VALUES ('1602', '恭城瑶族自治县', '295');
INSERT INTO `yby_town` VALUES ('1603', '万秀区', '296');
INSERT INTO `yby_town` VALUES ('1604', '蝶山区', '296');
INSERT INTO `yby_town` VALUES ('1605', '长洲区', '296');
INSERT INTO `yby_town` VALUES ('1606', '苍梧县', '296');
INSERT INTO `yby_town` VALUES ('1607', '藤县', '296');
INSERT INTO `yby_town` VALUES ('1608', '蒙山县', '296');
INSERT INTO `yby_town` VALUES ('1609', '岑溪市', '296');
INSERT INTO `yby_town` VALUES ('1610', '海城区', '297');
INSERT INTO `yby_town` VALUES ('1611', '银海区', '297');
INSERT INTO `yby_town` VALUES ('1612', '铁山港区', '297');
INSERT INTO `yby_town` VALUES ('1613', '合浦县', '297');
INSERT INTO `yby_town` VALUES ('1614', '港口区', '298');
INSERT INTO `yby_town` VALUES ('1615', '防城区', '298');
INSERT INTO `yby_town` VALUES ('1616', '上思县', '298');
INSERT INTO `yby_town` VALUES ('1617', '东兴市', '298');
INSERT INTO `yby_town` VALUES ('1618', '钦南区', '299');
INSERT INTO `yby_town` VALUES ('1619', '钦北区', '299');
INSERT INTO `yby_town` VALUES ('1620', '灵山县', '299');
INSERT INTO `yby_town` VALUES ('1621', '浦北县', '299');
INSERT INTO `yby_town` VALUES ('1622', '港北区', '300');
INSERT INTO `yby_town` VALUES ('1623', '港南区', '300');
INSERT INTO `yby_town` VALUES ('1624', '覃塘区', '300');
INSERT INTO `yby_town` VALUES ('1625', '平南县', '300');
INSERT INTO `yby_town` VALUES ('1626', '桂平市', '300');
INSERT INTO `yby_town` VALUES ('1627', '玉州区', '301');
INSERT INTO `yby_town` VALUES ('1628', '容县', '301');
INSERT INTO `yby_town` VALUES ('1629', '陆川县', '301');
INSERT INTO `yby_town` VALUES ('1630', '博白县', '301');
INSERT INTO `yby_town` VALUES ('1631', '兴业县', '301');
INSERT INTO `yby_town` VALUES ('1632', '北流市', '301');
INSERT INTO `yby_town` VALUES ('1633', '右江区', '302');
INSERT INTO `yby_town` VALUES ('1634', '田阳县', '302');
INSERT INTO `yby_town` VALUES ('1635', '田东县', '302');
INSERT INTO `yby_town` VALUES ('1636', '平果县', '302');
INSERT INTO `yby_town` VALUES ('1637', '德保县', '302');
INSERT INTO `yby_town` VALUES ('1638', '靖西县', '302');
INSERT INTO `yby_town` VALUES ('1639', '那坡县', '302');
INSERT INTO `yby_town` VALUES ('1640', '凌云县', '302');
INSERT INTO `yby_town` VALUES ('1641', '乐业县', '302');
INSERT INTO `yby_town` VALUES ('1642', '田林县', '302');
INSERT INTO `yby_town` VALUES ('1643', '西林县', '302');
INSERT INTO `yby_town` VALUES ('1644', '隆林各族自治县', '302');
INSERT INTO `yby_town` VALUES ('1645', '八步区', '303');
INSERT INTO `yby_town` VALUES ('1646', '昭平县', '303');
INSERT INTO `yby_town` VALUES ('1647', '钟山县', '303');
INSERT INTO `yby_town` VALUES ('1648', '富川瑶族自治县', '303');
INSERT INTO `yby_town` VALUES ('1649', '金城江区', '304');
INSERT INTO `yby_town` VALUES ('1650', '南丹县', '304');
INSERT INTO `yby_town` VALUES ('1651', '天峨县', '304');
INSERT INTO `yby_town` VALUES ('1652', '凤山县', '304');
INSERT INTO `yby_town` VALUES ('1653', '东兰县', '304');
INSERT INTO `yby_town` VALUES ('1654', '罗城仫佬族自治县', '304');
INSERT INTO `yby_town` VALUES ('1655', '环江毛南族自治县', '304');
INSERT INTO `yby_town` VALUES ('1656', '巴马瑶族自治县', '304');
INSERT INTO `yby_town` VALUES ('1657', '都安瑶族自治县', '304');
INSERT INTO `yby_town` VALUES ('1658', '大化瑶族自治县', '304');
INSERT INTO `yby_town` VALUES ('1659', '宜州市', '304');
INSERT INTO `yby_town` VALUES ('1660', '兴宾区', '305');
INSERT INTO `yby_town` VALUES ('1661', '忻城县', '305');
INSERT INTO `yby_town` VALUES ('1662', '象州县', '305');
INSERT INTO `yby_town` VALUES ('1663', '武宣县', '305');
INSERT INTO `yby_town` VALUES ('1664', '金秀瑶族自治县', '305');
INSERT INTO `yby_town` VALUES ('1665', '合山市', '305');
INSERT INTO `yby_town` VALUES ('1666', '江洲区', '306');
INSERT INTO `yby_town` VALUES ('1667', '扶绥县', '306');
INSERT INTO `yby_town` VALUES ('1668', '宁明县', '306');
INSERT INTO `yby_town` VALUES ('1669', '龙州县', '306');
INSERT INTO `yby_town` VALUES ('1670', '大新县', '306');
INSERT INTO `yby_town` VALUES ('1671', '天等县', '306');
INSERT INTO `yby_town` VALUES ('1672', '凭祥市', '306');
INSERT INTO `yby_town` VALUES ('1673', '五华区', '307');
INSERT INTO `yby_town` VALUES ('1674', '盘龙区', '307');
INSERT INTO `yby_town` VALUES ('1675', '官渡区', '307');
INSERT INTO `yby_town` VALUES ('1676', '西山区', '307');
INSERT INTO `yby_town` VALUES ('1677', '东川区', '307');
INSERT INTO `yby_town` VALUES ('1678', '呈贡县', '307');
INSERT INTO `yby_town` VALUES ('1679', '晋宁县', '307');
INSERT INTO `yby_town` VALUES ('1680', '富民县', '307');
INSERT INTO `yby_town` VALUES ('1681', '宜良县', '307');
INSERT INTO `yby_town` VALUES ('1682', '石林彝族自治县', '307');
INSERT INTO `yby_town` VALUES ('1683', '嵩明县', '307');
INSERT INTO `yby_town` VALUES ('1684', '禄劝彝族苗族自治县', '307');
INSERT INTO `yby_town` VALUES ('1685', '寻甸回族彝族自治县', '307');
INSERT INTO `yby_town` VALUES ('1686', '安宁市', '307');
INSERT INTO `yby_town` VALUES ('1687', '麒麟区', '308');
INSERT INTO `yby_town` VALUES ('1688', '马龙县', '308');
INSERT INTO `yby_town` VALUES ('1689', '陆良县', '308');
INSERT INTO `yby_town` VALUES ('1690', '师宗县', '308');
INSERT INTO `yby_town` VALUES ('1691', '罗平县', '308');
INSERT INTO `yby_town` VALUES ('1692', '富源县', '308');
INSERT INTO `yby_town` VALUES ('1693', '会泽县', '308');
INSERT INTO `yby_town` VALUES ('1694', '沾益县', '308');
INSERT INTO `yby_town` VALUES ('1695', '宣威市', '308');
INSERT INTO `yby_town` VALUES ('1696', '红塔区', '309');
INSERT INTO `yby_town` VALUES ('1697', '江川县', '309');
INSERT INTO `yby_town` VALUES ('1698', '澄江县', '309');
INSERT INTO `yby_town` VALUES ('1699', '通海县', '309');
INSERT INTO `yby_town` VALUES ('1700', '华宁县', '309');
INSERT INTO `yby_town` VALUES ('1701', '易门县', '309');
INSERT INTO `yby_town` VALUES ('1702', '峨山彝族自治县', '309');
INSERT INTO `yby_town` VALUES ('1703', '新平彝族傣族自治县', '309');
INSERT INTO `yby_town` VALUES ('1704', '元江哈尼族彝族傣族自治县', '309');
INSERT INTO `yby_town` VALUES ('1705', '隆阳区', '310');
INSERT INTO `yby_town` VALUES ('1706', '施甸县', '310');
INSERT INTO `yby_town` VALUES ('1707', '腾冲县', '310');
INSERT INTO `yby_town` VALUES ('1708', '龙陵县', '310');
INSERT INTO `yby_town` VALUES ('1709', '昌宁县', '310');
INSERT INTO `yby_town` VALUES ('1710', '昭阳区', '311');
INSERT INTO `yby_town` VALUES ('1711', '鲁甸县', '311');
INSERT INTO `yby_town` VALUES ('1712', '巧家县', '311');
INSERT INTO `yby_town` VALUES ('1713', '盐津县', '311');
INSERT INTO `yby_town` VALUES ('1714', '大关县', '311');
INSERT INTO `yby_town` VALUES ('1715', '永善县', '311');
INSERT INTO `yby_town` VALUES ('1716', '绥江县', '311');
INSERT INTO `yby_town` VALUES ('1717', '镇雄县', '311');
INSERT INTO `yby_town` VALUES ('1718', '彝良县', '311');
INSERT INTO `yby_town` VALUES ('1719', '威信县', '311');
INSERT INTO `yby_town` VALUES ('1720', '水富县', '311');
INSERT INTO `yby_town` VALUES ('1721', '古城区', '312');
INSERT INTO `yby_town` VALUES ('1722', '玉龙纳西族自治县', '312');
INSERT INTO `yby_town` VALUES ('1723', '永胜县', '312');
INSERT INTO `yby_town` VALUES ('1724', '华坪县', '312');
INSERT INTO `yby_town` VALUES ('1725', '宁蒗彝族自治县', '312');
INSERT INTO `yby_town` VALUES ('1726', '翠云区', '313');
INSERT INTO `yby_town` VALUES ('1727', '普洱哈尼族彝族自治县', '313');
INSERT INTO `yby_town` VALUES ('1728', '墨江哈尼族自治县', '313');
INSERT INTO `yby_town` VALUES ('1729', '景东彝族自治县', '313');
INSERT INTO `yby_town` VALUES ('1730', '景谷傣族彝族自治县', '313');
INSERT INTO `yby_town` VALUES ('1731', '镇沅彝族哈尼族拉祜族自治县', '313');
INSERT INTO `yby_town` VALUES ('1732', '江城哈尼族彝族自治县', '313');
INSERT INTO `yby_town` VALUES ('1733', '孟连傣族拉祜族佤族自治县', '313');
INSERT INTO `yby_town` VALUES ('1734', '澜沧拉祜族自治县', '313');
INSERT INTO `yby_town` VALUES ('1735', '西盟佤族自治县', '313');
INSERT INTO `yby_town` VALUES ('1736', '临翔区', '314');
INSERT INTO `yby_town` VALUES ('1737', '凤庆县', '314');
INSERT INTO `yby_town` VALUES ('1738', '云县', '314');
INSERT INTO `yby_town` VALUES ('1739', '永德县', '314');
INSERT INTO `yby_town` VALUES ('1740', '镇康县', '314');
INSERT INTO `yby_town` VALUES ('1741', '双江拉祜族佤族布朗族傣族自治县', '314');
INSERT INTO `yby_town` VALUES ('1742', '耿马傣族佤族自治县', '314');
INSERT INTO `yby_town` VALUES ('1743', '沧源佤族自治县', '314');
INSERT INTO `yby_town` VALUES ('1744', '楚雄市', '315');
INSERT INTO `yby_town` VALUES ('1745', '双柏县', '315');
INSERT INTO `yby_town` VALUES ('1746', '牟定县', '315');
INSERT INTO `yby_town` VALUES ('1747', '南华县', '315');
INSERT INTO `yby_town` VALUES ('1748', '姚安县', '315');
INSERT INTO `yby_town` VALUES ('1749', '大姚县', '315');
INSERT INTO `yby_town` VALUES ('1750', '永仁县', '315');
INSERT INTO `yby_town` VALUES ('1751', '元谋县', '315');
INSERT INTO `yby_town` VALUES ('1752', '武定县', '315');
INSERT INTO `yby_town` VALUES ('1753', '禄丰县', '315');
INSERT INTO `yby_town` VALUES ('1754', '个旧市', '316');
INSERT INTO `yby_town` VALUES ('1755', '开远市', '316');
INSERT INTO `yby_town` VALUES ('1756', '蒙自县', '316');
INSERT INTO `yby_town` VALUES ('1757', '屏边苗族自治县', '316');
INSERT INTO `yby_town` VALUES ('1758', '建水县', '316');
INSERT INTO `yby_town` VALUES ('1759', '石屏县', '316');
INSERT INTO `yby_town` VALUES ('1760', '弥勒县', '316');
INSERT INTO `yby_town` VALUES ('1761', '泸西县', '316');
INSERT INTO `yby_town` VALUES ('1762', '元阳县', '316');
INSERT INTO `yby_town` VALUES ('1763', '红河县', '316');
INSERT INTO `yby_town` VALUES ('1764', '金平苗族瑶族傣族自治县', '316');
INSERT INTO `yby_town` VALUES ('1765', '绿春县', '316');
INSERT INTO `yby_town` VALUES ('1766', '河口瑶族自治县', '316');
INSERT INTO `yby_town` VALUES ('1767', '文山县', '317');
INSERT INTO `yby_town` VALUES ('1768', '砚山县', '317');
INSERT INTO `yby_town` VALUES ('1769', '西畴县', '317');
INSERT INTO `yby_town` VALUES ('1770', '麻栗坡县', '317');
INSERT INTO `yby_town` VALUES ('1771', '马关县', '317');
INSERT INTO `yby_town` VALUES ('1772', '丘北县', '317');
INSERT INTO `yby_town` VALUES ('1773', '广南县', '317');
INSERT INTO `yby_town` VALUES ('1774', '富宁县', '317');
INSERT INTO `yby_town` VALUES ('1775', '景洪市', '318');
INSERT INTO `yby_town` VALUES ('1776', '勐海县', '318');
INSERT INTO `yby_town` VALUES ('1777', '勐腊县', '318');
INSERT INTO `yby_town` VALUES ('1778', '大理市', '319');
INSERT INTO `yby_town` VALUES ('1779', '漾濞彝族自治县', '319');
INSERT INTO `yby_town` VALUES ('1780', '祥云县', '319');
INSERT INTO `yby_town` VALUES ('1781', '宾川县', '319');
INSERT INTO `yby_town` VALUES ('1782', '弥渡县', '319');
INSERT INTO `yby_town` VALUES ('1783', '南涧彝族自治县', '319');
INSERT INTO `yby_town` VALUES ('1784', '巍山彝族回族自治县', '319');
INSERT INTO `yby_town` VALUES ('1785', '永平县', '319');
INSERT INTO `yby_town` VALUES ('1786', '云龙县', '319');
INSERT INTO `yby_town` VALUES ('1787', '洱源县', '319');
INSERT INTO `yby_town` VALUES ('1788', '剑川县', '319');
INSERT INTO `yby_town` VALUES ('1789', '鹤庆县', '319');
INSERT INTO `yby_town` VALUES ('1790', '瑞丽市', '320');
INSERT INTO `yby_town` VALUES ('1791', '潞西市', '320');
INSERT INTO `yby_town` VALUES ('1792', '梁河县', '320');
INSERT INTO `yby_town` VALUES ('1793', '盈江县', '320');
INSERT INTO `yby_town` VALUES ('1794', '陇川县', '320');
INSERT INTO `yby_town` VALUES ('1795', '泸水县', '321');
INSERT INTO `yby_town` VALUES ('1796', '福贡县', '321');
INSERT INTO `yby_town` VALUES ('1797', '贡山独龙族怒族自治县', '321');
INSERT INTO `yby_town` VALUES ('1798', '兰坪白族普米族自治县', '321');
INSERT INTO `yby_town` VALUES ('1799', '香格里拉县', '322');
INSERT INTO `yby_town` VALUES ('1800', '德钦县', '322');
INSERT INTO `yby_town` VALUES ('1801', '维西傈僳族自治县', '322');
INSERT INTO `yby_town` VALUES ('1802', '南明区', '323');
INSERT INTO `yby_town` VALUES ('1803', '云岩区', '323');
INSERT INTO `yby_town` VALUES ('1804', '花溪区', '323');
INSERT INTO `yby_town` VALUES ('1805', '乌当区', '323');
INSERT INTO `yby_town` VALUES ('1806', '白云区', '323');
INSERT INTO `yby_town` VALUES ('1807', '小河区', '323');
INSERT INTO `yby_town` VALUES ('1808', '开阳县', '323');
INSERT INTO `yby_town` VALUES ('1809', '息烽县', '323');
INSERT INTO `yby_town` VALUES ('1810', '修文县', '323');
INSERT INTO `yby_town` VALUES ('1811', '清镇市', '323');
INSERT INTO `yby_town` VALUES ('1812', '钟山区', '324');
INSERT INTO `yby_town` VALUES ('1813', '六枝特区', '324');
INSERT INTO `yby_town` VALUES ('1814', '水城县', '324');
INSERT INTO `yby_town` VALUES ('1815', '盘县', '324');
INSERT INTO `yby_town` VALUES ('1816', '红花岗区', '325');
INSERT INTO `yby_town` VALUES ('1817', '汇川区', '325');
INSERT INTO `yby_town` VALUES ('1818', '遵义县', '325');
INSERT INTO `yby_town` VALUES ('1819', '桐梓县', '325');
INSERT INTO `yby_town` VALUES ('1820', '绥阳县', '325');
INSERT INTO `yby_town` VALUES ('1821', '正安县', '325');
INSERT INTO `yby_town` VALUES ('1822', '道真仡佬族苗族自治县', '325');
INSERT INTO `yby_town` VALUES ('1823', '务川仡佬族苗族自治县', '325');
INSERT INTO `yby_town` VALUES ('1824', '凤冈县', '325');
INSERT INTO `yby_town` VALUES ('1825', '湄潭县', '325');
INSERT INTO `yby_town` VALUES ('1826', '余庆县', '325');
INSERT INTO `yby_town` VALUES ('1827', '习水县', '325');
INSERT INTO `yby_town` VALUES ('1828', '赤水市', '325');
INSERT INTO `yby_town` VALUES ('1829', '仁怀市', '325');
INSERT INTO `yby_town` VALUES ('1830', '西秀区', '326');
INSERT INTO `yby_town` VALUES ('1831', '平坝县', '326');
INSERT INTO `yby_town` VALUES ('1832', '普定县', '326');
INSERT INTO `yby_town` VALUES ('1833', '镇宁布依族苗族自治县', '326');
INSERT INTO `yby_town` VALUES ('1834', '关岭布依族苗族自治县', '326');
INSERT INTO `yby_town` VALUES ('1835', '紫云苗族布依族自治县', '326');
INSERT INTO `yby_town` VALUES ('1836', '铜仁市', '327');
INSERT INTO `yby_town` VALUES ('1837', '江口县', '327');
INSERT INTO `yby_town` VALUES ('1838', '玉屏侗族自治县', '327');
INSERT INTO `yby_town` VALUES ('1839', '石阡县', '327');
INSERT INTO `yby_town` VALUES ('1840', '思南县', '327');
INSERT INTO `yby_town` VALUES ('1841', '印江土家族苗族自治县', '327');
INSERT INTO `yby_town` VALUES ('1842', '德江县', '327');
INSERT INTO `yby_town` VALUES ('1843', '沿河土家族自治县', '327');
INSERT INTO `yby_town` VALUES ('1844', '松桃苗族自治县', '327');
INSERT INTO `yby_town` VALUES ('1845', '万山特区', '327');
INSERT INTO `yby_town` VALUES ('1846', '兴义市', '328');
INSERT INTO `yby_town` VALUES ('1847', '兴仁县', '328');
INSERT INTO `yby_town` VALUES ('1848', '普安县', '328');
INSERT INTO `yby_town` VALUES ('1849', '晴隆县', '328');
INSERT INTO `yby_town` VALUES ('1850', '贞丰县', '328');
INSERT INTO `yby_town` VALUES ('1851', '望谟县', '328');
INSERT INTO `yby_town` VALUES ('1852', '册亨县', '328');
INSERT INTO `yby_town` VALUES ('1853', '安龙县', '328');
INSERT INTO `yby_town` VALUES ('1854', '毕节市', '329');
INSERT INTO `yby_town` VALUES ('1855', '大方县', '329');
INSERT INTO `yby_town` VALUES ('1856', '黔西县', '329');
INSERT INTO `yby_town` VALUES ('1857', '金沙县', '329');
INSERT INTO `yby_town` VALUES ('1858', '织金县', '329');
INSERT INTO `yby_town` VALUES ('1859', '纳雍县', '329');
INSERT INTO `yby_town` VALUES ('1860', '威宁彝族回族苗族自治县', '329');
INSERT INTO `yby_town` VALUES ('1861', '赫章县', '329');
INSERT INTO `yby_town` VALUES ('1862', '凯里市', '330');
INSERT INTO `yby_town` VALUES ('1863', '黄平县', '330');
INSERT INTO `yby_town` VALUES ('1864', '施秉县', '330');
INSERT INTO `yby_town` VALUES ('1865', '三穗县', '330');
INSERT INTO `yby_town` VALUES ('1866', '镇远县', '330');
INSERT INTO `yby_town` VALUES ('1867', '岑巩县', '330');
INSERT INTO `yby_town` VALUES ('1868', '天柱县', '330');
INSERT INTO `yby_town` VALUES ('1869', '锦屏县', '330');
INSERT INTO `yby_town` VALUES ('1870', '剑河县', '330');
INSERT INTO `yby_town` VALUES ('1871', '台江县', '330');
INSERT INTO `yby_town` VALUES ('1872', '黎平县', '330');
INSERT INTO `yby_town` VALUES ('1873', '榕江县', '330');
INSERT INTO `yby_town` VALUES ('1874', '从江县', '330');
INSERT INTO `yby_town` VALUES ('1875', '雷山县', '330');
INSERT INTO `yby_town` VALUES ('1876', '麻江县', '330');
INSERT INTO `yby_town` VALUES ('1877', '丹寨县', '330');
INSERT INTO `yby_town` VALUES ('1878', '都匀市', '331');
INSERT INTO `yby_town` VALUES ('1879', '福泉市', '331');
INSERT INTO `yby_town` VALUES ('1880', '荔波县', '331');
INSERT INTO `yby_town` VALUES ('1881', '贵定县', '331');
INSERT INTO `yby_town` VALUES ('1882', '瓮安县', '331');
INSERT INTO `yby_town` VALUES ('1883', '独山县', '331');
INSERT INTO `yby_town` VALUES ('1884', '平塘县', '331');
INSERT INTO `yby_town` VALUES ('1885', '罗甸县', '331');
INSERT INTO `yby_town` VALUES ('1886', '长顺县', '331');
INSERT INTO `yby_town` VALUES ('1887', '龙里县', '331');
INSERT INTO `yby_town` VALUES ('1888', '惠水县', '331');
INSERT INTO `yby_town` VALUES ('1889', '三都水族自治县', '331');
INSERT INTO `yby_town` VALUES ('1890', '锦江区', '332');
INSERT INTO `yby_town` VALUES ('1891', '青羊区', '332');
INSERT INTO `yby_town` VALUES ('1892', '金牛区', '332');
INSERT INTO `yby_town` VALUES ('1893', '武侯区', '332');
INSERT INTO `yby_town` VALUES ('1894', '成华区', '332');
INSERT INTO `yby_town` VALUES ('1895', '龙泉驿区', '332');
INSERT INTO `yby_town` VALUES ('1896', '青白江区', '332');
INSERT INTO `yby_town` VALUES ('1897', '新都区', '332');
INSERT INTO `yby_town` VALUES ('1898', '温江区', '332');
INSERT INTO `yby_town` VALUES ('1899', '金堂县', '332');
INSERT INTO `yby_town` VALUES ('1900', '双流县', '332');
INSERT INTO `yby_town` VALUES ('1901', '郫县', '332');
INSERT INTO `yby_town` VALUES ('1902', '大邑县', '332');
INSERT INTO `yby_town` VALUES ('1903', '蒲江县', '332');
INSERT INTO `yby_town` VALUES ('1904', '新津县', '332');
INSERT INTO `yby_town` VALUES ('1905', '都江堰市', '332');
INSERT INTO `yby_town` VALUES ('1906', '彭州市', '332');
INSERT INTO `yby_town` VALUES ('1907', '邛崃市', '332');
INSERT INTO `yby_town` VALUES ('1908', '崇州市', '332');
INSERT INTO `yby_town` VALUES ('1909', '自流井区', '333');
INSERT INTO `yby_town` VALUES ('1910', '贡井区', '333');
INSERT INTO `yby_town` VALUES ('1911', '大安区', '333');
INSERT INTO `yby_town` VALUES ('1912', '沿滩区', '333');
INSERT INTO `yby_town` VALUES ('1913', '荣县', '333');
INSERT INTO `yby_town` VALUES ('1914', '富顺县', '333');
INSERT INTO `yby_town` VALUES ('1915', '东区', '334');
INSERT INTO `yby_town` VALUES ('1916', '西区', '334');
INSERT INTO `yby_town` VALUES ('1917', '仁和区', '334');
INSERT INTO `yby_town` VALUES ('1918', '米易县', '334');
INSERT INTO `yby_town` VALUES ('1919', '盐边县', '334');
INSERT INTO `yby_town` VALUES ('1920', '江阳区', '335');
INSERT INTO `yby_town` VALUES ('1921', '纳溪区', '335');
INSERT INTO `yby_town` VALUES ('1922', '龙马潭区', '335');
INSERT INTO `yby_town` VALUES ('1923', '泸县', '335');
INSERT INTO `yby_town` VALUES ('1924', '合江县', '335');
INSERT INTO `yby_town` VALUES ('1925', '叙永县', '335');
INSERT INTO `yby_town` VALUES ('1926', '古蔺县', '335');
INSERT INTO `yby_town` VALUES ('1927', '旌阳区', '336');
INSERT INTO `yby_town` VALUES ('1928', '中江县', '336');
INSERT INTO `yby_town` VALUES ('1929', '罗江县', '336');
INSERT INTO `yby_town` VALUES ('1930', '广汉市', '336');
INSERT INTO `yby_town` VALUES ('1931', '什邡市', '336');
INSERT INTO `yby_town` VALUES ('1932', '绵竹市', '336');
INSERT INTO `yby_town` VALUES ('1933', '涪城区', '337');
INSERT INTO `yby_town` VALUES ('1934', '游仙区', '337');
INSERT INTO `yby_town` VALUES ('1935', '三台县', '337');
INSERT INTO `yby_town` VALUES ('1936', '盐亭县', '337');
INSERT INTO `yby_town` VALUES ('1937', '安县', '337');
INSERT INTO `yby_town` VALUES ('1938', '梓潼县', '337');
INSERT INTO `yby_town` VALUES ('1939', '北川羌族自治县', '337');
INSERT INTO `yby_town` VALUES ('1940', '平武县', '337');
INSERT INTO `yby_town` VALUES ('1941', '江油市', '337');
INSERT INTO `yby_town` VALUES ('1942', '市中区', '338');
INSERT INTO `yby_town` VALUES ('1943', '元坝区', '338');
INSERT INTO `yby_town` VALUES ('1944', '朝天区', '338');
INSERT INTO `yby_town` VALUES ('1945', '旺苍县', '338');
INSERT INTO `yby_town` VALUES ('1946', '青川县', '338');
INSERT INTO `yby_town` VALUES ('1947', '剑阁县', '338');
INSERT INTO `yby_town` VALUES ('1948', '苍溪县', '338');
INSERT INTO `yby_town` VALUES ('1949', '船山区', '339');
INSERT INTO `yby_town` VALUES ('1950', '安居区', '339');
INSERT INTO `yby_town` VALUES ('1951', '蓬溪县', '339');
INSERT INTO `yby_town` VALUES ('1952', '射洪县', '339');
INSERT INTO `yby_town` VALUES ('1953', '大英县', '339');
INSERT INTO `yby_town` VALUES ('1954', '市中区', '340');
INSERT INTO `yby_town` VALUES ('1955', '东兴区', '340');
INSERT INTO `yby_town` VALUES ('1956', '威远县', '340');
INSERT INTO `yby_town` VALUES ('1957', '资中县', '340');
INSERT INTO `yby_town` VALUES ('1958', '隆昌县', '340');
INSERT INTO `yby_town` VALUES ('1959', '市中区', '341');
INSERT INTO `yby_town` VALUES ('1960', '沙湾区', '341');
INSERT INTO `yby_town` VALUES ('1961', '五通桥区', '341');
INSERT INTO `yby_town` VALUES ('1962', '金口河区', '341');
INSERT INTO `yby_town` VALUES ('1963', '犍为县', '341');
INSERT INTO `yby_town` VALUES ('1964', '井研县', '341');
INSERT INTO `yby_town` VALUES ('1965', '夹江县', '341');
INSERT INTO `yby_town` VALUES ('1966', '沐川县', '341');
INSERT INTO `yby_town` VALUES ('1967', '峨边彝族自治县', '341');
INSERT INTO `yby_town` VALUES ('1968', '马边彝族自治县', '341');
INSERT INTO `yby_town` VALUES ('1969', '峨眉山市', '341');
INSERT INTO `yby_town` VALUES ('1970', '顺庆区', '342');
INSERT INTO `yby_town` VALUES ('1971', '高坪区', '342');
INSERT INTO `yby_town` VALUES ('1972', '嘉陵区', '342');
INSERT INTO `yby_town` VALUES ('1973', '南部县', '342');
INSERT INTO `yby_town` VALUES ('1974', '营山县', '342');
INSERT INTO `yby_town` VALUES ('1975', '蓬安县', '342');
INSERT INTO `yby_town` VALUES ('1976', '仪陇县', '342');
INSERT INTO `yby_town` VALUES ('1977', '西充县', '342');
INSERT INTO `yby_town` VALUES ('1978', '阆中市', '342');
INSERT INTO `yby_town` VALUES ('1979', '东坡区', '343');
INSERT INTO `yby_town` VALUES ('1980', '仁寿县', '343');
INSERT INTO `yby_town` VALUES ('1981', '彭山县', '343');
INSERT INTO `yby_town` VALUES ('1982', '洪雅县', '343');
INSERT INTO `yby_town` VALUES ('1983', '丹棱县', '343');
INSERT INTO `yby_town` VALUES ('1984', '青神县', '343');
INSERT INTO `yby_town` VALUES ('1985', '翠屏区', '344');
INSERT INTO `yby_town` VALUES ('1986', '宜宾县', '344');
INSERT INTO `yby_town` VALUES ('1987', '南溪县', '344');
INSERT INTO `yby_town` VALUES ('1988', '江安县', '344');
INSERT INTO `yby_town` VALUES ('1989', '长宁县', '344');
INSERT INTO `yby_town` VALUES ('1990', '高县', '344');
INSERT INTO `yby_town` VALUES ('1991', '珙县', '344');
INSERT INTO `yby_town` VALUES ('1992', '筠连县', '344');
INSERT INTO `yby_town` VALUES ('1993', '兴文县', '344');
INSERT INTO `yby_town` VALUES ('1994', '屏山县', '344');
INSERT INTO `yby_town` VALUES ('1995', '广安区', '345');
INSERT INTO `yby_town` VALUES ('1996', '岳池县', '345');
INSERT INTO `yby_town` VALUES ('1997', '武胜县', '345');
INSERT INTO `yby_town` VALUES ('1998', '邻水县', '345');
INSERT INTO `yby_town` VALUES ('1999', '华蓥市', '345');
INSERT INTO `yby_town` VALUES ('2000', '通川区', '346');
INSERT INTO `yby_town` VALUES ('2001', '达县', '346');
INSERT INTO `yby_town` VALUES ('2002', '宣汉县', '346');
INSERT INTO `yby_town` VALUES ('2003', '开江县', '346');
INSERT INTO `yby_town` VALUES ('2004', '大竹县', '346');
INSERT INTO `yby_town` VALUES ('2005', '渠县', '346');
INSERT INTO `yby_town` VALUES ('2006', '万源市', '346');
INSERT INTO `yby_town` VALUES ('2007', '雨城区', '347');
INSERT INTO `yby_town` VALUES ('2008', '名山县', '347');
INSERT INTO `yby_town` VALUES ('2009', '荥经县', '347');
INSERT INTO `yby_town` VALUES ('2010', '汉源县', '347');
INSERT INTO `yby_town` VALUES ('2011', '石棉县', '347');
INSERT INTO `yby_town` VALUES ('2012', '天全县', '347');
INSERT INTO `yby_town` VALUES ('2013', '芦山县', '347');
INSERT INTO `yby_town` VALUES ('2014', '宝兴县', '347');
INSERT INTO `yby_town` VALUES ('2015', '巴州区', '348');
INSERT INTO `yby_town` VALUES ('2016', '通江县', '348');
INSERT INTO `yby_town` VALUES ('2017', '南江县', '348');
INSERT INTO `yby_town` VALUES ('2018', '平昌县', '348');
INSERT INTO `yby_town` VALUES ('2019', '雁江区', '349');
INSERT INTO `yby_town` VALUES ('2020', '安岳县', '349');
INSERT INTO `yby_town` VALUES ('2021', '乐至县', '349');
INSERT INTO `yby_town` VALUES ('2022', '简阳市', '349');
INSERT INTO `yby_town` VALUES ('2023', '汶川县', '350');
INSERT INTO `yby_town` VALUES ('2024', '理县', '350');
INSERT INTO `yby_town` VALUES ('2025', '茂县', '350');
INSERT INTO `yby_town` VALUES ('2026', '松潘县', '350');
INSERT INTO `yby_town` VALUES ('2027', '九寨沟县', '350');
INSERT INTO `yby_town` VALUES ('2028', '金川县', '350');
INSERT INTO `yby_town` VALUES ('2029', '小金县', '350');
INSERT INTO `yby_town` VALUES ('2030', '黑水县', '350');
INSERT INTO `yby_town` VALUES ('2031', '马尔康县', '350');
INSERT INTO `yby_town` VALUES ('2032', '壤塘县', '350');
INSERT INTO `yby_town` VALUES ('2033', '阿坝县', '350');
INSERT INTO `yby_town` VALUES ('2034', '若尔盖县', '350');
INSERT INTO `yby_town` VALUES ('2035', '红原县', '350');
INSERT INTO `yby_town` VALUES ('2036', '康定县', '351');
INSERT INTO `yby_town` VALUES ('2037', '泸定县', '351');
INSERT INTO `yby_town` VALUES ('2038', '丹巴县', '351');
INSERT INTO `yby_town` VALUES ('2039', '九龙县', '351');
INSERT INTO `yby_town` VALUES ('2040', '雅江县', '351');
INSERT INTO `yby_town` VALUES ('2041', '道孚县', '351');
INSERT INTO `yby_town` VALUES ('2042', '炉霍县', '351');
INSERT INTO `yby_town` VALUES ('2043', '甘孜县', '351');
INSERT INTO `yby_town` VALUES ('2044', '新龙县', '351');
INSERT INTO `yby_town` VALUES ('2045', '德格县', '351');
INSERT INTO `yby_town` VALUES ('2046', '白玉县', '351');
INSERT INTO `yby_town` VALUES ('2047', '石渠县', '351');
INSERT INTO `yby_town` VALUES ('2048', '色达县', '351');
INSERT INTO `yby_town` VALUES ('2049', '理塘县', '351');
INSERT INTO `yby_town` VALUES ('2050', '巴塘县', '351');
INSERT INTO `yby_town` VALUES ('2051', '乡城县', '351');
INSERT INTO `yby_town` VALUES ('2052', '稻城县', '351');
INSERT INTO `yby_town` VALUES ('2053', '得荣县', '351');
INSERT INTO `yby_town` VALUES ('2054', '西昌市', '352');
INSERT INTO `yby_town` VALUES ('2055', '木里藏族自治县', '352');
INSERT INTO `yby_town` VALUES ('2056', '盐源县', '352');
INSERT INTO `yby_town` VALUES ('2057', '德昌县', '352');
INSERT INTO `yby_town` VALUES ('2058', '会理县', '352');
INSERT INTO `yby_town` VALUES ('2059', '会东县', '352');
INSERT INTO `yby_town` VALUES ('2060', '宁南县', '352');
INSERT INTO `yby_town` VALUES ('2061', '普格县', '352');
INSERT INTO `yby_town` VALUES ('2062', '布拖县', '352');
INSERT INTO `yby_town` VALUES ('2063', '金阳县', '352');
INSERT INTO `yby_town` VALUES ('2064', '昭觉县', '352');
INSERT INTO `yby_town` VALUES ('2065', '喜德县', '352');
INSERT INTO `yby_town` VALUES ('2066', '冕宁县', '352');
INSERT INTO `yby_town` VALUES ('2067', '越西县', '352');
INSERT INTO `yby_town` VALUES ('2068', '甘洛县', '352');
INSERT INTO `yby_town` VALUES ('2069', '美姑县', '352');
INSERT INTO `yby_town` VALUES ('2070', '雷波县', '352');
INSERT INTO `yby_town` VALUES ('2071', '新城区', '353');
INSERT INTO `yby_town` VALUES ('2072', '回民区', '353');
INSERT INTO `yby_town` VALUES ('2073', '玉泉区', '353');
INSERT INTO `yby_town` VALUES ('2074', '赛罕区', '353');
INSERT INTO `yby_town` VALUES ('2075', '土默特左旗', '353');
INSERT INTO `yby_town` VALUES ('2076', '托克托县', '353');
INSERT INTO `yby_town` VALUES ('2077', '和林格尔县', '353');
INSERT INTO `yby_town` VALUES ('2078', '清水河县', '353');
INSERT INTO `yby_town` VALUES ('2079', '武川县', '353');
INSERT INTO `yby_town` VALUES ('2080', '东河区', '354');
INSERT INTO `yby_town` VALUES ('2081', '昆都仑区', '354');
INSERT INTO `yby_town` VALUES ('2082', '青山区', '354');
INSERT INTO `yby_town` VALUES ('2083', '石拐区', '354');
INSERT INTO `yby_town` VALUES ('2084', '白云矿区', '354');
INSERT INTO `yby_town` VALUES ('2085', '九原区', '354');
INSERT INTO `yby_town` VALUES ('2086', '土默特右旗', '354');
INSERT INTO `yby_town` VALUES ('2087', '固阳县', '354');
INSERT INTO `yby_town` VALUES ('2088', '达尔罕茂明安联合旗', '354');
INSERT INTO `yby_town` VALUES ('2089', '海勃湾区', '355');
INSERT INTO `yby_town` VALUES ('2090', '海南区', '355');
INSERT INTO `yby_town` VALUES ('2091', '乌达区', '355');
INSERT INTO `yby_town` VALUES ('2092', '红山区', '356');
INSERT INTO `yby_town` VALUES ('2093', '元宝山区', '356');
INSERT INTO `yby_town` VALUES ('2094', '松山区', '356');
INSERT INTO `yby_town` VALUES ('2095', '阿鲁科尔沁旗', '356');
INSERT INTO `yby_town` VALUES ('2096', '巴林左旗', '356');
INSERT INTO `yby_town` VALUES ('2097', '巴林右旗', '356');
INSERT INTO `yby_town` VALUES ('2098', '林西县', '356');
INSERT INTO `yby_town` VALUES ('2099', '克什克腾旗', '356');
INSERT INTO `yby_town` VALUES ('2100', '翁牛特旗', '356');
INSERT INTO `yby_town` VALUES ('2101', '喀喇沁旗', '356');
INSERT INTO `yby_town` VALUES ('2102', '宁城县', '356');
INSERT INTO `yby_town` VALUES ('2103', '敖汉旗', '356');
INSERT INTO `yby_town` VALUES ('2104', '科尔沁区', '357');
INSERT INTO `yby_town` VALUES ('2105', '科尔沁左翼中旗', '357');
INSERT INTO `yby_town` VALUES ('2106', '科尔沁左翼后旗', '357');
INSERT INTO `yby_town` VALUES ('2107', '开鲁县', '357');
INSERT INTO `yby_town` VALUES ('2108', '库伦旗', '357');
INSERT INTO `yby_town` VALUES ('2109', '奈曼旗', '357');
INSERT INTO `yby_town` VALUES ('2110', '扎鲁特旗', '357');
INSERT INTO `yby_town` VALUES ('2111', '霍林郭勒市', '357');
INSERT INTO `yby_town` VALUES ('2112', '东胜区', '358');
INSERT INTO `yby_town` VALUES ('2113', '达拉特旗', '358');
INSERT INTO `yby_town` VALUES ('2114', '准格尔旗', '358');
INSERT INTO `yby_town` VALUES ('2115', '鄂托克前旗', '358');
INSERT INTO `yby_town` VALUES ('2116', '鄂托克旗', '358');
INSERT INTO `yby_town` VALUES ('2117', '杭锦旗', '358');
INSERT INTO `yby_town` VALUES ('2118', '乌审旗', '358');
INSERT INTO `yby_town` VALUES ('2119', '伊金霍洛旗', '358');
INSERT INTO `yby_town` VALUES ('2120', '海拉尔区', '359');
INSERT INTO `yby_town` VALUES ('2121', '阿荣旗', '359');
INSERT INTO `yby_town` VALUES ('2122', '莫力达瓦达斡尔族自治旗', '359');
INSERT INTO `yby_town` VALUES ('2123', '鄂伦春自治旗', '359');
INSERT INTO `yby_town` VALUES ('2124', '鄂温克族自治旗', '359');
INSERT INTO `yby_town` VALUES ('2125', '陈巴尔虎旗', '359');
INSERT INTO `yby_town` VALUES ('2126', '新巴尔虎左旗', '359');
INSERT INTO `yby_town` VALUES ('2127', '新巴尔虎右旗', '359');
INSERT INTO `yby_town` VALUES ('2128', '满洲里市', '359');
INSERT INTO `yby_town` VALUES ('2129', '牙克石市', '359');
INSERT INTO `yby_town` VALUES ('2130', '扎兰屯市', '359');
INSERT INTO `yby_town` VALUES ('2131', '额尔古纳市', '359');
INSERT INTO `yby_town` VALUES ('2132', '根河市', '359');
INSERT INTO `yby_town` VALUES ('2133', '临河区', '360');
INSERT INTO `yby_town` VALUES ('2134', '五原县', '360');
INSERT INTO `yby_town` VALUES ('2135', '磴口县', '360');
INSERT INTO `yby_town` VALUES ('2136', '乌拉特前旗', '360');
INSERT INTO `yby_town` VALUES ('2137', '乌拉特中旗', '360');
INSERT INTO `yby_town` VALUES ('2138', '乌拉特后旗', '360');
INSERT INTO `yby_town` VALUES ('2139', '杭锦后旗', '360');
INSERT INTO `yby_town` VALUES ('2140', '集宁区', '361');
INSERT INTO `yby_town` VALUES ('2141', '卓资县', '361');
INSERT INTO `yby_town` VALUES ('2142', '化德县', '361');
INSERT INTO `yby_town` VALUES ('2143', '商都县', '361');
INSERT INTO `yby_town` VALUES ('2144', '兴和县', '361');
INSERT INTO `yby_town` VALUES ('2145', '凉城县', '361');
INSERT INTO `yby_town` VALUES ('2146', '察哈尔右翼前旗', '361');
INSERT INTO `yby_town` VALUES ('2147', '察哈尔右翼中旗', '361');
INSERT INTO `yby_town` VALUES ('2148', '察哈尔右翼后旗', '361');
INSERT INTO `yby_town` VALUES ('2149', '四子王旗', '361');
INSERT INTO `yby_town` VALUES ('2150', '丰镇市', '361');
INSERT INTO `yby_town` VALUES ('2151', '乌兰浩特市', '362');
INSERT INTO `yby_town` VALUES ('2152', '阿尔山市', '362');
INSERT INTO `yby_town` VALUES ('2153', '科尔沁右翼前旗', '362');
INSERT INTO `yby_town` VALUES ('2154', '科尔沁右翼中旗', '362');
INSERT INTO `yby_town` VALUES ('2155', '扎赉特旗', '362');
INSERT INTO `yby_town` VALUES ('2156', '突泉县', '362');
INSERT INTO `yby_town` VALUES ('2157', '二连浩特市', '363');
INSERT INTO `yby_town` VALUES ('2158', '锡林浩特市', '363');
INSERT INTO `yby_town` VALUES ('2159', '阿巴嘎旗', '363');
INSERT INTO `yby_town` VALUES ('2160', '苏尼特左旗', '363');
INSERT INTO `yby_town` VALUES ('2161', '苏尼特右旗', '363');
INSERT INTO `yby_town` VALUES ('2162', '东乌珠穆沁旗', '363');
INSERT INTO `yby_town` VALUES ('2163', '西乌珠穆沁旗', '363');
INSERT INTO `yby_town` VALUES ('2164', '太仆寺旗', '363');
INSERT INTO `yby_town` VALUES ('2165', '镶黄旗', '363');
INSERT INTO `yby_town` VALUES ('2166', '正镶白旗', '363');
INSERT INTO `yby_town` VALUES ('2167', '正蓝旗', '363');
INSERT INTO `yby_town` VALUES ('2168', '多伦县', '363');
INSERT INTO `yby_town` VALUES ('2169', '阿拉善左旗', '364');
INSERT INTO `yby_town` VALUES ('2170', '阿拉善右旗', '364');
INSERT INTO `yby_town` VALUES ('2171', '额济纳旗', '364');
INSERT INTO `yby_town` VALUES ('2172', '兴庆区', '365');
INSERT INTO `yby_town` VALUES ('2173', '西夏区', '365');
INSERT INTO `yby_town` VALUES ('2174', '金凤区', '365');
INSERT INTO `yby_town` VALUES ('2175', '永宁县', '365');
INSERT INTO `yby_town` VALUES ('2176', '贺兰县', '365');
INSERT INTO `yby_town` VALUES ('2177', '灵武市', '365');
INSERT INTO `yby_town` VALUES ('2178', '大武口区', '366');
INSERT INTO `yby_town` VALUES ('2179', '惠农区', '366');
INSERT INTO `yby_town` VALUES ('2180', '平罗县', '366');
INSERT INTO `yby_town` VALUES ('2181', '利通区', '367');
INSERT INTO `yby_town` VALUES ('2182', '盐池县', '367');
INSERT INTO `yby_town` VALUES ('2183', '同心县', '367');
INSERT INTO `yby_town` VALUES ('2184', '青铜峡市', '367');
INSERT INTO `yby_town` VALUES ('2185', '原州区', '368');
INSERT INTO `yby_town` VALUES ('2186', '西吉县', '368');
INSERT INTO `yby_town` VALUES ('2187', '隆德县', '368');
INSERT INTO `yby_town` VALUES ('2188', '泾源县', '368');
INSERT INTO `yby_town` VALUES ('2189', '彭阳县', '368');
INSERT INTO `yby_town` VALUES ('2190', '沙坡头区', '369');
INSERT INTO `yby_town` VALUES ('2191', '中宁县', '369');
INSERT INTO `yby_town` VALUES ('2192', '海原县', '369');
INSERT INTO `yby_town` VALUES ('2193', '城关区', '370');
INSERT INTO `yby_town` VALUES ('2194', '七里河区', '370');
INSERT INTO `yby_town` VALUES ('2195', '西固区', '370');
INSERT INTO `yby_town` VALUES ('2196', '安宁区', '370');
INSERT INTO `yby_town` VALUES ('2197', '红古区', '370');
INSERT INTO `yby_town` VALUES ('2198', '永登县', '370');
INSERT INTO `yby_town` VALUES ('2199', '皋兰县', '370');
INSERT INTO `yby_town` VALUES ('2200', '榆中县', '370');
INSERT INTO `yby_town` VALUES ('2201', '嘉峪关市', '371');
INSERT INTO `yby_town` VALUES ('2202', '金川区', '372');
INSERT INTO `yby_town` VALUES ('2203', '永昌县', '372');
INSERT INTO `yby_town` VALUES ('2204', '白银区', '373');
INSERT INTO `yby_town` VALUES ('2205', '平川区', '373');
INSERT INTO `yby_town` VALUES ('2206', '靖远县', '373');
INSERT INTO `yby_town` VALUES ('2207', '会宁县', '373');
INSERT INTO `yby_town` VALUES ('2208', '景泰县', '373');
INSERT INTO `yby_town` VALUES ('2209', '秦城区', '374');
INSERT INTO `yby_town` VALUES ('2210', '北道区', '374');
INSERT INTO `yby_town` VALUES ('2211', '清水县', '374');
INSERT INTO `yby_town` VALUES ('2212', '秦安县', '374');
INSERT INTO `yby_town` VALUES ('2213', '甘谷县', '374');
INSERT INTO `yby_town` VALUES ('2214', '武山县', '374');
INSERT INTO `yby_town` VALUES ('2215', '张家川回族自治县', '374');
INSERT INTO `yby_town` VALUES ('2216', '凉州区', '375');
INSERT INTO `yby_town` VALUES ('2217', '民勤县', '375');
INSERT INTO `yby_town` VALUES ('2218', '古浪县', '375');
INSERT INTO `yby_town` VALUES ('2219', '天祝藏族自治县', '375');
INSERT INTO `yby_town` VALUES ('2220', '甘州区', '376');
INSERT INTO `yby_town` VALUES ('2221', '肃南裕固族自治县', '376');
INSERT INTO `yby_town` VALUES ('2222', '民乐县', '376');
INSERT INTO `yby_town` VALUES ('2223', '临泽县', '376');
INSERT INTO `yby_town` VALUES ('2224', '高台县', '376');
INSERT INTO `yby_town` VALUES ('2225', '山丹县', '376');
INSERT INTO `yby_town` VALUES ('2226', '崆峒区', '377');
INSERT INTO `yby_town` VALUES ('2227', '泾川县', '377');
INSERT INTO `yby_town` VALUES ('2228', '灵台县', '377');
INSERT INTO `yby_town` VALUES ('2229', '崇信县', '377');
INSERT INTO `yby_town` VALUES ('2230', '华亭县', '377');
INSERT INTO `yby_town` VALUES ('2231', '庄浪县', '377');
INSERT INTO `yby_town` VALUES ('2232', '静宁县', '377');
INSERT INTO `yby_town` VALUES ('2233', '肃州区', '378');
INSERT INTO `yby_town` VALUES ('2234', '金塔县', '378');
INSERT INTO `yby_town` VALUES ('2235', '安西县', '378');
INSERT INTO `yby_town` VALUES ('2236', '肃北蒙古族自治县', '378');
INSERT INTO `yby_town` VALUES ('2237', '阿克塞哈萨克族自治县', '378');
INSERT INTO `yby_town` VALUES ('2238', '玉门市', '378');
INSERT INTO `yby_town` VALUES ('2239', '敦煌市', '378');
INSERT INTO `yby_town` VALUES ('2240', '西峰区', '379');
INSERT INTO `yby_town` VALUES ('2241', '庆城县', '379');
INSERT INTO `yby_town` VALUES ('2242', '环县', '379');
INSERT INTO `yby_town` VALUES ('2243', '华池县', '379');
INSERT INTO `yby_town` VALUES ('2244', '合水县', '379');
INSERT INTO `yby_town` VALUES ('2245', '正宁县', '379');
INSERT INTO `yby_town` VALUES ('2246', '宁县', '379');
INSERT INTO `yby_town` VALUES ('2247', '镇原县', '379');
INSERT INTO `yby_town` VALUES ('2248', '安定区', '380');
INSERT INTO `yby_town` VALUES ('2249', '通渭县', '380');
INSERT INTO `yby_town` VALUES ('2250', '陇西县', '380');
INSERT INTO `yby_town` VALUES ('2251', '渭源县', '380');
INSERT INTO `yby_town` VALUES ('2252', '临洮县', '380');
INSERT INTO `yby_town` VALUES ('2253', '漳县', '380');
INSERT INTO `yby_town` VALUES ('2254', '岷县', '380');
INSERT INTO `yby_town` VALUES ('2255', '武都区', '381');
INSERT INTO `yby_town` VALUES ('2256', '成县', '381');
INSERT INTO `yby_town` VALUES ('2257', '文县', '381');
INSERT INTO `yby_town` VALUES ('2258', '宕昌县', '381');
INSERT INTO `yby_town` VALUES ('2259', '康县', '381');
INSERT INTO `yby_town` VALUES ('2260', '西和县', '381');
INSERT INTO `yby_town` VALUES ('2261', '礼县', '381');
INSERT INTO `yby_town` VALUES ('2262', '徽县', '381');
INSERT INTO `yby_town` VALUES ('2263', '两当县', '381');
INSERT INTO `yby_town` VALUES ('2264', '临夏市', '382');
INSERT INTO `yby_town` VALUES ('2265', '临夏县', '382');
INSERT INTO `yby_town` VALUES ('2266', '康乐县', '382');
INSERT INTO `yby_town` VALUES ('2267', '永靖县', '382');
INSERT INTO `yby_town` VALUES ('2268', '广河县', '382');
INSERT INTO `yby_town` VALUES ('2269', '和政县', '382');
INSERT INTO `yby_town` VALUES ('2270', '东乡族自治县', '382');
INSERT INTO `yby_town` VALUES ('2271', '积石山保安族东乡族撒拉族自治县', '382');
INSERT INTO `yby_town` VALUES ('2272', '合作市', '383');
INSERT INTO `yby_town` VALUES ('2273', '临潭县', '383');
INSERT INTO `yby_town` VALUES ('2274', '卓尼县', '383');
INSERT INTO `yby_town` VALUES ('2275', '舟曲县', '383');
INSERT INTO `yby_town` VALUES ('2276', '迭部县', '383');
INSERT INTO `yby_town` VALUES ('2277', '玛曲县', '383');
INSERT INTO `yby_town` VALUES ('2278', '碌曲县', '383');
INSERT INTO `yby_town` VALUES ('2279', '夏河县', '383');
INSERT INTO `yby_town` VALUES ('2280', '城东区', '384');
INSERT INTO `yby_town` VALUES ('2281', '城中区', '384');
INSERT INTO `yby_town` VALUES ('2282', '城西区', '384');
INSERT INTO `yby_town` VALUES ('2283', '城北区', '384');
INSERT INTO `yby_town` VALUES ('2284', '大通回族土族自治县', '384');
INSERT INTO `yby_town` VALUES ('2285', '湟中县', '384');
INSERT INTO `yby_town` VALUES ('2286', '湟源县', '384');
INSERT INTO `yby_town` VALUES ('2287', '平安县', '385');
INSERT INTO `yby_town` VALUES ('2288', '民和回族土族自治县', '385');
INSERT INTO `yby_town` VALUES ('2289', '乐都县', '385');
INSERT INTO `yby_town` VALUES ('2290', '互助土族自治县', '385');
INSERT INTO `yby_town` VALUES ('2291', '化隆回族自治县', '385');
INSERT INTO `yby_town` VALUES ('2292', '循化撒拉族自治县', '385');
INSERT INTO `yby_town` VALUES ('2293', '门源回族自治县', '386');
INSERT INTO `yby_town` VALUES ('2294', '祁连县', '386');
INSERT INTO `yby_town` VALUES ('2295', '海晏县', '386');
INSERT INTO `yby_town` VALUES ('2296', '刚察县', '386');
INSERT INTO `yby_town` VALUES ('2297', '同仁县', '387');
INSERT INTO `yby_town` VALUES ('2298', '尖扎县', '387');
INSERT INTO `yby_town` VALUES ('2299', '泽库县', '387');
INSERT INTO `yby_town` VALUES ('2300', '河南蒙古族自治县', '387');
INSERT INTO `yby_town` VALUES ('2301', '共和县', '388');
INSERT INTO `yby_town` VALUES ('2302', '同德县', '388');
INSERT INTO `yby_town` VALUES ('2303', '贵德县', '388');
INSERT INTO `yby_town` VALUES ('2304', '兴海县', '388');
INSERT INTO `yby_town` VALUES ('2305', '贵南县', '388');
INSERT INTO `yby_town` VALUES ('2306', '玛沁县', '389');
INSERT INTO `yby_town` VALUES ('2307', '班玛县', '389');
INSERT INTO `yby_town` VALUES ('2308', '甘德县', '389');
INSERT INTO `yby_town` VALUES ('2309', '达日县', '389');
INSERT INTO `yby_town` VALUES ('2310', '久治县', '389');
INSERT INTO `yby_town` VALUES ('2311', '玛多县', '389');
INSERT INTO `yby_town` VALUES ('2312', '玉树县', '390');
INSERT INTO `yby_town` VALUES ('2313', '杂多县', '390');
INSERT INTO `yby_town` VALUES ('2314', '称多县', '390');
INSERT INTO `yby_town` VALUES ('2315', '治多县', '390');
INSERT INTO `yby_town` VALUES ('2316', '囊谦县', '390');
INSERT INTO `yby_town` VALUES ('2317', '曲麻莱县', '390');
INSERT INTO `yby_town` VALUES ('2318', '格尔木市', '391');
INSERT INTO `yby_town` VALUES ('2319', '德令哈市', '391');
INSERT INTO `yby_town` VALUES ('2320', '乌兰县', '391');
INSERT INTO `yby_town` VALUES ('2321', '都兰县', '391');
INSERT INTO `yby_town` VALUES ('2322', '天峻县', '391');
INSERT INTO `yby_town` VALUES ('2323', '城关区', '392');
INSERT INTO `yby_town` VALUES ('2324', '林周县', '392');
INSERT INTO `yby_town` VALUES ('2325', '当雄县', '392');
INSERT INTO `yby_town` VALUES ('2326', '尼木县', '392');
INSERT INTO `yby_town` VALUES ('2327', '曲水县', '392');
INSERT INTO `yby_town` VALUES ('2328', '堆龙德庆县', '392');
INSERT INTO `yby_town` VALUES ('2329', '达孜县', '392');
INSERT INTO `yby_town` VALUES ('2330', '墨竹工卡县', '392');
INSERT INTO `yby_town` VALUES ('2331', '昌都县', '393');
INSERT INTO `yby_town` VALUES ('2332', '江达县', '393');
INSERT INTO `yby_town` VALUES ('2333', '贡觉县', '393');
INSERT INTO `yby_town` VALUES ('2334', '类乌齐县', '393');
INSERT INTO `yby_town` VALUES ('2335', '丁青县', '393');
INSERT INTO `yby_town` VALUES ('2336', '察雅县', '393');
INSERT INTO `yby_town` VALUES ('2337', '八宿县', '393');
INSERT INTO `yby_town` VALUES ('2338', '左贡县', '393');
INSERT INTO `yby_town` VALUES ('2339', '芒康县', '393');
INSERT INTO `yby_town` VALUES ('2340', '洛隆县', '393');
INSERT INTO `yby_town` VALUES ('2341', '边坝县', '393');
INSERT INTO `yby_town` VALUES ('2342', '乃东县', '394');
INSERT INTO `yby_town` VALUES ('2343', '扎囊县', '394');
INSERT INTO `yby_town` VALUES ('2344', '贡嘎县', '394');
INSERT INTO `yby_town` VALUES ('2345', '桑日县', '394');
INSERT INTO `yby_town` VALUES ('2346', '琼结县', '394');
INSERT INTO `yby_town` VALUES ('2347', '曲松县', '394');
INSERT INTO `yby_town` VALUES ('2348', '措美县', '394');
INSERT INTO `yby_town` VALUES ('2349', '洛扎县', '394');
INSERT INTO `yby_town` VALUES ('2350', '加查县', '394');
INSERT INTO `yby_town` VALUES ('2351', '隆子县', '394');
INSERT INTO `yby_town` VALUES ('2352', '错那县', '394');
INSERT INTO `yby_town` VALUES ('2353', '浪卡子县', '394');
INSERT INTO `yby_town` VALUES ('2354', '日喀则市', '395');
INSERT INTO `yby_town` VALUES ('2355', '南木林县', '395');
INSERT INTO `yby_town` VALUES ('2356', '江孜县', '395');
INSERT INTO `yby_town` VALUES ('2357', '定日县', '395');
INSERT INTO `yby_town` VALUES ('2358', '萨迦县', '395');
INSERT INTO `yby_town` VALUES ('2359', '拉孜县', '395');
INSERT INTO `yby_town` VALUES ('2360', '昂仁县', '395');
INSERT INTO `yby_town` VALUES ('2361', '谢通门县', '395');
INSERT INTO `yby_town` VALUES ('2362', '白朗县', '395');
INSERT INTO `yby_town` VALUES ('2363', '仁布县', '395');
INSERT INTO `yby_town` VALUES ('2364', '康马县', '395');
INSERT INTO `yby_town` VALUES ('2365', '定结县', '395');
INSERT INTO `yby_town` VALUES ('2366', '仲巴县', '395');
INSERT INTO `yby_town` VALUES ('2367', '亚东县', '395');
INSERT INTO `yby_town` VALUES ('2368', '吉隆县', '395');
INSERT INTO `yby_town` VALUES ('2369', '聂拉木县', '395');
INSERT INTO `yby_town` VALUES ('2370', '萨嘎县', '395');
INSERT INTO `yby_town` VALUES ('2371', '岗巴县', '395');
INSERT INTO `yby_town` VALUES ('2372', '那曲县', '396');
INSERT INTO `yby_town` VALUES ('2373', '嘉黎县', '396');
INSERT INTO `yby_town` VALUES ('2374', '比如县', '396');
INSERT INTO `yby_town` VALUES ('2375', '聂荣县', '396');
INSERT INTO `yby_town` VALUES ('2376', '安多县', '396');
INSERT INTO `yby_town` VALUES ('2377', '申扎县', '396');
INSERT INTO `yby_town` VALUES ('2378', '索县', '396');
INSERT INTO `yby_town` VALUES ('2379', '班戈县', '396');
INSERT INTO `yby_town` VALUES ('2380', '巴青县', '396');
INSERT INTO `yby_town` VALUES ('2381', '尼玛县', '396');
INSERT INTO `yby_town` VALUES ('2382', '普兰县', '397');
INSERT INTO `yby_town` VALUES ('2383', '札达县', '397');
INSERT INTO `yby_town` VALUES ('2384', '噶尔县', '397');
INSERT INTO `yby_town` VALUES ('2385', '日土县', '397');
INSERT INTO `yby_town` VALUES ('2386', '革吉县', '397');
INSERT INTO `yby_town` VALUES ('2387', '改则县', '397');
INSERT INTO `yby_town` VALUES ('2388', '措勤县', '397');
INSERT INTO `yby_town` VALUES ('2389', '林芝县', '398');
INSERT INTO `yby_town` VALUES ('2390', '工布江达县', '398');
INSERT INTO `yby_town` VALUES ('2391', '米林县', '398');
INSERT INTO `yby_town` VALUES ('2392', '墨脱县', '398');
INSERT INTO `yby_town` VALUES ('2393', '波密县', '398');
INSERT INTO `yby_town` VALUES ('2394', '察隅县', '398');
INSERT INTO `yby_town` VALUES ('2395', '朗县', '398');
INSERT INTO `yby_town` VALUES ('2396', '天山区', '399');
INSERT INTO `yby_town` VALUES ('2397', '沙依巴克区', '399');
INSERT INTO `yby_town` VALUES ('2398', '新市区', '399');
INSERT INTO `yby_town` VALUES ('2399', '水磨沟区', '399');
INSERT INTO `yby_town` VALUES ('2400', '头屯河区', '399');
INSERT INTO `yby_town` VALUES ('2401', '达坂城区', '399');
INSERT INTO `yby_town` VALUES ('2402', '东山区', '399');
INSERT INTO `yby_town` VALUES ('2403', '乌鲁木齐县', '399');
INSERT INTO `yby_town` VALUES ('2404', '独山子区', '400');
INSERT INTO `yby_town` VALUES ('2405', '克拉玛依区', '400');
INSERT INTO `yby_town` VALUES ('2406', '白碱滩区', '400');
INSERT INTO `yby_town` VALUES ('2407', '乌尔禾区', '400');
INSERT INTO `yby_town` VALUES ('2408', '吐鲁番市', '401');
INSERT INTO `yby_town` VALUES ('2409', '鄯善县', '401');
INSERT INTO `yby_town` VALUES ('2410', '托克逊县', '401');
INSERT INTO `yby_town` VALUES ('2411', '哈密市', '402');
INSERT INTO `yby_town` VALUES ('2412', '巴里坤哈萨克自治县', '402');
INSERT INTO `yby_town` VALUES ('2413', '伊吾县', '402');
INSERT INTO `yby_town` VALUES ('2414', '昌吉市', '403');
INSERT INTO `yby_town` VALUES ('2415', '阜康市', '403');
INSERT INTO `yby_town` VALUES ('2416', '米泉市', '403');
INSERT INTO `yby_town` VALUES ('2417', '呼图壁县', '403');
INSERT INTO `yby_town` VALUES ('2418', '玛纳斯县', '403');
INSERT INTO `yby_town` VALUES ('2419', '奇台县', '403');
INSERT INTO `yby_town` VALUES ('2420', '吉木萨尔县', '403');
INSERT INTO `yby_town` VALUES ('2421', '木垒哈萨克自治县', '403');
INSERT INTO `yby_town` VALUES ('2422', '博乐市', '404');
INSERT INTO `yby_town` VALUES ('2423', '精河县', '404');
INSERT INTO `yby_town` VALUES ('2424', '温泉县', '404');
INSERT INTO `yby_town` VALUES ('2425', '库尔勒市', '405');
INSERT INTO `yby_town` VALUES ('2426', '轮台县', '405');
INSERT INTO `yby_town` VALUES ('2427', '尉犁县', '405');
INSERT INTO `yby_town` VALUES ('2428', '若羌县', '405');
INSERT INTO `yby_town` VALUES ('2429', '且末县', '405');
INSERT INTO `yby_town` VALUES ('2430', '焉耆回族自治县', '405');
INSERT INTO `yby_town` VALUES ('2431', '和静县', '405');
INSERT INTO `yby_town` VALUES ('2432', '和硕县', '405');
INSERT INTO `yby_town` VALUES ('2433', '博湖县', '405');
INSERT INTO `yby_town` VALUES ('2434', '阿克苏市', '406');
INSERT INTO `yby_town` VALUES ('2435', '温宿县', '406');
INSERT INTO `yby_town` VALUES ('2436', '库车县', '406');
INSERT INTO `yby_town` VALUES ('2437', '沙雅县', '406');
INSERT INTO `yby_town` VALUES ('2438', '新和县', '406');
INSERT INTO `yby_town` VALUES ('2439', '拜城县', '406');
INSERT INTO `yby_town` VALUES ('2440', '乌什县', '406');
INSERT INTO `yby_town` VALUES ('2441', '阿瓦提县', '406');
INSERT INTO `yby_town` VALUES ('2442', '柯坪县', '406');
INSERT INTO `yby_town` VALUES ('2443', '阿图什市', '407');
INSERT INTO `yby_town` VALUES ('2444', '阿克陶县', '407');
INSERT INTO `yby_town` VALUES ('2445', '阿合奇县', '407');
INSERT INTO `yby_town` VALUES ('2446', '乌恰县', '407');
INSERT INTO `yby_town` VALUES ('2447', '喀什市', '408');
INSERT INTO `yby_town` VALUES ('2448', '疏附县', '408');
INSERT INTO `yby_town` VALUES ('2449', '疏勒县', '408');
INSERT INTO `yby_town` VALUES ('2450', '英吉沙县', '408');
INSERT INTO `yby_town` VALUES ('2451', '泽普县', '408');
INSERT INTO `yby_town` VALUES ('2452', '莎车县', '408');
INSERT INTO `yby_town` VALUES ('2453', '叶城县', '408');
INSERT INTO `yby_town` VALUES ('2454', '麦盖提县', '408');
INSERT INTO `yby_town` VALUES ('2455', '岳普湖县', '408');
INSERT INTO `yby_town` VALUES ('2456', '伽师县', '408');
INSERT INTO `yby_town` VALUES ('2457', '巴楚县', '408');
INSERT INTO `yby_town` VALUES ('2458', '塔什库尔干县塔吉克自治', '408');
INSERT INTO `yby_town` VALUES ('2459', '和田市', '409');
INSERT INTO `yby_town` VALUES ('2460', '和田县', '409');
INSERT INTO `yby_town` VALUES ('2461', '墨玉县', '409');
INSERT INTO `yby_town` VALUES ('2462', '皮山县', '409');
INSERT INTO `yby_town` VALUES ('2463', '洛浦县', '409');
INSERT INTO `yby_town` VALUES ('2464', '策勒县', '409');
INSERT INTO `yby_town` VALUES ('2465', '于田县', '409');
INSERT INTO `yby_town` VALUES ('2466', '民丰县', '409');
INSERT INTO `yby_town` VALUES ('2467', '伊宁市', '410');
INSERT INTO `yby_town` VALUES ('2468', '奎屯市', '410');
INSERT INTO `yby_town` VALUES ('2469', '伊宁县', '410');
INSERT INTO `yby_town` VALUES ('2470', '察布查尔锡伯自治县', '410');
INSERT INTO `yby_town` VALUES ('2471', '霍城县', '410');
INSERT INTO `yby_town` VALUES ('2472', '巩留县', '410');
INSERT INTO `yby_town` VALUES ('2473', '新源县', '410');
INSERT INTO `yby_town` VALUES ('2474', '昭苏县', '410');
INSERT INTO `yby_town` VALUES ('2475', '特克斯县', '410');
INSERT INTO `yby_town` VALUES ('2476', '尼勒克县', '410');
INSERT INTO `yby_town` VALUES ('2477', '塔城市', '411');
INSERT INTO `yby_town` VALUES ('2478', '乌苏市', '411');
INSERT INTO `yby_town` VALUES ('2479', '额敏县', '411');
INSERT INTO `yby_town` VALUES ('2480', '沙湾县', '411');
INSERT INTO `yby_town` VALUES ('2481', '托里县', '411');
INSERT INTO `yby_town` VALUES ('2482', '裕民县', '411');
INSERT INTO `yby_town` VALUES ('2483', '和布克赛尔蒙古自治县', '411');
INSERT INTO `yby_town` VALUES ('2484', '阿勒泰市', '412');
INSERT INTO `yby_town` VALUES ('2485', '布尔津县', '412');
INSERT INTO `yby_town` VALUES ('2486', '富蕴县', '412');
INSERT INTO `yby_town` VALUES ('2487', '福海县', '412');
INSERT INTO `yby_town` VALUES ('2488', '哈巴河县', '412');
INSERT INTO `yby_town` VALUES ('2489', '青河县', '412');
INSERT INTO `yby_town` VALUES ('2490', '吉木乃县', '412');
INSERT INTO `yby_town` VALUES ('2491', '石河子市', '413');
INSERT INTO `yby_town` VALUES ('2492', '阿拉尔市', '414');
INSERT INTO `yby_town` VALUES ('2493', '图木舒克市', '415');
INSERT INTO `yby_town` VALUES ('2494', '五家渠市', '416');
INSERT INTO `yby_town` VALUES ('2495', '瑶海区', '417');
INSERT INTO `yby_town` VALUES ('2496', '庐阳区', '417');
INSERT INTO `yby_town` VALUES ('2497', '蜀山区', '417');
INSERT INTO `yby_town` VALUES ('2498', '包河区', '417');
INSERT INTO `yby_town` VALUES ('2499', '长丰县', '417');
INSERT INTO `yby_town` VALUES ('2500', '肥东县', '417');
INSERT INTO `yby_town` VALUES ('2501', '肥西县', '417');
INSERT INTO `yby_town` VALUES ('2502', '镜湖区', '418');
INSERT INTO `yby_town` VALUES ('2503', '弋江区', '418');
INSERT INTO `yby_town` VALUES ('2504', '鸠江区', '418');
INSERT INTO `yby_town` VALUES ('2505', '三山区', '418');
INSERT INTO `yby_town` VALUES ('2506', '芜湖县', '418');
INSERT INTO `yby_town` VALUES ('2507', '繁昌县', '418');
INSERT INTO `yby_town` VALUES ('2508', '南陵县', '418');
INSERT INTO `yby_town` VALUES ('2509', '龙子湖区', '419');
INSERT INTO `yby_town` VALUES ('2510', '蚌山区', '419');
INSERT INTO `yby_town` VALUES ('2511', '禹会区', '419');
INSERT INTO `yby_town` VALUES ('2512', '淮上区', '419');
INSERT INTO `yby_town` VALUES ('2513', '怀远县', '419');
INSERT INTO `yby_town` VALUES ('2514', '五河县', '419');
INSERT INTO `yby_town` VALUES ('2515', '固镇县', '419');
INSERT INTO `yby_town` VALUES ('2516', '大通区', '420');
INSERT INTO `yby_town` VALUES ('2517', '田家庵区', '420');
INSERT INTO `yby_town` VALUES ('2518', '谢家集区', '420');
INSERT INTO `yby_town` VALUES ('2519', '八公山区', '420');
INSERT INTO `yby_town` VALUES ('2520', '潘集区', '420');
INSERT INTO `yby_town` VALUES ('2521', '凤台县', '420');
INSERT INTO `yby_town` VALUES ('2522', '金家庄区', '421');
INSERT INTO `yby_town` VALUES ('2523', '花山区', '421');
INSERT INTO `yby_town` VALUES ('2524', '雨山区', '421');
INSERT INTO `yby_town` VALUES ('2525', '当涂县', '421');
INSERT INTO `yby_town` VALUES ('2526', '杜集区', '422');
INSERT INTO `yby_town` VALUES ('2527', '相山区', '422');
INSERT INTO `yby_town` VALUES ('2528', '烈山区', '422');
INSERT INTO `yby_town` VALUES ('2529', '濉溪县', '422');
INSERT INTO `yby_town` VALUES ('2530', '铜官山区', '423');
INSERT INTO `yby_town` VALUES ('2531', '狮子山区', '423');
INSERT INTO `yby_town` VALUES ('2532', '郊区', '423');
INSERT INTO `yby_town` VALUES ('2533', '铜陵县', '423');
INSERT INTO `yby_town` VALUES ('2534', '迎江区', '424');
INSERT INTO `yby_town` VALUES ('2535', '大观区', '424');
INSERT INTO `yby_town` VALUES ('2536', '宜秀区', '424');
INSERT INTO `yby_town` VALUES ('2537', '怀宁县', '424');
INSERT INTO `yby_town` VALUES ('2538', '枞阳县', '424');
INSERT INTO `yby_town` VALUES ('2539', '潜山县', '424');
INSERT INTO `yby_town` VALUES ('2540', '太湖县', '424');
INSERT INTO `yby_town` VALUES ('2541', '宿松县', '424');
INSERT INTO `yby_town` VALUES ('2542', '望江县', '424');
INSERT INTO `yby_town` VALUES ('2543', '岳西县', '424');
INSERT INTO `yby_town` VALUES ('2544', '桐城市', '424');
INSERT INTO `yby_town` VALUES ('2545', '屯溪区', '425');
INSERT INTO `yby_town` VALUES ('2546', '黄山区', '425');
INSERT INTO `yby_town` VALUES ('2547', '徽州区', '425');
INSERT INTO `yby_town` VALUES ('2548', '歙县', '425');
INSERT INTO `yby_town` VALUES ('2549', '休宁县', '425');
INSERT INTO `yby_town` VALUES ('2550', '黟县', '425');
INSERT INTO `yby_town` VALUES ('2551', '祁门县', '425');
INSERT INTO `yby_town` VALUES ('2552', '琅琊区', '426');
INSERT INTO `yby_town` VALUES ('2553', '南谯区', '426');
INSERT INTO `yby_town` VALUES ('2554', '来安县', '426');
INSERT INTO `yby_town` VALUES ('2555', '全椒县', '426');
INSERT INTO `yby_town` VALUES ('2556', '定远县', '426');
INSERT INTO `yby_town` VALUES ('2557', '凤阳县', '426');
INSERT INTO `yby_town` VALUES ('2558', '天长市', '426');
INSERT INTO `yby_town` VALUES ('2559', '明光市', '426');
INSERT INTO `yby_town` VALUES ('2560', '颍州区', '427');
INSERT INTO `yby_town` VALUES ('2561', '颍东区', '427');
INSERT INTO `yby_town` VALUES ('2562', '颍泉区', '427');
INSERT INTO `yby_town` VALUES ('2563', '临泉县', '427');
INSERT INTO `yby_town` VALUES ('2564', '太和县', '427');
INSERT INTO `yby_town` VALUES ('2565', '阜南县', '427');
INSERT INTO `yby_town` VALUES ('2566', '颍上县', '427');
INSERT INTO `yby_town` VALUES ('2567', '界首市', '427');
INSERT INTO `yby_town` VALUES ('2568', '埇桥区', '428');
INSERT INTO `yby_town` VALUES ('2569', '砀山县', '428');
INSERT INTO `yby_town` VALUES ('2570', '萧县', '428');
INSERT INTO `yby_town` VALUES ('2571', '灵璧县', '428');
INSERT INTO `yby_town` VALUES ('2572', '泗县', '428');
INSERT INTO `yby_town` VALUES ('2573', '居巢区', '429');
INSERT INTO `yby_town` VALUES ('2574', '庐江县', '429');
INSERT INTO `yby_town` VALUES ('2575', '无为县', '429');
INSERT INTO `yby_town` VALUES ('2576', '含山县', '429');
INSERT INTO `yby_town` VALUES ('2577', '和县', '429');
INSERT INTO `yby_town` VALUES ('2578', '金安区', '430');
INSERT INTO `yby_town` VALUES ('2579', '裕安区', '430');
INSERT INTO `yby_town` VALUES ('2580', '寿县', '430');
INSERT INTO `yby_town` VALUES ('2581', '霍邱县', '430');
INSERT INTO `yby_town` VALUES ('2582', '舒城县', '430');
INSERT INTO `yby_town` VALUES ('2583', '金寨县', '430');
INSERT INTO `yby_town` VALUES ('2584', '霍山县', '430');
INSERT INTO `yby_town` VALUES ('2585', '谯城区', '431');
INSERT INTO `yby_town` VALUES ('2586', '涡阳县', '431');
INSERT INTO `yby_town` VALUES ('2587', '蒙城县', '431');
INSERT INTO `yby_town` VALUES ('2588', '利辛县', '431');
INSERT INTO `yby_town` VALUES ('2589', '贵池区', '432');
INSERT INTO `yby_town` VALUES ('2590', '东至县', '432');
INSERT INTO `yby_town` VALUES ('2591', '石台县', '432');
INSERT INTO `yby_town` VALUES ('2592', '青阳县', '432');
INSERT INTO `yby_town` VALUES ('2593', '宣州区', '433');
INSERT INTO `yby_town` VALUES ('2594', '郎溪县', '433');
INSERT INTO `yby_town` VALUES ('2595', '广德县', '433');
INSERT INTO `yby_town` VALUES ('2596', '泾县', '433');
INSERT INTO `yby_town` VALUES ('2597', '绩溪县', '433');
INSERT INTO `yby_town` VALUES ('2598', '旌德县', '433');
INSERT INTO `yby_town` VALUES ('2599', '宁国市', '433');
INSERT INTO `yby_town` VALUES ('2600', '上城区', '434');
INSERT INTO `yby_town` VALUES ('2601', '下城区', '434');
INSERT INTO `yby_town` VALUES ('2602', '江干区', '434');
INSERT INTO `yby_town` VALUES ('2603', '拱墅区', '434');
INSERT INTO `yby_town` VALUES ('2604', '西湖区', '434');
INSERT INTO `yby_town` VALUES ('2605', '滨江区', '434');
INSERT INTO `yby_town` VALUES ('2606', '萧山区', '434');
INSERT INTO `yby_town` VALUES ('2607', '余杭区', '434');
INSERT INTO `yby_town` VALUES ('2608', '桐庐县', '434');
INSERT INTO `yby_town` VALUES ('2609', '淳安县', '434');
INSERT INTO `yby_town` VALUES ('2610', '建德市', '434');
INSERT INTO `yby_town` VALUES ('2611', '富阳市', '434');
INSERT INTO `yby_town` VALUES ('2612', '临安市', '434');
INSERT INTO `yby_town` VALUES ('2613', '海曙区', '435');
INSERT INTO `yby_town` VALUES ('2614', '江东区', '435');
INSERT INTO `yby_town` VALUES ('2615', '江北区', '435');
INSERT INTO `yby_town` VALUES ('2616', '北仑区', '435');
INSERT INTO `yby_town` VALUES ('2617', '镇海区', '435');
INSERT INTO `yby_town` VALUES ('2618', '鄞州区', '435');
INSERT INTO `yby_town` VALUES ('2619', '象山县', '435');
INSERT INTO `yby_town` VALUES ('2620', '宁海县', '435');
INSERT INTO `yby_town` VALUES ('2621', '余姚市', '435');
INSERT INTO `yby_town` VALUES ('2622', '慈溪市', '435');
INSERT INTO `yby_town` VALUES ('2623', '奉化市', '435');
INSERT INTO `yby_town` VALUES ('2624', '鹿城区', '436');
INSERT INTO `yby_town` VALUES ('2625', '龙湾区', '436');
INSERT INTO `yby_town` VALUES ('2626', '瓯海区', '436');
INSERT INTO `yby_town` VALUES ('2627', '洞头县', '436');
INSERT INTO `yby_town` VALUES ('2628', '永嘉县', '436');
INSERT INTO `yby_town` VALUES ('2629', '平阳县', '436');
INSERT INTO `yby_town` VALUES ('2630', '苍南县', '436');
INSERT INTO `yby_town` VALUES ('2631', '文成县', '436');
INSERT INTO `yby_town` VALUES ('2632', '泰顺县', '436');
INSERT INTO `yby_town` VALUES ('2633', '瑞安市', '436');
INSERT INTO `yby_town` VALUES ('2634', '乐清市', '436');
INSERT INTO `yby_town` VALUES ('2635', '秀城区', '437');
INSERT INTO `yby_town` VALUES ('2636', '秀洲区', '437');
INSERT INTO `yby_town` VALUES ('2637', '嘉善县', '437');
INSERT INTO `yby_town` VALUES ('2638', '海盐县', '437');
INSERT INTO `yby_town` VALUES ('2639', '海宁市', '437');
INSERT INTO `yby_town` VALUES ('2640', '平湖市', '437');
INSERT INTO `yby_town` VALUES ('2641', '桐乡市', '437');
INSERT INTO `yby_town` VALUES ('2642', '吴兴区', '438');
INSERT INTO `yby_town` VALUES ('2643', '南浔区', '438');
INSERT INTO `yby_town` VALUES ('2644', '德清县', '438');
INSERT INTO `yby_town` VALUES ('2645', '长兴县', '438');
INSERT INTO `yby_town` VALUES ('2646', '安吉县', '438');
INSERT INTO `yby_town` VALUES ('2647', '越城区', '439');
INSERT INTO `yby_town` VALUES ('2648', '绍兴县', '439');
INSERT INTO `yby_town` VALUES ('2649', '新昌县', '439');
INSERT INTO `yby_town` VALUES ('2650', '诸暨市', '439');
INSERT INTO `yby_town` VALUES ('2651', '上虞市', '439');
INSERT INTO `yby_town` VALUES ('2652', '嵊州市', '439');
INSERT INTO `yby_town` VALUES ('2653', '婺城区', '440');
INSERT INTO `yby_town` VALUES ('2654', '金东区', '440');
INSERT INTO `yby_town` VALUES ('2655', '武义县', '440');
INSERT INTO `yby_town` VALUES ('2656', '浦江县', '440');
INSERT INTO `yby_town` VALUES ('2657', '磐安县', '440');
INSERT INTO `yby_town` VALUES ('2658', '兰溪市', '440');
INSERT INTO `yby_town` VALUES ('2659', '义乌市', '440');
INSERT INTO `yby_town` VALUES ('2660', '东阳市', '440');
INSERT INTO `yby_town` VALUES ('2661', '永康市', '440');
INSERT INTO `yby_town` VALUES ('2662', '柯城区', '441');
INSERT INTO `yby_town` VALUES ('2663', '衢江区', '441');
INSERT INTO `yby_town` VALUES ('2664', '常山县', '441');
INSERT INTO `yby_town` VALUES ('2665', '开化县', '441');
INSERT INTO `yby_town` VALUES ('2666', '龙游县', '441');
INSERT INTO `yby_town` VALUES ('2667', '江山市', '441');
INSERT INTO `yby_town` VALUES ('2668', '定海区', '442');
INSERT INTO `yby_town` VALUES ('2669', '普陀区', '442');
INSERT INTO `yby_town` VALUES ('2670', '岱山县', '442');
INSERT INTO `yby_town` VALUES ('2671', '嵊泗县', '442');
INSERT INTO `yby_town` VALUES ('2672', '椒江区', '443');
INSERT INTO `yby_town` VALUES ('2673', '黄岩区', '443');
INSERT INTO `yby_town` VALUES ('2674', '路桥区', '443');
INSERT INTO `yby_town` VALUES ('2675', '玉环县', '443');
INSERT INTO `yby_town` VALUES ('2676', '三门县', '443');
INSERT INTO `yby_town` VALUES ('2677', '天台县', '443');
INSERT INTO `yby_town` VALUES ('2678', '仙居县', '443');
INSERT INTO `yby_town` VALUES ('2679', '温岭市', '443');
INSERT INTO `yby_town` VALUES ('2680', '临海市', '443');
INSERT INTO `yby_town` VALUES ('2681', '莲都区', '444');
INSERT INTO `yby_town` VALUES ('2682', '青田县', '444');
INSERT INTO `yby_town` VALUES ('2683', '缙云县', '444');
INSERT INTO `yby_town` VALUES ('2684', '遂昌县', '444');
INSERT INTO `yby_town` VALUES ('2685', '松阳县', '444');
INSERT INTO `yby_town` VALUES ('2686', '云和县', '444');
INSERT INTO `yby_town` VALUES ('2687', '庆元县', '444');
INSERT INTO `yby_town` VALUES ('2688', '景宁畲族自治县', '444');
INSERT INTO `yby_town` VALUES ('2689', '龙泉市', '444');
INSERT INTO `yby_town` VALUES ('2690', '鼓楼区', '445');
INSERT INTO `yby_town` VALUES ('2691', '台江区', '445');
INSERT INTO `yby_town` VALUES ('2692', '仓山区', '445');
INSERT INTO `yby_town` VALUES ('2693', '马尾区', '445');
INSERT INTO `yby_town` VALUES ('2694', '晋安区', '445');
INSERT INTO `yby_town` VALUES ('2695', '闽侯县', '445');
INSERT INTO `yby_town` VALUES ('2696', '连江县', '445');
INSERT INTO `yby_town` VALUES ('2697', '罗源县', '445');
INSERT INTO `yby_town` VALUES ('2698', '闽清县', '445');
INSERT INTO `yby_town` VALUES ('2699', '永泰县', '445');
INSERT INTO `yby_town` VALUES ('2700', '平潭县', '445');
INSERT INTO `yby_town` VALUES ('2701', '福清市', '445');
INSERT INTO `yby_town` VALUES ('2702', '长乐市', '445');
INSERT INTO `yby_town` VALUES ('2703', '思明区', '446');
INSERT INTO `yby_town` VALUES ('2704', '海沧区', '446');
INSERT INTO `yby_town` VALUES ('2705', '湖里区', '446');
INSERT INTO `yby_town` VALUES ('2706', '集美区', '446');
INSERT INTO `yby_town` VALUES ('2707', '同安区', '446');
INSERT INTO `yby_town` VALUES ('2708', '翔安区', '446');
INSERT INTO `yby_town` VALUES ('2709', '城厢区', '447');
INSERT INTO `yby_town` VALUES ('2710', '涵江区', '447');
INSERT INTO `yby_town` VALUES ('2711', '荔城区', '447');
INSERT INTO `yby_town` VALUES ('2712', '秀屿区', '447');
INSERT INTO `yby_town` VALUES ('2713', '仙游县', '447');
INSERT INTO `yby_town` VALUES ('2714', '梅列区', '448');
INSERT INTO `yby_town` VALUES ('2715', '三元区', '448');
INSERT INTO `yby_town` VALUES ('2716', '明溪县', '448');
INSERT INTO `yby_town` VALUES ('2717', '清流县', '448');
INSERT INTO `yby_town` VALUES ('2718', '宁化县', '448');
INSERT INTO `yby_town` VALUES ('2719', '大田县', '448');
INSERT INTO `yby_town` VALUES ('2720', '尤溪县', '448');
INSERT INTO `yby_town` VALUES ('2721', '沙县', '448');
INSERT INTO `yby_town` VALUES ('2722', '将乐县', '448');
INSERT INTO `yby_town` VALUES ('2723', '泰宁县', '448');
INSERT INTO `yby_town` VALUES ('2724', '建宁县', '448');
INSERT INTO `yby_town` VALUES ('2725', '永安市', '448');
INSERT INTO `yby_town` VALUES ('2726', '鲤城区', '449');
INSERT INTO `yby_town` VALUES ('2727', '丰泽区', '449');
INSERT INTO `yby_town` VALUES ('2728', '洛江区', '449');
INSERT INTO `yby_town` VALUES ('2729', '泉港区', '449');
INSERT INTO `yby_town` VALUES ('2730', '惠安县', '449');
INSERT INTO `yby_town` VALUES ('2731', '安溪县', '449');
INSERT INTO `yby_town` VALUES ('2732', '永春县', '449');
INSERT INTO `yby_town` VALUES ('2733', '德化县', '449');
INSERT INTO `yby_town` VALUES ('2734', '金门县', '449');
INSERT INTO `yby_town` VALUES ('2735', '石狮市', '449');
INSERT INTO `yby_town` VALUES ('2736', '晋江市', '449');
INSERT INTO `yby_town` VALUES ('2737', '南安市', '449');
INSERT INTO `yby_town` VALUES ('2738', '芗城区', '450');
INSERT INTO `yby_town` VALUES ('2739', '龙文区', '450');
INSERT INTO `yby_town` VALUES ('2740', '云霄县', '450');
INSERT INTO `yby_town` VALUES ('2741', '漳浦县', '450');
INSERT INTO `yby_town` VALUES ('2742', '诏安县', '450');
INSERT INTO `yby_town` VALUES ('2743', '长泰县', '450');
INSERT INTO `yby_town` VALUES ('2744', '东山县', '450');
INSERT INTO `yby_town` VALUES ('2745', '南靖县', '450');
INSERT INTO `yby_town` VALUES ('2746', '平和县', '450');
INSERT INTO `yby_town` VALUES ('2747', '华安县', '450');
INSERT INTO `yby_town` VALUES ('2748', '龙海市', '450');
INSERT INTO `yby_town` VALUES ('2749', '延平区', '451');
INSERT INTO `yby_town` VALUES ('2750', '顺昌县', '451');
INSERT INTO `yby_town` VALUES ('2751', '浦城县', '451');
INSERT INTO `yby_town` VALUES ('2752', '光泽县', '451');
INSERT INTO `yby_town` VALUES ('2753', '松溪县', '451');
INSERT INTO `yby_town` VALUES ('2754', '政和县', '451');
INSERT INTO `yby_town` VALUES ('2755', '邵武市', '451');
INSERT INTO `yby_town` VALUES ('2756', '武夷山市', '451');
INSERT INTO `yby_town` VALUES ('2757', '建瓯市', '451');
INSERT INTO `yby_town` VALUES ('2758', '建阳市', '451');
INSERT INTO `yby_town` VALUES ('2759', '新罗区', '452');
INSERT INTO `yby_town` VALUES ('2760', '长汀县', '452');
INSERT INTO `yby_town` VALUES ('2761', '永定县', '452');
INSERT INTO `yby_town` VALUES ('2762', '上杭县', '452');
INSERT INTO `yby_town` VALUES ('2763', '武平县', '452');
INSERT INTO `yby_town` VALUES ('2764', '连城县', '452');
INSERT INTO `yby_town` VALUES ('2765', '漳平市', '452');
INSERT INTO `yby_town` VALUES ('2766', '蕉城区', '453');
INSERT INTO `yby_town` VALUES ('2767', '霞浦县', '453');
INSERT INTO `yby_town` VALUES ('2768', '古田县', '453');
INSERT INTO `yby_town` VALUES ('2769', '屏南县', '453');
INSERT INTO `yby_town` VALUES ('2770', '寿宁县', '453');
INSERT INTO `yby_town` VALUES ('2771', '周宁县', '453');
INSERT INTO `yby_town` VALUES ('2772', '柘荣县', '453');
INSERT INTO `yby_town` VALUES ('2773', '福安市', '453');
INSERT INTO `yby_town` VALUES ('2774', '福鼎市', '453');

-- ----------------------------
-- Table structure for `yby_vip`
-- ----------------------------
DROP TABLE IF EXISTS `yby_vip`;
CREATE TABLE `yby_vip` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yby_vip
-- ----------------------------
INSERT INTO `yby_vip` VALUES ('1', '1', '1');
INSERT INTO `yby_vip` VALUES ('87', 'a', 'a');
INSERT INTO `yby_vip` VALUES ('88', 'b', 'b');
INSERT INTO `yby_vip` VALUES ('89', 'c', 'c');
INSERT INTO `yby_vip` VALUES ('90', 'd', 'd');
INSERT INTO `yby_vip` VALUES ('91', 'e', 'e');
INSERT INTO `yby_vip` VALUES ('92', 'f', 'f');
INSERT INTO `yby_vip` VALUES ('93', 'g', 'g');
INSERT INTO `yby_vip` VALUES ('94', 'h', 'h');
INSERT INTO `yby_vip` VALUES ('95', 'j', 'j');
INSERT INTO `yby_vip` VALUES ('96', 'l', 'l');
INSERT INTO `yby_vip` VALUES ('97', 'm', 'm');
INSERT INTO `yby_vip` VALUES ('98', 'n', 'n');
INSERT INTO `yby_vip` VALUES ('99', 'o', 'o');
INSERT INTO `yby_vip` VALUES ('100', 'p', 'p');
INSERT INTO `yby_vip` VALUES ('101', 'q', 'q');
INSERT INTO `yby_vip` VALUES ('102', 'r', 'r');
INSERT INTO `yby_vip` VALUES ('103', 's', 's');
INSERT INTO `yby_vip` VALUES ('104', 't', 't');
INSERT INTO `yby_vip` VALUES ('105', 'v', 'v');
INSERT INTO `yby_vip` VALUES ('106', 'uu', 'uu');
INSERT INTO `yby_vip` VALUES ('107', 'w', 'w');
INSERT INTO `yby_vip` VALUES ('108', 'x', 'x');
INSERT INTO `yby_vip` VALUES ('109', 'y', 'y');
INSERT INTO `yby_vip` VALUES ('110', 'z', 'z');
INSERT INTO `yby_vip` VALUES ('111', 'av', 'c20ad4d76fe97759aa27');
