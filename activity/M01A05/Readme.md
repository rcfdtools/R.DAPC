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

| Requerimiento                                                                      | Descripción                                                                                                 |
|:-----------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                  | Autodesk Autocad 3D 2026 o superior.                                                                        |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz) | Microsoft Excel 365.                                                                                        |
| [:date:DAPC_TamanoPapelNTC1687.xlsx](DAPC_TamanoPapelNTC1687.xlsx)                 | Libro de cálculo con tamaños de papel estándar definidos en norma NTC-1678 y generador de rótulos básicos.  |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Formatos de impresión [^1]

Dependiendo del tipo y tamaño del dibujo se debe utilizar un formato de impresión y unos grosores en las líneas de dibujo que facilite la comprensión y que nos aporte los datos necesarios sobre la pieza que está representada en el dibujo. Además, para favorecer la estandarización, los formatos y las líneas estarán normalizados.

Los tamaños, formatos de papel, están regulados por la norma de estandarización ISO y que proviene de la alemana DIN. De esta forma, los formatos de papel se reconocen por su norma, esto es la ISO A4 (DIN A4) es una hoja de papel que mide 210×297 mm. Este formato es el más utilizado para dibujos pequeños.

Para identificación de los tamaños debemos tener en cuenta que cada formato de mayor orden, es la mitad del anterior, es decir, ISO A5 (DIN A5) es la mitad de la ISO A4 (DIN A4). De la misma forma, la ISO A3 (DIN A3) es el doble de la ISO A4 (DIN A4). Al conjunto de estos tamaños se le llama serie A. 

De acuerdo a la Norma Técnica Colombiana NTC-1687 del 2003 de Dibujo técnico para Formato y plegado de planos técnicos, los tamaños estándar de hoja, tamaño de rótulo y márgenes en milímetros son:

<div align="center"><img src="graph/NTC1687_Formato.jpg" alt="R.DAPC" width="60%" border="0" /></div>

La disposición de la caja de rotulado, será la parte inferior de la hoja de impresión en el caso del formato ISO A4, y en la parte inferior derecha para el resto de formatos.

> La altura depende del tipo de formato, puede variar, p. ej., entre los 35 mm y los 51 mm.

Para el desarrollo del curso DAPC, utilizaremos como referencia el siguiente formato:

<div align="center"><img src="graph/NTC1687_Rotulo.jpg" alt="R.DAPC" width="60%" border="0" /></div>

1. 







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