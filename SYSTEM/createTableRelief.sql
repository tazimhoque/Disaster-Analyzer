create table relief
(
relief_id varchar(10) not null ,
expense NUMBER not null,
product varchar(50),
place varchar(100),
foreign key (relief_id) references disaster(id)
)