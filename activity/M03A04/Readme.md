# 3.4. Familias de Revit - Eléctrico
Keywords:  `bim` `discipline` `categories` `families` `type` `2d` `3d` `electrical` `m03a04`

Concepto de familias de Revit. Creación de perfiles. Creación de planos de trabajo. Convertir líneas en símbolos (Convert lines) y Controles de visibilidad.

<div align="center"><img src="graph/m03a04.jpg" alt="R.DAPC" width="50%" border="0" /></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Conoce los fundamentos de las familias de Revit. 
* Crea planos de trabajo en Revit. 


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                      | Descripción                                        |
|:-------------------------------------------------------------------|:---------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/revit)    | Autodesk Revit 2026 o superior (english version).  |  

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 0. Configuración de componentes eléctricos

Antes de iniciar con la localización de los elementos eléctricos correspondientes a dispositivos, circuitos de cableado y conductos, es necesario definir la configuración del sistema eléctrico, para ello, en el menú _Systems / Electrical_, de clic en el expansor de opciones o ingrese el comando **ES**. 

> Tenga en cuenta que la configuración eléctrica debe ser ajustada a la norma técnica eléctrica específica de cada país.

1. En la pestaña _General_, defina el estilo de representación eléctrica, p. ej., colocando la descripción del voltaje del conector, el número de polos y la carga. Para el nombrado de las fases, puede definir por ejemplo A, B, C y para el secuenciamiento, utilice valores numéricos de 1 a n.  

<div align="center"><img src="graph/Revit_ElectricalSettingsGeneral.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. En la pestaña _Angles_, defina los ángulos de los empalmes de conductos a través de códos eléctricos. Por defecto, el valor establecido es usando cualquier ángulo. Active la opción de ángulos específicos y establezca los valores mostrados en la ilustración.

<div align="center"><img src="graph/Revit_ElectricalSettingsAngles.jpg" alt="R.DAPC" width="60%" border="0" /></div>

3. En la pestaña _Voltaje Definitions_, defina los tipos de voltajes a utilizar en las redes eléctricas del proyecto. Por defecto, Revit incluye voltajes nominales de 120, 208, 240, 277 y 480 Voltios. Tenga en cuenta que en Colombia, los voltajes que regularmente se usan son 110, 115, 220, 230, 500 V.

> Para este ejercicio, utilizaremos los valores que por defecto presenta Revit.

<div align="center"><img src="graph/Revit_ElectricalSettingsVoltajeDefinitions.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. En la pestaña _Distribution Systems_, podrá encontrar los sistemas de distribución a emplear en el trazado del cableado eléctrico.

<div align="center"><img src="graph/Revit_ElectricalSettingsDistributionSystems.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. En la pestaña _Cable Tray Settings / Size_, podrá encontrar los tamaños estándar de bandejas de cableado.

<div align="center"><img src="graph/Revit_ElectricalSettingsCableTraySize.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. En la pestaña _Conduit Settings / Size_, podrá encontrar los tamaños estándar de los conductos eléctricos.

<div align="center"><img src="graph/Revit_ElectricalSettingsConduitSize.jpg" alt="R.DAPC" width="100%" border="0" /></div>





## 1. Localización de luminarias

En la pestaña _Systems_, encontrará el grupo de opciones _Electrical_, correspondiente a elementos de alambrado, bandejas de cableado, conductos simples, conductos paralelos, equipos electrónicos y dispositivos, entre otros.

> Tenga en cuenta que las tuberías o _Pipes_, hacen parte de los elementos de plomería redes de distribución de agua potable, y que los elementos denominados _Conduit_ pertenecen a la disciplina eléctrica.

1. 

<div align="center"><img src="graph/Revit_Wall.jpg" alt="R.DAPC" width="100%" border="0" /></div>














## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto o individualmente.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M02A04    | Opcional en grupo: desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado, con capturas de pantalla de todas las herramientas utilizadas para el dibujo en Autodesk Revit, del proyecto de la bodega diseñada en el Módulo 1 de Dibujo asistido por computadora con AutoCAD.                                                                                                                                                                                                                                                      |
| M02A04    | Opcional en grupo: en una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.


## Referencias

* https://www.autodesk.com/latam/products/bim-collaborate/overview
* https://www.graphisoft.com/es/try-archicad/explore-what-is-bim
* https://www.concrelab.com/deteccion-de-aceros
* https://revizto.com/es/programas-platformas-bim/
* [Centro - ¿Cómo generar un proyecto a través de la metodología BIM?](https://www.youtube.com/watch?v=uc1RjoR9HT0)



## Control de versiones

| Versión    | Descripción        | Autor                                       | Horas |
|------------|:-------------------|---------------------------------------------|:-----:|
| 2025.10.31 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)   |  8   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M03A03b/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M03A05/Readme.md) |
|----------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: 