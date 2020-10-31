-- Statement Level Trigger
/* First create tbl_library table and tbl_library_audit
   Insert data in tbl_library
   While updating or deleting data from tbl_library, old value and new value will be reflected in tbl_library_audit
*/
create or replace trigger trg_library_af
    after update or delete on tbl_library for each row
    declare
    begin
    if updating then
    insert into tbl_library_audit values (:old.bk_no,:old.bk_name,:old.issue_date,:old.return_date);
    elsif deleting then
    insert into tbl_library_audit values (:old.bk_no,:old.bk_name,:old.issue_date,:old.return_date);
    end if;
  end
   ;
  /