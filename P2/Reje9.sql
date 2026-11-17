select v.nombrecompleto, l.nombre
from votantes v, localidades l, consultas c
where v.localidad = l.idlocalidad   > 3000000