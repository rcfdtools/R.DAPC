# 2.3.b. Mapas e imágenes / Modelos digitales de elevación DEM - Red de interconexión energética 3D
Keywords:  `dem` `copernicus` `powerline-offset` `m02a03b`

Mapas y cartografía. Elaboración de planos. Imágenes en SIG. Manejo y manipulación de imágenes. Procesamiento de modelos digitales de elevación. 

**Caso de estudio**: análisis de longitudes 3D de la red de interconexión energética nacional de Colombia.

<div align="center"><img src="graph/m02a03b.png" alt="R.DAPC" width="50%" border="0" /><sub><br>Generado con: <a href="https://gemini.google.com/app/ae9373792145f9e2">https://gemini.google.com/</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Elabora mapas y planos.
* Une capas geográficas para análisis con cobertura integrada.
* Descarga y procesa imágenes satelitales de modelos digitales de elevación.
* Crea nodos 3 líneas 3D.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                             | Descripción                                                                                                    |
|:------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://qgis.org/)                                                 | QGIS 3.44 o superior.                                                                                          |  
| [:man_technologist:Cuenta de usuario en _Open Topography_](https://opentopography.org/)     | Cuenta de usuario requerida para descarga de modelos digitales de elevación DEM.                               |  
| [:round_pushpin:IGAC_Municipio.shp](../../file/data/IGAC/IGAC_Municipio_20250912.zip)     | Municipios, Distritos y Áreas no municipalizadas de Colombia obtenidas de https://www.colombiaenmapas.gov.co/. |
| [:round_pushpin:UPME_LineaTransmision.shp](../../file/data/DNP/UPME_LineaTransmision.zip) | Líneas de transmisión regional y nacional, integradas a partir de capas obtenidas de https://onl.dnp.gov.co.   |

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Modelo digital de elevación DEM

Para la descarga del modelo de terreno satelital, es necesaria la creación de un polígono envolvente.

1. En QGIS, cree un proyecto nuevo en blanco, asigne el CRS 9377, agregue la capa [IGAC_Municipio.shp](../../file/data/IGAC/IGAC_Municipio_20250912.zip) y filtre el polígono correspondiente a Bogotá, expresión: `"MpCodigo" = '11001'`. Simbolice el polígono solo por su contorno y rotule con la expresión  `"MpCodigo"  ||  ' / '  || "MpNombre"`. Guarde el mapa como _/map/M02A03b.qgz_.

> Para entender la localización topográfica del polígono de Bogotá, agregue el mapa base de _Google Terrain_ desde la URL https://mt1.google.com/vt/lyrs=p&x={x}&y={y}&z={z} 
>
> Mapas base complementarios en: https://github.com/opengeos/qgis-basemaps/blob/main/qgis_basemaps.py

<div align="center"><img src="graph/QGIS_AddLayer.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Utilizando la herramienta _Processing Toolbox / Vector Geometry / Bounding boxes_, obtenga el polígono regular envolvente que rodea el polígono de la ciudad. Guarde como _/shp/IGAC_Municipio11001Box.shp_ y simbolice solo por contorno.

<div align="center"><img src="graph/QGIS_BoundingBoxes.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Utilizando la herramienta _Processing Toolbox / Vector Geometry / Buffer_, cree un polígono con aferencia de 500 metros alrededor del polígono envolvente. Guarde como _/shp/IGAC_Municipio11001BoxBuffer500.shp_ y simbolice solo por contorno. En los parámetros establezca:

* Segments: 1
* End cap style: Square
* Join style: Miter
* Miter limit: 10

> La aferencia es requerida para descargar una región más amplia del modelo digital de elevación que permita evaluar todo su contorno.

<div align="center"><img src="graph/QGIS_Buffer.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. En la tabla de atributos de la capa _/shp/IGAC_Municipio11001BoxBuffer500.shp_, cree 4 campos de atributos reales con precisión 10 con los nombres `LongLeft`, `LongRight`, `LatTop` y `LatBottom`. Utilizando las siguientes expresiones y desde el _Field Calculator_, obtenga las latitudes y longitudes que delimitan el polígono envolvente.

* `LonDDMin = x_min(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))`
* `LonDDMax = x_max(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))`
* `LatDDMin = y_min(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))`
* `LatDDMax = y_max(transform($geometry, layer_property(@layer, 'crs'),'EPSG:4326'))`

<div align="center"><img src="graph/QGIS_FieldCalculator.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. Para la obtención de modelo digital de elevación - DEM Copernicus, ingrese al portal https://opentopography.org/ con su cuenta de usuario. En la pestaña DATA, seleccione la opción FIND DATA MAP. En el panel _Data Sources_ localizado a la derecha del mapa, active la casilla _Global & Regional DEM's / COP 30m & 90m_. Desde el panel de opciones localizado a la izquierda, ingrese las coordenadas que delimitan la zona de descarga, para el ejemplo corresponden a: 

* Lower-left Lon: -74.4574268192
* Lower-left Lat: 3.7260832977
* Upper-right Lon: -73.9804954370
* Upper-right Lat: 4.8416393831

<div align="center"><img src="graph/wwwOpenTopography1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. Una vez ingresadas las coordenadas, de clic en el botón _Update Map_, observará que en la parte inferior son mostrados los enlaces para descarga de los diferentes modelos digitales de elevación.

<div align="center"><img src="graph/wwwOpenTopography2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

7. Descargue en formato GeoTiff el modelo correspondiente a Copernicus 30m Data, podrá observar en la ventana que el área a descargar corresponde a 6560 km². Guarde el archivo descargado [rasters_COP30.tar.gz](../../file/dem/rasters_COP30.tar.gz) y descomprima en la carpeta _/dem_, renombre como _Copernicus30m.tif_.

<div align="center"><img src="graph/wwwOpenTopography3.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/wwwOpenTopography4.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/wwwOpenTopography5.jpg" alt="R.DAPC" width="100%" border="0" /></div>

8. Agregue el DEM al mapa de QGIS y consulte sus propiedades, podrá observar que el CRS asociado es el 4326 ó WGS84.

<div align="center"><img src="graph/QGIS_AddLayer1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

9. Exporte y reproyecte el DEM al CRS 9377, guarde como _/dem/Copernicus30m9377.tif_, simbolice por _Hillshade_.

<div align="center"><img src="graph/QGIS_SaveRasterLayerAs.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/QGIS_SymbologyHillshade.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## 2. Localización de torres eléctricas

Las dimensiones de las torres eléctricas varían significativamente; las de distribución son más bajas (15-55 metros), mientras que las de transmisión de alta tensión pueden superar los 300 metros, con diámetros variables según el diseño y la estructura de la celosía. Su altura depende de la tensión y la distancia de transporte, requiriendo tramos más altos para cruzar ríos u otros obstáculos. 

El ancho de la base de una torre eléctrica varía según su tipo, pero puede ir desde los 8 metros para torres de celosía de 32 metros de altura, hasta anchos mayores para torres más altas o con otras configuraciones, dado que las torres tienen una forma de tronco piramidal que las hace más anchas en la base para garantizar la estabilidad. 

Para la segmentación de líneas de transmisión eléctrica a partir de la separación de torres eléctricas por tipo de tensión eléctrica, utilizaremos los siguientes valores de referencia:

| Tensión                | Rango de separación (m)  |  Valor (m)  |
|:-----------------------|:-------------------------|:-----------:|
| Alta (AT) <= 500 kW    | Entre 350m y 1700m       |    1000     |
| Media (MT) <= 230 kW   | Entre 275 y 455m         |     400     |
| Baja (BT) <= 115 kW    | 100 metros               |     100     |

1. Agregue al proyecto la capa de líneas de transmisión eléctrica localizadas dentro de Bogotá D.C. desde la capa _/shp/UPME_LineaTransmisionBogota.shp_ y simbolice por categorías a partir del campo `UPME_Tesi`,

<div align="center"><img src="graph/QGIS_Symbology.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Con la herramienta _View / Elevation Profile_, visualice el perfil 3D del tramo denominado _CIRCO - NUEVA ESPERANZA 1 230 kV_. Podrá observar que su elevación varía pasando por los cerros orientales y occidentales de la ciudad.

<div align="center"><img src="graph/QGIS_ElevationProfile.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Asigne un código único de identificación a cada tramo de las líneas de transmisión. En la tabla de atributos de la capa, cree un campo numérico entero largo con el nombre `IDLine` y asigne con el _Field Calculator_ la propiedad `@id`.

<div align="center"><img src="graph/QGIS_FieldCalculator1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Cree ahora un campo real de precisión 10 con el nombre `TorreDist`, luego utilizando la herramienta de selección por atributos y el calculador de campo, asigne los valores de separación definidos dependiendo de la tensión.

| Tensión              | Query                            |  Valor (m)  |
|:---------------------|:---------------------------------|:-----------:|
| Alta (AT) <= 500 kW  | "UPME_Tensi" =  '500'            |    1000     |
| Media (MT) <= 230 kW | "UPME_Tensi" =  '230'            |     400     |
| Baja (BT) <= 115 kW  | "UPME_Tensi" in ('<110' , '115') |     100     |

<div align="center"><img src="graph/QGIS_FieldCalculator2.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/QGIS_FieldCalculator3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. Utilizando la herramienta _Processing Toolbox / Vector Geometry / Split lines by maximum length_, divida cada tramo a partir del campo de atributos `TorreDist`, nombre la capa resultante como _/shp/UPME_LineaTransmisionBogotaSplit.shp_. Abra y verifique la tabla de atributos, podrá observar que cada tramo contiene ahora múltiples segmentos. Simbolice usando flechas por segmento. 

<div align="center"><img src="graph/QGIS_SplitLinesByMaximumLength.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/QGIS_SplitLinesByMaximumLength1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6.  Utilizando la herramienta _Processing Toolbox / Vector Geometry / Extract vertices_, obtenga todos los nodos 


Elimine los vértices duplicados con Remove duplicate vertices

* Obtención de cota 3D por torre.


## 3. Distancia 3D entre torres

* Cálculo de distancias 3D entre torres.
* Cálculo de longitudes 3D en líneas de interconexión. Cálculo de catenaria y longitud real de cableado.


* Generación de curvas de nivel



## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto o individualmente.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M02A03b   | Individual: los numerales vistos en esta actividad son evaluados individualmente a través de un quiz de conocimiento y habilidad.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| M02A03b   | Opcional en grupo: desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas. Incluir en la carpeta /shp, las capas creadas.                                                                                                                                                                                                                                                                                                                                           |
| M02A03b   | Opcional en grupo: en una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.


## Referencias

* https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx
* https://retielectrica.com/clasificacion-de-los-niveles-de-tension-capitulo-2-articulo-12/


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.09.13 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |   8   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M02A03a/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M02A03c/Readme.md) |
|---------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: 