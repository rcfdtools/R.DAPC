# 1.6. Proyecto de dibujo asistido por computadora con AutoCAD
Keywords: `realigment`  `m01a00`

Aplicando los conceptos vistos durante el módulo 1 del curso, desarrollar un proyecto aplicado para el diseño de una bodega para el almacenamiento y distribución de transformadores eléctricos industriales.

Aplique los conceptos vistos en las diferentes actividades del módulo relacionadas con: Layers, papel. Texto menor, texto mayor. Planos de referencia para posiciones espaciales. Limits. Coordenadas cartesianas X, Y, Z. Coordenadas relativas posicionales. Coordenadas geográficas.   

<div align="center"><img src="graph/M01A06.png" alt="R.DAPC" width="30%" border="0" /><sub><br>Tomado de: <a href="https://pngtree.com/">https://pngtree.com/</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Realiza un proyecto con elementos eléctricos configurando apropiadamente el plano de proyecto en CAD.
* Imprime la planta, el perfil o la sección transversal del proyecto con una configuración adecuada. 


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                                           | Descripción                                                                                                                      |
|:--------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                                       | Autodesk Autocad 3D 2026 o superior.                                                                                             |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz)                      | Microsoft Excel 365.                                                                                                             |
| [:date:R.HydroTools.FactorAtenuacion PrecipitacionFa.xlsx](FactorAtenuacionPrecipitacionFa) | Libro de cálculo para la estimación del Fa - Factor de atenuación de la precipitación máxima por área simultánea en una cuenca.  |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Especificaciones técnicas generales

En un proyecto, las especificaciones técnicas son documentos que detallan las normas, requisitos, procedimientos y condiciones técnicas que deben cumplirse en la ejecución de un proyecto. Estos documentos guían la implementación del proyecto, asegurando que se cumplan los estándares de calidad y se alcancen los resultados deseados. 

Para el desarrollo del proyecto, es necesario seguir las siguientes especificaciones técnicas, creando una plantilla de AutoCAD que contenga los elementos indicados a continuación:

