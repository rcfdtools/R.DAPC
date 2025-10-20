import processing
from qgis.core import QgsRasterLayer, QgsVectorLayer
variable = 'ssr' 
days = 12
raster_path = 'C:/Temp/ERA5/ERA5_land_monthly_climatological_var_010ddRioBogota_ssr.tif'
polygon_path = 'C:/Temp/ERA5/SZH2120.shp'
raster_layer = QgsRasterLayer(raster_path, 'Raster Layer')
polygon_layer = QgsVectorLayer(polygon_path, 'Polygon Layer', "ogr")
output_path = 'C:/Temp/ERA5/'

if not raster_layer.isValid() or not polygon_layer.isValid():
    print("Error loading layers.")
else:
    print("Loading layers...")
    for i in range(days+1):
        print('Processing date: '+str(i+1))
        # Run the Zonal Statistics algorithm
        processing.run(
            "native:zonalstatisticsfb",
            {
                'INPUT': polygon_layer,
                'INPUT_RASTER': raster_layer,
                'RASTER_BAND': i, # Specify the raster band (usually 1)
                'STATISTICS': [0, 1, 2, 3, 4, 5], # 0:Mean, 1:StdDev, 2:Min, 3:Max, 4:Sum, 5:Count
                'COLUMN_PREFIX': variable+'_', # Prefix for new attribute fields
                'OUTPUT': output_path+variable+str(i)+'.csv'
            }
        )
