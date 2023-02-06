DECLARE
  a NUMBER := 2000;
BEGIN
  IF MOD(a, 2) = 0 THEN
    dbms_output.put_line(a || ' is even.');
  ELSE
    dbms_output.put_line(a || ' is odd.');
  END IF;
END;
