select a.nombre
form localidades.a, localidades.c
where a.numerohabitantes > b.numerohabitantes in 
    (
    select a.dni
    from votantes a
    where 
        (
        select count(*)
        from voatnte b
        where b.fechanacimiento > a.fechanacimiento
        ) = (3-1)
    ) 
