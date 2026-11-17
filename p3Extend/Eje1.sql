select substr(v.nombrecompleto,1,instr(v.nombrecompleto, ' ')) as "Nombre de Pila", l.nombre as Localidad, p.comunidad as Comunidad
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad
and l.provincia = p.idprovincia
and v.localidad in (1,3,9);
