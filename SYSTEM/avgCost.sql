select sum(RELIEF.EXPENSE)/count(DISDATE.DISDATE_ID) from RELIEF,DISDATE where 
RELIEF.RELIEF_ID = DISDATE.DISDATE_ID group by RELIEF.RELIEF_ID;

select sum(TOOLS."COST"*TOOLS.QUANTITY)/count(DISDATE.DISDATE_ID) from TOOLS,DISDATE where 
TOOLS.DIS_ID = DISDATE.DISDATE_ID group by TOOLS.DIS_ID;