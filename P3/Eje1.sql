select v.nombrecompleto
from votantes v
where substr(dni,-1)=localidad+1;