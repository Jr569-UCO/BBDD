set serveroutput on;
declare
    v_nombre votantes.nombrecompleto%TYPE;
    v_correo votantes.email%TYPE;
    v_dni NUMBER := 30983712;
begin
    select SUBSTR(nombrecompleto,1,INSTR(nombrecompleto,' ')-1), email
        into v_nombre, v_correo
        from votantes
        where dni = v_dni;
    DBMS_OUTPUT.PUT_LINE(v_nombre || ' con correo: ' || v_correo || '.');
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('Error:' || SQLERRM);
END;

