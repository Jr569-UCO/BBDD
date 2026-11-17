select distinct v.dni, v.nombreCompleto 
from votantes v, consultas c
where v.dni = c.votante
order by v.dni desc;