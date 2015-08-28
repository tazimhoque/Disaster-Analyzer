create table foreignhelp 
(
dis_id varchar(10) not null ,
countinst varchar(255) not null,
description varchar(1000),
fund number,
foreign key (dis_id) references disaster(id)
);