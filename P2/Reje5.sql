select nombrecompleto, fechanacimiento
from votantes
where nombrecompleto like '%s%' and fechanacimiento < '12/02/1990';