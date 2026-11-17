select l.nombre as localidades, l.idlocalidad, p.nombre as provincia, p.idprovincia, count(v.dni)
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad
and l.provincia = p.idprovincia
group by l.nombre, l.idlocalidad, p.nombre, p.idprovincia
having avg( DECODE(v.estudiossuperiores, 'Ninguno',0, 'Basicos', 1, 'Superiores',2,'Doctorado',3,v.estudiossuperiores)) > 
    all(select avg(DECODE(v1.estudiossuperiores, 'Ninguno',0, 'Basicos', 1, 'Superiores',2,'Doctorado',3,v1.estudiossuperiores))
        from votantes v1, localidades l1, provincias p1
        where v1.localidad = l1.idlocalidad
        and l1.provincia = p1.idprovincia
        )
order by p.idprovincia asc;
