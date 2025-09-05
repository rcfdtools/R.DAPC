# 2.2.a. Definición y edición de elementos / Digitalización
Keywords:  `m02a02a`

Bases de datos y su manejo en SIG. Definición de elementos de un SIG (shapes, raster, vectores, etc.). Edición de elementos. Digitalización y entrada de entidades.

En esta actividad realizaremos la digitalización del campus de la UECIJG.

<div align="center"><img src="graph/m02a02a.jpg" alt="R.DAPC" width="60%" border="0" /></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Comprende el uso de las bases de datos en SIG.
* Realiza ejercicios prácticos en los que define y edita elementos de un SIG.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                             | Descripción                                                                                        |
|:--------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://qgis.org/)                                 | QGIS 3.44 o superior.                                                                              |  

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 0. Instrucciones generales

Siga en clase las indicaciones del instructor y complete la digitalización teniendo en cuenta las siguientes directrices:

* Crear diferentes capas geográficas en formato shapefile utilizando el CRS 9377, digitalizar: predio, construcciones bajo cubierta, vías, arbolado y luminarias.
* Crear los campos de atributos indicados en la guía y poblar la tabla a partir de las observaciones realizadas a través de Google Street View, fotografías en Google Maps, en Google Earth o usando vídeos de apoyo. En las capturas de pantalla se deben observar las tablas de atributos pobladas para los atributos indicados.
* En el informe técnico, incluir capturas de pantalla con el procedimiento de creación de cada tabla, el proceso de digitalización y la capa final con la tabla de atributos completamente poblada.
* Para cada capa, crear un resumen estadístico y una gráfica de análisis, p. ej., número de construcciones por tipo de estructura. Incluir para cada capa capturas de pantalla donde se observen las tablas y gráficas de análisis.
* Se recomienda utilizar como referencia para digitalización, los mapas de Open Street Maps y las imágenes satelitales de Google Maps, Bing o ESRI. Por ejemplo, https://www.google.com/maps/@4.7832006,-74.0451788,17.71z
* Algunos edificios requieren de la digitalización de zonas semicirculares o arcos.
* Varias de las esquinas de las edificaciones están construidas a un ángulo de 90 grados, tenga en cuenta que debe conservar este ángulo en la digitalización.
* Para los índices solicitados, es necesario mostrar captura de pantalla de la herramienta GIS con la ventana del Calculador de Campo, donde se observe la operación realizada.
* Comprimir independientemente cada archivo de formas shapefile (_Predio.shp, Construccion.shp, Vial.shp, VialBuffer.shp, Arbolado.shp, ArboladoBuffer.shp, Luminaria.shp, LuminariaBuffer.shp_) y guardar en la carpeta /shp de su repositorio de proyecto. Recuerde que un archivo de forma shapefile está compuesto por 4 archivos: .shp, .shx, .prj, .dbf.

> Para facilitar la edición y visualización, agregue el mapa base de Google Satellite desde el conector https://mt1.google.com/vt/lyrs=s&x={x}&y={y}&z={z}. Mapas base adicionales pueden ser agregados usando los enlaces contenidos en el repositorio https://github.com/opengeos/qgis-basemaps


## 1. Capas geográficas requeridas

Para cada capa requerida, cree archivos de formas geográficas shapefile (.shp). 


### 1.1. Predio o lote

Crear una capa tipo polígono en 2D para digitalizar el predio de la institución educativa, nombrar como `Predio.shp`.

Atributos requeridos:

<div>

| Campo    | Tipo         | Descripción                                                                                                                                                       |
|:---------|:-------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| PredioID | String (200) | Consultar el catastro distrital o nacional y obtener el código CHIP o llave predial de este predio. Es necesario investigar y documentar el proceso de obtención. |
| AreaPm2  | Real (10)    | Área planar en m².                                                                                                                                                |
| PerimPm  | Real (10)    | Perímetro planar en m.                                                                                                                                            |
| CX       | Real (10)    | Coordenada X del centroide en m.                                                                                                                                  |
| CY       | Real (10)    | Coordenada y del centroide en m.                                                                                                                                  |
| LatDD    | Real (10)    | Latitud del centroide en grados geodésicos °.                                                                                                                     |
| LonDD    | Real (10)    | Longitud del centroide en grados geodésicos °.                                                                                                                    |

