# 1.4. Textos, anotaciones y dimensionamiento
Keywords: `realigment`  `m01a04`

Texto simple y multilínea. Estilo de la dimensión. Acotado de líneas rectas, círculos, arcos y ángulos. Editar dimensiones. Superficies normales, inclinadas y oblicuas. Visibilidad de aristas. 

<div align="center"><img src="graph/M01A00.jpg" alt="R.DAPC" width="60%" border="0" /></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Incorpora textos simples, de múltiples líneas y de anotación en dibujos.
* Crea, edita e interpreta apropiadamente elementos dimensionales aplicando comandos en CAD.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                                           | Descripción                                                                                                                      |
|:--------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                                       | Autodesk Autocad 3D 2026 o superior.                                                                                             |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Textos y anotaciones


### 1.1. Texto simples y multilínea

En AutoCAD, el texto se utiliza para añadir anotaciones y detalles a los dibujos. Hay dos tipos principales de texto: texto de una sola línea y texto multilínea. El texto de una línea es adecuado para anotaciones cortas, mientras que el texto multilínea ofrece más opciones de formato y es ideal para párrafos y descripciones más largas.

Tipos de texto y comandos relacionados en AutoCAD:

| Tipo                              | Comando         | Descripción                                                                                                                                                                                                                                                    |
|:----------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Texto de una sola línea           | DTEXT, TEXT, DT | Cada línea de texto se considera un objeto independiente. Es fácil de crear y editar, y es ideal para anotaciones breves como etiquetas o referencias. Es necesario ingresar la altura del texto en unidades de dibujo y el ángulo de inclinación              |
| Texto multilínea                  | MTEXT, MT, T    | Permite texto con múltiples líneas, ofreciendo más opciones de formato, como fuentes, tamaños, estilos, alineación y columnas. Es más adecuado para descripciones detalladas, notas o documentos extensos. Es necesario definir el tamaño de la caja de texto. |
| Textos simples a multilínea       | TXT2MTXT        | Convierte varios de textos simples en un texto multilínea.                                                                                                                                                                                                     |
| Texto multilínea a textos simples | EXPLODE, X      | El comando EXPLODE permite separar textos multilinea. Fracciones y textos de tolerancia son separados en textos simples.                                                                                                                                       |
| MText toolbar                     | MTEXTTOOLBAR    | Esta variable de sistema permite mostrar u ocultar la barra de edición de textos multilínea, defina 1 para mostrar la barra o 2 para ocultarla.                                                                                                                |
| Estilos de texto                  | STYLE           | Configuración de estilos de texto.                                                                                                                                                                                                                             |


Importancia y consideraciones del texto en AutoCAD:

| Importancia       | Descripción                                                                                                                                                        |
|:------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Comunicación      | El texto transmite información esencial sobre el diseño, como dimensiones, materiales, especificaciones y notas.                                                   |
| Claridad          | Un texto bien formateado y ubicado facilita la comprensión del dibujo y la comunicación del diseño.                                                                |
| Documentación     | El texto ayuda a documentar el diseño, proporcionando información relevante para la fabricación, construcción o implementación.                                    |
| Estilos de texto  | Se recomienda crear estilos de texto personalizados con fuentes, tamaños y formatos predefinidos para mantener la coherencia en el dibujo.                         |
| Anotaciones       | El texto puede ser anotativo, lo que significa que se escala automáticamente con la escala del dibujo, asegurando que sea legible en diferentes vistas y escalas.  |
| Edición           | Tanto el texto de una línea como el multilínea pueden editarse fácilmente, permitiendo actualizaciones y correcciones según sea necesario.                         |

1. En AutoCAD, cree una copia del archivo _/file/cad/M01A02a.dwg_ y guarde como _/file/cad/M01A04.dwg_. Con el comando **UNITS**, verifique que las unidades de dibujo han sido establecidas en milímetros y utilizando la siguiente secuencia de comandos, dibuje en la capa _0-Objeto_, la figura mostrada en la ilustración. Utilizando el comando **DIST**, mida el tamaño horizontal y vertical que envuelve el elemento, obtendrá un tamaño de H=57.5 mm por L=97 mm. Con <kbd>ctrl</kbd> + <kbd>1</kbd>, active la ventana de propiedades, podrá observar que el elemento tiene un perímetro de 328.396 mm y un área de 2190 mm². 

```
PLINE
250,250
@15,0
@0,-11.5
@40,0
@0,42.5
@20,0
@0,-34
@5,0
@0,-3.5
@17,0
@-4,-20
@-18,0
@0,5
@-75,0
250,250

```

