# 1.2.b. Elementos básicos de dibujo / UCS y Geometrías
Keywords: Keywords: `polyline` `arc` `fillet` `chamfer` `point` `array` `mirror` `offset` `donut` `trim` `ellipse` `parabola` `hyperbola` `m01a01b`

Sistema de coordenadas de usuario - UCS. Barra de herramientas de puntos de convergencia. Comandos POLYLINE, ARC, FILLET, CHAMFER, POINT, ARRAY, MIRROR, OFFSET, DONUT, TRIM. Dibujo de elipse, parábola, hipérbola y clotoide.

<div align="center"><img src="graph/M01A01b.jpg" alt="R.DAPC" width="60%" border="0" /></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* 
* Realiza ejercicios de práctica en los que dibuja, traza y edita líneas, poli-líneas, arcos, chaflanes, cortes transversales y figuras geométricas en AutoCAD.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                                           | Descripción                                                                                                                      |
|:--------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                                       | Autodesk Autocad 3D 2026 o superior.                                                                                             |
| [:toolbox:Herramienta](https://notepad-plus-plus.org/)                                                  | Notepad++.                                                                                                                       |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel y reportes o informes, agregando al final la fecha de control documental en formato aaaammdd, p. ej. _R.HydroTools.DisenoCaucesParametros.20250528.xlsx_.


## 1. Sistema de coordenadas de usuario - UCS

El [UCS](https://help.autodesk.com/view/ACD/2026/ENU/?guid=GUID-E658D5E7-EE5C-4A06-BF34-F71CDB363A71) permite definir el origen y la orientación del actual sistema de coordenadas. Por defecto, el UCS se localiza en el origen absoluto (0,0) y sin rotación, norte o arriba indica el valor del eje Y, este o derecha indica la dirección del eje X y perpendicular a su visual en pantalla, se encuentra el eje Z. Para facilitar la creación de dibujos precisos, el UCS puede ser movido, orientado y rotado en cualquier dirección.

<div align="center"><img src="graph/AutoCAD_UCS.jpg" alt="R.DAPC" width="50%" border="0" /></div>

Para entender mejor estos conceptos, creemos 3 líneas independientes que representen un triángulo rectángulo, con lados de 50 metros en las caras ortogonales y origen absoluto en (0,0).

Abra el archivo _/file/cad/M01A01a.dwg_ creado previamente que contiene los Layers del curso DAPC y las configuraciones de unidades y visualización, guarde como _/file/cad/M01A01b.dwg_ y establezca por defecto la capa _0-Object_.

Secuencia de comandos

```
LINE
0,0
50,0
0,50
0,0

```

<div align="center"><img src="graph/AutoCAD_UCS1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

Como observa en la figura, el nodo de origen del triángulo se encuentra alineado con los ejes del UCS.











## Actividades de proyecto :triangular_ruler:

Utilizando la [plantilla suministrada](../../file/report/R.DAPC.PlantillaSoporteDesarrollo.docx), cree un documento soporte mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con los análisis y recomendaciones realizadas, convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/activity_ del repositorio de datos del proyecto; nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A00_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada estudiante o grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M01A00    | Esta actividad no requiere del desarrollo de elementos en el avance del proyecto final, los contenidos son evaluados a partir de la entrega de los ejercicios definidos en la actividad.                                                                                                                                                                                                                                                                                                                                                             |
| M01A00    | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://help.autodesk.com/view/ACD/2026/ESP
* https://help.autodesk.com/view/ACD/2026/ENU/
* [AutoCAD UCS](https://help.autodesk.com/view/ACD/2026/ENU/?guid=GUID-E658D5E7-EE5C-4A06-BF34-F71CDB363A71)


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.06.22 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |  16   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M01A01a/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/99999) | [Siguiente :arrow_forward:](../M01A02/Readme.md) |
|---------------------------------------------------|-----------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------------|

[^1]: 