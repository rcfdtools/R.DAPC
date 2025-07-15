# 1.5. Layout e Impresión
Keywords: `layout`  `m01a05`

Creación de plantillas. Espacio papel y espacio modelo. Asignación de escala. Configuración de impresora y trazadores (plotter). Configuración del trazado. Impresión. Comandos MVSETUP, PRINT, ZOOM, SCALE.                                           

<div align="center"><img src="graph/M01A05.jpg" alt="R.DAPC" width="60%" border="0" /></div>



## Objetivos

Al finalizar esta actividad, el estudiante:

* Diferencia y configura apropiadamente los parámetros para la impresión de planos realizados en CAD.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                      | Descripción                                                                                                    |
|:-----------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                  | Autodesk Autocad 3D 2026 o superior.                                                                           |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz) | Microsoft Excel 365.                                                                                           |
| [:date:DAPC_TamanoPapelNTC1687.xlsx](DAPC_TamanoPapelNTC1687.xlsx)                 | Libro de cálculo con tamaños de papel estándar definidos en norma NTC-1678 y dimensionador de rótulos básicos. |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Formatos de impresión [^1]

Dependiendo del tipo y tamaño del dibujo se debe utilizar un formato de impresión y unos grosores en las líneas de dibujo que facilite la comprensión y que nos aporte los datos necesarios sobre la pieza que está representada en el dibujo. Además, para favorecer la estandarización, los formatos y las líneas estarán normalizados.

Los tamaños, formatos de papel, están regulados por la norma de estandarización ISO y que proviene de la alemana DIN. De esta forma, los formatos de papel se reconocen por su norma, esto es la ISO A4 (DIN A4) es una hoja de papel que mide 210×297 mm. Este formato es el más utilizado para dibujos pequeños.

Para identificación de los tamaños debemos tener en cuenta que cada formato de mayor orden, es la mitad del anterior, es decir, ISO A5 (DIN A5) es la mitad de la ISO A4 (DIN A4). De la misma forma, la ISO A3 (DIN A3) es el doble de la ISO A4 (DIN A4). Al conjunto de estos tamaños se le llama serie A. 

De acuerdo a la Norma Técnica Colombiana NTC-1687 del 2003 de Dibujo técnico para formato y plegado de planos técnicos, los tamaños estándar de hoja, tamaño de rótulo y márgenes en milímetros son:

<div align="center"><img src="graph/NTC1687_Formato.jpg" alt="R.DAPC" width="70%" border="0" /></div>

La disposición de la caja de rotulado, será la parte inferior de la hoja de impresión en el caso del formato ISO A4, y en la parte inferior derecha para el resto de formatos.

> La altura del rótulo depende del tipo de formato, puede variar, p. ej., entre los 35 mm y los 51 mm.

Para el desarrollo del curso DAPC, utilizaremos como referencia los siguientes formatos:

<div align="center">Rótulo papel A4 - Formato vertical<br><img src="graph/NTC1687_RotuloVertical.jpg" alt="R.DAPC" width="90%" border="0" /></div>
<div align="center">Rótulo papel A4 - Formato horizontal<br><img src="graph/NTC1687_RotuloHorizontal.jpg" alt="R.DAPC" width="90%" border="0" /></div>

1. En AutoCAD, cree una copia del archivo _/file/cad/M01A04.dwg_ que contiene la configuración de Layers y dimensiones establecida en actividades anteriores, y guarde como _/file/cad/M01A05.dwg_. Con el comando **UNITS**, verifique que las unidades de dibujo han sido establecidas en milímetros. Conserve como ejemplo la figura acotada y el rótulo que contiene los campos de área y perímetro.

<div align="center"><img src="graph/AutoCAD_Layout1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Desde la barra de estado, elimine los Layout existentes en el dibujo y cree uno nuevo con el nombre _A4-Vertical_. Elimine la ventana a la vista del modelo y desde las propiedades del _Layout_ creado y la opción _Page Setup Manager_, establezca las siguientes especificaciones:

* Printer / Plotter: DWG To PDF.pc3.
* Page size: ISO full bleed A4 (210.00 x 297.00 MM). Este tipo de papel le permitirá tener márgenes reducidas.
* Plot scale: 1 unit = 1 mm.
* Plot style table: monochrome.pctb.
* Drawing orientation: Portrait.

<div align="center"><img src="graph/AutoCAD_Layout2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

3. Utilizando las herramientas de dibujo y sobre la capa cero (0), cree un polígono de 185 x 287 milímetros de ancho y alto con orígen en la coordenada absoluta (20,5). Estos valores ya contienen las márgenes de reborde definidas en la norma NTC-1687. Observará que el recuadro ha sido creado centrado horizontalmente y a la margen izquierda requerida de 20 milímetros.

