create table records 
(
record_id varchar(10) not null ,
dis_type varchar(255),
place varchar(300),
foreign key (record_id) references disaster(id)
);
create table disDate
(
disDate_id varchar(10) not null ,
dis_date date not null,
foreign key (disDate_id) references disaster(id)
);