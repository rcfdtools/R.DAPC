# 1.2.a. Elementos básicos de dibujo / Creación de capas o layers
Keywords: `aia` `nibs` `iso-13567` `layer` `layer-freeze` `layer-set-current` `layer-on` `layer-delete` `lwdisplay` `laydel` `m01a02a`

Normas para definición de nombres y creación de capas o Layers.

<div align="center"><img src="graph/M01A02a.jpg" alt="R.DAPC" width="40%" border="0" /><sub><br>Tomado de: <a href="https://nibs.org/">https://nibs.org/</a></sub><br><br></div>


## Objetivos

Al finalizar esta actividad, el estudiante:

* Entiende los conceptos de aplicación de normas ISO para el nombramiento de layers o capas de dibujo.
* Crea y modifica layers.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                      | Descripción                                                                                                         |
|:-----------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                  | Autodesk Autocad 3D 2026 o superior.                                                                                |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz) | Microsoft Excel 365.                                                                                                |
| [:toolbox:Herramienta](https://notepad-plus-plus.org/)                             | Notepad++.                                                                                                          |
| [:date:DAPC_AIALayer Name.xlsx](../../file/table/DAPC_AIALayerName.xlsx)           | Libro de Excel con nombres de capas (layers) AIA para arquitectura, civil, electricidad y topografía / cartografía. |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel, reportes o informes y dibujos generados, agregando al final la fecha de control documental en formato aaaammdd, p. ej., _M01A01_20250710.dwg_.


## 1. Normas para nombramiento de capas (layers)

La creación de capas puede obedecer a nombres propios con los que el usuario está familiarizado (p. ej., Dimension, Objeto, Eje, Lote, Circuito, Achurado, Contorno, Edificio, Instalación), sin embargo, en la elaboración profesional de proyectos, se recomienda seguir estándares de creación y nombramiento de capas, como los establecidos en la norma internacional estándar [ISO 13567](https://www.iso.org/standard/70181.html).

Para este ejercicio, utilizaremos como referencia, las especificaciones del [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf) del [National Institute of Building Sciences](https://nibs.org/), en los que se encuentran las siguientes codificaciones para nombres de capas.

> Tenga en cuenta que existen nuevas versiones de esta norma, p. ej., la versión 6 incluye estándares relacionados con [BIM](https://es.wikipedia.org/wiki/Modelado_de_informaci%C3%B3n_de_construcci%C3%B3n).


### Prefijos por disciplina - Nivel 1

Para la designación de disciplinas, utilizaremos los siguientes prefijos:

<div align="center">

| Prefix | Discipline                 | Disciplina                     |
|:------:|:---------------------------|:-------------------------------|
| **A**  | Architectural              | Arquitectura                   |
|   B    | Geotechnical               | Geotecnia                      |
| **C**  | Civil                      | Civil                          |
|   D    | Process                    | Procesos                       |
| **E**  | Electrical                 | Electricidad                   |
|   F    | Fire Protection            | Protección contra incendios    |
|   G    | General                    | General                        |
|   H    | Hazardous Materials        | Materiales peligrosos          |
|   I    | Interiors                  | Interiores                     |
|   L    | Landscape                  | Paisajismo                     |
|   M    | Mechanical                 | Mecánica                       |
|   O    | Operations                 | Operaciones                    |
|   P    | Plumbing                   | Fontanería                     |
|   Q    | Equipment                  | Equipos                        |
|   R    | Resource                   | Recursos                       |
| **S**  | Structural                 | Estructura                     |
|   T    | Telecommunications         | Telecomunicaciones             |
| **V**  | Survey / Mapping           | Topografía / Cartografía       |
| **W**  | Distributed Energy         | Energía distribuida            |
|   X    | Other Disciplines          | Otras disciplinas              |
|   Z    | Contractor / Shop Drawings | Contratista / Planos de taller |

</div>

Por ejemplo: **A**, representa la disciplina de arquitectura.

> Las disciplinas resaltadas en negrilla serán las que utilizaremos como referencia general en este curso, si embargo y en caso de ser necesario, utilizaremos nombres de capas de otras disciplinas.


### Prefijos por disciplina - Nivel 2

El nivel dos, corresponde a un caracter opcional que se coloca a la derecha del caracter de nivel 1, y es usado para definir la característica de las disciplinas.:

<div align="center">

| Designator | Description                           | Descripción                                                |
|:----------:|:--------------------------------------|:-----------------------------------------------------------|
|   **A**    | **Architectural**                     | **Arquitectura**                                           |
|     AD     | Architectural Demolition              | Demolición arquitectónica                                  |
|     AE     | Architectural Elements                | Elementos arquitectónicos                                  |
|     AF     | Architectural Finishes                | Acabados arquitectónicos                                   |
|     AG     | Architectural Graphics                | Gráficos arquitectónicos                                   |
|     AI     | Architectural Interiors               | Interiores arquitectónicos                                 |
|     AJ     | User Defined                          | Definido por el usuario                                    |
|     AK     | User Defined                          | Definido por el usuario                                    |
|     AS     | Architectural Site                    | Sitio arquitectónico                                       |
|   **C**    | **Civil**                             | **Civil**                                                  |
|     CD     | Civil Demolition                      | Demolición Civil                                           |
|     CG     | Civil Grading                         | Nivelación Civil                                           |
|     CI     | Civil Improvements                    | Mejoras Civiles                                            |
|     CJ     | User Defined                          | Definido por el Usuario                                    |
|     CK     | User Defined                          | Definido por el Usuario                                    |
|     CN     | Civil Nodes                           | Nodos Civiles                                              |
|     CP     | Civil Paving                          | Pavimentación Civil                                        |
|     CS     | Civil Site                            | Sitio Civil                                                |
|     CT     | Civil Transportation                  | Transporte Civil                                           |
|     CU     | Civil Utilities                       | Servicios Civiles                                          |
|   **E**    | **Electrical**                        | **Electricidad**                                           |
|     ED     | Electrical Demolition                 | Demolición eléctrica                                       |
|     EI     | Electrical Instrumentation            | Instrumentación eléctrica                                  |
|     EJ     | User Defined                          | Definido por el usuario                                    |
|     EK     | User Defined                          | Definido por el usuario                                    |
|     EL     | Electrical Lighting                   | Iluminación eléctrica                                      |
|     EP     | Electrical Power                      | Energía eléctrica                                          |
|     ES     | Electrical Site                       | Sitio eléctrico                                            |
|     ET     | Electrical Telecommunications         | Telecomunicaciones eléctricas                              |
|     EY     | Electrical Auxiliary Systems          | Sistemas auxiliares eléctricos                             |
|   **S**    | **Structural**                        | **Estructural**                                            |
|     SB     | Structural Substructure               | Subestructura estructural                                  |
|     SD     | Structural Demolition                 | Demolición estructural                                     |
|     SF     | Structural Framing                    | Estructura estructural                                     |
|     SJ     | User Defined                          | Definido por el usuario                                    |
|     SK     | User Defined                          | Definido por el usuario                                    |
|     SS     | Structural Site                       | Sitio estructural                                          |
|   **V**    | **Survey / Mapping**                  | **Levantamiento/Cartografía**                              |
|     VA     | Survey / Mapping Aerial               | Levantamiento/Cartografía aérea                            |
|     VC     | Survey / Mapping Computated Points    | Levantamiento/Cartografía de puntos calculados             |
|     VF     | Survey / Mapping Field                | Levantamiento/Cartografía de campo                         |
|     VI     | Survey / Mapping Digital              | Levantamiento/Cartografía digital                          |
|     VJ     | User Defined                          | Definido por el usuario                                    |
|     VK     | User Defined                          | Definido por el usuario                                    |
|     VN     | Survey / Mapping Node Points          | Levantamiento/Cartografía de puntos nodales                |
|     VS     | Survey / Mapping Staked Points        | Levantamiento/Cartografía de puntos replanteados           |
|     VU     | Survey / Mapping Combined Utilities   | Levantamiento/Cartografía de servicios públicos combinados |
|   **W**    | **Distributed Energy**                | **Energía distribuida**                                    |
|     WC     | Distributed Energy Civil              | Energía distribuida civil                                  |
|     WD     | Distributed Energy Demolition         | Demolición de energía distribuida                          |
|     WI     | Distributed Energy Interconnection    | Interconexión de energía distribuida                       |
|     WJ     | User Defined                          | Definido por el usuario                                    |
|     WK     | User Defined                          | Definido por el usuario                                    |
|     WP     | Distributed Energy Power              | Energía distribuida eléctrica                              |
|     WS     | Distributed Energy Structural         | Energía distribuida estructural                            |
|     WT     | Distributed Energy Telecommunications | Telecomunicaciones de energía distribuida                  |
|     WY     | Distributed Energy Auxiliary Systems  | Sistemas auxiliares de energía distribuida                 |

</div>

Por ejemplo: **AD**, representa una demolición arquitectónica.


### Grupo mayor y grupo menor

Seguido al nivel dos y separando con un guion, se definen los nombres de los grupos mayores contenidos en cada disciplina, se debe utilizar como máximo 4 caracteres para su abreviación y se pueden incluir uno o varios subgrupos de la misma longitud.

<div align="center">

| Group | Description                            | Descripción                                        |
|:-----:|:---------------------------------------|:---------------------------------------------------|
| ACCS  | Access                                 | Acceso                                             |
| ACID  | Acid waste systems                     | Sistemas de residuos ácidos                        |
| AERI  | Aerial Survey                          | Levantamiento aéreo                                |
| AFFF  | Aqueous film-forming foam system       | Sistema de espuma formadora de película acuosa     |
| AFLD  | Airfields                              | Aeródromos                                         |
| AIR~  | Air                                    | Aire                                               |
| ALGN  | Alignment                              | Alineación                                         |
| ALRM  | Alarm system                           | Sistema de alarma                                  |
| ANNO  | Annotation                             | Anotación                                          |
| AREA  | Area                                   | Área                                               |
| AUXL  | Auxiliary systems                      | Sistemas auxiliares                                |
| BARR  | Barrier                                | Barrera                                            |
| BCST  | Broadcast related system (radio or TV) | Sistema de radiodifusión (radio o TV)              |
| BEAM  | Beams                                  | Vigas                                              |
| BELL  | Bell system                            | Sistema de timbres                                 |
| BLDG  | Buildings and primary structures       | Edificios y estructuras primarias                  |
| BLIN  | Baseline                               | Línea base                                         |
| BNDY  | Political boundaries                   | Límites políticos                                  |
| BORE  | Borings                                | Perforaciones                                      |
| BRCG  | Bracing                                | Arriostramiento                                    |
| BRDG  | Bridge                                 | Puente                                             |
| BRIN  | Brine systems                          | Sistemas de salmuera                               |
| BRKL  | Break / fault lines                    | Líneas de rotura/falla                             |
| BRLN  | Building restriction line              | Línea de restricción de edificaciones              |
| BZNA  | Buffer zone area                       | Zona de amortiguamiento                            |
| CABL  | Cable systems                          | Sistemas de cable                                  |
| CATH  | Cathodic Protection System             | Sistema de protección catódica                     |
| CATV  | Cable television system                | Sistema de televisión por cable                    |
| CCTV  | Closed-circuit television system       | Sistema de circuito cerrado de televisión          |
| CEME  | Cemetery                               | Cementerio                                         |
| CHAN  | Navigable channels                     | Canales navegables                                 |
| CHEM  | Chemical                               | Productos químicos                                 |
| CHIM  | Chimneys and stacks                    | Chimeneas y conductos                              |
| CLNG  | Ceiling                                | Techo                                              |
| CLOK  | Clock system                           | Sistema de relojería                               |
| CMPA  | Compressed / processed air systems     | Sistemas de aire comprimido/procesado              |
| CMPR  | Computer                               | Ordenador                                          |
| CNDW  | Condenser water systems                | Sistemas de agua del condensador                   |
| CO2S  | CO2 system                             | Sistema de CO2                                     |
| CODE  | Code compliance plan                   | Plan de cumplimiento normativo                     |
| COLS  | Columns                                | Columnas                                           |
| COMM  | Communications                         | Comunicaciones                                     |
| CONT  | Controls and instrumentation           | Controles e instrumentación                        |
| CONV  | Conveying systems                      | Sistemas de transporte                             |
| CRPT  | Carpet / carpet tiles                  | Alfombra/losetas de moqueta                        |
| CSWK  | Casework                               | Carpintería                                        |
| CTRL  | Control points                         | Puntos de control                                  |
| CWTR  | Chilled water systems                  | Sistemas de agua refrigerada                       |
| DATA  | Data / LAN system                      | Datos/LAN Sistema                                  |
| DECK  | Deck                                   | Cubierta                                           |
| DETL  | Detail                                 | Detalle                                            |
| DFLD  | Drain fields                           | Campos de drenaje                                  |
| DIAG  | Diagrams                               | Diagramas                                          |
| DICT  | Dictation system                       | Sistema de dictado                                 |
| DOMW  | Domestic water systems                 | Sistemas de agua potable                           |
| DOOR  | Doors                                  | Puertas                                            |
| DRAN  | Drains                                 | Desagües                                           |
| DRIV  | Driveways                              | Entradas de vehículos                              |
| DTCH  | Ditches or washes                      | Cunetas o lavaderos                                |
| DUAL  | Dual temperature systems               | Sistemas de doble temperatura                      |
| DUST  | Dust and fume collection systems       | Sistemas de recolección de polvo y humos           |
| ELEC  | Electrical system, telecom plan        | Sistema eléctrico, plano de telecomunicaciones     |
| ELEV  | Elevation                              | Elevación                                          |
| ELHT  | Electric heat                          | Calefacción eléctrica                              |
| EMCS  | Energy monitoring control system       | Sistema de control de monitoreo de energía         |
| ENER  | Energy management systems              | Sistemas de gestión de energía                     |
| EQPM  | Equipment                              | Equipo                                             |
| EROS  | Erosion and sediment control           | Control de erosión y sedimentos                    |
| ESMT  | Easements                              | Servidumbres                                       |
| EVAC  | Evacuation plan                        | Plan de evacuación                                 |
| EXHS  | Exhaust system                         | Sistema de extracción                              |
| FENC  | Fences                                 | Cercas                                             |
| FIRE  | Fire protection                        | Protección contra incendios                        |
| FLHA  | Flood hazard area                      | Zona con riesgo de inundación                      |
| FLOR  | Floor                                  | Piso                                               |
| FNDN  | Foundation                             | Cimentación                                        |
| FNSH  | Finishes                               | Acabados                                           |
| FRAM  | Braced frame or moment frame           | Marco arriostrado o marco de momento               |
| FSTN  | Fasteners and connections              | Sujeciones y conexiones                            |
| FUEL  | Fuel systems                           | Sistemas de combustible                            |
| FUME  | Fume hood                              | Campana de extracción de gases                     |
| FURN  | Furnishings                            | Mobiliario                                         |
| GAS~  | Gas                                    | Gas                                                |
| GATE  | Gate                                   | Portón                                             |
| GLAZ  | Glazing                                | Acristalamiento                                    |
| GLYC  | Glycol systems                         | Sistemas de glicol                                 |
| GRID  | Grids                                  | Rejillas                                           |
| GRLN  | Grade line                             | Línea de rasante                                   |
| GRND  | Ground system                          | Sistema de puesta a tierra                         |
| HALN  | Halon                                  | Halón                                              |
| HVAC  | HVAC systems                           | Sistemas de climatización (HVAC)                   |
| HWTR  | Hot water heating system               | Sistema de calentamiento de agua caliente          |
| HYDR  | Hydraulic structure                    | Estructura hidráulica                              |
| IGAS  | Inert gas                              | Gas inerte                                         |
| INGR  | Ingrants                               | Concesiones                                        |
| INST  | Instrumentation system                 | Sistema de instrumentación                         |
| INTC  | Intercom / PA systems                  | Intercomunicador/PA Sistemas                       |
| IRRG  | Irrigation                             | Riego                                              |
| JNTS  | Joints                                 | Juntas                                             |
| JOIS  | Joists                                 | Viguetas                                           |
| LAND  | Land                                   | Terreno                                            |
| LEGN  | Legend, symbols keys                   | Leyenda, símbolos y claves                         |
| LEVE  | Levee                                  | Dique                                              |
| LGAS  | Laboratory gas systems                 | Sistemas de gases de laboratorio                   |
| LIQD  | Liquid                                 | Líquido                                            |
| LITE  | Lighting                               | Iluminación                                        |
| LNTL  | Lintels                                | Dinteles                                           |
| LOCN  | Limits of construction                 | Límites de construcción                            |
| LTNG  | Lightning protection system            | Sistema de protección contra rayos                 |
| MACH  | Machine shop                           | Taller de maquinaria                               |
| MAJQ  | Major equipment                        | Equipo principal                                   |
| MDGS  | Medical gas systems                    | Sistemas de gases medicinales                      |
| MILL  | Millwork                               | Carpintería                                        |
| MINQ  | Minor equipment                        | Equipo menor                                       |
| MKUP  | Make-up air systems                    | Sistemas de aire de reposición                     |
| MNTG  | Mounting system                        | Sistema de montaje                                 |
| MPIP  | Miscellaneous piping systems           | Sistemas de tuberías misceláneos                   |
| NGAS  | Natural gas systems                    | Sistemas de gas natural                            |
| NODE  | Node                                   | Nodo                                               |
| NURS  | Nurse call system                      | Sistema de llamada a enfermeras                    |
| OBST  | Obstructions                           | Obstrucciones                                      |
| OIL~  | Oil                                    | Petróleo                                           |
| OTGR  | Outgrants                              | Conducciones de salida                             |
| PADS  | Pads                                   | Almohadillas                                       |
| PERC  | Perc testing                           | Prueba de percolación                              |
| PGNG  | Paging system                          | Sistema de buscapersonas                           |
| PHON  | Telephone system                       | Sistema telefónico                                 |
| PIPE  | Piping                                 | Tuberías                                           |
| PLAN  | Key Plan (Floor Plan)                  | Plano clave (Plano de planta)                      |
| PLAT  | Platform                               | Andén                                              |
| PLNT  | Plant and landscape material           | Planta y material de jardinería                    |
| POND  | Ponds                                  | Estanques                                          |
| POWR  | Power                                  | Energía                                            |
| PRKG  | Parking lots                           | Estacionamientos                                   |
| PROC  | Process systems                        | Sistemas de proceso                                |
| PROJ  | Projector system                       | Sistema de proyectores                             |
| PROP  | Property                               | Propiedad                                          |
| PROT  | Fire protection system                 | Sistema de protección contra incendios             |
| PRTN  | Partitions                             | Tabiques                                           |
| PVMD  | Photovoltaic modules                   | Módulos fotovoltaicos                              |
| PVMT  | Pavement                               | Pavimento                                          |
| RAIL  | Railroad                               | Ferrocarril                                        |
| RAIR  | Relief air systems                     | Sistemas de aire de alivio                         |
| RCOV  | Energy recovery systems                | Sistemas de recuperación de energía                |
| REFG  | Refrigeration systems                  | Sistemas de refrigeración                          |
| RIGG  | Rigging / automation systems           | Aparejos/automatización Sistemas                   |
| RIVR  | River                                  | Río                                                |
| ROAD  | Roadways                               | Carreteras                                         |
| ROOF  | Roof                                   | Techo                                              |
| RRAP  | Riprap                                 | Escalones                                          |
| RUNW  | Runway                                 | Pista                                              |
| RWAY  | Right-of-way                           | Derecho de paso                                    |
| SECT  | Section                                | Sección                                            |
| SERT  | Security system                        | Sistema de seguridad                               |
| SGHT  | Sight distance                         | Distancia visual                                   |
| SIGN  | Sign                                   | Señal                                              |
| SITE  | Site features                          | Características del sitio                          |
| SLAB  | Slab                                   | Losa                                               |
| SLUR  | Slurry                                 | Lodo                                               |
| SMOK  | Smoke extraction systems               | Sistemas de extracción de humos                    |
| SOIL  | Soils                                  | Suelos                                             |
| SOUN  | Sound system                           | Sistema de sonido                                  |
| SPCL  | Special systems                        | Sistemas especiales                                |
| SPFX  | Entertainment special effects system   | Sistema de efectos especiales para entretenimiento |
| SPKL  | Sprinkler                              | Rociadores                                         |
| SSWR  | Sanitary sewer                         | Alcantarillado sanitario                           |
| STEM  | Steam system                           | Sistema de vapor                                   |
| STIF  | Stiffener                              | Refuerzo                                           |
| STRM  | Storm sewer                            | Alcantarillado pluvial                             |
| STRS  | Stairs                                 | Escaleras                                          |
| SURV  | Survey                                 | Topografía                                         |
| SWLK  | Sidewalks                              | Aceras                                             |
| TEST  | Test equipment                         | Equipo de prueba                                   |
| TILE  | Tile                                   | Tejas                                              |
| TINN  | Triangulated irregular network         | Red irregular triangular                           |
| TOPO  | Topographic feature                    | Característica topográfica                         |
| TRAL  | Trails or paths                        | Senderos o caminos                                 |
| TRAN  | Transmission system                    | Sistema de transmisión                             |
| TRUS  | Trusses                                | Cerchas                                            |
| TVAN  | Television antenna system              | Sistema de antena de televisión                    |
| TVVS  | Television and video system            | Sistema de televisión y video                      |
| UNID  | Unidentified site objects              | Objetos no identificados del sitio                 |
| UTIL  | Utilities                              | Servicios públicos                                 |
| VACU  | Vacuum                                 | Aspiradora                                         |
| VIDO  | Entertainment projection systems       | Sistemas de proyección de entretenimiento          |
| WALL  | Walls                                  | Muros                                              |
| WATR  | Water supply                           | Suministro de agua                                 |
| WETL  | Wetlands                               | Humedales                                          |
| WIND  | Wind powered                           | Energía eólica                                     |
| WWAY  | Waterway                               | Vía fluvial                                        |

</div>

Por ejemplo: **A-WALL**, representa muros arquitectónicos.

El uso de grupos menores es opcional y se pueden definir un segundo subnivel.

Por ejemplo: **A-WALL-FULL**, representa muros arquitectónicos completos de piso a techo y **A-WALL-FULL-TEXT** representa los textos de anotación de los muros arquitectónicos completos de piso a techo.

> Consulte el listado completo en [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf)


### Estado o fase

Un último caracter, permite establecer el estado del elemento que se está representando en la capa.

<div align="center">

| State | Description          | Descripción              |
|:-----:|:---------------------|:-------------------------|
|   A   | Abandoned            | Abandonado               |
|   D   | Existing to demolish | Existente para demoler   |
|   E   | Existing to remain   | Existente para conservar |
|   F   | Future work          | Trabajo futuro           |
|   M   | Items to be moved    | Artículos a trasladar    |
|   N   | New work             | Trabajo nuevo            |
|   T   | Temporary work       | Trabajo temporal         |
|   X   | Not in contract      | Sin contrato             |
|  1-9  | Phase numbers        | Número de fase           |

</div>

Por ejemplo: **A-WALL-FULL-TEXT-N** representa los textos de anotación de los muros arquitectónicos completos de piso a techo que han sido proyectados a futuro.


### Nombres comunes de capas por disciplina

En el libro de Excel [DAPC_AIALayerName.xlsx](../../file/table/DAPC_AIALayerName.xlsx), se encuentran los nombres de capas definidos por la NCS para las disciplinas relacionadas con las siguientes disciplinas:

* A - Architectural (arquitectura)
* C - Civil (civil)
* E - Electrical (electrical)
* S - Structural (estructural)
* V - Survey / Mapping (topografía y cartografía)
* W - Distributed Energy (energía distribuida)

> El símbolo □, representa la designación de nivel 2.
> 
> En la versión 5 del catálogo AIA, no se encuentran disponibles los nombres de capas para la disciplina W - Distributed Energy (energía distribuida).

Para el desarrollo del curso, utilizaremos las siguientes capas y configuraciones:

| Layer - name | Disciplina               | Capa - Descripción                                  |  CAD Color  | CAD Linetype |  CAD Lineweight   |
|--------------|--------------------------|-----------------------------------------------------|:-----------:|--------------|:-----------------:|
| A-AREA       | Arquitectura             | Área                                                |    white    | Continuous   |       0.05        |
| A-CLNG       | Arquitectura             | Techo                                               |     226     | Continuous   |       0.25        |
| A-COLS       | Arquitectura             | Columnas                                            |     red     | Continuous   |        0.5        |
| A-DOOR       | Arquitectura             | Puertas                                             |     251     | Continuous   |       0.18        |
| A-EQPM       | Arquitectura             | Equipo                                              |     46      | Continuous   |       0.18        |
| A-FLOR       | Arquitectura             | Piso                                                |     252     | Continuous   |       0.35        |
| A-FLOR-LEVL  | Arquitectura             | Piso: cambios de nivel (rampas, fosos, depresiones) |     145     | Continuous   |       0.18        |
| A-FURN       | Arquitectura             | Mobiliario                                          |     46      | Continuous   |       0.18        |
| A-GLAZ       | Arquitectura             | Acristalamiento (muros transparentes y ventanas)    |   yellow    | Continuous   |       0.18        |
| A-ROOF       | Arquitectura             | Tejado                                              |     226     | Continuous   |       0.53        |
| A-WALL       | Arquitectura             | Paredes                                             |    white    | Continuous   |        0.6        |
| C-BLDG       | Civil                    | Edificios y estructuras principales                 |             |              |                   |
| C-CTRL       | Civil                    | Puntos de control                                   |             |              |                   |
| C-DRIV       | Civil                    | Accesos vehiculares                                 |    cyan     | Continuous   |        0.4        |
| C-ESMT       | Civil                    | Servidumbres                                        |             |              |                   |
| C-FENC       | Civil                    | Cercas                                              |             |              |                   |
| C-FIRE       | Civil                    | Protección contra incendios                         |             |              |                   |
| C-NGAS       | Civil                    | Sistemas de gas natural                             |             |              |                   |
| C-POWR       | Civil                    | Energía                                             |    white    | DASHED       |       0.15        |
| C-PROP       | Civil                    | Propiedad                                           |   Magenta   | Continuous   |       0.25        |
| C-RIVR       | Civil                    | Río                                                 |             |              |                   |
| C-ROAD       | Civil                    | Carreteras                                          |     57      | Continuous   |        0.4        |
| C-SOIL       | Civil                    | Suelos                                              |             |              |                   |
| C-SSWR       | Civil                    | Alcantarillado sanitario                            |    green    | Continuous   |        0.3        |
| C-STRM       | Civil                    | Alcantarillado pluvial                              |     151     | Continuous   |        0.3        |
| C-SWLK       | Civil                    | Aceras                                              |             |              |                   |
| C-TINN       | Civil                    | Red irregular triangulada                           |             |              |                   |
| C-TOPO       | Civil                    | Característica topográfica                          |             |              |                   |
| C-TRAL       | Civil                    | Senderos o caminos                                  |             |              |                   |
| C-WALL       | Civil                    | Muros                                               |    white    | Continuous   |        0.6        |
| C-WATR       | Civil                    | Suministro de agua                                  |             |              |                   |
| E-AREA       | Electricidad             | Área                                                |             |              |                   |
| E-AUXL       | Electricidad             | Sistemas auxiliares                                 |             |              |                   |
| E-CABL       | Electricidad             | Sistemas de cable                                   |     201     | HIDDEN2      |        201        |
| E-CONT       | Electricidad             | Controles e instrumentación                         |             |              |                   |
| E-DIAG       | Electricidad             | Diagramas                                           |             |              |                   |
| E-FIRE       | Electricidad             | Protección contra incendios                         |             |              |                   |
| E-GRND       | Electricidad             | Sistema de tierra                                   |             |              |                   |
| E-INST       | Electricidad             | Instrumentación Sistema                             |             |              |                   |
| E-LITE       | Electricidad             | Iluminación                                         |             |              |                   |
| E-LTNG       | Electricidad             | Sistema de protección contra rayos                  |             |              |                   |
| E-POWR       | Electricidad             | Alimentación                                        |    white    | DASHED       |       0.15        |
| S-BEAM       | Estructura               | Vigas                                               |     red     | Continuous   |        0.5        |
| S-BRCG       | Estructura               | Arriostramiento                                     |             |              |                   |
| S-COLS       | Estructura               | Columnas                                            |     red     | Continuous   |        0.5        |
| S-DECK       | Estructura               | Cubierta                                            |             |              |                   |
| S-DETL       | Estructura               | Detalle                                             |             |              |                   |
| S-FNDN       | Estructura               | Cimentación                                         |             |              |                   |
| S-GATE       | Estructura               | Puerta                                              |     251     | Continuous   |       0.18        |
| S-GRID       | Estructura               | Rejillas                                            |             |              |                   |
| S-JOIS       | Estructura               | Viguetas                                            |     38      | Continuous   |       0.09        |
| S-LNTL       | Estructura               | Dinteles                                            |             |              |                   |
| S-PLAT       | Estructura               | Plataforma                                          |             |              |                   |
| S-SLAB       | Estructura               | Losa                                                |             |              |                   |
| S-STIF       | Estructura               | Refuerzo                                            |             |              |                   |
| S-STRS       | Estructura               | Escaleras                                           |    cyan     | Continuous   |        0.4        |
| S-TRUS       | Estructura               | Cerchas                                             |             |              |                   |
| S-WALL       | Estructura               | Muros                                               |    white    | Continuous   |        0.6        |
| V-BLDG       | Topografía / Cartografía | Edificios y estructuras primarias                   |             |              |                   |
| V-BNDY       | Topografía / Cartografía | Límites políticos                                   |             |              |                   |
| V-BORE       | Topografía / Cartografía | Perforaciones                                       |             |              |                   |
| V-CTRL       | Topografía / Cartografía | Puntos de control                                   |             |              |                   |
| V-DRIV       | Topografía / Cartografía | Accesos vehiculares                                 |    cyan     | Continuous   |        0.4        |
| V-DTCH       | Topografía / Cartografía | Cunetas o arroyos                                   |             |              |                   |
| V-ESMT       | Topografía / Cartografía | Servidumbres                                        |             |              |                   |
| V-NODE       | Topografía / Cartografía | Nodo                                                |             |              |                   |
| V-POWR       | Topografía / Cartografía | Energía                                             |    white    | DASHED       |       0.15        |
| V-PRKG       | Topografía / Cartografía | Estacionamientos                                    |             |              |                   |
| V-PROP       | Topografía / Cartografía | Propiedad                                           |             |              |                   |
| V-RIVR       | Topografía / Cartografía | Río                                                 |             |              |                   |
| V-ROAD       | Topografía / Cartografía | Carreteras                                          |             |              |                   |
| V-RRAP       | Topografía / Cartografía | Escalones                                           |             |              |                   |
| V-SITE       | Topografía / Cartografía | Características del sitio                           |             |              |                   |
| V-SSWR       | Topografía / Cartografía | Alcantarillado sanitario                            |    green    | Continuous   |        0.3        |
| V-STRM       | Topografía / Cartografía | Alcantarillado pluvial                              |     151     | Continuous   |        0.3        |
| V-SURV       | Topografía / Cartografía | Levantamiento                                       |             |              |                   |
| V-SWLK       | Topografía / Cartografía | Aceras                                              |             |              |                   |
| V-TOPO       | Topografía / Cartografía | Característica topográfica                          |             |              |                   |
| V-UNID       | Topografía / Cartografía | Objetos no identificados del sitio                  |             |              |                   |
| V-WATR       | Topografía / Cartografía | Suministro de agua                                  |             |              |                   |


## 2. Creación y manejo de capas (layers) en AutoCAD

En AutoCAD, una capa (o layer) es una herramienta de organización que permite agrupar objetos por función o tipo, facilitando la gestión y visualización de dibujos complejos. Piense en capas como hojas transparentes o papeles calcantes donde cada capa contiene un conjunto específico de elementos. Esto ayuda a controlar la visibilidad, el color, el tipo de línea y otras propiedades de los objetos de manera eficiente. Por defecto, todo dibujo nuevo de AutoCAD es creado incluyendo una capa denominada cero (0).

El listado presentado en el numeral anterior, no incluye las siguientes sub-capas genéricas cero (0), debido a que no se encuentran en el catálogo AIA:

| Layer - name    | Disciplina  | Capa - Descripción                 | CAD Color | CAD Linetype                        | CAD Lineweight |
|:----------------|-------------|:-----------------------------------|:---------:|:------------------------------------|:--------------:|
| 0-Annotation    | (genérica)  | Textos de anotación                |    251    | Continuous                          |    Default     |
| 0-Axe           | (genérica)  | Ejes                               |    43     | ACAD_ISO04W100 (ISO long-dash dot)  |      0.25      |
| 0-CrossSection  | (genérica)  | Cortes y/o secciones tranversales  |    113    | Continuous                          |      0.18      |
| 0-Dimension     | (genérica)  | Dimensiones o acotados             |    92     | Continuous                          |    Default     |
| 0-Grid          | (genérica)  | Grilla o retícula de impresión     |    254    | Continuous                          |      0.15      |
| 0-Hatch         | (genérica)  | Achurado o sombreado               |    251    | Continuous                          |      0.00      |
| 0-Object        | (genérica)  | Objetos de dibujo                  |   white   | Continuous                          |      0.30      |
| 0-Profile       | (genérica)  | Perfil longitudinal                |    113    | Continuous                          |      0.18      |
| 0-Sketch        | (genérica)  | Lineas constructivas               |    20     | ACAD_ISO02W100 (ISO dash)           |    Default     |
| 0-Text          | (genérica)  | Textos descriptivos                |   cyan    | Continuous                          |      0.20      |

1. Cree un nuevo dibujo usando la plantilla métrica _acadiso.dwt_, guarde como _/file/cad/M01A02a.dwg_ y con el comando _UNITS_, establezca longitud tipo _Decimal_, ángulos en _grados_, precisiones en 2 decimales y unidades de escala de contenido insertado en _milímetros_. En el menú _Home_, seleccione en la pestaña _Layers_ la opción _Layer Properties_ o en el _Command_ ingrese el comando _**LAYER**_. Como observa, por defecto se ha creado la capa cero (0) en color blanco, con tipo de línea contínua, ancho por defecto y sin transparencia (valor de 0 a 100, donde 100 es completamente transparente).

> Dando clic derecho dentro del panel de capas, podrá acceder al menú contextual y encontrará múltiples opciones, entre ellas _New Layer_.

<div align="center"><img src="graph/AutoCAD_Layer.jpg" alt="R.DAPC" width="100%" border="0" /></div>

2. Dando clic en el botón de agregar capas, cree la capa _0-Object_ de color blanco, con tipo de línea contínua, en grosor 0.25 y sin transparencia. En detalle indique: _Objetos de dibujo_.

> Para mejorar la visibilidad del grosor de capa, puede utilizar una pluma de 0.3 mm. Recuerde activar en la parte inferior de la pantalla, la herramienta _Show/Hide Lineweight_ o ejecute el comando **LWDISPLAY**.

<div align="center"><img src="graph/AutoCAD_NewLayer.jpg" alt="R.DAPC" width="90%" border="0" /></div>

3. Repita el procedimiento para la creación de las demás sub-capas cero (0).

<div align="center"><img src="graph/AutoCAD_NewLayer1.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Para establecer una capa por defecto, en el panel de capa dar doble clic en el nombre de la capa.

3. Desde el administrador de propiedades de capas de AutoCAD, podrá entre otras opciones:

| Ícono                                                                                | Nombre                  | Detalle                                                                                                                                                                                                                                        |
|--------------------------------------------------------------------------------------|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <img src="graph/AutoCAD_ToolLayerOn.jpg" alt="R.DAPC" width="28" border="0" />       | On                      | Activar o desactivar la capa.                                                                                                                                                                                                                  |
| <img src="graph/AutoCAD_ToolLayerFreeze.jpg" alt="R.DAPC" width="28" border="0" />   | Freeze                  | Congelar la capa haciendo que sus objetos no sean invisibles, ignorando las entidades al ejecutar otros comandos. Esto mejora el rendimiento del dibujo, especialmente en archivos complejos ya que no se necesita regererar estos elementos.  |
| <img src="graph/AutoCAD_ToolLayerLock.jpg" alt="R.DAPC" width="28" border="0" />     | Lock                    | Bloquea la capa evitando que sus objetos puedan ser modificados o eliminados.                                                                                                                                                                  |
| <img src="graph/AutoCAD_ToolLayerPlot.jpg" alt="R.DAPC" width="28" border="0" />     | Plot                    | Desactiva la capa en la impresión.                                                                                                                                                                                                             |
| <img src="graph/AutoCAD_ToolLayerDefault.jpg" alt="R.DAPC" width="28" border="0" />  | Set Current             | Dando doble clic sobre la capa o seleccionando la opción _Set Current_, podrá establecerla por defecto. Los nuevos dibujos serrán creados en esta capa.                                                                                        |
| <img src="graph/AutoCAD_ToolLayerDelete.jpg" alt="R.DAPC" width="28" border="0" />   | Delete                  | Elimina la capa seleccionada y todo su contenido.                                                                                                                                                                                              |
|                                                                                      | Isolate selected layers | Aisla la(s) capa(s) seleccionada(s) desactivando todas las demás capas. Opción disponible usando el menú contextual o clic derecho.                                                                                                            |

> :bulb: Para mejorar la visualización de los colores definidos en las capas y para evitar la fatiga visual, es recomendable cambiar el color del fondo del espacio de dibujo a negro, para ello, desde el ícono de AutoCAD vaya a _Options_ y en la pestaña _Display_ de clic en botón _Colors..._, establezca en _Context / 2D model space / Interface element: Uniform background / Color: Black._

<div align="center"><img src="graph/AutoCAD_DisplayBackgroundColor.jpg" alt="R.DAPC" width="100%" border="0" /></div>

> Utilice el comando _LAYDEL_ para eliminar una capa y todos los elementos que contiene.


### Ejercicio M01A02aE01

En el archivo _M01A02a.dwg_, cree las capas establecidas en el catálogo [DAPC_AIALayerName.xlsx](../../file/table/DAPC_AIALayerName.xlsx) para el curso DACP. En las descripciones incluya el nombre de la disciplina un guion y la descripción, p. ej., _Arquitectura - Área_.


## Actividades de proyecto :triangular_ruler:

Utilizando la [Plantilla de Microsoft Word](../../file/report/R.DAPC.PlantillaInformeTecnico.docx) suministrada, cree un informe técnico mostrando las actividades desarrolladas en el orden presentado en esta actividad, junto con las consideraciones de diseño, los análisis y recomendaciones realizadas para las actividades del proyecto. Convierta a Adobe Acrobat (.pdf) y guarde en la carpeta _/report_ del repositorio de datos, nombre el archivo con el código de la actividad agregando al final la fecha de control documental en formato aaaammdd (p. ej. M01A01_20250531.pdf).

Las especificaciones técnicas detalladas del proyecto para este módulo del curso, se encuentran en el archivo: [DAPC_ProyectoCAD.xlsx](../../file/table/DAPC_ProyectoCAD.xlsx)

En la siguiente tabla se listan las actividades que deben ser desarrolladas y documentadas por cada grupo de proyecto.

| Actividad | Alcance                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:----------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| M01A02a   | Cree los elementos de proyecto del grupo _1. Especificaciones técnicas generales_, correspondientes a: capas o layers. Se deben utilizar los nombres de capas establecidos en la norma internacional estándar ISO-13567, aplicando las especificaciones del United States National CAD Stardard - v5 del National Institute of Building Sciences para los grupos A-Architectural, C-Civil, E-Electrical, S-Structural, V-Survey / Mapping y W-Distributed Energy.                                                                                    | 
| M01A02a   | Investigue normas Colombianas para la definición de nombres de capas, incluya el detalle de los enlaces y referencias consultadas. Buscar p. ej., en [IDU](https://www.idu.gov.co/), [INVIAS](https://www.invias.gov.co/), [SCA](https://sociedadcolombianadearquitectos.org/), [COPNIA](https://www.copnia.gov.co/).                                                                                                                                                                                                                                | 
| M01A02a   | Investigue que colores y grosores pueden ser aplicados en las disciplinas a utilizar en el curso y complete el catálogo [DAPC_AIALayerName.xlsx](../../file/table/DAPC_AIALayerName.xlsx) para el curso DACP.                                                                                                                                                                                                                                                                                                                                        | 
| M01A02a   | En una tabla y al final del informe de avance de esta entrega, indique el detalle de las actividades realizadas por cada integrante de su grupo; utilice las siguientes columnas: `Nombre del integrante`, `Actividades realizadas`, `Tiempo dedicado en horas` (si presenta la entrega individualmente, no es necesaria la presentación de esta tabla).<br><br>Para actividades que no requieren del desarrollo de elementos de avance, indicar si realizo la lectura de la guía de clase y las lecturas indicadas al inicio en los requerimientos. | 

> Nota 1: para la revisión del proyecto final, guarde los libros cálculo de Microsoft Excel y los archivos generados en esta actividad, en las localizaciones indicadas en cada numeral.
>
> Nota 2: una vez el instructor realice la revisión y el estudiante presente las correcciones o ajustes solicitados, será necesario cargar una nueva versión de los archivos en el repositorio del proyecto, incluyendo o actualizando al final del nombre del archivo, la fecha de presentación en formato aaaammdd y manteniendo las versiones anteriores presentadas.
>


## Referencias

* https://nibs.org/resources/standards/ncs6
* https://nibs.org/resources/reports/national-bim-guide-owners
* https://help.autodesk.com/view/ACD/2026/ESP
* https://help.autodesk.com/view/ACD/2026/ENU/
* https://blog.draftsperson.net/iso-13567-cad-layer-standard/
* [Creating Macros in AutoCAD](https://www.youtube.com/watch?v=_fSgqZnqWPw)
* [New AutocCAD Command for Layer settings](https://www.youtube.com/watch?v=lo9cIBHD3j8)


## Control de versiones

| Versión    | Descripción        | Autor                                      | Horas |
|------------|:-------------------|--------------------------------------------|:-----:|
| 2025.06.24 | Versión inicial.   | [rcfdtools](https://github.com/rcfdtools)  |   8   |


##

_R.DAPC es de uso libre para fines académicos, conoce nuestra licencia, cláusulas, condiciones de uso y como referenciar los contenidos publicados en este repositorio, dando [clic aquí](../../LICENSE.md)._

_¡Encontraste útil este repositorio!, apoya su difusión marcando este repositorio con una ⭐ o síguenos dando clic en el botón Follow de [rcfdtools](https://github.com/rcfdtools) en GitHub._


| [:arrow_backward: Anterior](../M01A01/Readme.md) | [:house: Inicio](../../README.md) | [:beginner: Ayuda / Colabora](https://github.com/rcfdtools/R.DAPC/discussions/1) | [Siguiente :arrow_forward:](../M01A02b/Readme.md) |
|--------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------------|---------------------------------------------------|

[^1]: 