<div align="center"><img src="graph/AutoCAD_PLine.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Sin tener objetos seleccionados, seleccione la capa 0-Text y con el comando **STYLE**, acceda a los estilos de texto; podrá observar que por defecto se encuentra definido el estilo _Annotative_ y _Standard_. Utilizando el botón _New_, cree un nuevo estilo, utilice la fuente tipográfica **Arial** y establezca una altura de 2.5mm, guarde como _DAPC - Arial 2.5mm_ y establezca por defecto. 

> Tenga en cuenta que el tamaño del texto podrá variar en la impresión en función a la escala utilizada. Si el tamaño del papel en milímetros es suficientemente grande para imprimir el dibujo a escala 1:1, el tamaño de texto en la impresión será igual al tamaño en el dibujo, si la escala es 1:2, el tamaño del texto en la impresión será de 1/2 el tamaño del dibujo.

<div align="center"><img src="graph/AutoCAD_Text1.jpg" alt="R.DAPC" width="70%" border="0" /></div>

3. Utilizando el comando **DTEXT**, **TEXT** o **DT**, escriba abajo de la figura el texto _Figura Asimétrica_, observará que solo se ha solicitado el punto de inserción y el ángulo de rotación. El ingreso de texto también puede ser realizado desde el menú _Home / Annotation / Text / Single Line_ o desde el menú _Annotate / Text / Single Line_.

> Si en la creación del estilo de texto se ha definido una altura específica, esta no será solicitada al momento de ejecutar el comando **TEXT**.

<div align="center"><img src="graph/AutoCAD_Text2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

4. Utilizando el estilo de texto _Standard_ y un tamaño de 2 mm, ingrese en dos posiciones apiladas los textos P = 328.396 mm y A = 2190 mm². Para la apilación, utilice la tecla <kbd>enter</kbd> entre las líneas.

> Debido a que el texto con estilo _Standard_ tiene definido un tamaño de cero, la altura del texto será solicitada en el momento de ejecutar el comando **TEXT**.

<div align="center"><img src="graph/AutoCAD_Text3.jpg" alt="R.DAPC" width="100%" border="0" /></div>

5. Con el comando **COPY**, cree una copia del objeto y el texto, con el comando **SCALE** escale a 2 veces el tamaño inicial. Observará que el texto correspondiente al área y al perímetro sigue siendo igual, esto se debe a que ha sido ingresado como texto de usuario. Tenga en cuenta que ahora el título del texto tendrá un alto de 5 mm y el texto de las propiedades geométricas 4 mm y que el área y perímetro ahora tienen cuatro veces el tamaño original (2 veces más en X por 2 veces más en Y).

<div align="center"><img src="graph/AutoCAD_Text4.jpg" alt="R.DAPC" width="100%" border="0" /></div>

6. Para calcular las propiedades geométricas en función del objeto, dando doble clic edite el texto, p. ej., del área, y desde el menú contextual seleccione la opción _Insert Field_ o presione <kbd>ctrl</kbd> + <kbd>F</kbd>.

<div align="center"><img src="graph/AutoCAD_Text5.jpg" alt="R.DAPC" width="100%" border="0" /></div>

7. En la ventana de campos o _Fields_, filtre por la categoría _Objects_, seleccione la opción _Object_, seleccione manualmente el polígono escalado, luego la propiedad requerida y de clic en _OK_. Automáticamente, el valor de la nueva área será incluida en el texto.

<div align="center"><img src="graph/AutoCAD_Text6.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Para comprobar el funcionamiento de estos campos, re-escale la copia del objeto a su valor inicial dividiendo por el inverso de la escala de ampliación (1/2 = 0.5), edite el texto dando doble clic sobre los campos y actualice el valor en función del nuevo tamaño, podrá observar que los valores obtenidos son iguales a los de la figura original.

9. Con la herramienta _Home / Utilities / Measure / Angle_, mida el ángulo interno del único lado inclinado de la figura. Cree un rótulo inclinado de 1 mm de alto cerca a esta cara, indicando el ángulo de inclinación con respecto a la horizontal (180° - 101.31° = 78.69°).

<div align="center"><img src="graph/AutoCAD_Text7.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Desde la ventana de propiedades podrá modificar las propiedades del texto como si se tratara de un objeto.

Creemos ahora textos de múltiples líneas.

