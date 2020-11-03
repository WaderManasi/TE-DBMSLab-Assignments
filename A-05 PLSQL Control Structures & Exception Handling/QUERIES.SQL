--Database:Oracle User: hr 
--Control Structures

--IF in PLSQL
declare 
marks number;
namee varchar2(10);
begin
    select sname into namee from acad_details where sno=101;
    select smarks into marks from acad_details where sno=101;
    dbms_output.put_line('Marks of '||namee||' is '||marks);
    if(marks>800)then
        dbms_output.put_line('Class: Distinction');
    elsif(marks>500) then
        dbms_output.put_line('Class: First Class');
    else
        dbms_output.put_line('Just Passed!');
    end if;
end;
/
--

create table acad_details(sname varchar(20),sno number(3),smarks number(5));
select * from acad_details;

--CASE in PLSQL
declare
grade char(1) := 'B';
begin
    case grade
        when 'A' then dbms_output.put_line('A Grade: Excellent!');
        when 'B' then dbms_output.put_line('B Grade: Very Good');
        when 'C' then dbms_output.put_line('C Grade: Good');
        when 'D' then dbms_output.put_line('D Grade: Average');
        else dbms_output.put_line('Failed');
    end case;
end;
/