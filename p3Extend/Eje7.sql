select l.nombre
from votantes v, localidades l
where v.localidad = l.idlocalidad
group by l.nombre
order by avg(
    DECODE(v.estudiossuperiores, 'Superiores', 1, 0)
)desc;