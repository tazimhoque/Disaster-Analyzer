
create or replace PROCEDURE SearchByYear ( dis_year IN DISASTER."ID"%TYPE
                                          ,searchYear OUT SYS_REFCURSOR
                                          ,humanLife OUT EFFECT.HUMANLIFE%TYPE
                                          ,economicLoss OUT ECONOMICAL.ECONOMICAL_EFFECT%TYPE
                                          ,disCount OUT NUMBER
                                          ,disProne OUT SYS_REFCURSOR) AS

BEGIN
   OPEN searchYear FOR
  SELECT distinct DISASTER.NAME as Name,RECORDS.DIS_TYPE as Type,DISDATE.DIS_DATE
  FROM DISASTER,RECORDS,DISDATE
  WHERE DISASTER."ID" = RECORDS.RECORD_ID and DISASTER."ID" = DISDATE.DISDATE_ID 
and DISDATE.DIS_DATE between '01-Jan-'||dis_year and  '31-Dec-'||dis_year;

   select sum(EFFECT.HUMANLIFE) into humanLife from EFFECT,DISDATE 
where EFFECT.EFFECT_ID = DISDATE.DISDATE_ID 
and DISDATE.DIS_DATE between '01-Jan-'||dis_year and  '31-Dec-'||dis_year;
   SELECT sum(ECONOMICAL.ECONOMICAL_EFFECT) INTO economicLoss FROM ECONOMICAL,DISDATE
   where ECONOMICAL.ECONOMICAL_ID = DISDATE.DISDATE_ID and 
DISDATE.DIS_DATE BETWEEN '01-Jan-'||dis_year and  '31-Dec-'||dis_year;
   SELECT count(DISDATE_ID) into disCount FROM DISDATE
where DIS_DATE BETWEEN '01-Jan-'||dis_year and  '31-Dec-'||dis_year;
OPEN disProne FOR
  select PLACE from 
(
select RECORDS.PLACE,count(RECORDS.PLACE) as total from RECORDS,DISDATE WHERE RECORDS.RECORD_ID = DISDATE.DISDATE_ID 
and DISDATE.DIS_DATE BETWEEN '01-Jan-'||dis_year and  '31-Dec-'||dis_year
GROUP BY RECORDS.PLACE ORDER BY total DESC
)
where ROWNUM < 6;

   

END;
/