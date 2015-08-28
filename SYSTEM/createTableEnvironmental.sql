create table environmental 
(
environmental_id varchar(10) not null ,
environmental_effect varchar(200) not null,
foreign key (environmental_id) references disaster(id)
)