set serveroutput on;
declare
    v_mensaje VARCHAR2(30) := 'Hola mundo, hoy es el día';
    v_hoy DATE := SYSDATE;
begin
    DBMS_OUTPUT.PUT_LINE(v_mensaje ||  to_char(v_hoy, 'DD/MM/YYYY') || '.');
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error:' || SQLERRM);
END;
