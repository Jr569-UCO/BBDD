set serveroutput on;
DECLARE
    v_numerohabitantes localidades.numerohabitantes%TYPE;
    v_idlocalidad localidades.idlocalidad%TYPE;
    v_suma NUMBER := 0;
    v_cantidad NUMBER;
BEGIN

    select MIN(idlocalidad)
    into v_idlocalidad
    from localidades;
    
    select numerohabitantes
    into v_numerohabitantes
    from localidades
    where idlocalidad = v_idlocalidad;
        
    v_suma := v_suma + v_numerohabitantes;
        
    select MIN(idlocalidad)
    into v_idlocalidad
    from localidades
    where idlocalidad > v_idlocalidad;
    
    select numerohabitantes
    into v_numerohabitantes
    from localidades
    where idlocalidad = v_idlocalidad;
        
    v_suma := v_suma + v_numerohabitantes;
    
    SELECT COUNT(*)
    INTO v_cantidad
    FROM localidades
    WHERE numerohabitantes > v_suma;
    
    DBMS_OUTPUT.PUT_LINE('Hay ' || v_cantidad || ' con más de ' || v_suma || ' habitantes, que es la suma de las localidades con IDs más pequeños.');
END;