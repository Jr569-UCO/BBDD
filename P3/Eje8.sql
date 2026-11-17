select votante, count(votante)
from consultas
where votante != 
    (
    select dni
    from votantes
    where fechanacimiento = 
        (
        select min(fechanacimiento)
        from votantes
        where fechanacimiento > 
            (
            select min(fechanacimiento)    
            from votantes
            )
        )
    )
group by votante
order by count(votante) desc;