drop table if EXISTS payRecord;
create table payRecord (id int not null auto_increment,`time` varchar(255),
card_number VARCHAR(255) default null,money double default 0,userId int not null,
primary key(id) ) DEFAULT CHARSET=utf8;

insert into payRecord(id,`time`,card_number,money,userId)
 values('1','2015-12-23','622024301078688','1000','1');

insert into payRecord(id,`time`,card_number,money,userId)
 values('2','2015-12-23','622024301078688','1000','1');

insert into payRecord(id,`time`,card_number,money,userId)
 values('3','2015-12-23','622024301078688','1000','1');



drop table if exists `sorder`;
create table `sorder`(id int not null auto_increment,orderid varchar(255),
userid int not null,shop varchar(255),creaet_time varchar(255),
	take_time varchar(255),take_style varchar(255),block varchar(255),detailAddress varchar(255),customerName varchar(255),phone varchar(255),
receipt varchar(255) default '否',sum_money double default '0',primary key(id));


drop table if EXISTS `user`;
create table `user`(id int not null auto_increment,number varchar(255),name VARCHAR(255) default null,sex varchar(255) default '男',
phone varchar(255) default null,address varchar(255) default null,password varchar(255) not null,
state varchar(255) default '未激活',balance real default 0,sum real default 0,
point int default 0,rank VARCHAR(255) default '普通用户',mail varchar(255),
enabled_date varchar(255),register_date varchar(255),age int default '20',area varchar(255) default '华中',
primary key(id) ) DEFAULT CHARSET=utf8;


drop table if EXISTS product;
create table product(id int not null auto_increment,name varchar(255),category varchar(255) default '甜点',
img varchar(255),img2 varchar(255),img3 varchar(255),price double default '0',
discount double default '1',count int default '0',remark varchar(255) default '这是一种美味的甜点',
primary key(id) ) DEFAULT CHARSET=utf8;

insert into product(name,img,price) values('榴莲牛奶蛋糕','images/m1.png','200.00'),
('瓜仁牛奶蛋糕','images/m3.png','200.00'),
('核桃仁瓜子蛋糕','images/m2.png','200.00')
,('烘焙五彩蛋糕','images/m4.png','200.00');


drop table if EXISTS cart_product;
create table cart_product(id int not null auto_increment,userid int,spid int,name varchar(255),category varchar(255) default '甜点',
img varchar(255),img2 varchar(255),img3 varchar(255),realPrice double default '0',
discount double default '1',count int default '0',summoney double default '0',
primary key(id) ) DEFAULT CHARSET=utf8;



drop table if EXISTS order_product;
create table order_product(id int not null auto_increment,orderid int,spid int,name varchar(255),category varchar(255) default '甜点',
img varchar(255),img2 varchar(255),img3 varchar(255),realPrice double default '0',
discount double default '1',count int default '0',summoney double default '0',
primary key(id) ) DEFAULT CHARSET=utf8;




