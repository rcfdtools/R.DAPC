# 2.3.a. Mapas e imágenes / Modelos digitales de elevación DEM - Red de interconexión energética 3D y aislamientos RETIE
Keywords:  `dem` `copernicus` `powerline-offset` `m02a03a`

Mapas y cartografía. Elaboración de planos. Imágenes en SIG. Manejo y manipulación de imágenes. Procesamiento de modelos digitales de elevación. 

**Caso de estudio**: análisis de aislamientos y longitud 3D de líneas de energía en proyectos de interconexión energética.

<div align="center"><img src="graph/m02a03a.jpg" alt="R.DAPC" width="50%" border="0" /><sub><br>Tomado de: <a href="https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx">https://onl.dnp.gov.co/</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Elabora mapas y planos.
* Manipula imágenes de modelos digitales de elevación.
* Crea líneas 3D.
* Calcula aferencia e identifica predios afectados.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                     | Descripción                                                                        |
|:----------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://qgis.org/)                                         | QGIS 3.44 o superior.                                                              |  
| [:date:DAPC_CubiertaNodoUECIJG.csv](../../file/table/DAPC_CubiertaNodoUECIJG.csv) | Tabla con geo-localizadores de nodos para generación de áreas útiles por cubierta. |

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 0. Procedimiento general

* Descarga de municipios de Colombia.
* Identificación de zonas de estudio por municipio para cada grupo de proyecto.
* Integración y recorte de líneas de interconexión. Extracción de nodos de localización de subestaciones.
* Creación de polígono envolvente.
* Obtención de modelo digital de elevación Copernicus.
* Segmentación de líneas a partir de la separación por tipo de tensión eléctrica, p. ej. alta tensión entre 350 y 1700m, media tensión entre 275 y 455 y baja tensión 100 metros.
* Obtención de cota 3D por torre.
* Cálculo de distancias 3D entre torres.
* Cálculo de longitudes 3D en líneas de interconexión. Cálculo de catenaria y longitud real de cableado.
* Análisis de aislamientos e identificación de predios usando directrices del RETIE.


## 1. Identificación de zona de estudio, redes y estaciones

Descargue la capa de Municipios de Colombia y exporte el polígono geográfico del municipio asignado a su grupo de proyecto. Para el ejemplo de clase utilizaremos el límite geopolítico de la ciudad de Bogotá D.C.

> Los municipios se representan sobre cartografía del IGAC, acorde a lo establecido en la Ley 1447 de 2011 y su Decreto Reglamentario 1170 de 2015. Para el caso de los Distritos, la definición y modificación de sus límites está estipulado en la Ley 1617 de 2013. Las áreas No Municipalizadas, hacen parte de la división territorial, pero no son entidades territoriales (artículo 285 y 286 de la Constitución Política de Colombia, 1991); la categorización de cada municipio se establece de conformidad con la Ley 617 de 2000. La información sobre los límites municipales, está sujeta a las actualizaciones de los resultados de las operaciones administrativas de deslinde y las decisiones tomadas por los competentes (Asambleas departamentales y Congreso de la República).

1. Ingrese al portal https://www.colombiaenmapas.gov.co/, busque el servicio _Municipios, Distritos y Áreas no municipalizadas de Colombia_ y descargue en formato shapefile. Guardar el comprimido como en [/data/IGAC/IGAC_Municipio.zip](../../file/data/IGAC/IGAC_Municipio_20250912.zip).

<div align="center"><img src="graph/wwwColombiaEnMapas_Municipio.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Desde el mismo portal, descargue la capa shapefile de _Centros poblados y cabeceras municipales de Colombia_. Guardar el comprimido como en [/data/DANE/DANE_CentroUrbano.rar](../../file/data/DANE/DANE_CentroUrbano_20250912.rar).

> Cabeceras y centros poblados de Colombia delimitados por el DANE dentro del Marco Geo-estadístico Nacional año 2020. Las cabeceras municipales son áreas geográficas delimitadas por el perímetro censal. A su interior se localiza la sede administrativa del municipio, es decir la alcaldía. Los centros poblados son concentraciones mínimo de veinte (20) viviendas contiguas, vecinas o adosadas entre sí, ubicados en el área resto municipal o en un área no municipalizada.

