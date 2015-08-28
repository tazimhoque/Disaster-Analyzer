create or replace PROCEDURE SearchPrevention (disName IN DISASTER."NAME"%TYPE
                                              ,causes OUT PREVENTION.CAUSES % TYPE
                                              ,prev OUT PREVENTION.PREVENTION%TYPE) AS
BEGIN
   
   
   
   select PREVENTION.CAUSES into causes from PREVENTION,DISASTER 
   where PREVENTION.PREVENTION_ID = DISASTER."ID" 
   and DISASTER."NAME" = disName;
   select PREVENTION.PREVENTION into prev from PREVENTION,DISASTER 
   where PREVENTION.PREVENTION_ID = DISASTER."ID" 
   and DISASTER."NAME" = disName;
END;
/