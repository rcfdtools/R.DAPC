


1. Descargar capa Departamentos de Colombia desde www.colombiaenmapas.gov.colombiaenmapas

2. Cargar capa de Departamentos y excluir San Andrés. "DeNombre" <  > 'San Andrés Providencia y Santa Catalina'

3. Disolver departamentos para obtener el límite continental de Colombia, nombrar como /shp/ColombiaContinental.shp

4. Obtener los límites geográficos de Colombia.

LonDDMin = x_min(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))
LonDDMax = x_max(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))
LatDDMin = y_min(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))
LatDDMax = y_max(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))

5. Descargar datos de radiación y velocidad desde https://cds.climate.copernicus.eu/ y renombrar dataset como /data/ERA5/ERA5_land_monthly_climatological_var_010dd_ssr_uv10_Colombia.nc

Surface net solar radiation
10m u-component of wind
10m v-component of wind

North: 12.5
South: -4.3
East: -66.8
West: -79.1

909 meses de 1950 a 2024.

6. Cargar variable ssr, exportar como .tif y reproyectar a 9377. Guardar como /grid/ERA5_land_monthly_climatological_var_010dd_ssr_Colombia.tif

7. 