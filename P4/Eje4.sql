set serveroutput on;
DECLARE
    v_nombre votantes.nombrecompleto%TYPE;
    v_dni NUMBER := 30983712;
BEGIN
    select nombrecompleto
    into v_nombre
    from votantes
    where dni = v_dni;
    DBMS_OUTPUT.PUT_LINE(REPLACE(v_nombre,'Jose','Pepe'));
END;