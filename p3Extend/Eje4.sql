select nombrecompleto, localidad,
    case
        when fechanacimiento < add_months(sysdate,-600)
        then 'mayor edad'
        else 'menor edad'
    end as MAYORIAEDAD,
    ROUND(MONTHS_BETWEEN(SYSDATE, fechanacimiento) / 12, 2) AS edad
from votantes 
where localidad in (2,4,8) 