</div>

Fuentes de datos para obtención de predios y/o lotes:

* Predios Bogotá D.C.: https://mapas.bogota.gov.co
* Predios Bogotá D.C.: https://www.ideca.gov.co/recursos/mapas/predios-bogota-dc
* Predios Bogotá D.C.: https://datosabiertos.bogota.gov.co/dataset/lote
* Predios nacionales: https://geoportal.igac.gov.co/contenido/consulta-catastral


### 1.2. Construcción 

Crear una capa tipo polígono en 2D para las construcciones y/o edificios bajo cubierta, nombrar como `Construccion.shp`.

Incluir:

* En las construcciones incluir elementos como: invernaderos, casetas, carpas porterías.
* En el informe técnico analice e indique: número de construcciones identificadas, material predominante en estructuras, tipo de cubierta predominante obtenida a partir de un resumen estadístico obteniendo la sumatoria de las áreas calculadas y gráficos.

Atributos requeridos:

<div>

| Campo      | Tipo         | Descripción                                                                                                                                                                            |
|:-----------|:-------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| EdifID     | String (200) | Identificación de edificio o bloque. Texto de 100 caracteres. Ejemplo: Bloque A, Bloque B, Coliseo, Kiosco K1, Portería, etc.                                                          |
| AreaPm2    | Real (10)    | Área planar en m².                                                                                                                                                                     |
| PerimPm    | Real (10)    | Perímetro planar en m.                                                                                                                                                                 |
| Pisos      | Real (10)    | Número de pisos. En caso de existir altillos, incluir como 0.5 pisos adicional.                                                                                                        |
| MaterialEs | String (100) | Material predominante en la estructura. Normalizar como:<br>• Concreto reforzado en pórticos<br>• Concreto reforzado en paneles<br>• Mampostería estructural<br>• Metálica<br>• Mixta. |
| TipoCubier | String (100) | Tipo de cubierta dominante. Normalizar como:<br>• Teja inclinada<br>• Placa<br>• Carpa<br>• Domo<br>• Curvada continua<br>• Paneles solares<br>• Mixta.                                |
| CX         | Real (10)    | Coordenada X del centroide en m.                                                                                                                                                       |
| CY         | Real (10)    | Coordenada y del centroide en m.                                                                                                                                                       |
| LatDD      | Real (10)    | Latitud del centroide en grados geodésicos °.                                                                                                                                          |
| LonDD      | Real (10)    | Longitud del centroide en grados geodésicos °.                                                                                                                                         |

</div>

: 
: 
: 


Construcciones Bogotá: 

* https://ideca.gov.co/recursos/mapas/construccion-bogota-dc
* https://ideca.gov.co/recursos/mapas/construccion






## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

Las especificaciones técnicas detalladas del proyecto para este módulo del curso, se encuentran en el archivo: [DAPC_ProyectoCAD.xlsx](../../file/table/DAPC_ProyectoCAD.xlsx)

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M02A02    | Desarrolle los quices grupales indicados en esta actividad.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| M02A02    | Para las luminarias identificadas en el campus y ubicadas en postes, calcule el consumo eléctrico total en kWh.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| M02A02    | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://docs.qgis.org/3.40/es/docs/user_manual/working_with_vector/editing_geometry_attributes.html
* https://www.sdp.gov.co/sites/default/files/20190606_anexos_graficos.pdf


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.08.29 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |  12   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M02A02b/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M02A03/Readme.md) |
|----------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|--------------------------------------------------|

[^1]: 