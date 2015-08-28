create table prevention 
(
prevention_id varchar(10) not null ,
causes varchar(100) not null,
prevention varchar(200),
foreign key (prevention_id) references disaster(id)
)