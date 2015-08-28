
create or replace PROCEDURE SearchByName (disName IN DISASTER."NAME"%TYPE
                                          ,searchName OUT SYS_REFCURSOR
                                          ,humanLife OUT EFFECT.HUMANLIFE%TYPE
                                          ,economicLoss OUT ECONOMICAL.ECONOMICAL_EFFECT%TYPE
                                          ,days OUT RESCUE.DAYS % TYPE
                                          ,rescue OUT RESCUE.RESCUE_NUMBER%TYPE) AS
BEGIN
   
   OPEN searchName FOR
  SELECT DISASTER.NAME as Name,RECORDS.DIS_TYPE as Type,DISDATE.DIS_DATE,RECORDS.PLACE 
  FROM DISASTER,RECORDS,DISDATE
  WHERE DISASTER."ID" = RECORDS.RECORD_ID and DISASTER."ID" = DISDATE.DISDATE_ID and DISASTER."NAME" = disName;
   SELECT EFFECT.HUMANLIFE into humanLife FROM EFFECT,DISASTER
   where EFFECT.EFFECT_ID = DISASTER."ID" and DISASTER."NAME" = disName;
   SELECT ECONOMICAL.ECONOMICAL_EFFECT into economicLoss FROM ECONOMICAL,DISASTER
   where ECONOMICAL.ECONOMICAL_ID = DISASTER."ID" and DISASTER."NAME" = disName;
   SELECT RESCUE.DAYS into days FROM RESCUE,DISASTER
   where RESCUE.RESCUE_ID = DISASTER."ID" and DISASTER."NAME" = disName;
   SELECT RESCUE.RESCUE_NUMBER into rescue FROM RESCUE,DISASTER
   where RESCUE.RESCUE_ID = DISASTER."ID" and DISASTER."NAME" = disName;
END;
/