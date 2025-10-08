# 3.2. Herramientas para la aplicación de la metodología BIM. Introducción al software Revit
Keywords:  `revit` `bim` `m03a01`

Uso de plantillas (templates). Fundamentos del software Revit. Configuración de Revit (Options).

<div align="center"><img src="graph/m03a01.png" alt="R.DAPC" width="50%" border="0" /><sub><br>Generado con: <a href="https://gemini.google.com/app/ae9373792145f9e2">https://gemini.google.com/</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Conoce la configuración básica del software Revit.
* Instala librerías.


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

## 0. ¿Qué es Autodesk Revit?

Revit es un software de Autodesk para el diseño y la documentación que usa la metodología de Modelado de Información de Construcción (BIM) para crear edificios y su infraestructura. Funciona con objetos inteligentes en 3D, y cualquier cambio en una parte del proyecto se actualiza automáticamente en todas las vistas y documentos relacionados, permitiendo una mayor coordinación en el diseño arquitectónico, ingeniería y construcción. [^1] 

Funciones y ventajas principales:

* Diseño con objetos inteligentes: en lugar de solo dibujar, creas elementos constructivos como muros, puertas y ventanas que contienen información detallada sobre ellos. 
* Coordinación automática: al ser paramétrico, un cambio en un elemento se actualiza al instante en todas las vistas (plantas, secciones, alzados) y en la documentación asociada. 
* Plataforma multidisciplinaria: integra las disciplinas de arquitectura, ingeniería estructural, mecánica y eléctrica (MEP) en un solo entorno de trabajo, facilitando la colaboración. 
* Generación de documentación: permite crear planos, dibujos, cronogramas y presupuestos detallados a partir del modelo 3D. 
* Simulación y visualización: facilita el renderizado de modelos y la creación de recorridos virtuales para visualizar el proyecto de forma más realista. 

Aplicaciones:

* Diseño arquitectónico: crea diseños conceptuales y documenta edificios. 
* Ingeniería civil y estructural: modela y analiza estructuras de concreto y acero. 
* Ingeniería MEP: permite modelar las instalaciones mecánicas, eléctricas y de fontanería. 
* Coordinación del proyecto: permite la colaboración entre diferentes equipos de trabajo. 

En resumen, Revit es una herramienta esencial para profesionales de la construcción que buscan un flujo de trabajo más eficiente, desde el diseño inicial hasta la gestión del proyecto, al trabajar con información inteligente en un modelo 3D colaborativo. 


## 1. Instalación de librerías

Luego de instalar el aplicativo y antes de iniciar a trabajar con Autodesk Revit, es requerido descarga e instalar las librerías que contienen las diferentes familias de objetos que son necesarias para la creación de modelos. Desde el enlace https://manage.autodesk.com/products/rvt, ingrese al administrador de productos y servicios de Autodesk y para el software Revit, descargue las librerías denominadas:

* Spanish Content for Revit 2026: RVTCPESP.exe
* Generic International - Spanish Content for Autodesk Revit 2026: RVTCPGENESP.exe

<div align="center"><img src="graph/Revit_InstallLibraries.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_InstallLibraries1.jpg" alt="R.DAPC" width="100%" border="0" /></div>
<div align="center"><img src="graph/Revit_InstallLibraries2.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Tenga en cuenta que el idioma de la interfaz de usuario de Autodesk Revit puede ser Inglés y el idioma de las librerías puede ser usado en cualquier idioma. 

Desde la carpeta de descargas de su sistema operativo, instale los dos paquetes de librerías descargados. En caso de que ya estén instalados, aparecerá la siguiente ventana.

<div align="center"><img src="graph/Revit_InstallLibraries3.jpg" alt="R.DAPC" width="60%" border="0" /></div>


## 2. Uso de plantillas y configuración general

Autodesk Revit, permite la creación de proyectos a partir de plantillas por disciplina o multidisciplina.

1. En la ventana de inicio de Revit, de clic en el botón _New..._ y seleccione la plantilla _c:/ProgramData/Autodesk/RVT 2026/Templates/Spanish_INTL/Default-Multi-Discipline_MetricESP.rte_. Guarde el proyecto como _/file/cad/DAPC_Proyecto.rvt_.

> Tenga presente que los archivos de plantilla o template tienen la extensión `.rte` y los proyectos de Revit la extensión `.rvt`.

<div align="center"><img src="graph/Revit_New.jpg" alt="R.DAPC" width="100%" border="0" /></div>

Dentro del proyecto Revit, podrá observar que a la izquierda se encuentra localizado el _Project Browser_ que contiene las vistas para las siguientes disciplinas:

* Architectural
* Coordination
* Electrical
* Mechanical
* Plumbing
* Structural

También podrá observar que por defecto se despliega en la ventana de trabajo o _ViewPort_, la vista arquitectónica _L1 - Arquitectónico_.

<div align="center"><img src="graph/Revit_Save.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. En el menú _File / Options_, consulte las opciones de configuración por defecto, en la pestaña _Hardware_, active la opción _Use hardware acceleration_ si dispone de tarjeta de video dedicada.

<div align="center"><img src="graph/Revit_Options1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

Consulte y ajuste las rutas de almacenamiento de archivos para que por defecto Revit utilice las siguientes localizaciones:

* Project templates / Metric Multi-discipline: _C:\ProgramData\Autodesk\RVT 2026\Templates\Spanish_INTL\Default-Multi-Discipline_MetricESP.rte_
* Default path for family template files: _C:\ProgramData\Autodesk\RVT 2026\Family Templates_

<div align="center"><img src="graph/Revit_Options2.jpg" alt="R.DAPC" width="60%" border="0" /></div>

3. Desde el menú _Manage / Settings / Project Units_ o con el comando **UN**, ajuste la configuración de unidades comunes (Common) del proyecto estableciendo:

* Distance: Metros con dos decimales mostrando símbolo (m).
* Length: Metros con dos decimales mostrando símbolo (m).

<div align="center"><img src="graph/Revit_Units.jpg" alt="R.DAPC" width="100%" border="0" /></div>


## 3. Vinculación o importación de archivos de referencia CAD 













## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto o individualmente.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M03A01    | Individual: los numerales vistos en esta actividad son evaluados individualmente a través de un quiz de conocimiento y habilidad.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| M03A01    | Obligatorio en grupo: desarrolle los numerales indicados en esta actividad y presente un informe técnico detallado con capturas de pantalla de todas las herramientas utilizadas.                                                                                                                                                                                                                                                                                                                                                                                       |
| M03A01    | Obligatorio en grupo: en una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.


## Referencias

* https://onl.dnp.gov.co/transicion-energetica/Paginas/default.aspx
* https://retielectrica.com/clasificacion-de-los-niveles-de-tension-capitulo-2-articulo-12/
* [Calculemos la Catenaria de un Vano | Ejemplo de Clase Virtual Linielec](https://www.youtube.com/watch?v=AnHAPrNz7Qk)


## Control de versiones

| Versión    | Descripción        | Autor                                       | Horas |
|------------|:-------------------|---------------------------------------------|:-----:|
| 2025.10.08 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)   |   8   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M02A03a/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M02A03c/Readme.md) |
|---------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: https://www.nti-group.com/es/blog/es/revit-que-es-novedades-autodesk