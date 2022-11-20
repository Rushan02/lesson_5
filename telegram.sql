DROP SCHEMA IF EXISTS `Telegram`;

CREATE SCHEMA IF NOT EXISTS `Telegram`;
USE `Telegram` ;

CREATE table if not exists `User`
(
id int not null auto_increment primary key,
login varchar(30),
pass varchar(30)
);

CREATE TABLE if not exists `Profile`
(
id int not null auto_increment primary key,
name varchar(50) not null,
status varchar(50) not null,
telephone varchar(12) not null,
user_id int not null,
foreign key (user_id) references `User`(id)
);

CREATE TABLE if not exists `Chat`
(
id int not null auto_increment primary key,
ChatName varchar(30) not null,
message varchar(500) not null,
admin_id int not null,
foreign key (admin_id) references `User`(id)
);

CREATE TABLE if not exists `Commutator Users-Chat`
(
id int not null auto_increment primary key,
user_id int not null,
chat_id int not null,
foreign key (user_id) references `User`(id),
foreign key (chat_id) references `Chat`(id)
);