10. Utilizando el comando **MTEXT** o desde el menú _HOME / Annotation / Text / Multiline Text_ y con el estilo creado, cree manualmente para el objeto original, una caja de texto multilínea que contenga los textos que generemos anteriormente, incluídos los generados a partir de campos. Recuerde que será necesario actualizar las propiedades de los campos seleccionando el nuevo objeto.

Dentro del texto podrá incluir proporciones de tamaño, p. ej., el rectángulo imaginario que envuelve la figura es de H=57.5 mm por L=97 mm, o sea que la altura es 57.5 / 97 = 0.593 veces el largo. Para incluir la fracción, utilice como entrada `575/970 = 0.593` o `575#970 = 0.593`. Para incluir notas correspondientes a tolerancias, p .ej., de 0.05 mm, utilice `1 +0.05^-0.05`.

<div align="center"><img src="graph/AutoCAD_Text8.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Recuerde que con el comando **TXT2MTXT**, podrá convertir líneas independientes de texto a un texto de múltiples líneas. 

Verifiquemos ahora el tamaño del texto en la hoja de impresión.

11. En la barra de estado, seleccione la pestaña _Layout1_, desde el menú contextual y _Page Setup Manager_, defina la impresora _DWG To PDF.pc3_, papel _ISO full bleed A0 (1189.00 x 841.00 MM)_, impresión _monocrome.ctb_, escala de impresión 1:1 estableciendo que una unidad de dibujo corresponde a 1 mm. 

<div align="center"><img src="graph/AutoCAD_Text9.jpg" alt="R.DAPC" width="100%" border="0" /></div>










### 1.2. Texto anotativo

En AutoCAD, los textos de anotación son textos que se crean y gestionan de manera que se adaptan automáticamente a diferentes escalas de visualización, manteniendo su tamaño y apariencia consistentes en el dibujo, independientemente de la escala del modelo o de las ventanas gráficas de presentación. Esto significa que no es necesario crear múltiples versiones del mismo texto para diferentes escalas; el texto anotativo se ajusta automáticamente, además contiene las siguientes características:

| Características                    | Descripción                                                                                                                                                                                                                   |
|:-----------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Adaptabilidad a diferentes escalas | Los objetos anotativos, incluyendo el texto, están diseñados para cambiar de tamaño y escala automáticamente cuando se cambia la escala de visualización en el dibujo o en las ventanas gráficas.                             |
| Consistencia en la presentación    | El objetivo principal es mantener la legibilidad y la claridad del dibujo, asegurando que el texto anotativo se vea del mismo tamaño y con la misma apariencia, ya sea que se visualice a escala 1:1 o a una escala reducida. |
| Eficiencia en el diseño            | Al utilizar texto anotativo, se evita la necesidad de crear múltiples versiones del mismo texto para diferentes escalas, lo que simplifica el proceso de diseño y reduce la posibilidad de errores.                           |
| Control sobre la visibilidad       | Además de la escala, se puede controlar la visibilidad de los objetos anotativos en diferentes ventanas gráficas, lo que permite mostrar solo la información relevante en cada ventana.                                       |
| Comandos y herramientas            | AutoCAD proporciona comandos específicos como MTEXT (texto de líneas múltiples) y herramientas para crear y gestionar objetos anotativos, incluyendo el ajuste de escalas de anotación y la gestión de la visibilidad.        |
| Estilos de anotación               | Se pueden crear estilos de anotación que definen la apariencia y el comportamiento de los objetos anotativos, lo que permite una gestión centralizada de las propiedades de los objetos de anotación.                         |
















## Actividades de proyecto :triangular_ruler:

Utilizando la [plantilla suministrada](../../file/report/R.DAPC.PlantillaSoporteDesarrollo.docx), cree un documento soporte mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con los análisis y recomendaciones realizadas, convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/activity_ del repositorio de datos del proyecto; nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A00_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada estudiante o grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M01A04    | Esta actividad no requiere del desarrollo de elementos en el avance del proyecto final, los contenidos son evaluados a partir de la entrega de los ejercicios definidos en la actividad.                                                                                                                                                                                                                                                                                                                                                             |
| M01A04    | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://help.autodesk.com/view/ACD/2026/ESP
* https://help.autodesk.com/view/ACD/2026/ENU/
* [Autodesk AutoCAD / Conceptos básicos y avanzados de textos](https://help.autodesk.com/view/ACDLT/2024/ESP/?guid=GUID-1B3E8624-ED88-4409-AEA2-32836332AB27)


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