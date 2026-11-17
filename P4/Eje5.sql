set serveroutput on;
DECLARE
    v_nombre votantes.nombrecompleto%TYPE;
    v_dni votantes.dni%TYPE;
BEGIN
    select nombrecompleto, dni
    into v_nombre, v_dni
    from votantes
    where fechanacimiento = (select MIN(fechanacimiento)
                            from votantes);
                                
    DBMS_OUTPUT.PUT_LINE(v_nombre || ' con deni: ' || v_dni || ' es el más longevo');
END;