
create or replace PROCEDURE cursorINProcedure  IS
CURSOR c IS
SELECT * from NUMBERS;
BEGIN
   open c;
END;
/