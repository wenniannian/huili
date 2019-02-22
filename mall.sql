-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-22 10:39:55
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mall`
--

-- --------------------------------------------------------

--
-- 表的结构 `mall_index_carousel`
--

CREATE TABLE `mall_index_carousel` (
  `lid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_index_carousel`
--

INSERT INTO `mall_index_carousel` (`lid`, `img`, `title`, `href`) VALUES
(1, 'img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=11'),
(2, 'img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=8'),
(3, 'img/index/banner3.png', '轮播广告商品3', 'product_details.html?lid=10'),
(4, 'img/index/banner4.png', '轮播广告商品4', 'product_details.html?lid=18');

-- --------------------------------------------------------

--
-- 表的结构 `mall_index_product`
--

CREATE TABLE `mall_index_product` (
  `lid` int(11) NOT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `sold_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_index_product`
--

INSERT INTO `mall_index_product` (`lid`, `details`, `pic`, `price`, `href`, `sold_count`) VALUES
(1, 'HLA海澜之家短袖T恤男2018夏季新品风景印花休闲舒适透气HNTBJ2E092A漂白花纹', 'img/product/md/1-1.jpg', '79.00', 'product_details.html?lid=1', 463),
(2, 'HLA海澜之家短袖T恤男2018夏季新品舒适基础款简约圆领HNTBJ2E153A藏青', 'img/product/md/2-1.jpg', '68.00', 'product_details.html?lid=2', 143),
(3, 'HLA海澜之家简约动物印花短袖T恤2018夏季新品微弹舒适新款短T男生HNTBJ2E042A 蓝灰花纹', 'img/product/md/3-1.jpg', '138.00', 'product_details.html?lid=3', 953),
(4, 'HLA/海澜之家条纹镶拼短袖T恤2018夏季新品休闲polo衫新款男HNTBD2E605A 浅灰镶拼1J', 'img/product/md/4-1.jpg', '99.00', 'product_details.html?lid=4', 446),
(5, 'HLA海澜之家竹节提花净色短袖T恤2018夏季新品透气短袖T恤男HNTBJ2E339A 米白YL', 'img/product/md/5-1.jpg', '98.00', 'product_details.html?lid=5', 342),
(6, '营HLA海澜之家短袖T恤男2018夏季新品简约基础款柔软舒适HNTBJ2E366A浅绿(VQ)', 'img/product/md/6-1.jpg', '108.00', 'product_details.html?lid=6', 734),
(7, 'HLA海澜之家短袖T恤男线条花纹舒适透气HNTBJ2E342A米白花纹(YP)', 'img/product/md/7-1.jpg', '66.00', 'product_details.html?lid=7', 666),
(8, 'HLA海澜之家活力卡通短袖T恤2018夏季新品狗年贺岁TBJ2E342A米白花纹(YP)', 'img/product/md/8-1.jpg', '88.00', 'product_details.html?lid=8', 556),
(9, 'HLA海澜之家净色V领绣标短袖T恤2018夏季新品商务休闲字母T恤男HNTBJ2E062A 藏青', 'img/product/md/9-1.jpg', '133.00', 'product_details.html?lid=9', 498),
(10, 'HLA/海澜之家简约印花短袖T恤2018夏季新款短袖polo衫男HNTBD2E659A 藏青花纹3V', 'img/product/md/10-1.jpg', '98.00', 'product_details.html?lid=10', 3521),
(11, '耐克AIR JORDAN 1黑红脚趾复刻男子篮球鞋 555088-610（限量）经典黑红款排队购', 'img/product/md/aj1-1.jpg', '3259.00', 'product_details.html?lid=11', 4352),
(12, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫天蓝色', 'img/product/md/cid=1-1.jpg', '135.00', 'product_details.html?lid=12', 4332),
(13, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫藏青色', 'img/product/md/cid=2-1.jpg', '109.00', 'product_details.html?lid=13', 453),
(14, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫浅绿色', 'img/product/md/cid=4-1.jpg', '149.00', 'product_details.html?lid=14', 1113),
(15, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫纯白T', 'img/product/md/cid=5-1.jpg', '126.00', 'product_details.html?lid=15', 7894),
(16, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫纯黑T', 'img/product/md/cid=1-1.jpg', '111.00', 'product_details.html?lid=16', 3344),
(17, '七匹狼短袖T恤男士夏季休闲衣服圆领潮流印花衣服打底T恤半袖男装灰色', 'img/product/md/cid=7-1.jpg', '129.00', 'product_details.html?lid=17', 489),
(18, '七匹狼短袖T恤男士夏季休闲衣服圆领潮流印花衣服打底T恤半袖男装蓝色', 'img/product/md/cid=8-1.jpg', '199.00', 'product_details.html?lid=18', 651),
(19, '七匹狼男装韩版2018夏装潮流字母印花学生男士上衣短袖T恤男OC7284 @藏蓝色', 'img/product/md/cid=23-1.jpg', '175.00', 'product_details.html?lid=19', 713),
(20, '经典款夏季新品休闲商务翻领纯棉纯色POLO衫T恤男 101藏青', 'img/product/md/11-1.jpg', '205.00', 'product_details.html?lid=20', 432),
(21, '【七匹狼】短袖t恤 男士丝光棉纯色休闲短袖polo衫 男装 (黑色)', 'img/product/md/21-1.jpg', '167.00', 'product_details.html?lid=21', 266),
(22, '富贵鸟休闲鞋小白鞋男鞋2018夏季新款镂空豆豆鞋平板鞋透气一脚蹬懒人鞋子男韩版潮流冲孔乐福鞋', 'img/product/md/cid=30-1.jpg', '299.00', 'product_details.html?lid=22', 193),
(23, '富贵鸟男鞋夏季新款休闲鞋子男潮鞋韩版男士透气运动鞋跑步网布鞋男', 'img/product/md/cid=31-1.jpg', '379.00', 'product_details.html?lid=23', 353),
(24, '沙驰（SATCHI）休闲鞋男鞋春夏季板鞋布鞋男韩版潮流运动休闲小白鞋男鞋子', 'img/product/md/cid=32-1.jpg', '222.00', 'product_details.html?lid=24', 223),
(25, 'Zero零度休闲鞋男鞋子男士软底春夏季真皮商务休闲皮鞋 系带黑色 ', 'img/product/md/cid=33-1.jpg', '200.00', 'product_details.html?lid=25', 154),
(26, '红蜻蜓舒适百搭休闲男士驾车鞋 WTA74231/32 黑色', 'img/product/md/cid=34-1.jpg', '205.00', 'product_details.html?lid=26', 133),
(27, '夏季休闲鞋子男士板鞋网面飞织透气运动休闲跑步鞋韩版潮流豆豆鞋防滑耐磨厚底增高学生小白鞋', 'img/product/md/cid=35-1.jpg', '299.00', 'product_details.html?lid=27', 183),
(28, '玛森洛 春夏季休闲鞋韩版潮流网鞋平板鞋男士低帮透气学生懒人网布鞋户外运动鞋子', 'img/product/md/cid36-1.jpg', '366.00', 'product_details.html?lid=28', 773),
(29, '休闲鞋男鞋春夏季板鞋运动鞋子男士运动休闲男鞋韩版涂鸦印花潮流青少年学生帆布鞋', 'img/product/md/cid37-1.jpg', '300.00', 'product_details.html?lid=29', 113),
(30, 'GUTE鞋子男鞋韩版潮流休闲鞋男夏季透气飞织网鞋网面鞋男士学生鞋旅游运动板鞋跑步鞋小白鞋男老爹鞋镂空', 'img/product/md/cid29-1.jpg', '230.00', 'product_details.html?lid=30', 163);

-- --------------------------------------------------------

--
-- 表的结构 `mall_laptop`
--

CREATE TABLE `mall_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `detail` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_laptop`
--

INSERT INTO `mall_laptop` (`lid`, `family_id`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `shelf_time`, `sold_count`, `is_onsale`, `detail`) VALUES
(1, 1, 'HLA海澜之家短袖T恤男2018夏季新品风景印花休闲舒适透气HNTBJ2E092A漂白花纹', '海澜之家官方旗舰店', '79.00', '七天无理由退款， 正品保障', 'S', '海澜之家(HLA)', 7077641, 2968, 1, ' `<div><img src=\"img/product/detail/1-1.jpg\"><img src=\"img/product/detail/1-2.jpg\"><img src=\"img/product/detail/1-3.jpg\"><img src=\"img/product/detail/1-4.jpg\"></div>`'),
(2, 1, 'HLA海澜之家短袖T恤男2018夏季新品舒适基础款简约圆领HNTBJ2E153A藏青', '海澜之家官方旗舰店', '68.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 2884, 1922, 0, '`<div><img src=\"img/product/detail/2-1.jpg\"><img src=\"img/product/detail/2-2.jpg\"><img src=\"img/product/detail/2-3.jpg\"><img src=\"img/product/detail/2-4.jpg\"></div>`'),
(3, 1, 'HLA海澜之家简约动物印花短袖T恤2018夏季新品微弹舒适新款短T男生HNTBJ2E042A 蓝灰花纹', '海澜之家官方旗舰店', '129.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 24012841393, 1145, 0, '`<div><img src=\"img/product/detail/3-1.jpg\"><img src=\"img/product/detail/3-2.jpg\"><img src=\"img/product/detail/3-3.jpg\"><img src=\"img/product/detail/3-4.jpg\"></div>`'),
(4, 1, 'HLA/海澜之家条纹镶拼短袖T恤2018夏季新品休闲polo衫新款男HNTBD2E605A 浅灰镶拼1J', '海澜之家官方旗舰店', '99.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 6863782, 375, 1, '`<div><img src=\"img/product/detail/4-1.jpg\"><img src=\"img/product/detail/4-2.jpg\"><img src=\"img/product/detail/4-3.jpg\"><img src=\"img/product/detail/4-4.jpg\"></div>`'),
(5, 1, 'HLA海澜之家竹节提花净色短袖T恤2018夏季新品透气短袖T恤男HNTBJ2E339A 米白YL', '海澜之家官方旗舰店', '98.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 25907050909, 3725, 0, '`<div><img src=\"img/product/detail/5-1.jpg\"><img src=\"img/product/detail/5-2.jpg\"><img src=\"img/product/detail/5-3.jpg\"></div>`'),
(6, 1, '营HLA海澜之家短袖T恤男2018夏季新品简约基础款柔软舒适HNTBJ2E366A浅绿(VQ)', '海澜之家官方旗舰店', '108.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 6841670, 725, 1, '`<div><img src=\"img/product/detail/6-1.jpg\"><img src=\"img/product/detail/6-2.jpg\"><img src=\"img/product/detail/6-3.jpg\"><img src=\"img/product/detail/6-4.jpg\"></div>`'),
(7, 1, 'HLA海澜之家短袖T恤男线条花纹舒适透气HNTBJ2E342A米白花纹(YP)', '海澜之家官方旗舰店', '66.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 25900909, 3725, 0, '`<div><img src=\"img/product/detail/7-1.jpg\"><img src=\"img/product/detail/7-2.jpg\"><img src=\"img/product/detail/7-3.jpg\"><img src=\"img/product/detail/7-4.jpg\"></div>`'),
(8, 1, 'HLA海澜之家活力卡通短袖T恤2018夏季新品狗年贺岁TBJ2E342A米白花纹(YP)', '海澜之家官方旗舰店', '88.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 25900909, 3725, 1, '`<div><img src=\"img/product/detail/8-1.jpg\"><img src=\"img/product/detail/8-2.jpg\"><img src=\"img/product/detail/8-3.jpg\"></div>`'),
(9, 1, 'HLA海澜之家净色V领绣标短袖T恤2018夏季新品商务休闲字母T恤男HNTBJ2E062A 藏青', '海澜之家官方旗舰店', '133.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 27037782791, 445, 0, '`<div><img src=\"img/product/detail/9-1.jpg\"><img src=\"img/product/detail/9-2.jpg\"><img src=\"img/product/detail/9-3.jpg\"></div>`'),
(10, 1, 'HLA/海澜之家简约印花短袖T恤2018夏季新款短袖polo衫男HNTBD2E659A 藏青花纹3V', '海澜之家官方旗舰店', '98.00', '七天无理由退款， 正品保障', 'M', '海澜之家(HLA)', 2082791, 1445, 1, '`<div><img src=\"img/product/detail/10-1.jpg\"><img src=\"img/product/detail/10-2.jpg\"><img src=\"img/product/detail/10-3.jpg\"></div>`'),
(11, 1, '耐克AIR JORDAN 1 OG Bred Toe AJ1黑红脚趾复刻男子篮球鞋 555088-610（限量）经典黑红款排队购', '美国代购，邮费自付', '3259.00', '·不支持7天无理由退货，正品保障', 'M', ' 京京运动专营店', 25648820184, 15, 0, '`<div><img src=\"img/product/detail/aj1-1.jpg\"></div>`'),
(12, 1, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫天蓝色', '七匹狼官方旗舰店', '135.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 445, 1, '`<div><img src=\"img/product/detail/cid1-6-2.jpg\"><img src=\"img/product/detail/cid1-6-5.jpg\"><img src=\"img/product/detail/cid1-6-6.jpg\"><img src=\"img/product/detail/cid1-6-7.jpg\"></div>`'),
(13, 1, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫藏青色', '七匹狼官方旗舰店', '109.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 445, 1, '`<div><img src=\"img/product/detail/cid1-6-2.jpg\"><img src=\"img/product/detail/cid1-6-5.jpg\"><img src=\"img/product/detail/cid1-6-6.jpg\"><img src=\"img/product/detail/cid1-6-7.jpg\"></div>`'),
(14, 1, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫浅绿色', '七匹狼官方旗舰店', '149.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 445, 1, '`<div><img src=\"img/product/detail/cid1-6-2.jpg\"><img src=\"img/product/detail/cid1-6-5.jpg\"><img src=\"img/product/detail/cid1-6-6.jpg\"><img src=\"img/product/detail/cid1-6-7.jpg\"></div>`'),
(15, 1, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫纯白T', '七匹狼官方旗舰店', '126.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 445, 1, '`<div><img src=\"img/product/detail/cid1-6-2.jpg\"><img src=\"img/product/detail/cid1-6-5.jpg\"><img src=\"img/product/detail/cid1-6-6.jpg\"><img src=\"img/product/detail/cid1-6-7.jpg\"></div>`'),
(16, 1, '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫纯黑T', '七匹狼官方旗舰店', '111.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 445, 1, '`<div><img src=\"img/product/detail/cid1-6-2.jpg\"><img src=\"img/product/detail/cid1-6-5.jpg\"><img src=\"img/product/detail/cid1-6-6.jpg\"><img src=\"img/product/detail/cid1-6-7.jpg\"></div>`'),
(17, 1, '七匹狼短袖T恤男士夏季休闲衣服圆领潮流印花衣服打底T恤半袖男装灰色', '七匹狼官方旗舰店', '129.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 1435, 1, '`<div><img src=\"img/product/detail/cid7-8-1.jpg\"><img src=\"img/product/detail/cid7-8-2.jpg\"><img src=\"img/product/detail/cid7-8-3.jpg\"><img src=\"img/product/detail/cid7-8-4.jpg\"></div>`'),
(18, 1, '七匹狼短袖T恤男士夏季休闲衣服圆领潮流印花衣服打底T恤半袖男装蓝色', '七匹狼官方旗舰店', '199.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 1435, 1, '`<div><img src=\"img/product/detail/cid7-8-1.jpg\"><img src=\"img/product/detail/cid7-8-2.jpg\"><img src=\"img/product/detail/cid7-8-3.jpg\"><img src=\"img/product/detail/cid7-8-4.jpg\"></div>`'),
(19, 1, '七匹狼男装韩版2018夏装潮流字母印花学生男士上衣短袖T恤男OC7284 @藏蓝色', '七匹狼官方旗舰店', '175.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid23-1.jpg\"><img src=\"img/product/detail/cid23-2.jpg\"><img src=\"img/product/detail/cid23-3.jpg\"><img src=\"img/product/detail/cid23-4.jpg\"></div>`'),
(20, 1, '【七匹狼】男士短袖T恤 经典款夏季新品休闲商务翻领纯棉纯色POLO衫T恤男 101藏青', '七匹狼官方旗舰店', '205.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid20-1.jpg\"><img src=\"img/product/detail/cid20-2.jpg\"><img src=\"img/product/detail/cid20-3.jpg\"><img src=\"img/product/detail/cid20-4.jpg\"></div>`'),
(21, 1, '【七匹狼】短袖t恤 男士丝光棉纯色休闲短袖polo衫 男装 (黑色)', '七匹狼官方旗舰店', '167.00', '商家承诺按时发货,按时送达,正品保障', 'M', '七匹狼（SEPTWOLVES）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/21-1.jpg\"><img src=\"img/product/detail/21-2.jpg\"><img src=\"img/product/detail/21-3.jpg\"><img src=\"img/product/detail/21-4.jpg\"></div>`'),
(22, 1, '富贵鸟休闲鞋小白鞋男鞋2018夏季新款镂空豆豆鞋平板鞋透气一脚蹬懒人鞋子男韩版潮流冲孔乐福鞋', '富贵鸟官方旗舰店', '299.00', '商家承诺按时发货,按时送达', 'M', '富贵鸟', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid30-1.jpg\"><img src=\"img/product/detail/cid30-2.jpg\"><img src=\"img/product/detail/cid30-3.jpg\"><img src=\"img/product/detail/cid30-4.jpg\"></div>`'),
(23, 1, '富贵鸟男鞋夏季新款休闲鞋子男潮鞋韩版男士透气运动鞋跑步网布鞋男', '富贵鸟官方旗舰店', '379.00', '商家承诺按时发货,按时送达', 'M', '富贵鸟', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid31-1.jpg\"><img src=\"img/product/detail/cid31-2.jpg\"><img src=\"img/product/detail/cid31-3.jpg\"><img src=\"img/product/detail/cid31-4.jpg\"></div>`'),
(24, 1, '沙驰（SATCHI）休闲鞋男鞋春夏季板鞋布鞋男韩版潮流运动休闲小白鞋男鞋子 ', '沙驰鞋类旗舰店', '222.00', '商家承诺按时发货,按时送达', 'M', '沙驰（SATCHI）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid32-1.jpg\"><img src=\"img/product/detail/cid32-2.jpg\"><img src=\"img/product/detail/cid32-3.jpg\"><img src=\"img/product/detail/cid32-4.jpg\"></div>`'),
(25, 1, 'Zero零度休闲鞋男鞋子男士软底春夏季真皮商务休闲皮鞋 系带黑色 ', ' ZRO零度尚品旗舰店', '200.00', '商家承诺按时发货,按时送达', 'M', '零度尚品', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid33-1.jpg\"><img src=\"img/product/detail/cid33-2.jpg\"><img src=\"img/product/detail/cid33-3.jpg\"><img src=\"img/product/detail/cid33-4.jpg\"></div>`'),
(26, 1, '红蜻蜓舒适百搭休闲男士驾车鞋 WTA74231/32 黑色', ' 红蜻蜓旗舰店', '299.00', '商家承诺按时发货,按时送达', 'M', '红蜻蜓 (RED DRAGONFLY) ', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid34-1.jpg\"><img src=\"img/product/detail/cid34-2.jpg\"><img src=\"img/product/detail/cid34-3.jpg\"><img src=\"img/product/detail/cid34-4.jpg\"></div>`'),
(27, 1, '夏季休闲鞋子男士板鞋网面飞织透气运动休闲跑步鞋韩版潮流豆豆鞋防滑耐磨厚底增高学生小白鞋 ', ' 陈鞋业专营店', '366.00', '商家承诺按时发货,按时送达', 'M', 'City clover', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid35-1.jpg\"><img src=\"img/product/detail/cid35-2.jpg\"><img src=\"img/product/detail/cid35-3.jpg\"><img src=\"img/product/detail/cid35-4.jpg\"></div>`'),
(28, 1, '玛森洛 春夏季休闲鞋韩版潮流网鞋平板鞋男士低帮透气学生懒人网布鞋户外运动鞋子', ' 格洛里鞋靴专营店', '250.00', '商家承诺按时发货,按时送达', 'M', '玛森洛（MASEMLOR）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid36-1.jpg\"><img src=\"img/product/detail/cid36-2.jpg\"><img src=\"img/product/detail/cid36-3.jpg\"><img src=\"img/product/detail/cid36-4.jpg\"></div>`'),
(29, 1, '休闲鞋男鞋春夏季板鞋运动鞋子男士运动休闲男鞋韩版涂鸦印花潮流青少年学生帆布鞋', ' 城品鞋靴专营店', '300.00', '商家承诺按时发货,按时送达', 'M', '浩茗（HAOMING）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid37-1.jpg\"><img src=\"img/product/detail/cid37-2.jpg\"><img src=\"img/product/detail/cid37-3.jpg\"></div>`'),
(30, 1, 'GUTE鞋子男鞋韩版潮流休闲鞋男夏季透气飞织网鞋网面鞋男士学生鞋旅游运动板鞋跑步鞋小白鞋男老爹鞋镂空', ' 莘瑶男鞋专营店', '230.00', '商家承诺按时发货,按时送达', 'M', '顾特（GUTE）', 27037782791, 1335, 1, '`<div><img src=\"img/product/detail/cid29-1.jpg\"><img src=\"img/product/detail/cid29-2.jpg\"><img src=\"img/product/detail/cid29-3.jpg\"></div>`'),
(31, 1, '花花公子（PLAYBOY）短袖t恤男 夏季男装新款休闲纯棉纯色半袖上衣透气衣服', ' 花花公子专营店', '99.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 13522968797, 1635, 1, '`<div><img src=\"img/product/detail/p1-1.jpg\"><img src=\"img/product/detail/p1-2.jpg\"><img src=\"img/product/detail/p1-3.jpg\"><img src=\"img/product/detail/p1-4.jpg\"></div>`'),
(32, 1, '花花公子t恤男 男装中国风印花 修身显瘦潮男夏短袖T恤 黑色 170/L适合120-140斤', ' 花花公子专营店', '139.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 26239303645, 2635, 1, '`<div><img src=\"img/product/detail/p2-1.jpg\"><img src=\"img/product/detail/p2-2.jpg\"><img src=\"img/product/detail/p2-3.jpg\"><img src=\"img/product/detail/p2-4.jpg\"></div>`'),
(33, 1, '花花公子莫代尔冰丝棉短袖T恤男套装修身夏季韩版男半袖运动装', ' 花花公子专营店', '129.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 262303645, 2635, 1, '`<div><img src=\"img/product/detail/p3-1.jpg\"><img src=\"img/product/detail/p3-2.jpg\"><img src=\"img/product/detail/p3-3.jpg\"><img src=\"img/product/detail/p3-4.jpg\"></div>`'),
(34, 1, '花花公子短袖t恤男纯棉撞色条纹T恤v领休闲透气上衣男士2018夏季新品青年大码潮流男装', ' 花花公子专营店', '169.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 262303645, 2335, 1, '`<div><img src=\"img/product/detail/p4-1.jpg\"><img src=\"img/product/detail/p4-2.jpg\"><img src=\"img/product/detail/p4-3.jpg\"><img src=\"img/product/detail/p4-4.jpg\"></div>`'),
(35, 1, '花花公子 短袖t恤男2018夏季新品韩版修身半袖圆领纯色男士休闲纯棉男装', ' 花花公子专营店', '179.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 2623645, 2635, 1, '`<div><img src=\"img/product/detail/p5-1.jpg\"><img src=\"img/product/detail/p5-2.jpg\"><img src=\"img/product/detail/p5-3.jpg\"><img src=\"img/product/detail/p5-4.jpg\"></div>`'),
(36, 1, '花花公子 花花公子短袖T恤男修身夏季衣服男士翻领打底衫条纹t恤短袖韩版体恤 酒红 ', ' 花花公子专营店', '119.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 262303645, 2635, 1, '`<div><img src=\"img/product/detail/p6-1.jpg\"><img src=\"img/product/detail/p6-2.jpg\"><img src=\"img/product/detail/p6-3.jpg\"><img src=\"img/product/detail/p6-4.jpg\"></div>`'),
(37, 1, '花花公子（PLAYBOY）短袖t恤男修身夏季韩版印花男士纯棉t恤圆领中国风衣服夏装短袖', ' 花花公子专营店', '122.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 262303645, 2635, 1, '`<div><img src=\"img/product/detail/p7-1.jpg\"><img src=\"img/product/detail/p7-2.jpg\"><img src=\"img/product/detail/p7-3.jpg\"><img src=\"img/product/detail/p7-4.jpg\"></div>`'),
(38, 1, '花花公子 男士短袖t恤2018夏款中青年宽松桑蚕丝半袖男商务休闲百搭真丝条纹T恤衫翻领潮爸爸装上衣', ' 花花公子专营店', '189.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 262303645, 2635, 1, '`<div><img src=\"img/product/detail/p8-1.jpg\"><img src=\"img/product/detail/p8-2.jpg\"><img src=\"img/product/detail/p8-3.jpg\"><img src=\"img/product/detail/p8-4.jpg\"></div>`'),
(39, 1, '花花公子（PLAYBOY）长袖t恤男 春夏季新款男装时尚休闲修身纯色上衣纯棉衣服男', ' 花花公子专营店', '199.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 262303645, 2635, 1, '`<div><img src=\"img/product/detail/p9-1.jpg\"><img src=\"img/product/detail/p9-2.jpg\"><img src=\"img/product/detail/p9-3.jpg\"><img src=\"img/product/detail/p9-4.jpg\"></div>`'),
(40, 1, '花花公子莫代尔冰丝棉短花花公子短袖t恤男修身圆领青年纯棉T恤衫新款男装休闲打底衫 T7565藏青色 袖T恤男套装修身夏季韩版男半袖运动装', ' 花花公子专营店', '98.00', '商家承诺按时发货,按时送达', 'M', '花花公子（PLAYBOY）', 630365, 2635, 1, '`<div><img src=\"img/product/detail/p10-1.jpg\"><img src=\"img/product/detail/p10-2.jpg\"><img src=\"img/product/detail/p10-3.jpg\"><img src=\"img/product/detail/p10-4.jpg\"></div>`');

-- --------------------------------------------------------

--
-- 表的结构 `mall_laptop_family`
--

CREATE TABLE `mall_laptop_family` (
  `lid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_laptop_family`
--

INSERT INTO `mall_laptop_family` (`lid`, `fname`) VALUES
(1, 'AppleMacBookAir'),
(2, '小米Air'),
(3, 'ThinkPadE480C'),
(4, '华硕RX310UQ'),
(5, '联想小新700'),
(6, '戴尔燃7000'),
(7, '戴尔灵越15PR-5745B'),
(8, 'ThinkPadE470 C'),
(9, '华硕FH5900V'),
(10, '神舟战神Z7M-KP7GT');

-- --------------------------------------------------------

--
-- 表的结构 `mall_laptop_pic`
--

CREATE TABLE `mall_laptop_pic` (
  `lid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_laptop_pic`
--

INSERT INTO `mall_laptop_pic` (`lid`, `laptop_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/sm/1-1.jpg', 'img/product/md/1-1.jpg', 'img/product/lg/1-1.jpg'),
(2, 1, 'img/product/sm/1-2.jpg', 'img/product/md/1-2.jpg', 'img/product/lg/1-2.jpg'),
(3, 1, 'img/product/sm/1-3.jpg', 'img/product/md/1-3.jpg', 'img/product/lg/1-3.jpg'),
(4, 1, 'img/product/sm/1-4.jpg', 'img/product/md/1-4.jpg', 'img/product/lg/1-4.jpg'),
(5, 1, 'img/product/sm/1-2.jpg', 'img/product/md/1-2.jpg', 'img/product/lg/1-2.jpg'),
(6, 1, 'img/product/sm/1-3.jpg', 'img/product/md/1-3.jpg', 'img/product/lg/1-3.jpg'),
(7, 2, 'img/product/sm/2-1.jpg', 'img/product/md/2-1.jpg', 'img/product/lg/2-1.jpg'),
(8, 2, 'img/product/sm/2-2.jpg', 'img/product/md/2-2.jpg', 'img/product/lg/2-2.jpg'),
(9, 2, 'img/product/sm/2-3.jpg', 'img/product/md/2-3.jpg', 'img/product/lg/2-3.jpg'),
(10, 2, 'img/product/sm/2-4.jpg', 'img/product/md/2-4.jpg', 'img/product/lg/2-4.jpg'),
(11, 3, 'img/product/sm/3-1.jpg', 'img/product/md/3-1.jpg', 'img/product/lg/3-1.jpg'),
(12, 3, 'img/product/sm/3-2.jpg', 'img/product/md/3-2.jpg', 'img/product/lg/3-2.jpg'),
(13, 3, 'img/product/sm/3-3.jpg', 'img/product/md/3-3.jpg', 'img/product/lg/3-3.jpg'),
(14, 3, 'img/product/sm/3-4.jpg', 'img/product/md/3-4.jpg', 'img/product/lg/3-4.jpg'),
(15, 4, 'img/product/sm/4-1.jpg', 'img/product/md/4-1.jpg', 'img/product/lg/4-1.jpg'),
(16, 4, 'img/product/sm/4-2.jpg', 'img/product/md/4-2.jpg', 'img/product/lg/4-2.jpg'),
(17, 4, 'img/product/sm/4-3.jpg', 'img/product/md/4-3.jpg', 'img/product/lg/4-3.jpg'),
(18, 5, 'img/product/sm/5-1.jpg', 'img/product/md/5-1.jpg', 'img/product/lg/5-1.jpg'),
(19, 5, 'img/product/sm/5-2.jpg', 'img/product/md/5-2.jpg', 'img/product/lg/5-2.jpg'),
(20, 5, 'img/product/sm/5-3.jpg', 'img/product/md/5-3.jpg', 'img/product/lg/5-3.jpg'),
(21, 5, 'img/product/sm/5-4.jpg', 'img/product/md/5-4.jpg', 'img/product/lg/5-4.jpg'),
(22, 6, 'img/product/sm/6-1.jpg', 'img/product/md/6-1.jpg', 'img/product/lg/6-1.jpg'),
(23, 6, 'img/product/sm/6-2.jpg', 'img/product/md/6-2.jpg', 'img/product/lg/6-2.jpg'),
(24, 6, 'img/product/sm/6-3.jpg', 'img/product/md/6-3.jpg', 'img/product/lg/6-3.jpg'),
(25, 6, 'img/product/sm/6-4.jpg', 'img/product/md/6-4.jpg', 'img/product/lg/6-4.jpg'),
(26, 7, 'img/product/sm/7-1.jpg', 'img/product/md/7-1.jpg', 'img/product/lg/7-1.jpg'),
(27, 7, 'img/product/sm/7-2.jpg', 'img/product/md/7-2.jpg', 'img/product/lg/7-2.jpg'),
(28, 7, 'img/product/sm/7-3.jpg', 'img/product/md/7-3.jpg', 'img/product/lg/7-3.jpg'),
(29, 7, 'img/product/sm/7-4.jpg', 'img/product/md/7-4.jpg', 'img/product/lg/7-4.jpg'),
(30, 8, 'img/product/sm/8-1.jpg', 'img/product/md/8-1.jpg', 'img/product/lg/8-1.jpg'),
(31, 8, 'img/product/sm/8-2.jpg', 'img/product/md/8-2.jpg', 'img/product/lg/8-2.jpg'),
(32, 8, 'img/product/sm/8-3.jpg', 'img/product/md/8-3.jpg', 'img/product/lg/8-3.jpg'),
(33, 8, 'img/product/sm/8-4.jpg', 'img/product/md/8-4.jpg', 'img/product/lg/8-4.jpg'),
(34, 9, 'img/product/sm/9-1.jpg', 'img/product/md/9-1.jpg', 'img/product/lg/9-1.jpg'),
(35, 9, 'img/product/sm/9-2.jpg', 'img/product/md/9-2.jpg', 'img/product/lg/9-2.jpg'),
(36, 9, 'img/product/sm/9-3.jpg', 'img/product/md/9-3.jpg', 'img/product/lg/9-3.jpg'),
(37, 9, 'img/product/sm/9-4.jpg', 'img/product/md/9-4.jpg', 'img/product/lg/9-4.jpg'),
(38, 10, 'img/product/sm/10-1.jpg', 'img/product/md/10-1.jpg', 'img/product/lg/10-1.jpg'),
(39, 10, 'img/product/sm/10-2.jpg', 'img/product/md/10-2.jpg', 'img/product/lg/10-2.jpg'),
(40, 10, 'img/product/sm/10-3.jpg', 'img/product/md/10-3.jpg', 'img/product/lg/10-3.jpg'),
(41, 10, 'img/product/sm/10-4.jpg', 'img/product/md/10-4.jpg', 'img/product/lg/10-4.jpg'),
(42, 11, 'img/product/sm/aj1-1.jpg', 'img/product/md/aj1-1.jpg', 'img/product/lg/aj1-1.jpg'),
(43, 11, 'img/product/sm/aj1-2.jpg', 'img/product/md/aj1-4.jpg', 'img/product/lg/aj1-4.jpg'),
(44, 11, 'img/product/sm/aj1-3.jpg', 'img/product/md/aj1-4.jpg', 'img/product/lg/aj1-4.jpg'),
(45, 11, 'img/product/sm/aj1-4.jpg', 'img/product/md/aj1-4.jpg', 'img/product/lg/aj1-4.jpg'),
(46, 12, 'img/product/sm/cid=1-1.jpg', 'img/product/md/cid=1-1.jpg', 'img/product/lg/cid=1-1.jpg'),
(47, 12, 'img/product/sm/cid=1-2.jpg', 'img/product/md/cid=1-2.jpg', 'img/product/lg/cid=1-2.jpg'),
(48, 12, 'img/product/sm/cid=1-3.jpg', 'img/product/md/cid=1-3.jpg', 'img/product/lg/cid=1-3.jpg'),
(49, 12, 'img/product/sm/cid=1-4.jpg', 'img/product/md/cid=1-4.jpg', 'img/product/lg/cid=1-4.jpg'),
(50, 12, 'img/product/sm/cid=1-5.jpg', 'img/product/md/cid=1-5.jpg', 'img/product/lg/cid=1-5.jpg'),
(51, 13, 'img/product/sm/cid=2-1.jpg', 'img/product/md/cid=2-1.jpg', 'img/product/lg/cid=2-1.jpg'),
(52, 13, 'img/product/sm/cid=2-2.jpg', 'img/product/md/cid=2-2.jpg', 'img/product/lg/cid=2-2.jpg'),
(53, 13, 'img/product/sm/cid=2-3.jpg', 'img/product/md/cid=2-3.jpg', 'img/product/lg/cid=2-3.jpg'),
(54, 13, 'img/product/sm/cid=2-4.jpg', 'img/product/md/cid=2-4.jpg', 'img/product/lg/cid=2-4.jpg'),
(55, 13, 'img/product/sm/cid=2-5.jpg', 'img/product/md/cid=2-5.jpg', 'img/product/lg/cid=2-5.jpg'),
(56, 13, 'img/product/sm/cid=2-6.jpg', 'img/product/md/cid=2-6.jpg', 'img/product/lg/cid=2-6.jpg'),
(57, 14, 'img/product/sm/cid=4-1.jpg', 'img/product/md/cid=4-1.jpg', 'img/product/lg/cid=4-1.jpg'),
(58, 14, 'img/product/sm/cid=4-2.jpg', 'img/product/md/cid=4-2.jpg', 'img/product/lg/cid=4-2.jpg'),
(59, 14, 'img/product/sm/cid=4-3.jpg', 'img/product/md/cid=4-3.jpg', 'img/product/lg/cid=4-3.jpg'),
(60, 14, 'img/product/sm/cid=4-4.jpg', 'img/product/md/cid=4-4.jpg', 'img/product/lg/cid=4-4.jpg'),
(61, 14, 'img/product/sm/cid=4-5.jpg', 'img/product/md/cid=4-5.jpg', 'img/product/lg/cid=4-5.jpg'),
(62, 15, 'img/product/sm/cid=5-1.jpg', 'img/product/md/cid=5-1.jpg', 'img/product/lg/cid=5-1.jpg'),
(63, 15, 'img/product/sm/cid=5-2.jpg', 'img/product/md/cid=5-2.jpg', 'img/product/lg/cid=5-2.jpg'),
(64, 15, 'img/product/sm/cid=5-3.jpg', 'img/product/md/cid=5-3.jpg', 'img/product/lg/cid=5-3.jpg'),
(65, 15, 'img/product/sm/cid=5-4.jpg', 'img/product/md/cid=5-4.jpg', 'img/product/lg/cid=5-4.jpg'),
(66, 15, 'img/product/sm/cid=5-5.jpg', 'img/product/md/cid=5-5.jpg', 'img/product/lg/cid=5-5.jpg'),
(67, 16, 'img/product/sm/cid=6-1.jpg', 'img/product/md/cid=6-1.jpg', 'img/product/lg/cid=6-1.jpg'),
(68, 16, 'img/product/sm/cid=6-2.jpg', 'img/product/md/cid=6-2.jpg', 'img/product/lg/cid=6-2.jpg'),
(69, 16, 'img/product/sm/cid=6-3.jpg', 'img/product/md/cid=6-3.jpg', 'img/product/lg/cid=6-3.jpg'),
(70, 16, 'img/product/sm/cid=6-4.jpg', 'img/product/md/cid=6-4.jpg', 'img/product/lg/cid=6-4.jpg'),
(71, 16, 'img/product/sm/cid=6-5.jpg', 'img/product/md/cid=6-5.jpg', 'img/product/lg/cid=6-5.jpg'),
(72, 17, 'img/product/sm/cid=7-1.jpg', 'img/product/md/cid=7-1.jpg', 'img/product/lg/cid=7-1.jpg'),
(73, 17, 'img/product/sm/cid=7-2.jpg', 'img/product/md/cid=7-2.jpg', 'img/product/lg/cid=7-2.jpg'),
(74, 17, 'img/product/sm/cid=7-3.jpg', 'img/product/md/cid=7-3.jpg', 'img/product/lg/cid=7-3.jpg'),
(75, 17, 'img/product/sm/cid=7-4.jpg', 'img/product/md/cid=7-4.jpg', 'img/product/lg/cid=7-4.jpg'),
(76, 17, 'img/product/sm/cid=7-5.jpg', 'img/product/md/cid=7-5.jpg', 'img/product/lg/cid=7-5.jpg'),
(77, 18, 'img/product/sm/cid=8-1.jpg', 'img/product/md/cid=8-1.jpg', 'img/product/lg/cid=8-1.jpg'),
(78, 18, 'img/product/sm/cid=8-2.jpg', 'img/product/md/cid=8-2.jpg', 'img/product/lg/cid=8-2.jpg'),
(79, 18, 'img/product/sm/cid=8-3.jpg', 'img/product/md/cid=8-3.jpg', 'img/product/lg/cid=8-3.jpg'),
(80, 18, 'img/product/sm/cid=8-4.jpg', 'img/product/md/cid=8-4.jpg', 'img/product/lg/cid=8-4.jpg'),
(81, 18, 'img/product/sm/cid=8-5.jpg', 'img/product/md/cid=8-5.jpg', 'img/product/lg/cid=8-5.jpg'),
(82, 19, 'img/product/sm/cid=23-1.jpg', 'img/product/md/cid=23-1.jpg', 'img/product/lg/cid=23-1.jpg'),
(83, 19, 'img/product/sm/cid=23-2.jpg', 'img/product/md/cid=23-2.jpg', 'img/product/lg/cid=23-2.jpg'),
(84, 19, 'img/product/sm/cid=23-3.jpg', 'img/product/md/cid=23-3.jpg', 'img/product/lg/cid=23-3.jpg'),
(85, 19, 'img/product/sm/cid=23-4.jpg', 'img/product/md/cid=23-4.jpg', 'img/product/lg/cid=23-4.jpg'),
(86, 19, 'img/product/sm/cid=23-5.jpg', 'img/product/md/cid=23-5.jpg', 'img/product/lg/cid=23-5.jpg'),
(87, 20, 'img/product/sm/11-1.jpg', 'img/product/md/11-1.jpg', 'img/product/lg/11-1.jpg'),
(88, 20, 'img/product/sm/11-2.jpg', 'img/product/md/11-2.jpg', 'img/product/lg/11-2.jpg'),
(89, 20, 'img/product/sm/11-3.jpg', 'img/product/md/11-3.jpg', 'img/product/lg/11-3.jpg'),
(90, 20, 'img/product/sm/11-4.jpg', 'img/product/md/11-4.jpg', 'img/product/lg/11-4.jpg'),
(91, 21, 'img/product/sm/21-1.jpg', 'img/product/md/21-1.jpg', 'img/product/lg/21-1.jpg'),
(92, 21, 'img/product/sm/21-2.jpg', 'img/product/md/21-2.jpg', 'img/product/lg/21-2.jpg'),
(93, 21, 'img/product/sm/21-3.jpg', 'img/product/md/21-3.jpg', 'img/product/lg/21-3.jpg'),
(94, 21, 'img/product/sm/21-4.jpg', 'img/product/md/21-4.jpg', 'img/product/lg/21-4.jpg'),
(95, 22, 'img/product/sm/cid=30-1.jpg', 'img/product/md/cid=30-1.jpg', 'img/product/lg/cid=30-1.jpg'),
(96, 22, 'img/product/sm/cid=30-2.jpg', 'img/product/md/cid=30-2.jpg', 'img/product/lg/cid=30-2.jpg'),
(97, 22, 'img/product/sm/cid=30-3.jpg', 'img/product/md/cid=30-3.jpg', 'img/product/lg/cid=30-3.jpg'),
(98, 22, 'img/product/sm/cid=30-4.jpg', 'img/product/md/cid=30-4.jpg', 'img/product/lg/cid=30-4.jpg'),
(99, 22, 'img/product/sm/cid=30-5.jpg', 'img/product/md/cid=30-5.jpg', 'img/product/lg/cid=30-5.jpg'),
(100, 23, 'img/product/sm/cid=31-1.jpg', 'img/product/md/cid=31-1.jpg', 'img/product/lg/cid=31-1.jpg'),
(101, 23, 'img/product/sm/cid=31-2.jpg', 'img/product/md/cid=31-2.jpg', 'img/product/lg/cid=31-2.jpg'),
(102, 23, 'img/product/sm/cid=31-3.jpg', 'img/product/md/cid=31-3.jpg', 'img/product/lg/cid=31-3.jpg'),
(103, 23, 'img/product/sm/cid=31-4.jpg', 'img/product/md/cid=31-4.jpg', 'img/product/lg/cid=31-4.jpg'),
(104, 23, 'img/product/sm/cid=31-5.jpg', 'img/product/md/cid=31-5.jpg', 'img/product/lg/cid=31-5.jpg'),
(105, 24, 'img/product/sm/cid=32-1.jpg', 'img/product/md/cid=32-1.jpg', 'img/product/lg/cid=32-1.jpg'),
(106, 24, 'img/product/sm/cid=32-2.jpg', 'img/product/md/cid=32-2.jpg', 'img/product/lg/cid=32-2.jpg'),
(107, 24, 'img/product/sm/cid=32-3.jpg', 'img/product/md/cid=32-3.jpg', 'img/product/lg/cid=32-3.jpg'),
(108, 24, 'img/product/sm/cid=32-4.jpg', 'img/product/md/cid=32-4.jpg', 'img/product/lg/cid=32-4.jpg'),
(109, 24, 'img/product/sm/cid=32-5.jpg', 'img/product/md/cid=32-5.jpg', 'img/product/lg/cid=32-5.jpg'),
(110, 25, 'img/product/sm/cid=33-1.jpg', 'img/product/md/cid=33-1.jpg', 'img/product/lg/cid=33-1.jpg'),
(111, 25, 'img/product/sm/cid=33-2.jpg', 'img/product/md/cid=33-2.jpg', 'img/product/lg/cid=33-2.jpg'),
(112, 25, 'img/product/sm/cid=33-3.jpg', 'img/product/md/cid=33-3.jpg', 'img/product/lg/cid=33-3.jpg'),
(113, 25, 'img/product/sm/cid=33-4.jpg', 'img/product/md/cid=33-4.jpg', 'img/product/lg/cid=33-4.jpg'),
(114, 25, 'img/product/sm/cid=33-5.jpg', 'img/product/md/cid=33-5.jpg', 'img/product/lg/cid=33-5.jpg'),
(115, 26, 'img/product/sm/cid=34-1.jpg', 'img/product/md/cid=34-1.jpg', 'img/product/lg/cid=34-1.jpg'),
(116, 26, 'img/product/sm/cid=34-2.jpg', 'img/product/md/cid=34-2.jpg', 'img/product/lg/cid=34-2.jpg'),
(117, 26, 'img/product/sm/cid=34-3.jpg', 'img/product/md/cid=34-3.jpg', 'img/product/lg/cid=34-3.jpg'),
(118, 26, 'img/product/sm/cid=34-4.jpg', 'img/product/md/cid=34-4.jpg', 'img/product/lg/cid=34-4.jpg'),
(119, 26, 'img/product/sm/cid=34-5.jpg', 'img/product/md/cid=34-5.jpg', 'img/product/lg/cid=34-5.jpg'),
(120, 27, 'img/product/sm/cid=35-1.jpg', 'img/product/md/cid=35-1.jpg', 'img/product/lg/cid=35-1.jpg'),
(121, 27, 'img/product/sm/cid=35-2.jpg', 'img/product/md/cid=35-2.jpg', 'img/product/lg/cid=35-2.jpg'),
(122, 27, 'img/product/sm/cid=35-3.jpg', 'img/product/md/cid=35-3.jpg', 'img/product/lg/cid=35-3.jpg'),
(123, 27, 'img/product/sm/cid=35-4.jpg', 'img/product/md/cid=35-4.jpg', 'img/product/lg/cid=35-4.jpg'),
(124, 27, 'img/product/sm/cid=35-5.jpg', 'img/product/md/cid=35-5.jpg', 'img/product/lg/cid=35-5.jpg'),
(125, 28, 'img/product/sm/cid36-1.jpg', 'img/product/md/cid36-1.jpg', 'img/product/lg/cid36-1.jpg'),
(126, 28, 'img/product/sm/cid36-2.jpg', 'img/product/md/cid36-2.jpg', 'img/product/lg/cid36-2.jpg'),
(127, 28, 'img/product/sm/cid36-3.jpg', 'img/product/md/cid36-3.jpg', 'img/product/lg/cid36-3.jpg'),
(128, 29, 'img/product/sm/cid37-1.jpg', 'img/product/md/cid37-1.jpg', 'img/product/lg/cid37-1.jpg'),
(129, 29, 'img/product/sm/cid37-2.jpg', 'img/product/md/cid37-2.jpg', 'img/product/lg/cid37-2.jpg'),
(130, 29, 'img/product/sm/cid37-3.jpg', 'img/product/md/cid37-3.jpg', 'img/product/lg/cid37-3.jpg'),
(131, 30, 'img/product/sm/cid29-1.jpg', 'img/product/md/cid29-1.jpg', 'img/product/lg/cid29-1.jpg'),
(132, 30, 'img/product/sm/cid29-2.jpg', 'img/product/md/cid29-2.jpg', 'img/product/lg/cid29-2.jpg'),
(133, 30, 'img/product/sm/cid29-3.jpg', 'img/product/md/cid29-3.jpg', 'img/product/lg/cid29-3.jpg'),
(134, 31, 'img/product/sm/p1-1.jpg', 'img/product/md/p1-1.jpg', 'img/product/lg/p1-1.jpg'),
(135, 31, 'img/product/sm/p1-2.jpg', 'img/product/md/p1-2.jpg', 'img/product/lg/p1-2.jpg'),
(136, 31, 'img/product/sm/p1-3.jpg', 'img/product/md/p1-3.jpg', 'img/product/lg/p1-3.jpg'),
(137, 31, 'img/product/sm/p1-4.jpg', 'img/product/md/p1-4.jpg', 'img/product/lg/p1-4.jpg'),
(138, 32, 'img/product/sm/p2-1.jpg', 'img/product/md/p2-1.jpg', 'img/product/lg/p2-1.jpg'),
(139, 32, 'img/product/sm/p2-2.jpg', 'img/product/md/p2-2.jpg', 'img/product/lg/p2-2.jpg'),
(140, 32, 'img/product/sm/p2-3.jpg', 'img/product/md/p2-3.jpg', 'img/product/lg/p2-3.jpg'),
(141, 32, 'img/product/sm/p2-4.jpg', 'img/product/md/p2-4.jpg', 'img/product/lg/p2-4.jpg'),
(142, 33, 'img/product/sm/p3-1.jpg', 'img/product/md/p3-1.jpg', 'img/product/lg/p3-1.jpg'),
(143, 33, 'img/product/sm/p3-2.jpg', 'img/product/md/p3-2.jpg', 'img/product/lg/p3-2.jpg'),
(144, 33, 'img/product/sm/p3-3.jpg', 'img/product/md/p3-3.jpg', 'img/product/lg/p3-3.jpg'),
(145, 33, 'img/product/sm/p3-4.jpg', 'img/product/md/p3-4.jpg', 'img/product/lg/p3-4.jpg'),
(146, 34, 'img/product/sm/p4-1.jpg', 'img/product/md/p4-1.jpg', 'img/product/lg/p4-1.jpg'),
(147, 34, 'img/product/sm/p4-2.jpg', 'img/product/md/p4-2.jpg', 'img/product/lg/p4-2.jpg'),
(148, 34, 'img/product/sm/p4-3.jpg', 'img/product/md/p4-3.jpg', 'img/product/lg/p4-3.jpg'),
(149, 34, 'img/product/sm/p4-4.jpg', 'img/product/md/p4-4.jpg', 'img/product/lg/p4-4.jpg'),
(150, 35, 'img/product/sm/p5-1.jpg', 'img/product/md/p5-1.jpg', 'img/product/lg/p5-1.jpg'),
(151, 35, 'img/product/sm/p5-2.jpg', 'img/product/md/p5-2.jpg', 'img/product/lg/p5-2.jpg'),
(152, 35, 'img/product/sm/p5-3.jpg', 'img/product/md/p5-3.jpg', 'img/product/lg/p5-3.jpg'),
(153, 35, 'img/product/sm/p5-4.jpg', 'img/product/md/p5-4.jpg', 'img/product/lg/p5-4.jpg'),
(154, 36, 'img/product/sm/p6-1.jpg', 'img/product/md/p6-1.jpg', 'img/product/lg/p6-1.jpg'),
(155, 36, 'img/product/sm/p6-2.jpg', 'img/product/md/p6-2.jpg', 'img/product/lg/p6-2.jpg'),
(156, 36, 'img/product/sm/p6-3.jpg', 'img/product/md/p6-3.jpg', 'img/product/lg/p6-3.jpg'),
(157, 36, 'img/product/sm/p6-4.jpg', 'img/product/md/p6-4.jpg', 'img/product/lg/p6-4.jpg'),
(158, 37, 'img/product/sm/p7-1.jpg', 'img/product/md/p7-1.jpg', 'img/product/lg/p7-1.jpg'),
(159, 37, 'img/product/sm/p7-2.jpg', 'img/product/md/p7-2.jpg', 'img/product/lg/p7-2.jpg'),
(160, 37, 'img/product/sm/p7-3.jpg', 'img/product/md/p7-3.jpg', 'img/product/lg/p7-3.jpg'),
(161, 37, 'img/product/sm/p7-4.jpg', 'img/product/md/p7-4.jpg', 'img/product/lg/p7-4.jpg'),
(162, 38, 'img/product/sm/p8-1.jpg', 'img/product/md/p8-1.jpg', 'img/product/lg/p8-1.jpg'),
(163, 38, 'img/product/sm/p8-2.jpg', 'img/product/md/p8-2.jpg', 'img/product/lg/p8-2.jpg'),
(164, 38, 'img/product/sm/p8-3.jpg', 'img/product/md/p8-3.jpg', 'img/product/lg/p8-3.jpg'),
(165, 38, 'img/product/sm/p8-4.jpg', 'img/product/md/p8-4.jpg', 'img/product/lg/p8-4.jpg'),
(166, 39, 'img/product/sm/p9-1.jpg', 'img/product/md/p9-1.jpg', 'img/product/lg/p9-1.jpg'),
(167, 39, 'img/product/sm/p9-2.jpg', 'img/product/md/p9-2.jpg', 'img/product/lg/p9-2.jpg'),
(168, 39, 'img/product/sm/p9-3.jpg', 'img/product/md/p9-3.jpg', 'img/product/lg/p9-3.jpg'),
(169, 39, 'img/product/sm/p9-4.jpg', 'img/product/md/p9-4.jpg', 'img/product/lg/p9-4.jpg'),
(170, 40, 'img/product/sm/p10-1.jpg', 'img/product/md/p10-1.jpg', 'img/product/lg/p10-1.jpg'),
(171, 40, 'img/product/sm/p10-2.jpg', 'img/product/md/p10-2.jpg', 'img/product/lg/p10-2.jpg'),
(172, 40, 'img/product/sm/p10-3.jpg', 'img/product/md/p10-3.jpg', 'img/product/lg/p10-3.jpg'),
(173, 40, 'img/product/sm/p10-4.jpg', 'img/product/md/p10-4.jpg', 'img/product/lg/p10-4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `mall_order`
--

CREATE TABLE `mall_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mall_order_detail`
--

CREATE TABLE `mall_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mall_receiver_address`
--

CREATE TABLE `mall_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mall_shoppingcart_item`
--

CREATE TABLE `mall_shoppingcart_item` (
  `lid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_shoppingcart_item`
--

INSERT INTO `mall_shoppingcart_item` (`lid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES
(1, 10, 17, 1, 0),
(2, 11, 11, 1, 0),
(3, 12, 1, 1, 1),
(4, 13, 3, 9, 0),
(5, 14, 1, 1, 0),
(13, 20, 1, 1, 1),
(14, 22, 17, 11, 1),
(15, 20, 28, 1, 0),
(16, 25, 2, 1, 1),
(17, 3, 28, 1, 1),
(18, 3, 14, 1, 1),
(19, 28, 1, 99997, 0),
(20, 29, 31, 1, 1),
(25, 3, 18, 1, 0),
(26, 32, 13, 1, 0),
(27, 32, 5, 1, 0),
(28, 32, 19, 1, 0),
(29, 33, 1, 1, 0),
(31, 3, 1, 1, 0),
(32, 35, 20, 1, 0),
(33, 2, 19, 1, 1),
(34, 39, 19, 1, 1),
(35, 1, 5, 15, 1),
(36, 1, 28, 2, 1),
(37, 1, 9, 1, 1),
(38, 45, 22, 1, 0),
(39, 46, 1, 1, 0),
(40, 48, 28, 1, 1),
(41, 1, 1, 6, 1),
(42, 50, 28, 1, 1),
(43, 52, 28, 1, 1),
(44, 51, 5, 1, 1),
(45, 54, 1, 1, 1),
(46, 56, 28, 1, 1),
(47, 59, 5, 1, 0),
(48, 59, 9, 1, 0),
(49, 59, 19, 1, 0),
(50, 31, 1, 1, 1),
(51, 59, 1, 2, 0),
(52, 60, 28, 1, 1),
(53, 46, 21, 1, 0),
(54, 1, 12, 2, 1),
(55, 61, 5, 1, 1),
(56, 61, 6, 1, 0),
(57, 70, 1, 1, 1),
(58, 71, 1, 1, 1),
(59, 1, 4, 3, 1),
(60, 36, 17, 1, 1),
(61, 35, 17, 7, 0),
(62, 35, 5, 13, 0),
(63, 72, 9, 1, 1),
(64, 82, 1, 1, 1),
(65, 83, 17, 1, 1),
(66, 35, 28, 4, 0),
(67, 65, 40, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `mall_user`
--

CREATE TABLE `mall_user` (
  `lid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mall_user`
--

INSERT INTO `mall_user` (`lid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13511011000', '', '丁春秋', 0),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', '', '当当喵', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', '', '窦志强', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', '', '秦小雅', 0),
(5, '甘渭', '123456', '441977193@qq.com', '18357100796', '', '', 0),
(6, 'kuang', '123456', '15923973432@163.com', '15932973432', NULL, NULL, NULL),
(7, 'kuangbeijing', '123456', '1593973432@163.com', '15923973432', NULL, NULL, NULL),
(8, 'qwex', '123456', '12345@qq.com', '15923973432', NULL, NULL, NULL),
(9, 'xsaxa', '123456', '923973432@163.com', '15923973435', NULL, NULL, NULL),
(10, 'kxzzz', '123456', '3432@163.com', '15923659874', NULL, NULL, NULL),
(11, 'bebe', '123456', '15923432@163.com', '12592397123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mall_index_carousel`
--
ALTER TABLE `mall_index_carousel`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mall_index_product`
--
ALTER TABLE `mall_index_product`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mall_laptop`
--
ALTER TABLE `mall_laptop`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mall_laptop_family`
--
ALTER TABLE `mall_laptop_family`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mall_laptop_pic`
--
ALTER TABLE `mall_laptop_pic`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mall_order`
--
ALTER TABLE `mall_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `mall_order_detail`
--
ALTER TABLE `mall_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `mall_receiver_address`
--
ALTER TABLE `mall_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `mall_shoppingcart_item`
--
ALTER TABLE `mall_shoppingcart_item`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mall_user`
--
ALTER TABLE `mall_user`
  ADD PRIMARY KEY (`lid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mall_index_carousel`
--
ALTER TABLE `mall_index_carousel`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `mall_index_product`
--
ALTER TABLE `mall_index_product`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `mall_laptop`
--
ALTER TABLE `mall_laptop`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `mall_laptop_family`
--
ALTER TABLE `mall_laptop_family`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `mall_laptop_pic`
--
ALTER TABLE `mall_laptop_pic`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- 使用表AUTO_INCREMENT `mall_order`
--
ALTER TABLE `mall_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mall_order_detail`
--
ALTER TABLE `mall_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mall_receiver_address`
--
ALTER TABLE `mall_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mall_shoppingcart_item`
--
ALTER TABLE `mall_shoppingcart_item`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- 使用表AUTO_INCREMENT `mall_user`
--
ALTER TABLE `mall_user`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
