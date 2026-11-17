select nombrecompleto 
from votantes 
where telefono like '%' || substr(dni,-1,1);