create database stock; use stock;

DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` int(10) unsigned AUTO_INCREMENT,
  `code` varchar(6) NOT NULL COMMENT '股票代码',
  `name` varchar(10) NOT NULL COMMENT '股票名称',
  `price` decimal(10,2) NOT NULL COMMENT '今开',
  `amplitude` varchar(10) NOT NULL COMMENT '涨跌幅',
  `turnover` varchar(10) NOT NULL COMMENT '换手率',
  `high` decimal(10,2) NOT NULL COMMENT '前期高点',
  `low` decimal(10,2) NOT NULL COMMENT '前期低点',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note_info` varchar(200) DEFAULT '',
  `info_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `info_id` (`info_id`),
  CONSTRAINT `focus_ibfk_1` FOREIGN KEY (`info_id`) REFERENCES `information` (`id`)
);


DROP TABLE IF EXISTS `stock_user`;
CREATE TABLE `stock_user` (
 `name` varchar(50),
 `pwd` varbinary(255) DEFAULT NULL,
 PRIMARY KEY (`name`)
);

INSERT INTO `information` (`id`, `code`, `name`, `price`, `high`, `amplitude`, `turnover`, `low`) VALUES ('1', '600000', '浦发银行', '10.04', '10.1', '1.00%', '0.15%', '10'),('2', '600004', '白云机场', '11.45', '11.48', '2.10%', '0.84%', '11.24'),('3', '600006', '东风汽车', '7.01', '7.64', '9.66%', '4.95%', '6.96'),('4', '600007', '中国国贸', '18.23', '18.58', '5.30%', '0.91%', '17.61'),('5', '600008', '首创股份', '2.98', '3.07', '3.70%', '0.75%', '2.96'),('6', '600010', '包钢股份', '1.54', '1.56', '3.23%', '1.36%', '1.51'),('7', '600011', '华能国际', '4.09', '4.09', '0.74%', '0.15%', '4.06'),('8', '600012', '皖通高速', '6.67', '6.84', '2.54%', '0.32%', '6.67'),('9', '600015', '华夏银行', '6.23', '6.24', '0.64%', '0.15%', '6.2'),('10', '600016', '民生银行', '4.63', '4.64', '0.43%', '0.19%', '4.62'),('11', '600017', '日照港', '2.67', '2.67', '0.75%', '0.19%', '2.65'),('12', '600018', '上港集团', '4.62', '4.66', '1.73%', '0.13%', '4.58'),('13', '600019', '宝钢股份', '7.04', '7.16', '3.26%', '0.72%', '6.93'),('14', '600020', '中原高通', '3.28', '3.29', '0.91%', '0.21%', '3.26'),('15', '600021', '上海电力', '6.8', '6.81', '1.03%', '0.30%', '6.74'),('16', '600022', '山东钢铁', '1.66', '1.67', '3.01%', '0.73%', '1.62'),('17', '600023', '浙能电力', '3.61', '3.62', '0.83%', '0.14%', '3.59'),('18', '600025', '华能水电', '5.62', '5.65', '3.74%', '0.18%', '5.44'),('19', '600026', '中远海能', '6.08', '6.12', '1.30%', '0.57%', '6.04'),('20', '600027', '华电国际', '3.38', '3.38', '0.89%', '0.22%', '3.35'),('21', '600028', '中国石化', '4.46', '4.47', '2.67%', '0.22%', '4.35'),('22', '600029', '南方航空', '6.11', '6.28', '3.43%', '0.42%', '6.07'),('23', '600030', '中信证券', '24.48', '24.8', '1.79%', '0.77%', '24.36'),('24', '600031', '三一重工', '27.15', '27.37', '3.66%', '1.80%', '26.38'),('25', '600032', '浙江新能', '12.06', '13.08', '11.38%', '37.60%', '11.68'),('26', '600033', '福建高新', '2.67', '2.68', '0.75%', '0.11%', '2.66'),('27', '600035', '楚天高通', '2.85', '2.87', '1.41%', '0.24%', '2.83'),('28', '600036', '招商银行', '54.75', '55.7', '2.96%', '0.21%', '54.07'),('29', '600037', '歌华有线', '9.31', '9.4', '2.37%', '0.52%', '9.18'),('30', '600038', '中直股份', '51.51', '52.78', '2.86%', '0.72%', '51.31'),('31', '600039', '四川路桥', '6.39', '6.44', '2.04%', '0.50%', '6.31'),('32', '600048', '保利地产', '12.85', '12.87', '1.94%', '0.33%', '12.62'),('33', '600050', '中国联通', '4.52', '4.57', '2.21%', '0.53%', '4.47'),('34', '600051', '宁波联合', '6.81', '6.81', '1.93%', '0.46%', '6.68'),('35', '600052', '浙江广厦', '3.38', '3.38', '1.48%', '0.58%', '3.33'),('36', '600053', '九鼎投资', '17', '17', '4.13%', '0.76%', '16.3'),('37', '600054', '黄山旅游', '9.67', '9.74', '1.66%', '0.38%', '9.58'),('38', '600055', '万东医疗', '15.6', '15.69', '2.13%', '1.37%', '15.36'),('39', '600056', '中国医药', '12.61', '12.85', '2.23%', '0.59%', '12.57'),('40', '600057', '厦门象屿', '6.01', '6.04', '2.34%', '0.69%', '5.9'),('41', '600058', '五矿发展', '7.92', '7.99', '2.29%', '0.56%', '7.81'),('42', '600059', '古越龙山', '13.3', '13.65', '3.67%', '4.07%', '13.16'),('43', '600060', '海信视像', '12.99', '13.92', '7.64%', '3.03%', '12.93'),('44', '600061', '国投资本', '8.64', '8.92', '3.86%', '0.41%', '8.59'),('45', '600062', '华润双鹤', '11.63', '11.68', '0.86%', '0.23%', '11.58'),('46', '600063', '皖维高新', '4.74', '4.79', '2.72%', '2.42%', '4.66'),('47', '600064', '南京高科', '9.88', '9.92', '0.61%', '0.23%', '9.86'),('48', '600066', '宇通客车', '12.74', '12.88', '1.81%', '0.46%', '12.65'),('49', '600067', '冠城大通', '3.4', '3.41', '2.35%', '0.64%', '3.33'),('50', '600068', '葛洲坝', '6.88', '6.93', '0.87%', '0.35%', '6.87'),('51', '600070', '浙江富润', '9.53', '10.11', '6.04%', '15.55%', '9.53'),('52', '600071', '凤凰光学', '15.18', '15.38', '1.96%', '1.12%', '15.08'),('53', '600072', '中船科技', '11.17', '11.38', '2.41%', '0.92%', '11.11'),('54', '600073', '上海梅林', '8.17', '8.21', '1.59%', '0.84%', '8.08'),('55', '600075', '新疆天业', '7.26', '7.26', '1.93%', '1.49%', '7.12'),('56', '600076', '康欣新材', '4.21', '4.53', '8.73%', '5.15%', '4.16'),('57', '600077', '宋都股份', '2.56', '2.57', '1.95%', '0.36%', '2.52'),('58', '600078', '*ST澄星 ', '2.68', '2.7', '4.80%', '3.11%', '2.57');

DROP PROCEDURE IF EXISTS callproc_note;
DELIMITER //
create PROCEDURE `callproc_note`(in callcode varchar(6))
begin
select f.note_info from focus as f inner join information as i on i.id=f.info_id where i.code=callcode;
end
 //
DELIMITER ;