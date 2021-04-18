/*达乐商城数据库*/
#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS Dal;
#创建数据库
CREATE DATABASE Dal CHARSET=UTF8;
#进入该数据库
USE Dal;
#创建首页轮番广告表
DROP TABLE IF EXISTS Dal_index_carousel;
CREATE TABLE Dal_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),         #图片
  title VARCHAR(64),        #标题
  href VARCHAR(128)         #详情链接
);

#首页商品栏目表
DROP TABLE IF EXISTS Dal_index_product;
CREATE TABLE Dal_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),        #标题
  details VARCHAR(128),     #详情
  pic VARCHAR(128),         #图片
  price DECIMAL(10,2),      #价格
  href VARCHAR(128),        #详情链接
  seq_recommended TINYINT,  #首页推荐
  seq_new_arrival TINYINT,  #最新上架
  seq_top_sale TINYINT      #热销单品
);

#系统设置表
DROP TABLE IF EXISTS Dal_system_setting;
CREATE TABLE Dal_system_setting(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                       #用户ID
  receiver_address_count TINYINT，   #收货地址最大数量
  shopping_car_count TINYINT         #购物车最大数量
);