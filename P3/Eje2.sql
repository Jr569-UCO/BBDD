select v.nombrecompleto, decode (v.localidad, 1,'Madrid',2,'Madrid',3,'Madrid',l.nombre) as nombre
from votantes v, localidades l
where v.localidad = l.idlocalidad
