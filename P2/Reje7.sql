select c.votante
from consultas c
group by votante
having count (*) > 3;