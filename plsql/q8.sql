create table person(
    pid int primary key,
    pname varchar(10),
    dob date
);

insert into person (pid,pname,dob)values
(1,'Vyshnav','12-02-2002');
insert into person (pid,pname,dob)values
(2,'Adarsh','02-03-2002');
insert into person (pid,pname,dob)values
(3,'Anandhu','10-01-1999');
insert into person (pid,pname,dob)values
(4,'Sterin','02-03-2001');



declare 
    cursor cur_person is
        select pid ,pname ,dob
        from person;
    a_person cur_person%ROWTYPE;
    age number;
begin
    open cur_person;
    loop 
        fetch cur_person into a_person;
        exit when cur_person%NOTFOUND;
        age:= trunc(months_between(SYSDATE, a_person.dob) / 12);
        dbms_output.put_line('Person ' || a_person.pid || ': ' || a_person.pname || ', Age: ' || age);
    end loop;

    close cur_person;
end;
