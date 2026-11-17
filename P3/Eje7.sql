select v.nombrecompleto 
from votantes v, consultas c
where v.dni = c.votante
group by v.nombrecompleto
having count(c.votante) > 
    (
    select avg(count(votante))
    from consultas
    group by votante
    );