| Especificación             | Actividad | Descripción y alcance                                                                                                                                                                                                                                                                                                                                                                                                                             |
|:---------------------------|:----------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Código, nombre y logotipo  |           | El proyecto se desarrolla en grupo, el número de estudiantes se indica al inicio del curso. Cada grupo tendrá un código numérico consecutivo asignado por el instructor. Los estudiantes deberán definir el nombre de su grupo de proyecto y crear un logotipo en AutoCAD. El código, logotipo y nombre del grupo deberán incluirse en todos los planos generados.                                                                                |
| Estructura de directorios  | Ver       | Utilizar la estructura definida para el curso DAPC.                                                                                                                                                                                                                                                                                                                                                                                               |
| Plantilla o layout         |           | Guardar como _/file/cad/DAPC.dwt_                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Unidades de dibujo         |           | Lineales en metros, angulares en grados, precisión a dos decimales.                                                                                                                                                                                                                                                                                                                                                                               |
| Capas o layers             |           | Se deben utilizar los nombres de capas establecidos en la norma internacional estándar ISO-13567, aplicando las especificaciones [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf) del [National Institute of Building Sciences](https://nibs.org/) para los grupos A-Architectural, C-Civil, E-Electrical, S-Structural, V-Survey / Mapping y W-Distributed Energy. |
| Acotado                    |           | Crear estilos propios fijos y anotativos para las diferentes escalas de impresión a usar, utilizar el prefijo _DAPC_.                                                                                                                                                                                                                                                                                                                             |
| Formatos para impresión    |           | A0 y A4, horizontal y vertical.                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Bloques - arquitectónicos  |           | Utilizar los bloques ejemplo del ADC de AutoCAD, o utilizar una librería de bloque externos, citando la fuente de descarga.                                                                                                                                                                                                                                                                                                                       |
| Bloques - eléctricos       |           | Para el dibujo de los planos eléctricos, utilizar los bloques creados a partir de las especificaciones establecidas en el Reglamento Técnico de Instalaciones Eléctricas - RETIE del Ministerio de Minas y Energía de Colombia.                                                                                                                                                                                                                   |
| Bloques - otros            |           | Utilizar una librería de bloque externos citando la fuente de descarga.                                                                                                                                                                                                                                                                                                                                                                           |

> Los bloques insertados deberán convertirse a metros para adaptarse a las unidades generales del dibujo.


## 2. Especificaciones arquitectónicas

En arquitectura, las especificaciones de un proyecto son documentos técnicos detallados que describen las características, materiales, estándares y métodos de construcción necesarios para ejecutar un proyecto. Estas especificaciones complementan los planos y proporcionan información precisa sobre cómo se deben realizar los trabajos, garantizando la calidad y cumplimiento de los requisitos.

> En este curso, no es necesario crear los planos de instalaciones hidráulicas, sanitarias y contra incendios.

| Especificación            | Actividad | Descripción y alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|:--------------------------|:----------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Ancho de bodega           |           | 26 metros + Σ del último dígito de los códigos de estudiante. En los laterales de la bodega no deben existir ventanas.                                                                                                                                                                                                                                                                                                                                                                       |
| Largo de bodega           |           | 40 metros + Σ del último dígito de los códigos de estudiante.                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Alto de bodega            |           | 1 nivel con altura de 12 metros.                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Patio posterior           |           | Igual al ancho con profundidad de 12 metros.                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Cubierta                  |           | Láminas metálicas sobre estructura metálica. Incluir ventiladores para extracción de aire caliente. La cubierta no deberá sobre salir mas allá del ancho del lote.                                                                                                                                                                                                                                                                                                                           |
| Oficina                   |           | Localizadas cerca a la puerta de acceso y en costado de la bodega. Máximo ocupar 60 m² en planta.                                                                                                                                                                                                                                                                                                                                                                                            |
| Baños                     |           | Adosados a la zona de oficinas. Baños privado en oficinas con al menos dos sanitarios. Baños generales con al menos 4 sanitarios. Tamaño y distribución a libre elección.                                                                                                                                                                                                                                                                                                                    |
| Mezanine                  |           | Interno bajo cubierta solo en zona de oficinas y baños.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Escalera                  |           | Acceso a mezanine e integrada al volúmen general de oficinas.                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Puerta principal          |           | Ubicar en costado frontal sobre el ancho de la bodega y con apertura hacia arriba. Metálica. Dimensionar a partir del tamaño de un vehículo de carga de 10 toneladas.                                                                                                                                                                                                                                                                                                                        |
| Puertas secundarias       |           | Metálica. Utilizar anchos estándar.                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Ventanas                  |           | Metálica. Utilizar anchos estándar. Utilizar solo en fachada frontal y posterior e internamente en oficinas y baños.                                                                                                                                                                                                                                                                                                                                                                         |
| Placa de contra piso      |           | 40 centímetros de espesor en concreto reforzado. Investigar especificaciones de refuerzo y dibujar detalle estructural. <br>:fire:<sub>Atención: tenga en cuenta que este tipo de elementos requieren de un diseño avanzado; los valores aquí definidos son esquemáticos y requieren ser revisados por un ingeniero experto.</sub>                                                                                                                                                           |
| Estructura                |           | Libre elección: metálica o en concreto utilizando pórticos con 6 metros de luz o espaciado entre apoyos. Para dibujo en planta y cortes utilizar columnas de 30 x 50 centímetros y vigas de 50 centímetros. Investigar especificaciones de refuerzo y dibujar detalle estructural.<br>:fire:<sub>Atención: tenga en cuenta que este tipo de elementos requieren de un diseño avanzado; los valores aquí definidos son esquemáticos y requieren ser revisados por un ingeniero experto.</sub> |
| Tabla de cantidades       |           | Cree una tabla cuantificando todos los elementos requeridos.                                                                                                                                                                                                                                                                                                                                                                                                                                 |


## 3. Especificaciones eléctricas

En un proyecto, las especificaciones eléctricas son un conjunto de directrices técnicas que describen detalladamente las características y requisitos de los componentes y equipos eléctricos que se utilizarán. Estas especificaciones aseguran que la instalación eléctrica sea segura, confiable y cumpla con los estándares y normativas aplicables. 

| Especificación             | Actividad | Descripción y alcance                                                                                                                                                                                                               |
|:---------------------------|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Red eléctrica              |           | Redes para 110V y 220V. Esquemas solo en planta                                                                                                                                                                                     |
| Energía solar              |           | La cubierta deberá estar cubierta por páneles solares. Investigue, analice y distribuya los paneles. Tenga en cuenta que deberá reservar espacios para las pasarelas de instalación y mantenimiento, líneas de vída y ventiladores. |
| Líneas de vida en cubierta |           | Investigue, diseñe y dibuje la localización de las líneas de vida en cubierta.                                                                                                                                                      |
| Para rayos y polo a tierra |           | Localizar y dibujar la localización del para rayos y polo a tierra.                                                                                                                                                                 |


## 4. Bodegaje

La distribución de una bodega en un proyecto implica planificar la disposición de las áreas y elementos para optimizar el flujo de materiales, maximizar el espacio y garantizar la eficiencia operativa. Se deben considerar factores como el tipo de productos, la rotación, el tamaño del almacén y los equipos de manipulación. 

Las dimensiones de los transformadores eléctricos industriales varían ampliamente según su capacidad (kVA), voltaje y tipo (monofásico o trifásico), así como si son de aceite o tipo seco. Generalmente, los transformadores de potencia media tienen alturas que van de 1.2 a 1.8 metros. Para transformadores de 100 kVA, por ejemplo, uno monofásico puede tener dimensiones de 770 mm de ancho, 965 mm de profundidad y 1135 mm de altura, según [Daelim Transformer](https://www.daelimtransformer.com/100-kva-transformer.html). Un transformador trifásico de 75 kVA puede tener dimensiones de 1155 mm de ancho, 845 mm de largo y 572 mm de alto, según [Ineldec](https://ineldec.com/producto/transformador-trifasico-convencional-75-kva/). 

Para el cálculo de la distribución interna del almacenamiento de los transformadores eléctricos, utilizar las dimensiones específicas de las diferentes referencias a almacenar, incluyendo el ancho de los soportes o cajas de embalaje.

Separación entre estantes: Considerar el ancho y alto de maniobra del montacargas.

Prompt: dimensiones de transformadores eléctricos industriales


## 5. Planos y cantidades

En el contexto de un proyecto, los planos de diseño son representaciones gráficas que detallan la forma, dimensiones y características de la obra a construir o implementar. Son documentos esenciales que guían a los constructores y otros profesionales durante la ejecución del proyecto, asegurando que se materialice según lo planificado. 

| Especificación                | Actividad | Descripción y alcance                                                                                                                       |
|:------------------------------|:----------|:--------------------------------------------------------------------------------------------------------------------------------------------|
| Plano de planta general       |           | Planta con visibilidad interna de la distribución de los espacios internos. Detalles de zonas de oficinas y baños. Incluir cuadro de áreas. |
| Plano de cubiertas y fachadas |           | Cubiertas y fachadas. Incluir cuadro de áreas.                                                                                              |
| Plano de corte longitudinal   |           | Plano en el sentido del largo de la bodega.                                                                                                 |
| Plano de corte transversal    |           | Plano en el sentido del ancho de la bodega.                                                                                                 |
| Planos eléctricos             |           | Plano en planta de conexiones eléctricas. En los planos arquitectónicos incluir el detalle de la acometída eléctrica.                       |
| Tabla de cantidades           |           | Cree una tabla cuantificando todos los elementos y materiales requeridos para el proyecto. No es necesario realizar costos unitarios.       |


## Actividades de proyecto :triangular_ruler:

Utilizando la [plantilla suministrada](../../file/report/R.DAPC.PlantillaSoporteDesarrollo.docx), cree un documento soporte mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con los análisis y recomendaciones realizadas, convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/activity_ del repositorio de datos del proyecto; nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A00_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada estudiante o grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M01A06    | Desarrolle progresivamente con los contenidos vistos en el Módulo 1, los numerales indicados en esta actividad.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| M01A06    | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://help.autodesk.com/view/ACD/2026/ESP
* https://help.autodesk.com/view/ACD/2026/ENU/
* https://ineldec.com/producto/transformador-trifasico-convencional-75-kva/
* https://www.larsonelectronics.com/category/601/industrial-transformers
* https://amperesoluciones.com/wp/especificaciones-electricas/


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.06.22 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |  16   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M01A05/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/99999) | [Siguiente :arrow_forward:](../M02A01/Readme.md) |
|--------------------------------------------------|-----------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------------|

[^1]: 