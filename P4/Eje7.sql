SET SERVEROUTPUT ON;

DECLARE
    v_nombre    votantes.nombrecompleto%TYPE;
    v_apellido1 votantes.nombrecompleto%TYPE;
    v_apellido2 votantes.nombrecompleto%TYPE;
BEGIN
    -- El más joven aporta el segundo apellido.
    SELECT nombrecompleto
    INTO v_nombre
    FROM votantes
    WHERE fechanacimiento = (
        SELECT MAX(fechanacimiento)
        FROM votantes
    );

    v_apellido2 := SUBSTR(
        v_nombre,
        INSTR(v_nombre, ' ') + 1,
        INSTR(v_nombre, ' ', 1, 2) - INSTR(v_nombre, ' ') - 1
    );

    SELECT nombrecompleto
    INTO v_nombre
    FROM votantes
    WHERE fechanacimiento = (
        SELECT MAX(fechanacimiento)
        FROM votantes
        WHERE fechanacimiento < (
            SELECT MAX(fechanacimiento)
            FROM votantes
        )
    );

    v_apellido1 := SUBSTR(
        v_nombre,
        INSTR(v_nombre, ' ') + 1,
        INSTR(v_nombre, ' ', 1, 2) - INSTR(v_nombre, ' ') - 1
    );

    DBMS_OUTPUT.PUT_LINE('Juan ' || v_apellido1 || ' ' || v_apellido2);
END;