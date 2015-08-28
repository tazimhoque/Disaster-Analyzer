insert into records 
(RECORD_ID,DIS_TYPE,PLACE)
values 
('na001','cyclone','jhalokati');
insert into records 
(RECORD_ID,DIS_TYPE,PLACE)
values 
('na001','cyclone','barguna');
insert into records 
(RECORD_ID,DIS_TYPE,PLACE)
values 
('na001','cyclone','patuakhali');
insert into DISDATE
(DISDATE_ID,DIS_DATE)
VALUES
('na001','15-Nov-2007');

select RECORDS.PLACE from RECORDS,DISDATE 
where RECORDS.RECORD_ID = DISDATE.DISDATE_ID and DISDATE.DIS_DATE > '01-Nov-2007';