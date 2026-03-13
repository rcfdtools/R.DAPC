<div align="center"><img alt="rcfdtools" src="../../file/graph/R.DAPC.svg" height="46px"></div>

# 3.3.a. Creación y manipulación de elementos en Revit - Estructural 
Keywords:  `revit` `bim` `axe` `structure` `columns` `beams` `structural-framing` `floor` `slab` `m03a03a`

Control de visualización (Visibility graphics). Láminas de ploteo (Sheets). Creación de WorkSets, Creación de un archivo local y Relinquish all mine.

<div align="center"><img src="graph/m03a03a.jpg" alt="R.DAPC" width="50%" border="0" /></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Crea ejes estructurales
* Dibuja elementos estructurales: columnas, vigas, placas, vacíos.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                               | Descripción                                         |
|:--------------------------------------------------------------------------------------------|:----------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/revit)                             | Autodesk Revit 2026 o superior (english version).   |  
| [:round_pushpin:DAPC_ProyectoCAD.dwg](../../file/cad/DAPC_ProyectoCAD_2025_02_Grupo1.dwg)   | Proyecto CAD (tomado del Grupo 01 edición 2025-01.  |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Trazado de ejes

El inicio de creación de objetos de Revit comienza con la incorporación de los ejes o la grilla de localización.

1. En el menú _Architecture_ o desde el menú _Structure_, seleccióne _Datum / Grid_ o con el comando **GR** y, trace los ejes horizontales del proyecto. Utilice como referencia los puntos centrales de las columnas visibles en el archivo CAD de referencia. Trace el eje 1 al norte y luego con las herramientas de modificación, copie múltiples veces los demás ejes horizontales. Observará que los ejes creados tienen una numeración consecutiva.

<div align="center"><img src="graph/Revit_Grid.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Ahora, trace los ejes verticales, primero el eje a la izquierda y renombre como _A_. Luego copie multiples veces hacia la derecha, observará que su nombramiento es alfabético.

<div align="center"><img src="graph/Revit_Grid1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. En la vista 3D, visualice la localización de los ejes, podrá observar que ahora el dibujo se compone de los niveles de planta y los ejes estructurales.

<div align="center"><img src="graph/Revit_3D.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## 2. Dibujo de columnas (Column)

El desarrollo de diseños eléctricos en edificaciones, requiere del conocimiento detallado de los elementos estructurales del proyecto. Lo anterior debido a que los conductos no deben atravesar elementos estructurales o los refuerzos, y también debido a que es necesario conocer los cambios de dirección en las tuberías mediante codos, la localización de acoples, cajas conectoras y tableros.

> Revit dispone de dos tipos de columnas o pilares: las arquitectónicas que funcionan solo como elementos de diseño y las estructurales que dan soporte a la construcción.
> 
> Es recomendable crear columnas en tramos independientes entre pisos para que se puedan generar los nodos de unión con las vigas en cada nivel.

1. Abra la vista de nivel _L1 - Arquitectónico_, en el menú _Structure / Structure / Column_ o con el comando **CL**, ajuste las propiedades específicas de dimensionamiento de la columna estructural, para este ejemplo utilizaremos columnas de 25 x 40 cm. En el _Edit Type_, cargue y seleccione la familia _Pilares estructurales / Hormigón / M_Hormigón-Rectangular-Pilar.rfa_ (/US/Structural Columns/Concrete/Concrete-Square-Column.rfa).

<div align="center"><img src="graph/Revit_Column.jpg" alt="R.DAPC" width="100%" border="0" /></div>

En esta categoría, existen diferentes familias de elementos y tipos, p. ej.:

<div align="center"><img src="graph/Revit_ColumnCategory.jpg" alt="R.DAPC" width="30%" border="0" /></div>

2. Seleccione la columna de _300 x 450 mm_ y de clic en el botón _Duplicate..._ renombrando como _250 x 400 mm_, luego ajuste las dimensiones `b` y `h` y de clic en _OK_.

<div align="center"><img src="graph/Revit_Column1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Agregue manualmente una columna en cualquier localización fuera del proyecto, en la parte inferior derecha obtendrá una advertencia indicando que este elemento no puede ser visualizado en la vista arquitectónica de planta. Visualmente en la vista 3D, podrá ver la columna.

<div align="center"><img src="graph/Revit_Column2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Para la visualización en planta de los elementos estructurales, en el menú _View / Plan Views / Structural Plan_, cree las vistas estructurales _L3_ y _L4_.

<div align="center"><img src="graph/Revit_StructuralPlan.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. En el _Project Browser_, renombre las vistas estructurales cómo _L3 - Estructural_ y _L4 - Estructural_. y abra la vista estructural _L1_. En la parte inferior cambie el estilo de visualización a sombreado, podrá observar la columna creada.

<div align="center"><img src="graph/Revit_Column3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. Borre la columna creada y vuelva a iniciar la creación de columnas estructurales. En el menú _Modify | Place Structural Column_, seleccione la opción _Múltiple / At Grids_ 

<div align="center"><img src="graph/Revit_Column4.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Verifique que todos los ejes requeridos hayan sido ingresados.

7. Seleccione todos los ejes estructurales del proyecto y de clic en _Finish_. Observará que en todas las intersecciones de ejes se han creado automáticamente columnas.

<div align="center"><img src="graph/Revit_Column5.jpg" alt="R.DAPC" width="100%" border="0" /></div>

8. Abra la vista 3D, observará que todas las columnas se encuentran debajo del nivel L1 a una paralela proyectada de -2.5 metros. 

<div align="center"><img src="graph/Revit_Column6.jpg" alt="R.DAPC" width="100%" border="0" /></div>

9. Seleccione una de las columnas y dando clic derecho, seleccione todas las instancias de proyecto de este elemento, luego establezca 0.00 m en el valor _Base Offset_ y defina como nivel superior _L2_. Esto ajustará la localización de las columnas para que se dibujen entre los niveles _L1_ y _L2_.

<div align="center"><img src="graph/Revit_Column7.jpg" alt="R.DAPC" width="100%" border="0" /></div>

10. En la vista de planta estructural _L1_, elimine todas las columnas internas de la bodega y mantenga solo las perimetrales. Utilice la tecla <kbd>Ctrl</kbd> para realizar selecciones de múltiples objetos. Visualice en 3D.

<div align="center"><img src="graph/Revit_Column8.jpg" alt="R.DAPC" width="100%" border="0" /></div>

11. En la zona del mezanine, agregue las dos columnas intermedias faltantes.

<div align="center"><img src="graph/Revit_Column9.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Utilice la barra espaciadora cuando necesite crear o rotar 90 grados una columna seleccionada o una columna que esté creando.


## 3. Dibujo de vigas (Beam - Structural Framing)

Para realizar la conexión horizontal entre las columnas, es necesaria la incorporación de las vigas estructurales. Para el ejemplo de clase, utilizaremos vigas de 25 cm de alto por 40 cm de alto.

1. En el menú _Structure / Structure / Beam_ o el comando **BM**, seleccione la opción _Edit Type_ y cargue la familia _Armazón estructural / Hormigón / M_Hormigón-Viga rectangular.rfa_ (/US/Structural Framing/Concrete/Concrete-Rectangular Beam.rfa).

<div align="center"><img src="graph/Revit_Beam.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Seleccione la viga de _300 x 600mm_ y cree un duplicado, ajuste el rótulo y tamaño a 250 x 400mm.

<div align="center"><img src="graph/Revit_Beam1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Cree las vigas usando la herramienta de _Modify | Place Beam / Multiple / On Grids_, seleccionando todos los ejes estructurales del proyecto. Observará que se han creado vigas en toda la planta de nivel _L1_.

<div align="center"><img src="graph/Revit_Beam2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

Visualice en 3D.

<div align="center"><img src="graph/Revit_Beam3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Acérquese a los extremos de la fachada frontal y posterior, podrá observar que las vigas se encuentran centradas con respecto a la columna.

<div align="center"><img src="graph/Revit_Beam4.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. Seleccione y filtre las vigas de la cara frontal

<div align="center"><img src="graph/Revit_Filter.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. Utilice la herramienta _Modify / Align_ o el comando **AL**, para alinear las vigas al extremo externo de la fachada. Repita este mismo procedimiento en la fachada posterior.

<div align="center"><img src="graph/Revit_Align.jpg" alt="R.DAPC" width="100%" border="0" /></div>

7. Cree manualmente una viga de amarre entre las columnas internas del mezanine.

<div align="center"><img src="graph/Revit_Beam5.jpg" alt="R.DAPC" width="100%" border="0" /></div>

8. Siga el procedimiento anterior para crear las vigas del nivel _L2_, edite y elimine las vigas internas, las vigas en las puertas de entrada y salida principal de la bodega manteniendo las vigas del mezanine. Recuerde alinear las vigas frontales y posterior de bodega y mezanine con las columnas externas. 

<div align="center"><img src="graph/Revit_Beam6.jpg" alt="R.DAPC" width="100%" border="0" /></div>

9. Para el proyecto, cree columnas entre los niveles _L1-L2_ y _L2-L3_ y las vigas en los niveles _L3_ y _L4_. 

<div align="center"><img src="graph/Revit_Beam7.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## 4. Dibujo de placas o losas (Floor or slabs)

Para el desarrollo del proyecto, es requerida la placa contrapiso reforzada en toda la superficie de la bodega y la placa del mezanine.

1. Abra la vista arquitectónica _L1_, luego desde el menú _Structure / Structure / Floor / Floor: Structural_ o con el comando **SB**, seleccione la familia de suelo _Genérico de 300 mm_ y de clic en _Edit Type_.

> Tenga en cuenta que el modo de creación de losas seguirá activo hasta que en el menú _Modify_ se acepte en el grupo _Mode_ la creación o cancelación de la creación.

<div align="center"><img src="graph/Revit_Floor.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. En el editor de tipos, de clic en el botón _Duplicate_ nombrando como _Genérico 400 mm_, edite las propiedades de la placa especificando el grosor requerido. Podrá observar que este tipo de placa no tiene ningún tipo de recubrimiento superior o aislamiento inferior. En material, especifique _Hormigón, moldeado in situ, gris_.  Opcionalmente, puede utilizar un tipo de losa que contenga las diferentes capas requeridas, incluidos morteros, recubrimientos y aislamientos. 

<div align="center"><img src="graph/Revit_Floor1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Utilizando las herramientas de dibujo, cree líneas de contorno o un rectángulo alrededor del límite externo de la bodega y de clic en el botón Modify / Aceptar. Visualice en 3D.

<div align="center"><img src="graph/Revit_Floor2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Repita el procedimiento anterior creando una placa de 20 cm de espesor en el mezanine en el nivel arquitectónico _L2_ dibujando un área interna que permita dejar el vacío de la escalera.

<div align="center"><img src="graph/Revit_Floor3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. En el proceso de creación de la losa en el nivel L1, Revit prioriza la generación de la losa sobre la generación de la viga. Ajuste el espesor de la placa a 0.35 metros. Para mantener la prioridad de las vigas sobre la losa, en el menú _Modify / Geometry / Switch Join Order_, primero, seleccione la losa y luego manteniendo oprimida la tecla <kbd>Ctrl</kbd>, seleccione las vigas para cambiar su orden. Al finalizar este proceso podrá observar que la losa ha sido ajustada solamente a los espacios entre vanos o vacíos de vigas.

> Para facilitar el proceso de selección, seleccione en la vista 3D todos los elementos contenidos dentro del nivel L1 y luego aisle estos elementos utilizando la herramienta _Temporary Hide/Isolate_ (icono de lentes) que se encuentra en la parte inferior del view port principal de Revit. 

<div align="center"><img src="graph/Revit_Floor4.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. Repita el procedimiento de priorización para la placa del mezanine teniendo en cuenta las vigas y las columnas estructurales.

<div align="center"><img src="graph/Revit_Floor5.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## Actividades de proyecto (grupal opcional no calificable, individual requerido) :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto o individualmente.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:----------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M03A03a   | Individual: los numerales vistos en esta actividad son evaluados individualmente a través de un quiz de conocimiento y habilidad.                                                                                                                                                                                                                                                                                                                                                                                                                              |
| M03A03a   | En grupo: desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado, con capturas de pantalla de todas las herramientas utilizadas para el dibujo en Autodesk Revit, del proyecto de la bodega diseñada en el Módulo 1 de Dibujo asistido por computadora con AutoCAD.                                                                                                                                                                                                                                                      |
| M03A03a   | En grupo: en una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.


## Referencias

* https://help.autodesk.com/view/RVT/2026/ESP/
* https://help.autodesk.com/view/RVT/2026/ESP/?guid=GUID-7F8CFFA4-22CB-43CA-84EA-332A27A0A0F0
* [Relinquish Ownership without Synchronize with Central](https://help.autodesk.com/view/RVT/2015/ENU/?guid=GUID-CB878234-4510-457F-838F-408A68EC60B3)


## Control de versiones

| Versión    | Descripción        | Autor                                       | Horas |
|------------|:-------------------|---------------------------------------------|:-----:|
| 2025.10.09 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)   |  12   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [◄ Anterior](../M03A02/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente ►](../M03A03b/Readme.md) |
|--------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: 