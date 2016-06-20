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
discount double default '1',count int default '0',
primary key(id) ) DEFAULT CHARSET=utf8;

insert into product(name,img,price) values('榴莲牛奶蛋糕','images/m1.png','200.00'),
('瓜仁牛奶蛋糕','images/m3.png','200.00'),
('核桃仁瓜子蛋糕','images/m2.png','200.00')
,('烘焙五彩蛋糕','images/m4.png','200.00');










