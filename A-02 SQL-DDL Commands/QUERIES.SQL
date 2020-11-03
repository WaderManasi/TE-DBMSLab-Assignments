-- Name: Manasi Wader
-- Topic: Demonstrating use of SQL Objects using DDL commands

--Creating Table 
--In MySQL
create TABLE tbl_student_details( 
    stud_prn integer(10) primary key, 
    stud_name varchar(20) not null, 
    stud_class varchar(20) not null, 
    stud_stream varchar(20) not null 
);
--Oracle
create TABLE tbl_student_details( 
    stud_prn number(10) primary key, 
    stud_name number(20) not null, 
    stud_class number(20) not null, 
    stud_stream number(20) not null 
);

--Creating View
-- MySQL and Oracle
create VIEW vw_student_details as (
        select stud_name,
               stud_class
        from tbl_student_details 
);

--Creating Index
create INDEX indx_student_details ON tbl_student_details (stud_prn);

--Creating index while table creation
create TABLE dummy_table (
    col1 int(1),
    col2 int(5),
    col3 varchar(5),
    INDEX (col2,col3)
);

--Creating Sequence
-- In MYSQL
create table tbl_info(
    sr_no integer(2) AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(10),
    last_name varchar(10)
);
--In Oracle
SQL>create SEQUENCE customers_seq
    start with 1
    increment by 1
    nocycle
    nocache
;
--customers_seq.nextval returns 2 

--Creating Synonym

-- We cannnot create synonym in MySQL

-- Below query can be excuted in Oracle 
SQL>create synonym StudentInfo for student;