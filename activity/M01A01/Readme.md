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

La creación de capas puede obedecer a nombres propios con los que el usuario está familiarizado (p. ej., Dimension, Objeto, Eje, Lote, Circuito, Achurado, Contorno, Edificio, Instalacion), sin embargo, para la creación profesional de proyectos, se recomienda seguir estándares de creación y nombramiento de capas, como los establecidos en la norma internacional estándar [ISO 13567](https://www.iso.org/standard/70181.html).

Para este ejercicio, utilizaremos como referencia las especificaciones del [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf) del [National Institute of Building Sciences](https://nibs.org/), en los que se encuentran las codificaciones para nombres de elementos.

### Designación de prefijos por disciplina - Nivel 1

Para la designación de disciplinas, utilizaremos los siguientes prefijos:

<div align="center">

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

</div>

Por ejemplo: **A**, representa la disciplina de arquitectura.


### Designación de prefijos por disciplina - Nivel 2

El nivel dos, es un caracter opcional que se coloca a la derecha del caracter de nivel 1, y es usado para definir la característica de las disciplinas, por ejemplo, para arquitectura, civil y electricidad:

| Designador | Descripción (en)              | Descripción (es)               |
|:----------:|:------------------------------|:-------------------------------|
|   **A**    | **Architectural**             | **Arquitectura**               |
|     AD     | Architectural Demolition      | Demolición arquitectónica      |
|     AE     | Architectural Elements        | Elementos arquitectónicos      |
|     AF     | Architectural Finishes        | Acabados arquitectónicos       |
|     AG     | Architectural Graphics        | Gráficos arquitectónicos       |
|     AI     | Architectural Interiors       | Interiores arquitectónicos     |
|     AJ     | User Defined                  | Definido por el usuario        |
|     AK     | User Defined                  | Definido por el usuario        |
|     AS     | Architectural Site            | Sitio arquitectónico           |
|  **C**     | **Civil**                     | **Civil**                      |
|     CD     | Civil Demolition              | Demolición Civil               |
|     CG     | Civil Grading                 | Nivelación Civil               |
|     CI     | Civil Improvements            | Mejoras Civiles                |
|     CJ     | User Defined                  | Definido por el Usuario        |
|     CK     | User Defined                  | Definido por el Usuario        |
|     CN     | Civil Nodes                   | Nudos Civiles                  |
|     CP     | Civil Paving                  | Pavimentación Civil            |
|     CS     | Civil Site                    | Sitio Civil                    |
|     CT     | Civil Transportation          | Transporte Civil               |
|     CU     | Civil Utilities               | Servicios Civiles              |
|   **E**    | **Electrical**                | **Electricidad**               |
|     ED     | Electrical Demolition         | Demolición eléctrica           |
|     EI     | Electrical Instrumentation    | Instrumentación eléctrica      |
|     EJ     | User Defined                  | Definido por el usuario        |
|     EK     | User Defined                  | Definido por el usuario        |
|     EL     | Electrical Lighting           | Iluminación eléctrica          |
|     EP     | Electrical Power              | Energía eléctrica              |
|     ES     | Electrical Site               | Sitio eléctrico                |
|     ET     | Electrical Telecommunications | Telecomunicaciones eléctricas  |
|     EY     | Electrical Auxiliary Systems  | Sistemas auxiliares eléctricos |

Por ejemplo: **AD**, representa una demolición arquitectónica.


### Grupo mayor y grupo menor

Seguido al nivel dos y separando con un guion, se definen los nombres de los grupos mayores contenidos en cada disciplina, se debe utilizar como máximo 4 caracteres para su abreviación y se pueden incluir subgrupos de la misma longitud.

Por ejemplo: **A-WALL**, representa muros arquitectónicos.

El uso de grupos menores es opcional y se pueden definir un segundo subnivel.

Por ejemplo: **A-WALL-FULL**, representa muros arquitectónicos completos de piso a techo y **A-WALL-FULL-TEXT** representa los textos de anotación de los muros arquitectónicos completos de piso a techo.

### Estado o fase

Un último caracter, permite establecer el estado del elemento que se está representando en la capa.

|  Estado  | Descripción (en)     | Descripción (es)         |
|:--------:|:---------------------|:-------------------------|
|    A     | Abandoned            | Abandonado               |
|    D     | Existing to demolish | Existente para demoler   |
|    E     | Existing to remain   | Existente para conservar |
|    ß     | Future work          | Trabajo futuro           |
|    M     | Items to be moved    | Artículos a trasladar    |
|    N     | New work             | Trabajo nuevo            |
|    T     | Temporary work       | Trabajo temporal         |
|    X     | Not in contract      | Sin contrato             |
|   1-9    | Phase numbers        | Número de fase           |

Por ejemplo: **A-WALL-FULL-TEXT-N** representa los textos de anotación de los muros arquitectónicos completos de piso a techo que han sido proyectados a futuro.












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
* https://blog.draftsperson.net/iso-13567-cad-layer-standard/


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