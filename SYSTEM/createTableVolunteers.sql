create table volunteers
(
dis_id varchar(10) not null ,
name varchar(50) not null,
org varchar(200),
contact varchar(25) not null,
foreign key (dis_id) references disaster(id)
)