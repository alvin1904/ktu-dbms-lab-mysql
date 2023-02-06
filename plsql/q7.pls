DECLARE
  str VARCHAR2(100) := 'malayalam';
  len NUMBER := LENGTH(str);
  ans BOOLEAN := TRUE;
BEGIN
  FOR i IN 1 .. (len / 2) LOOP
    IF SUBSTR(str, i, 1) != SUBSTR(str, len - i + 1, 1) THEN
      ans := FALSE;
      EXIT;
    END IF;
  END LOOP;

  IF (ans=TRUE) THEN
    dbms_output.put_line(str || ' is a palindrome');
  ELSE
    dbms_output.put_line(str || ' is not a palindrome');
  END IF;
END;
