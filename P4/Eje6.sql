set serveroutput on;
DECLARE
    v_nombre votantes.nombrecompleto%TYPE;
    v_correo votantes.email%TYPE;
BEGIN
    select nombrecompleto, email
        into v_nombre, v_correo
        from votantes
        where fechanacimiento = ( select MIN(fechanacimiento)
                                    from votantes);
        DBMS_OUTPUT.PUT_LINE(v_nombre || '---' || v_correo);
        select nombrecompleto, email
        into v_nombre, v_correo
        from votantes
        where fechanacimiento = ( select MAX(fechanacimiento)
                                    from votantes);
        DBMS_OUTPUT.PUT_LINE(v_nombre || '---' || v_correo);
END;