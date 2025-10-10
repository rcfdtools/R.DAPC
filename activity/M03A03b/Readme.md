# 3.3.b. Creación y manipulación de elementos en Revit - Arquitectónico
Keywords:  `revit` `bim` `wall` `stair` `roof` `door` `window` `m03a03b`

Creación de vista de plantas (Plan views), Niveles de fondo (Underlay). Control de visualización (Visibility graphics). Láminas de ploteo (Sheets). Creación de WorkSets, Creación de un archivo local y Relinquish all mine.

<div align="center"><img src="graph/m03a03b.jpg" alt="R.DAPC" width="50%" border="0" /></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Crea ejes
* Dibuja elementos arquitectónicos: muros, escaleras, techos, puertas, ventanas.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                               | Descripción                                         |
|:--------------------------------------------------------------------------------------------|:----------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/revit)                             | Autodesk Revit 2026 o superior (english version).   |  
| [:round_pushpin:DAPC_ProyectoCAD.dwg](../../file/cad/DAPC_ProyectoCAD_2025_02_Grupo1.dwg)   | Proyecto CAD (tomado del Grupo 01 edición 2025-01.  |

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Dibujo de muros (Wall)

Dependiendo del sistema constructivo, los muros pueden ser arquitectónicos o estructurales. Para el desarrollo del proyecto, hemos utilizado el sistema de pórticos estructurales, por lo cual, el dibujo de los muros será arquitectónico.

1. En la vista Arquitectónica _L1_ y desde el menú _Architecture / Build / Wall / Wall: Architectural_, seleccione la familia _Basic Wall - Genérico 150 mm_, de clic en _Edit Type_ y cree una copia con el nombre _Genérico 150 mm DAPC_. Edite las propiedades incluyendo un patron de ladrillos de albañilería y dibuje uno de los muros. 

<div align="center"><img src="graph/Revit_Wall.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Realice una visualización 3D y ajuste la altura del muro a 3.6 metros para que se empalme con la altura de las vigas estructurales. 

> Es recomendable dibujar cada tramo de muro entre columnas de forma independiente.
> 
> Utilice la barra espaciadora para cambiar el tipo de alineamiento.

<div align="center"><img src="graph/Revit_Wall1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Dibuje todos los demás muros de forma contínua en la planta arquitectónica _L1_, incluso en las zonas donde se encuentran los vanos de puertas y ventanas.

<div align="center"><img src="graph/Revit_Wall2.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_Wall3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. En la zonas de los vanos de las puertas principales de la bodega, extienda la altura hasta 7.6 metros.

<div align="center"><img src="graph/Revit_Wall4.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. Repita el procedimiento anterior de creación para los muros de los niveles arquitectónicos _L2_ a _L4_. No incluya muros sobre la placa del mezanine al interior de la bodega.

<div align="center"><img src="graph/Revit_Wall5.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## 2. Dibujo de puertas (Door)

La categoría de puertas depende de la categoría de muros, esto quiere decir que para crear una puerta debe existir un muro anfitrión, incluso para puertas que abarcan el ancho completo del muro. Crear puertas de:

* Acceso principal a oficina: 1200 x 2100mm hoja sencilla.
* Internas en oficina y baños: 800 x 2100mm hoja sencilla.
* Entradas principales bodega: 6000 x 7000mm hoja doble. 

1. En la vista Arquitectónica _L1_ y desde el menú _Architecture / Build / Door, seleccione o cargue la puerta de paso simple de páneles planos de 750 x 2000mm, de clic en _Edit Type_ y duplicando cree puertas de 80 cm y 120 cm para el acceso principal a la zona de oficina, zona interna de oficinas y baños. 

<div align="center">Acceso principal a oficina: 1200 x 2100mm<br><img src="graph/Revit_Door.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center">Internas en oficina y baños: 800 x 2100mm<br><img src="graph/Revit_Door1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Dibuje las puertas de una hoja sobre los muros correspondientes y realice una visualización 3D.

<div align="center"><img src="graph/Revit_Door2.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_Door3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Cree puertas de dos hojas de 6000 x 7000mm para las entradas principales de la bodega.

<div align="center"><img src="graph/Revit_Door4.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_Door5.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## 3. Dibujo de ventanas (Window)

1. En la vista Arquitectónica _L1_ y desde el menú _Architecture / Build / Window, seleccione o cargue la familia _/Spanish/Ventanas/Ventana simple fija con cubrejuntas interior.rfa_, de clic en _Edit Type_ y duplique para crear ventanas de 5 x 3 metros y 1.8 x 2 metros. Dibuje las ventanas principales a partir de los niveles _L2_ y las secundarias en la zona de oficinas.

<div align="center"><img src="graph/Revit_Window0.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_Window.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_Window1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Para la zona de baños, cree ventanas de hoja deslizante _/Spanish/Ventanas/Ventana corredera de 2 hojas 2.rfa_ de 0.6 x 1.2 metros y localice a 2.6 metros de altura.

<div align="center"><img src="graph/Revit_Window2.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_Window3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Para visualizar correctamente la localización de las ventanas en las vistas de planta, p. ej., para la vista arquitectónica _L1_, en el panel de propiedades _Floor Plan_, de clic en _Extents / View Range_ y ajuste el valor de la altura del plano de elevación, p. ej., a 2 metros.

<div align="center"><img src="graph/Revit_ViewRange.jpg" alt="R.DAPC" width="100%" border="0" /></div>

También, puede mantener el valor por defecto establecido a 1.2 metros y crear regiones de visualización para las ventanas altas que se encuentran en la zona de los baños, para ello en el menú _View / Create / Plan Views / Plan Region_ cree un rectángulo y desde sus propiedades establezca el _Cut plane L1_ en 2.6 metros.   

<div align="center"><img src="graph/Revit_PlanRegion.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_PlanRegion1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

Para ocultar el recuadro de la vista, puede dar clic derecho el rectángulo y con clic derecho seleccionar _Hide in View_. Para visualizar los objetos ocultos, en la barra de herramientas inferior de _View Port_ principal, puede dar clic en el botón _Reveal Hidden Elements_ (ícono de bombilla). 

<div align="center"><img src="graph/Revit_RevealHiddenElements.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Para realizar la visualización 3D solo de los elementos correspondientes a la primera planta arquitectónica, en el _Project Browser / Coordination / 3D Views_, duplique la vista 3D existente y renombre como _3D L1_, luego, de clic en la esquina central del _View Cube_ localizado en la parte superior derecha del _View Port_ principal y seleccione la opción _Orient to View / Floor Plans / Floor Plan: L1 - Arquitectónico_. 

<div align="center"><img src="graph/Revit_3DFloorPlan.jpg" alt="R.DAPC" width="100%" border="0" /></div>












## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto o individualmente.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M03A03b   | Individual: los numerales vistos en esta actividad son evaluados individualmente a través de un quiz de conocimiento y habilidad.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| M03A03b   | Obligatorio en grupo: desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas.                                                                                                                                                                                                                                                                                                                                                                                       |
| M03A03b   | Obligatorio en grupo: en una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.


## Referencias

* https://help.autodesk.com/view/RVT/2026/ESP/
* https://help.autodesk.com/view/RVT/2026/ESP/?guid=GUID-7F8CFFA4-22CB-43CA-84EA-332A27A0A0F0


## Control de versiones

| Versión    | Descripción        | Autor                                       | Horas |
|------------|:-------------------|---------------------------------------------|:-----:|
| 2025.10.10 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)   |  12   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M03A02/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M03A03b/Readme.md) |
|--------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: 