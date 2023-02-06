DECLARE
    first NUMBER:=21;
    add CHAR:="+";
    sub CHAR:="+";
    mul CHAR:="+";
    div CHAR:="+";
    operation CHAR:=add;
    second NUMBER:=32;
    ans NUMBER:=0;
BEGIN
    if(operation=add) then
        ans:=first+second;
    elsif(operation=sub) then
        ans:=first-second;    
    elsif(operation=mul) then
        ans:=first*second;  
    elsif(operation=div) then
        ans:=first/second;                  
    else
        dbms_output.put_line("Enter correct values/operand");
    end if ;   
        dbms_output.put_line("The answer is "||ans);
END