<div align="center"><img src="graph/wwwColombiaEnMapas_CabeceraUrbana.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Desde el portal https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx, descargue las capas geográficas de líneas de transmisión eléctrica y subestaciones del sistema nacional y regional. Guardar los comprimidos en /data/DNP como [LineasTransmisionSTN.zip](../../file/data/DNP/LineasTransmisionSTN.zip), [LineasTransmisionSTR.zip](../../file/data/DNP/LineasTransmisionSTR.zip), [SubestacionesSTN.zip](../../file/data/DNP/SubestacionesSTN.zip), [SubestacionesSTR.zip](../../file/data/DNP/SubestacionesSTR.zip).

<div align="center"><img src="graph/wwwDNP_EnergiaElectrica.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. En la carpeta _/shp_, descomprima las capas geográficas obtenidas en formato shapefile.

5. Cree un proyecto nuevo en QGIS, asigne el CRS 9377, cargue las capas y desde el panel _Browser_ renombre como:

* MGN_URB_AREA_CENSAL.shp -> DANE_CentroUrbano.shp
* LineasTransmisionSTN.shp -> UPME_LineaTransmisionSTN.shp
* LineasTransmisionSTR.shp -> UPME_LineaTransmisionSTR.shp
* SubestacionesSTN.shp -> UPME_SubestacionSTN.shp
* SubestacionesSTR.shp -> UPME_SubestacionSTR.shp
* Municipio, Distrito y Area no municipalizada.shp -> IGAC_Municipio.shp

Simbolice y rotule las líneas de transmisión a partir del campo `id_tension`. Tenga en cuenta que la tabla de atributos dispone de códigos de dominio del 17 al 26 y no de rótulos asociados a la tensión eléctrica.

Para la simbología y rotulación, utilice la siguiente tabla de homologación:

<div align="center">

| id_tension |  Tensión(kW)  | Color Hex |
|:----------:|:-------------:|-----------|
|     0      |     <110      | #7a7a7a   |
|     17     |     <110      | #7a7a7a   |
|     18     |     <110      | #7a7a7a   |
|     19     |      110      | #007f2e   |
|     21     |      115      | #5bdd31   |
|     24     |      220      | #fad522   |
|     25     |      230      | #f08b01   |
|     26     |      500      | #e70b1e   |

</div>

<div align="center"><img src="graph/QGIS_AddLayer.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. En las tablas de atributos de las capas de líneas de transmisión y subestaciones, cree un campo de texto de 50 de longitud con el nombre `STTipo` correspondiente al tipo de sistema de transmisión. Con el calculador de campo o _Field Calculator_ de las tablas, para los elementos del sistema nacional asigne _STN - Nacional_ y para los regionales _STR - Regional_.

<div align="center"><img src="graph/QGIS_FieldCalculator.jpg" alt="R.DAPC" width="100%" border="0" /></div>










## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

Las especificaciones técnicas detalladas del proyecto para este módulo del curso, se encuentran en el archivo: [DAPC_ProyectoCAD.xlsx](../../file/table/DAPC_ProyectoCAD.xlsx)

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M02A03a   | Desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado. Presentar informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas. Incluir en la carpeta /shp, las capas creadas.                                                                                                                                                                                                                                                                                                      |
| M02A03a   | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://www.minenergia.gov.co/es/sala-de-prensa/noticias-index/colombia-y-panam%C3%A1-avanzan-en-la-integraci%C3%B3n-energ%C3%A9tica-a-trav%C3%A9s-de-la-interconexi%C3%B3n-el%C3%A9ctrica/
* https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx
* https://www.enel.com.co/content/dam/enel-co/espa%C3%B1ol/7-prensa/2020/diciembre/Respeto-por-las-distancias-minimas-con-la-red-de-energia-en-proyectos-de-construccion-salva-vidas.pdf


## Control de versiones

| Versión      | Descripción        | Autor                                      | Horas |
|--------------|:-------------------|--------------------------------------------|:-----:|
| 2025.09.11   | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |   8   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M02A02b/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M02A03b/Readme.md) |
|----------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|-----------------------------------------------------|

[^1]: 