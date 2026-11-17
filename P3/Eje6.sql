select votante, count(votante)
from consultas
group by votante
having count(votante) > 
    (
    select avg(count(votante)) 
    from consultas 
    group by votante
    )
order by count(votante) desc;
