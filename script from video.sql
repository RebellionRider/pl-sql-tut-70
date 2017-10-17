SET SERVEROUTPUT ON;
DECLARE
    TYPE wk_RefCur IS REF CURSOR;
    cur_var wk_RefCur;
    
    f_name  employees.first_name%TYPE;
    emp_sal employees.salary%TYPE;
BEGIN
    OPEN cur_var FOR SELECT first_name, Salary FROM employees WHERE employee_id = 100;
    FETCH cur_var INTO f_name, emp_sal;
    CLOSE cur_var;
    DBMS_OUTPUT.PUT_LINE(f_name ||' '||emp_sal);
END;
/