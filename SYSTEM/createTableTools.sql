create table tools 
(
dis_id varchar(10) not null ,
name varchar(100) not null,
cost number,
quantity NUMBER,
foreign key (dis_id) references disaster(id)
)