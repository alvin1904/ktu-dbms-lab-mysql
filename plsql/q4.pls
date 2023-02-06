DECLARE
  a NUMBER := 6;
  sum NUMBER := 0;
BEGIN
  FOR i IN 1 .. (a - 1) LOOP
    IF MOD(a, i) = 0 THEN
      sum := sum + i;
    END IF;
  END LOOP;

  IF (sum = a) THEN
    dbms_output.put_line(a || ' is a perfect number');
  ELSE
    dbms_output.put_line(a || ' is not a perfect number');
  END IF;
END;