> El orígen de coordenadas absoluto del espacio de papel corresponde a la esquina inferior izquierda y el punto de orígen del recuadro del marco de impresión, debe ser localizado a partir de las márgenes.

<div align="center"><img src="graph/AutoCAD_Layout3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Con el comando **OFFSET** o con el comando **COPY** / **A**rray, dibuje líneas paralelas a la línea inferior, utilizando como referencia las dimensiones establecidas para el rótulo vertical.

<div align="center"><img src="graph/AutoCAD_Layout4.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. Utilizando el comando **TRIM**, recorte las líneas internas que delimitan las zonas del rótulo. Luego incluya los textos de una línea requeridos para cada elemento, utilice tamaño de 1.5 mm para textos secundarios y 2 mm para los principales. Desde la ventana de propiedades, ajuste los grosores de las líneas internas a 0.18 mm y externa del marco principal a 0.4 mm.

> Para garantizar que todos los rótulos se ubiquen a la misma distancia de los bordes, cree un texto con orígen en la coordenada absoluta (22.25,7.25).

<div align="center"><img src="graph/AutoCAD_Layout5.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. Copie y pegue el array de texto utilizando como referencia los anchos de las columnas establecidas.

<div align="center"><img src="graph/AutoCAD_Layout6.jpg" alt="R.DAPC" width="100%" border="0" /></div>

7. Con el comando **EXPLODE**, separe los arrays, elimine y modifique los textos requeridos.

<div align="center"><img src="graph/AutoCAD_Layout7.jpg" alt="R.DAPC" width="100%" border="0" /></div>

8. Para la creación de los campos de atributos que el dibujante diligenciará durante el proceso de elaboración del plano, desde el menú _Insert / Block Definition / Define Attributes_, cree uno a uno los atributos requeridos y localícelos por encajado en los puntos de inserción de los textos usados como referencia a partir del array. Utilice texto multilínea para `ID-EMPRESA` e `ID-TITULO`.

> Para que al insertar el rótulo este solicite los atributos del rótulo, al menos uno de los atributos definidos no sebe ser definido con un valor o texto por defecto.

<div align="center"><img src="graph/AutoCAD_Layout8.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/AutoCAD_Layout9.jpg" alt="R.DAPC" width="100%" border="0" /></div>

9. Una vez comprobada la localización de los elementos del rótulo y los atributos requeridos, guarde los cambios realizados en el dibujo y luego desde el botón de AutoCAD, guarde el archivo en la carpeta de bloque como _/file/cad/block/BloquesFormatoA4Vertical.dwg_. Copie todos los objetos del espacio de impresión o el layout _A4-Vertical_, al espacio de modelado, luego elimine el layout. Utilizando el menú _Insert / Block Definition / Set Base Point_, establezca la esquina inferior izquierda del rótulo como punto de inserción y guarde el archivo.

<div align="center"><img src="graph/AutoCAD_Layout10.jpg" alt="R.DAPC" width="100%" border="0" /></div>

Cierre el archivo del bloque.

10. Abra nuevamente el archivo _/file/cad/M01A05.dwg_ y elimine todos los objetos contenidos en la ventana del layout A4-Vertical. Desde el menú _Insert / Block / Recent Blocks_, inserte el archivo _/file/cad/block/BloquesFormatoA4Vertical.dwg_, como punto de inserción establezca la coordenada (20,5) correspondientes a la esquina inferior del rótulo de acuerdo a las márgenes establecidas previamente.

<div align="center"><img src="graph/AutoCAD_Layout11.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/AutoCAD_Layout12.jpg" alt="R.DAPC" width="100%" border="0" /></div>

12. Una vez definido el punto de inserción, AutoCAD solicitará el diligenciamiento de los atributos del rótulo a partir de los campos definidos.

<div align="center"><img src="graph/AutoCAD_Layout13.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/AutoCAD_Layout14.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Desde ahora, cada vez que requiera insertar el rótulo en cualquier dibujo, podrá hacerlo utilizando este archivo de bloque.




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
* [Humberto Amaya Alvear / Selección del formato según normas NTC 1687](https://www.youtube.com/watch?v=D6NTFHMQWDk)
* https://ibiguridt.wordpress.com/temas/materiales/formatos/
* https://tienda.icontec.org/gp-ntc-dibujo-tecnico-formato-y-plegado-de-planos-tecnicos-ntc1687-2023.html


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.06.22 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |  16   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M01A00/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/99999) | [Siguiente :arrow_forward:](../M01A02/Readme.md) |
|--------------------------------------------------|-----------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------------|

[^1]: https://ibiguridt.wordpress.com/temas/materiales/formatos/