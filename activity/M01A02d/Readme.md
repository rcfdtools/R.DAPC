# 1.2.d. Dibujo en 3D
Keywords: `realigment`  `m01a2d`

Creación de dibujos y sólidos tridimensionales.

<div align="center"><img src="graph/M01A00.jpg" alt="R.DAPC" width="60%" border="0" /></div>

<div align="center"><img src="graph/Gravity_anomalies_on_Earth.jpg" alt="R.DAPC" width="60%" border="0" /><sub><br>Tomado de: <a href="Public Domain, https://commons.wikimedia.org/w/index.php?curid=479365">https://commons.wikimedia.org</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* 


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                                           | Descripción                                                                                                                      |
|:--------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                                       | Autodesk Autocad 3D 2026 o superior.                                                                                             |
| [:toolbox:Herramienta](https://www.autodesk.com/products/revit)                                         | Autodesk Revit 2026 o superior.                                                                                                  |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz)                      | Microsoft Excel 365.                                                                                                             |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/word?market=bz)                       | Microsoft Word 365.                                                                                                              |
| [:toolbox:Herramienta](https://notepad-plus-plus.org/)                                                  | Notepad++.                                                                                                                       |
| [:toolbox:Herramienta](https://qgis.org/)                                                               | QGIS 3.42 o superior.                                                                                                            |
| [:notebook:Lectura](R.HydroTools.FactorAtenuacionPrecipitacionFa.pdf)                                   | Factor de atenuación de la precipitación por área simultánea.                                                                    |
| [:date:R.HydroTools.FactorAtenuacion PrecipitacionFa.xlsx](FactorAtenuacionPrecipitacionFa) | Libro de cálculo para la estimación del Fa - Factor de atenuación de la precipitación máxima por área simultánea en una cuenca.  |
| [:round_pushpin:R.DAPC.NodoValle.shp](../../file/shp/R.DAPC.NodoValle.zip)                              | Capa de nodos eje valle recto (creada en actividad anterior).                                                                    |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel y reportes o informes, agregando al final la fecha de control documental en formato aaaammdd, p. ej. _R.HydroTools.DisenoCaucesParametros.20250528.xlsx_.


## 0. Configuración preliminar 

Antes de iniciar a crear elementos 3D a partir de elementos 2D, es recomendable configurar la eliminación de objetos fuente de referencia, el comando **[DELOBJ](https://help.autodesk.com/view/ACD/2025/ENU/?guid=GUID-CB64587F-611E-441E-AB07-14B415BF535F)** permite establecer diferentes comportamientos de esta variable de sistema, p. ej.:

* 3: elimina el objeto inicial luego de la extrusión.
* 0: se mantiene el objeto original.
* -1: AutoCAD solicita si se elimina o no el objeto original.


Para el dibujo 3D en AutoCAD, es necesario activar los siguientes asistentes de dibujo:

* <img src="../../file/graph/AutoCAD_ToolDynamicInput.jpg" alt="R.DAPC" width="28" border="0" /> Dynamic Input, **DYNMODE**.
* <img src="../../file/graph/AutoCAD_ToolPolarTracking.jpg" alt="R.DAPC" width="28" border="0" /> Polar Tracking, <kbd>F10</kbd> para ángulos de 30 grados.
* <img src="../../file/graph/AutoCAD_ToolObjectSnapTracking.jpg" alt="R.DAPC" width="28" border="0" /> Object Snap Tracking, <kbd>F11</kbd>, **AUTOSNAP**.
* <img src="../../file/graph/AutoCAD_Tool2DObjectSnap.jpg" alt="R.DAPC" width="28" border="0" /> 2D Object Snap, <kbd>F3</kbd>, **OSNAP** para Endpoint, Midpoint, Center, Quadrant, Intersection y Tangent.
* <img src="../../file/graph/AutoCAD_Tool3DObjectSnap.jpg" alt="R.DAPC" width="28" border="0" /> 3D Object Snap, <kbd>F4</kbd>, **3DOSNAP** para Vertex, Midpoint on edge, Center of face y Perpendicular.



## 1. Modelado de geometrías básicas

De forma nativa, AutoCAD permite la construcción de las siguientes formas geométricas básicas:

* Cube: forma cúbica o poliedro.
* Cylinder: cilindro.
* Cone: cono.
* Sphere: esfera.
* Pyramid: pirámide.
* Wedge: cuña triangular.
* Torus: toroide o donut.



## 2. Extrusión

En AutoCAD, la extrusión es el proceso de convertir objetos 2D en objetos 3D al alargarlos o extruirlos en una dirección específica. Básicamente, se toma una forma plana y se le da profundidad, creando un sólido o una superficie 3D. La extrusión es una herramienta fundamental para transformar dibujos planos en modelos tridimensionales. Dependiendo de si el objeto 2D es cerrado o abierto, la extrusión puede crear un sólido (si el objeto es cerrado, como un círculo o un cuadrado) o una superficie (si el objeto es abierto, como una línea o un arco). La extrusión puede realizarse de manera ortogonal al plano del objeto original o en una dirección específica definida por el usuario. También puede realizarse a lo largo de una trayectoria definida. Además de la dirección, se puede especificar un ángulo de inclinación para la extrusión, lo que permite crear objetos con forma de cono o pirámide. El comando principal para realizar la extrusión en AutoCAD es **EXTRUDE**. 



Para convertir objetos 2D en objetos 3D, podémos utilizar como insumos:

* Líneas: crea una superficie independiente para cada línea fuente.
* Polígonos: crea un sólido.
* Poli-líneas abiertas: crea una superficie contínua sobre toda la línea.
* Poli-líneas cerradas: crea un sólido

Tenga en cuenta que el comando **EXTRUDE** crea una superficie o un volúmen dependiente del objeto seleccionado, sin embargo, desde el command podrá seleccionar **MO**do y definir si va a crear únicamente superficies.

Otras opciones específicas de este comando, permiten:

* Taper angle: ángulo de inclinación con respecto al objeto, valores positivos crean elementos hacia adentro, valores negativos hacia afuera.
* Path: por trayectoria, para lo cual es necesario que los dos objetos no estén en el mismo plano.
* Direction: extrusión con inclinación.
* Expression: en función de parámetros definidos sobre un objeto.

> Opcionalmente, podrá extruir las caras de un sólido, para ello se selecciona primero el sólido, luego con la tecla <kbd>ctrl</kbd> se selecciona la cara o caras a extruir.


## THICKEN





## Solid Editing / SHELL

Permite convertir un sólido en un objeto hueco. Puede ser ejecutado a través del comando **SOLIDEDIT** / **B**ody / **S**hell, o desde _Home / Solid Editing / Shell_, es necesario indicar las caras a remover y el espesor de las paredes (valores positivos generan espesores hacia adentro del sólido, valores negativos hacia afuera).







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
* [AutoCAD para todos / Comando EXTRUDE y objetos paramétricos](https://www.youtube.com/watch?v=6h1mgMekpBw&)


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