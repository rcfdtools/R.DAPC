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

| Requerimiento                                                                              | Descripción                                                                                                    |
|:-------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://qgis.org/)                                                  | QGIS 3.44 o superior.                                                                                          |  
| [:round_pushpin:IGAC_Municipio.shp](../../file/data/IGAC/IGAC_Municipio_20250912.zip)      | Municipios, Distritos y Áreas no municipalizadas de Colombia obtenidas de https://www.colombiaenmapas.gov.co/. |
| [:round_pushpin:UPME_LineaTransmision.shp](../../file/data/DNP/UPME_LineaTransmision.zip)  | Líneas de transmisión regional y nacional, integradas a partir de capas obtenidas de https://onl.dnp.gov.co.   |

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Modelo digital de elevación DEM

Para la descarga del modelo de terreno satelital, es necesaria la creación de un polígono envolvente.

1. En QGIS, cree un proyecto nuevo en blanco, asigne el CRS 4326, agregue la capa [IGAC_Municipio.shp](../../file/data/IGAC/IGAC_Municipio_20250912.zip) y filtre el polígono correspondiente a Bogotá, expresión: `"MpCodigo" = '11001'`. Simbolice el polígono solo por su contorno y rotule con la expresión  `"MpCodigo"  ||  ' / '  || "MpNombre"`.

> Para entender la localización topográfica del polígono de Bogotá, agregue el mapa base de Google Terrain desde la URL https://mt1.google.com/vt/lyrs=p&x={x}&y={y}&z={z} 
>
> Mapas base complementarios en: https://github.com/opengeos/qgis-basemaps/blob/main/qgis_basemaps.py

<div align="center"><img src="graph/QGIS_AddLayer.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. 


* Obtención de modelo digital de elevación Copernicus.


## 2. Localización de torres eléctricas

Las dimensiones de las torres eléctricas varían significativamente; las de distribución son más bajas (15-55 metros), mientras que las de transmisión de alta tensión pueden superar los 300 metros, con diámetros variables según el diseño y la estructura de la celosía. Su altura depende de la tensión y la distancia de transporte, requiriendo tramos más altos para cruzar ríos u otros obstáculos. 

El ancho de la base de una torre eléctrica varía según su tipo, pero puede ir desde los 8 metros para torres de celosía de 32 metros de altura, hasta anchos mayores para torres más altas o con otras configuraciones, dado que las torres tienen una forma de tronco piramidal que las hace más anchas en la base para garantizar la estabilidad. 

* Segmentación de líneas a partir de la separación de torres eléctricas por tipo de tensión eléctrica, p. ej. alta tensión entre 350m y 1700m, media tensión entre 275 y 455m y baja tensión 100 metros.
* Obtención de cota 3D por torre.


## 3. Distancia 3D entre torres

* Cálculo de distancias 3D entre torres.
* Cálculo de longitudes 3D en líneas de interconexión. Cálculo de catenaria y longitud real de cableado.






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

* https://www.minenergia.gov.co/es/sala-de-prensa/noticias-index/colombia-y-panam%C3%A1-avanzan-en-la-integraci%C3%B3n-energ%C3%A9tica-a-trav%C3%A9s-de-la-interconexi%C3%B3n-el%C3%A9ctrica/
* https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx
* https://www.enel.com.co/content/dam/enel-co/espa%C3%B1ol/7-prensa/2020/diciembre/Respeto-por-las-distancias-minimas-con-la-red-de-energia-en-proyectos-de-construccion-salva-vidas.pdf
* https://www.enel.com.co/es/proyectos-en-alta-tension/servidumbres-electricas.html


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