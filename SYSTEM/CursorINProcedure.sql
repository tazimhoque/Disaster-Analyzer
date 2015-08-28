DECLARE 
c NUMBER;

PROCEDURE totalsum (total OUT NUMBER) IS
BEGIN
   SELECT SUM(NUM) into total
   FROM NUMBERS;
     
END;
BEGIN
totalsum(c);
dbms_output.put_line(c);
END;
/