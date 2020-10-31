-- Name: Manasi Wader
-- Topic: Stored Procedures

-- Initially create table for student marks
create table Stud_Marks(
    STUD_NAME varchar2(20),
    TOTAL_MARKS number(5)
);

-- Result table
create table Result(
    STUD_NAME varchar2(20),
    ROLL_NO number(5),
    CLASS varchar2(20)
);

--Creating a stored procedure
create or replace PROCEDURE PROC_GRADE1 AS

BEGIN
	FOR i IN (SELECT * FROM Stud_Marks)
	LOOP
		DBMS_OUTPUT.PUT_LINE('Student Name: ' || i.Stud_Name || ' Student Marks: ' || i.Total_Marks);
		IF i.Total_Marks <=1500 AND i.Total_Marks >=990 THEN
			INSERT INTO Result (STUD_NAME,CLASS) VALUES (i.Stud_Name,'Distinction');
		ELSIF i.Total_Marks <=989 AND i.Total_Marks >=900 THEN
			INSERT INTO Result (STUD_NAME,CLASS) VALUES (i.Stud_Name,'First Class');
		ELSIF i.Total_Marks <=825 AND i.Total_Marks >=899 THEN
			INSERT INTO Result (STUD_NAME,CLASS) VALUES (i.Stud_Name,'Higher Second Class');
		END IF;
	END LOOP;
	COMMIT;
END;