DECLARE
  n NUMBER := 15;
  first NUMBER := 0;
  second NUMBER := 1;
  num NUMBER;
BEGIN
  dbms_output.put_line('First '||' fibonacci numbers: ');
  dbms_output.put_line(first);
  dbms_output.put_line(second);
  FOR i IN 3 .. n LOOP
    num := first + second;
    first := second;
    second := num;
    dbms_output.put_line(num);
  END LOOP;
END;
