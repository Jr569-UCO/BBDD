select  l.nombre, l.numerohabitantes, p.comunidad 
from  localidades l, provincias  p
where l.provincia = p.idprovincia     
and l.provincia   in (1,2,3)
and l.numerohabitantes > any ( select numerohabitantes
                            from localidades
                            where provincia = 4
                            )