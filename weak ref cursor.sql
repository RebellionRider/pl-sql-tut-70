/*
    Refer PL/SQL Tutorial 70 for detail knowledge of Weak Ref Cursor. Here are the Links
    Video:https://youtu.be/_u7xkaRzai8
    Blog: http://bit.ly/ref-cursor-3
    Subscribe to the YouTube channel for more tutorials
    www.YouTube.com/RebellionRider
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
       OPEN cur_var FOR SELECT first_name, salary FROM employees WHERE employee_id =100;
       FETCH cur_var INTO f_name, emp_sal;
       CLOSE cur_var;
       DBMS_OUTPUT.PUT_LINE(f_name||' '||emp_sal);
END;
/


/*
    Social Media Links
    Follow me on Social Media for regular updates
    www.Facebook.com/TheRebellionRider
    www.Twitter.com/RebellionRider
    www.Instagram.com/RebellionRider
*/
