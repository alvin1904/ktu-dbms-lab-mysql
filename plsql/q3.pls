DECLARE
  a NUMBER:= 20;
 	i NUMBER;
  factorial NUMBER:= 1;
BEGIN
  FOR i IN 1 .. a LOOP
    factorial := factorial * i;
  END LOOP;
  dbms_output.put_line('The factorial is: ' || factorial);
END;
