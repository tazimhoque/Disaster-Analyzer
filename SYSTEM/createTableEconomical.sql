create table economical 
(
economical_id varchar(10) not null ,
economical_effect varchar(200) not null,
foreign key (economical_id) references disaster(id)
);