# 1.2. Elementos básicos de dibujo
Keywords: `polyline` `arc` `fillet` `chamfer` `point` `array` `mirror` `offset` `donut` `trim` `ellipse` `parabola` `hyperbola`  `m01a01`

Capas o Layers. Sistema de coordenadas de usuario - UCS. Barra de herramientas de puntos de convergencia. Comandos POLYLINE, ARC, FILLET, CHAMFER, POINT, ARRAY, MIRROR, OFFSET, DONUT, TRIM. Dibujo de la elipse, la parábola y la hipérbola.

<div align="center"><img src="graph/M01A01.jpg" alt="R.DAPC" width="60%" border="0" /></div>


## Objetivos

Al finalizar esta semana el estudiante:
* Realiza ejercicios de práctica en los que dibuja, traza y edita líneas, poli-líneas, arcos, chaflanes, cortes transversales y figuras geométricas en AutoCAD.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                                           | Descripción                                                                                                                      |
|:--------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                                       | Autodesk Autocad 3D 2026 o superior.                                                                                             |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz)                      | Microsoft Excel 365.                                                                                                             |
| [:toolbox:Herramienta](https://notepad-plus-plus.org/)                                                  | Notepad++.                                                                                                                       |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel y reportes o informes, agregando al final la fecha de control documental en formato aaaammdd, p. ej. _R.HydroTools.DisenoCaucesParametros.20250528.xlsx_.


## 1. Creación y manejo de capas (layers)

En AutoCAD, una capa (o layer) es una herramienta de organización que permite agrupar objetos por función o tipo, facilitando la gestión y visualización de dibujos complejos. Piense en capas como hojas transparentes o papeles calcantes donde cada capa contiene un conjunto específico de elementos. Esto ayuda a controlar la visibilidad, el color, el tipo de línea y otras propiedades de los objetos de manera eficiente. Por defecto, todo dibujo nuevo de AutoCAD es creado incluyendo una capa denominada cero (0).

La creación de capas puede obedecer a nombres propios con los que el usuario está familiarizado (p. ej., Dimension, Objeto, Eje, Lote, Circuito, Achurado, Contorno, Edificio, Instalacion), sin embargo, para la creación profesional de proyectos, se recomienda seguir estándares de creación y nombramiento de capas.

Para este ejercicio, utilizaremos como referencia las especificaciones del [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf) del [National Institute of Building Sciences](https://nibs.org/), en los que se encuentran las codificaciones para nombres de elementos.

### Prefijos por disciplina

Para la designación de disciplinas, utilizaremos los siguientes prefijos:

| Prefijo  | Disciplina (en)            | Disciplina (es)                |
|:--------:|:---------------------------|:-------------------------------|
|    A     | Architectural              | Arquitectura                   |
|    B     | Geotechnical               | Geotecnia                      |
|    C     | Civil                      | Civil                          |
|    D     | Process                    | Procesos                       |
|    E     | Electrical                 | Electricidad                   |
|    F     | Fire Protection            | Protección contra incendios    |
|    G     | General                    | General                        |
|    H     | Hazardous Materials        | Materiales peligrosos          |
|    I     | Interiors                  | Interiores                     |
|    L     | Landscape                  | Paisajismo                     |
|    M     | Mechanical                 | Mecánica                       |
|    O     | Operations                 | Operaciones                    |
|    P     | Plumbing                   | Fontanería                     |
|    Q     | Equipment                  | Equipos                        |
|    R     | Resource                   | Recursos                       |
|    S     | Structural                 | Estructura                     |
|    T     | Telecommunications         | Telecomunicaciones             |
|    V     | Survey / Mapping           | Topografía / Cartografía       |
|    W     | Distributed Energy         | Energía distribuida            |
|    X     | Other Disciplines          | Otras disciplinas              |
|    Z     | Contractor / Shop Drawings | Contratista / Planos de taller |


###















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
* [Draw parabola in AutoCAD](https://www.youtube.com/watch?v=h8pjymm-A5I)


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.06.22 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |  16   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M01A00/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/99999) | [Siguiente :arrow_forward:](../M01A02/Readme.md) |
|--------------------------------------------------|-----------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------------|

[^1]: 