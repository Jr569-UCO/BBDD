select lo.nombre, pr.nombre
from localidades lo, provincias pr
where lo.provincia = pr.idprovincia 
and lo.numerohabitantes like '%' || lo.provincia;