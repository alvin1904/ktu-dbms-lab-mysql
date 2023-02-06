DECLARE
	a NUMBER:=13;
	i NUMBER;
	ans BOOLEAN:=TRUE;
BEGIN
	IF a<=1 THEN
		ans:=FALSE;
	ELSE
		FOR i IN 2 .. SQRT(a) loop
			IF(MOD(a,i)=0) THEN
				ans:=FALSE;
				EXIT;
			END IF;	
		END LOOP;
	END IF;

	IF (ans=TRUE) THEN
		dbms_output.put_line(a || ' is prime');
	ELSE
		dbms_output.put_line(a||' is not prime');
	END IF;
END;						