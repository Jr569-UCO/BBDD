SELECT lo.nombre || 'es de' || pr.nombre "pueblos" , pr.numerodehabitantes
FROM localidades lo, provincias pr
where lo.provincias = pr.localidades