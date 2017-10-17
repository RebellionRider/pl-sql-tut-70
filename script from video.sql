/*
    Script used in PL/SQL video tutorial 70: https://youtu.be/_u7xkaRzai8
*/

SET SERVEROUTPUT ON;
DECLARE
    /*Declare Weak Ref Cursor*/
    TYPE wk_RefCur IS REF CURSOR;
    /*Declare Cursor Variable of ref cursor type*/
    cur_var wk_RefCur;
    
     /*Declare two "Anchored Datatype Variable" for holding data from the cursor*/
    f_name  employees.first_name%TYPE;
    emp_sal employees.salary%TYPE;
BEGIN
    OPEN cur_var FOR SELECT first_name, Salary FROM employees WHERE employee_id = 100;
    FETCH cur_var INTO f_name, emp_sal;
    CLOSE cur_var;
    DBMS_OUTPUT.PUT_LINE(f_name ||' '||emp_sal);
END;
/
