select a.nombre || ' va antes de '|| b.nombre as "Ordenacion"
from LOCALIDADES a, LOCALIDADES b
where a.idlocalidad+1 = b.idlocalidad
