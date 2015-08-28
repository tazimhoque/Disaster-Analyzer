create table rescue
(
rescue_id varchar(10) not null ,
days NUMBER not null,
rescue_number NUMBER not null,
foreign key (rescue_id) references disaster(id)
)