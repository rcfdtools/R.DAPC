# 2.4. Proyecto de sistemas de información geográfica - GIS
Keywords:  `gis` `buffer` `2d` `3d` `powerline` `m02a04`

Aplicando los conceptos GIS vistos durante el módulo 2 del curso, analice coberturas geográficas aplicadas en ingeniería eléctrica.

<div align="center"><img src="graph/m02a04.png" alt="R.DAPC" width="50%" border="0" /><sub><br>Generado con: <a href="https://gemini.google.com/app/430bab142a3cfa08">https://gemini.google.com/</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Elabora mapas y planos.
* Manipula imágenes. 
* Utiliza herramientas de geoprocesamiento.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                             | Descripción                                                                                                    |
|:------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://qgis.org/)                                                 | QGIS 3.44 o superior.                                                                                          |  

</div>

> :blue_heart: El repositorio de proyecto deberá mantenerse durante la duración del curso, estableciendo permisos de escritura para los integrantes de su grupo y lectura para el instructor.
>
> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Análisis de luminarias por UPZ en Bogotá D.C.

Utilizando los conceptos aprendidos en el desarrollo de la actividad [M02A01b](../M02A01b/Readme.md), realice las siguientes actividades:

* Investigue y plantee un proyecto de suministro energético utilizando energía eólica, solar o termoeléctrica para alimentar las luminarias de la ciudad de Bogotá e indique el número de generadores, páneles o unidades requeridas.
* Identifique en qué UPZ se encuentra el campus de la [UECIJG](https://www.escuelaing.edu.co/es/) y presente un análisis de luminarias, identificando desde [Google Maps](https://www.google.com/maps) y/o desde Google StreetView, cuantos postes de la red pública con luminaria se encuentran alrededor del predio del campus y calcule su consumo energético.

> El informe técnico debe contener el detalle de las capas base utilizadas, capas generadas, tablas de análisis. 


## 2. Digitalización de campus UECIJG

Utilizando los conceptos aprendidos en el desarrollo de la actividad [M02A02a](../M02A02a/Readme.md), realice la digitalización completa del campus, incluyendo:

* Predio: unidad predial disponible en https://www.ideca.gov.co/recursos/mapas/predios-bogota-dc.
* Construcción: todas las construcciones bajo cubierta.
* Vías - ejes: todos los ejes viales, incluídos senderos, vías principales, vías peatonales.
* Vías - aferencia: corredores viales a partir de anchos medidos con recorte y extensión hasta el límite del predio.
* Arbolado - nodo: localización de nodos de arbolado.
* Arbolado - aferencia: áreas cubiertas por vegetación a partir de ancho en canopy.
* Luminaria - nodo: localización de nodos de luminarias externas.
* Luminaria - aferencia: áreas con cobertura de iluminación.

> El informe técnico debe contener capturas de pantalla de los elementos digitalizados, tablas de atributos, estadísticas, análisis de índices de cobertura y representación 3D.


## 3. Potencial fotovoltáico campus

Utilizando los conceptos aprendidos en el desarrollo de la actividad [M02A02b](../M02A02b/Readme.md), realice las siguientes actividades:

* Presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas en la construcción de los polígonos de cubiertas.
* Investigar especificaciones técnicas y costos de instalación por KW solar instalado.
* Calcular el potencial fotovoltáico de cada cubierta y el costo actual de instalación.
* En AutoCAD y con ayuda del commando **ARRAY**, distribuya en cada cubierta los paneles solares estimados en esta actividad. Cree una capa geográfica que incorpore la distribución de los páneles solares y asocie cada elemento a la cubierta correspondiente a través del campo CubiertaID.


## 4. Red de interconexión energética nacional 2D y aislamientos RETIE

Utilizando los conceptos aprendidos en el desarrollo de la actividad [M02A03a](../M02A03a/Readme.md), realice las siguientes actividades:

* Presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas para analizar la red de interconexión y servidumbres eléctricas de la ciudad de Bogotá D.C.
* Para el predio del campus de la [UECIJG](https://www.escuelaing.edu.co/es/), determine y grafique el % de afectación de los corredores de servidumbre de la red de interconexión energética nacional y regional.


## 5. Modelos digitales de elevación DEM - Red de interconexión energética 3D

Utilizando los conceptos aprendidos en el desarrollo de la actividad [M02A03b](../M02A03b/Readme.md), realice las siguientes actividades:

* Presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas en el análisis de líneas de interconexión eléctrica 3D.
* Investigue que es la catenaria en un vano eléctrico y calcule la longitud real 3D del cableado de la ciudad de Bogotá D.C. teniendo en cuenta la curvatura de la catenaria entre torres.


## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto o individualmente.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M02A04    | Opcional en grupo: desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas. Incluir en la carpeta /shp, las capas creadas.                                                                                                                                                                                                                                                                                                                                           |
| M02A04    | Opcional en grupo: en una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.


## Referencias

* https://globalgpssystems.com/gnss/gnss-constellations-how-they-work-and-how-they-improve-gps
* https://pro.arcgis.com/es/pro-app/latest/help/mapping/device-location/gnss-and-location-devices.htm
* https://bdigital.uniquindio.edu.co/bitstream/handle/001/5932/Capitulo%206%20poligonales.pdf
* https://es.wikipedia.org/wiki/Zipaquir%C3%A1
* https://www.colombiaenmapas.gov.co/inicio/
* https://www.esri.com/es-es/what-is-gis/overview
* https://volaya.github.io/libro-sig/chapters/Calidad_datos.html
* https://origen.igac.gov.co/docs/ABC_Nueva_Proyeccion_Cartografica_Colombia.pdf
* https://resources.arcgis.com/es/help/getting-started/articles/026n0000000s000000.htm
* http://www.albireotopografia.es/topografia-basica-iii-la-forma-de-la-tierra/topografia-geoide-y-elipsoide/
* http://www.publicacions.ub.edu/liberweb/astronomia_esferica/material/version_pdf/Tomo%201/2.1%20Elipsoide%20terrestre.pdf
* Especificaciones técnicas cartografía básica. Anexo 2 – Tipos de coordenadas manejados en Colombia, Instituto Geográfico Agustín Codazzi – IGAC. Subdirección Geografía y Cartografía. 
* Especificaciones técnicas cartografía básica, Instituto Geográfico Agustín Codazzi – IGAC. Subdirección Geografía y Cartografía. 2016
* https://www.ideca.gov.co/recursos/mapas/alumbrado-publico-bogota-dc
* https://www.enel.com.co/es/personas/tarifas-energia-enel-distribucion.html
* https://www.enelgreenpower.com/es/learning-hub/energias-renovables/energia-hidroelectrica/turbina-hidroelectrica
* https://elperiodicodelaenergia.com/las-10-centrales-hidroelectricas-mas-grandes-del-mundo/
* https://es.wikipedia.org/wiki/Central_termoel%C3%A9ctrica
* https://paratec.xm.com.co/reportes/capacidad-efectiva-neta-tipo-generacion
* https://www.energy.gov/eere/solar/homeowners-guide-going-solar
* https://en.wikipedia.org/wiki/Photovoltaics
* https://www.minenergia.gov.co/es/sala-de-prensa/noticias-index/colombia-y-panam%C3%A1-avanzan-en-la-integraci%C3%B3n-energ%C3%A9tica-a-trav%C3%A9s-de-la-interconexi%C3%B3n-el%C3%A9ctrica/
* https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx
* https://www.enel.com.co/content/dam/enel-co/espa%C3%B1ol/7-prensa/2020/diciembre/Respeto-por-las-distancias-minimas-con-la-red-de-energia-en-proyectos-de-construccion-salva-vidas.pdf
* https://www.enel.com.co/es/proyectos-en-alta-tension/servidumbres-electricas.html
* https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx
* https://retielectrica.com/clasificacion-de-los-niveles-de-tension-capitulo-2-articulo-12/
* [Calculemos la Catenaria de un Vano | Ejemplo de Clase Virtual Linielec](https://www.youtube.com/watch?v=AnHAPrNz7Qk)


## Control de versiones

| Versión    | Descripción        | Autor                                       | Horas |
|------------|:-------------------|---------------------------------------------|:-----:|
| 2025.10.17 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)   |   3   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M02A03a/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M02A03c/Readme.md) |
|---------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: 