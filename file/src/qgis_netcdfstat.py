import processing
from qgis.core import QgsRasterLayer, QgsVectorLayer
import pandas as pd
import glob
import os

variable = 'ssr' 
steps = 888
raster_path = 'C:/Temp/ERA5/ERA5_land_monthly_climatological_var_010ddRioBogota_ssr.tif'
polygon_path = 'C:/Temp/ERA5/SZH2120.shp'
output_path = 'C:/Temp/ERA5/stat/'
output_stat_file = 'C:/Temp/ERA5/'+variable+'_stat.csv'

# Run the Zonal Statistics algorithm
for i in range(steps):
    output_file=output_path+variable+str(i+1)+'.csv'
    print(f'Processing step: {i+1} as {output_file}')
    alg_params = {
        'COLUMN_PREFIX': variable+'_',
        'INPUT': polygon_path,
        'INPUT_RASTER': raster_path,
        'RASTER_BAND': i+1,
        'STATISTICS': [0,1,2,4],  # 0-Count,1-Sum,2-Mean,3-Median,4-Standard deviation,5-Minimum,6-Maximum,7-Range,8-Minority (least common value),9-Majority (most common value),10-Variety (unique value count),11-Variance
        'OUTPUT': output_file
    }
    processing.run('native:zonalstatisticsfb', alg_params)
    # Adding fields with pandas
    df = pd.read_csv(output_file, encoding='cp1252')
    new_column_name = 'Step'
    new_column_values = [i+1]
    df[new_column_name] = new_column_values
    df.to_csv(output_file, index=False)
    
# Join the .csv stat files
all_csv_files = glob.glob(os.path.join(output_path, '*.csv'))
df_list = []
for file in all_csv_files:
    df = pd.read_csv(file)
    df_list.append(df)
combined_df = pd.concat(df_list, ignore_index=True)
combined_df.to_csv(output_stat_file, index=False) 
