SET NAMES UTF8;
DROP DATABASE IF EXISTS dale;
CREATE DATABASE dale CHARSET=UTF8;
USE dale

/**用户模块**/
CREATE TABLE dale_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,    #用户id
    uname VARCHAR(32),                     #用户名
    upwd VARCHAR(32),                      #用户密码
    email VARCHAR(64),                     #用户邮箱
    phone VARCHAR(16),                     #用户手机号

    avatar VARCHAR(128),                   #头像图片路径
    user_name VARCHAR(32),                 #用户名
    gender INT                             #性别 0-女  1-男
);
/**收货地址信息**/
CREATE TABLE dale_receiver_address(
    aid INT PRIMARY KEY AUTO_INCREMENT,    #ID 
    user_id INT,                           #用户编号
    receiver VARCHAR(16),                  #接收人姓名
    province VARCHAR(16),                  #省
    city VARCHAR(16),                      #市
    county VARCHAR(16),                    #县
    address VARCHAR(128),                  #详细地址
    cellphone VARCHAR(16),                 #手机号
    fixedphone VARCHAR(16),                #固定电话
    postcode CHAR(6),                      #邮编
    tag VARCHAR(16),                       #标签名

    is_default BOOLEAN                     #是否为当前用户的默认收货地址
);
/**个人中心**/
/**购物车**/
CREATE TABLE dale_shoppingcart_item(
    iid INT PRIMARY KEY ATUO_INCREMENT,
    user_id INT,                           #用户编号
    product_id INT,                        #商品编号
    count INT,                             #购买数量
    is_checked BOOLEAN                     #是否已勾选,确定购买
);
/**购物车限制数量**/
CREATE TABLE dale_shoppingcart(
    iid INT PRIMARY KEY ATUO_INCREMENT,
    amount_limit INT,                      #限制数量
    user_id INT   
);