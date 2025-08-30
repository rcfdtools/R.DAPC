# 2.2. Definición y edición de elementos
Keywords:  `m02a02`

Bases de datos y su manejo en SIG. Definición de elementos de un SIG (shapes, raster, vectores, etc.). Edición de elementos. Digitalización y entrada de entidades. Creación y edición de tablas relacionales.

<div align="center"><img src="graph/m02a02.jpg" alt="R.DAPC" width="60%" border="0" /></div>


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


## A. Digitalización de campus

Siga en clase las indicaciones del instructor y complete la digitalización.

[Quiz M02A02-1 Digitalización de campus.](https://forms.office.com/Pages/ResponsePage.aspx?id=hAVkUEAqFkKoS5s-4PP2z1KMUyWWsfxJkCUt2GpU8YpUNkI1NlpQRzEyNzk4M0wyQ0dPWERWQUI4WS4u)

Instrucciones generales:

* Crear diferentes capas geográficas en formato shapefile utilizando el CRS 9377, digitalizar: predio, construcciones bajo cubierta, vías, arbolado y luminarias.
* Crear los campos de atributos indicados en la guía y poblar la tabla a partir de las observaciones realizadas a través de Google Street View, fotografías en Google Maps, en Google Earth o usando vídeos de apoyo. En las capturas de pantalla se deben observar las tablas de atributos pobladas para los atributos indicados.
* Para cada capa, crear un resumen estadístico y una gráfica de análisis, p. ej., número de construcciones por tipo de estructura. Incluir para cada capa capturas de pantalla donde se observen las tablas y gráficas de análisis.
* Se recomienda utilizar como referencia para digitalización, los mapas de Open Street Maps y las imágenes satelitales de Google Maps, Bing o ESRI. Por ejemplo, https://www.google.com/maps/@4.7832006,-74.0451788,17.71z
* Algunos edificios requieren de la digitalización de zonas semicirculares o arcos.
* Varias de las esquinas de las edificaciones están construidas a un ángulo de 90 grados, tenga en cuenta que debe conservar este ángulo en la digitalización.
* Para los índices solicitados, es necesario mostrar captura de pantalla de la herramienta GIS con la ventana del Calculador de Campo, donde se observe la operación realizada.
* Comprimir independientemente cada archivo de formas shapefile (Predio.shp, Construccion.shp, Vial.shp, VialBuffer.shp, Arbolado.shp, ArboladoBuffer.shp, Luminaria.shp, LuminariaBuffer.shp) y guardar en la carpeta /shp de su repositorio de proyecto.







## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

Las especificaciones técnicas detalladas del proyecto para este módulo del curso, se encuentran en el archivo: [DAPC_ProyectoCAD.xlsx](../../file/table/DAPC_ProyectoCAD.xlsx)

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M02A02    | Desarrolle los quices indicados en esta actividad.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| M02A02    | Para las luminarias identificadas en el campus y ubicadas en postes, calcule el consumo eléctrico total en kWh.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| M02A02    | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos.  | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://www.ideca.gov.co/recursos/mapas/alumbrado-publico-bogota-dc
* https://www.enel.com.co/es/personas/tarifas-energia-enel-distribucion.html
* https://www.enelgreenpower.com/es/learning-hub/energias-renovables/energia-hidroelectrica/turbina-hidroelectrica
* https://elperiodicodelaenergia.com/las-10-centrales-hidroelectricas-mas-grandes-del-mundo/


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.08.22 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |  12   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M02A01a/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M02A01c/Readme.md) |
|----------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|----------------------------------------------------|

[^1]: 