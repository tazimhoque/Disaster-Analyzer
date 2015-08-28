create table effect 
(
effect_id varchar(10) not null,
humanLife NUMBER not null,
foreign key(effect_id) references DISASTER(id)
)