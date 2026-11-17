select v.nombrecompleto, count(c.idConsulta)
from votantes v, consultas c 
where v.dni = c.votante
and v.situacionlaboral = 'Activo'
group by v.nombrecompleto
having count (c.idconsulta) < (
    select avg(count(*))
    from consultas
    group by votante);