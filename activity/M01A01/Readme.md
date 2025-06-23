# 1.2. Elementos básicos de dibujo
Keywords: `polyline` `arc` `fillet` `chamfer` `point` `array` `mirror` `offset` `donut` `trim` `ellipse` `parabola` `hyperbola`  `m01a01`

Capas o Layers. Sistema de coordenadas de usuario - UCS. Barra de herramientas de puntos de convergencia. Comandos POLYLINE, ARC, FILLET, CHAMFER, POINT, ARRAY, MIRROR, OFFSET, DONUT, TRIM. Dibujo de la elipse, la parábola y la hipérbola.

<div align="center"><img src="graph/M01A01.jpg" alt="R.DAPC" width="60%" border="0" /></div>


## Objetivos

Al finalizar esta semana el estudiante:
* Realiza ejercicios de práctica en los que dibuja, traza y edita líneas, poli-líneas, arcos, chaflanes, cortes transversales y figuras geométricas en AutoCAD.


## Requerimientos

Archivos, actividades previas, lecturas y herramientas requeridas para el desarrollo de esta actividad:

<div align="center">

| Requerimiento                                                                                           | Descripción                                                                                                                      |
|:--------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [:toolbox:Herramienta](https://www.autodesk.com/products/autocad)                                       | Autodesk Autocad 3D 2026 o superior.                                                                                             |
| [:toolbox:Herramienta](https://www.microsoft.com/es/microsoft-365/excel?market=bz)                      | Microsoft Excel 365.                                                                                                             |
| [:toolbox:Herramienta](https://notepad-plus-plus.org/)                                                  | Notepad++.                                                                                                                       |

</div>

> Para los diferentes avances de proyecto, es necesario guardar y publicar las diferentes versiones generadas del (los) libro (s) de Microsoft Excel y reportes o informes, agregando al final la fecha de control documental en formato aaaammdd, p. ej. _R.HydroTools.DisenoCaucesParametros.20250528.xlsx_.


## 1. Normas para nombramiento de capas (layers)

En AutoCAD, una capa (o layer) es una herramienta de organización que permite agrupar objetos por función o tipo, facilitando la gestión y visualización de dibujos complejos. Piense en capas como hojas transparentes o papeles calcantes donde cada capa contiene un conjunto específico de elementos. Esto ayuda a controlar la visibilidad, el color, el tipo de línea y otras propiedades de los objetos de manera eficiente. Por defecto, todo dibujo nuevo de AutoCAD es creado incluyendo una capa denominada cero (0).

La creación de capas puede obedecer a nombres propios con los que el usuario está familiarizado (p. ej., Dimension, Objeto, Eje, Lote, Circuito, Achurado, Contorno, Edificio, Instalacion), sin embargo, para la creación profesional de proyectos, se recomienda seguir estándares de creación y nombramiento de capas, como los establecidos en la norma internacional estándar [ISO 13567](https://www.iso.org/standard/70181.html).

Para este ejercicio, utilizaremos como referencia las especificaciones del [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf) del [National Institute of Building Sciences](https://nibs.org/), en los que se encuentran las codificaciones para nombres de elementos.

### Prefijos por disciplina - Nivel 1

Para la designación de disciplinas, utilizaremos los siguientes prefijos:

<div align="center">

| Prefijo  | Disciplina (en)            | Disciplina (es)                |
|:--------:|:---------------------------|:-------------------------------|
|    A     | Architectural              | Arquitectura                   |
|    B     | Geotechnical               | Geotecnia                      |
|    C     | Civil                      | Civil                          |
|    D     | Process                    | Procesos                       |
|    E     | Electrical                 | Electricidad                   |
|    F     | Fire Protection            | Protección contra incendios    |
|    G     | General                    | General                        |
|    H     | Hazardous Materials        | Materiales peligrosos          |
|    I     | Interiors                  | Interiores                     |
|    L     | Landscape                  | Paisajismo                     |
|    M     | Mechanical                 | Mecánica                       |
|    O     | Operations                 | Operaciones                    |
|    P     | Plumbing                   | Fontanería                     |
|    Q     | Equipment                  | Equipos                        |
|    R     | Resource                   | Recursos                       |
|    S     | Structural                 | Estructura                     |
|    T     | Telecommunications         | Telecomunicaciones             |
|    V     | Survey / Mapping           | Topografía / Cartografía       |
|    W     | Distributed Energy         | Energía distribuida            |
|    X     | Other Disciplines          | Otras disciplinas              |
|    Z     | Contractor / Shop Drawings | Contratista / Planos de taller |

</div>

Por ejemplo: **A**, representa la disciplina de arquitectura.


### Prefijos por disciplina - Nivel 2

El nivel dos, es un caracter opcional que se coloca a la derecha del caracter de nivel 1, y es usado para definir la característica de las disciplinas, p. ej., para arquitectura, civil y electricidad:

<div align="center">

| Designador | Descripción (en)              | Descripción (es)               |
|:----------:|:------------------------------|:-------------------------------|
|   **A**    | **Architectural**             | **Arquitectura**               |
|     AD     | Architectural Demolition      | Demolición arquitectónica      |
|     AE     | Architectural Elements        | Elementos arquitectónicos      |
|     AF     | Architectural Finishes        | Acabados arquitectónicos       |
|     AG     | Architectural Graphics        | Gráficos arquitectónicos       |
|     AI     | Architectural Interiors       | Interiores arquitectónicos     |
|     AJ     | User Defined                  | Definido por el usuario        |
|     AK     | User Defined                  | Definido por el usuario        |
|     AS     | Architectural Site            | Sitio arquitectónico           |
|  **C**     | **Civil**                     | **Civil**                      |
|     CD     | Civil Demolition              | Demolición Civil               |
|     CG     | Civil Grading                 | Nivelación Civil               |
|     CI     | Civil Improvements            | Mejoras Civiles                |
|     CJ     | User Defined                  | Definido por el Usuario        |
|     CK     | User Defined                  | Definido por el Usuario        |
|     CN     | Civil Nodes                   | Nudos Civiles                  |
|     CP     | Civil Paving                  | Pavimentación Civil            |
|     CS     | Civil Site                    | Sitio Civil                    |
|     CT     | Civil Transportation          | Transporte Civil               |
|     CU     | Civil Utilities               | Servicios Civiles              |
|   **E**    | **Electrical**                | **Electricidad**               |
|     ED     | Electrical Demolition         | Demolición eléctrica           |
|     EI     | Electrical Instrumentation    | Instrumentación eléctrica      |
|     EJ     | User Defined                  | Definido por el usuario        |
|     EK     | User Defined                  | Definido por el usuario        |
|     EL     | Electrical Lighting           | Iluminación eléctrica          |
|     EP     | Electrical Power              | Energía eléctrica              |
|     ES     | Electrical Site               | Sitio eléctrico                |
|     ET     | Electrical Telecommunications | Telecomunicaciones eléctricas  |
|     EY     | Electrical Auxiliary Systems  | Sistemas auxiliares eléctricos |

</div>

Por ejemplo: **AD**, representa una demolición arquitectónica.


### Grupo mayor y grupo menor

Seguido al nivel dos y separando con un guion, se definen los nombres de los grupos mayores contenidos en cada disciplina, se debe utilizar como máximo 4 caracteres para su abreviación y se pueden incluir subgrupos de la misma longitud, p. ej. para arquitectura, civil y electricidad:

<div align="center">

| Grupo mayor  | Descripción (en)                       | Descripción (es)                                    |
|:------------:|:---------------------------------------|:----------------------------------------------------|
|     ACCS     | Access                                 | Acceso                                              |
|     ACID     | Acid waste systems                     | Sistemas de residuos ácidos                         |
|     AERI     | Aerial Survey                          | Levantamiento aéreo                                 |
|     AFFF     | Aqueous film-forming foam system       | Sistema de espuma formadora de película acuosa      |
|     AFLD     | Airfields                              | Aeródromos                                          |
|     AIR~     | Air                                    | Aire                                                |
|     ALGN     | Alignment                              | Alineación                                          |
|     ALRM     | Alarm system                           | Sistema de alarma                                   |
|     ANNO     | Annotation                             | Anotación                                           |
|     AREA     | Area                                   | Área                                                |
|     AUXL     | Auxiliary systems                      | Sistemas auxiliares                                 |
|     BARR     | Barrier                                | Barrera                                             |
|     BCST     | Broadcast related system (radio or TV) | Sistema de radiodifusión (radio o TV)               |
|     BEAM     | Beams                                  | Vigas                                               |
|     BELL     | Bell system                            | Sistema de timbres                                  |
|     BLDG     | Buildings and primary structures       | Edificios y estructuras primarias                   |
|     BLIN     | Baseline                               | Línea base                                          |
|     BNDY     | Political boundaries                   | Límites políticos                                   |
|     BORE     | Borings                                | Perforaciones                                       |
|     BRCG     | Bracing                                | Arriostramiento                                     |
|     BRDG     | Bridge                                 | Puente                                              |
|     BRIN     | Brine systems                          | Sistemas de salmuera                                |
|     BRKL     | Break / fault lines                    | Líneas de rotura/falla                              |
|     BRLN     | Building restriction line              | Línea de restricción de edificaciones               |
|     BZNA     | Buffer zone area                       | Zona de amortiguamiento                             |
|     CABL     | Cable systems                          | Sistemas de cable                                   |
|     CATH     | Cathodic Protection System             | Sistema de protección catódica                      |
|     CATV     | Cable television system                | Sistema de televisión por cable                     |
|     CCTV     | Closed-circuit television system       | Sistema de circuito cerrado de televisión           |
|     CEME     | Cemetery                               | Cementerio                                          |
|     CHAN     | Navigable channels                     | Canales navegables                                  |
|     CHEM     | Chemical                               | Productos químicos                                  |
|     CHIM     | Chimneys and stacks                    | Chimeneas y conductos                               |
|     CLNG     | Ceiling                                | Techo                                               |
|     CLOK     | Clock system                           | Sistema de relojería                                |
|     CMPA     | Compressed / processed air systems     | Sistemas de aire comprimido/procesado               |
|     CMPR     | Computer                               | Ordenador                                           |
|     CNDW     | Condenser water systems                | Sistemas de agua del condensador                    |
|     CO2S     | CO2 system                             | Sistema de CO2                                      |
|     CODE     | Code compliance plan                   | Plan de cumplimiento normativo                      |
|     COLS     | Columns                                | Columnas                                            |
|     COMM     | Communications                         | Comunicaciones                                      |
|     CONT     | Controls and instrumentation           | Controles e instrumentación                         |
|     CONV     | Conveying systems                      | Sistemas de transporte                              |
|     CRPT     | Carpet / carpet tiles                  | Alfombra/losetas de moqueta                         |
|     CSWK     | Casework                               | Carpintería                                         |
|     CTRL     | Control points                         | Puntos de control                                   |
|     CWTR     | Chilled water systems                  | Sistemas de agua refrigerada                        |
|     DATA     | Data / LAN system                      | Datos/LAN Sistema                                   |
|     DECK     | Deck                                   | Cubierta                                            |
|     DETL     | Detail                                 | Detalle                                             |
|     DFLD     | Drain fields                           | Campos de drenaje                                   |
|     DIAG     | Diagrams                               | Diagramas                                           |
|     DICT     | Dictation system                       | Sistema de dictado                                  |
|     DOMW     | Domestic water systems                 | Sistemas de agua potable                            |
|     DOOR     | Doors                                  | Puertas                                             |
|     DRAN     | Drains                                 | Desagües                                            |
|     DRIV     | Driveways                              | Entradas de vehículos                               |
|     DTCH     | Ditches or washes                      | Cunetas o lavaderos                                 |
|     DUAL     | Dual temperature systems               | Sistemas de doble temperatura                       |
|     DUST     | Dust and fume collection systems       | Sistemas de recolección de polvo y humos            |
|     ELEC     | Electrical system, telecom plan        | Sistema eléctrico, plano de telecomunicaciones      |
|     ELEV     | Elevation                              | Elevación                                           |
|     ELHT     | Electric heat                          | Calefacción eléctrica                               |
|     EMCS     | Energy monitoring control system       | Sistema de control de monitoreo de energía          |
|     ENER     | Energy management systems              | Sistemas de gestión de energía                      |
|     EQPM     | Equipment                              | Equipo                                              |
|     EROS     | Erosion and sediment control           | Control de erosión y sedimentos                     |
|     ESMT     | Easements                              | Servidumbres                                        |
|     EVAC     | Evacuation plan                        | Plan de evacuación                                  |
|     EXHS     | Exhaust system                         | Sistema de extracción                               |
|     FENC     | Fences                                 | Cercas                                              |
|     FIRE     | Fire protection                        | Protección contra incendios                         |
|     FLHA     | Flood hazard area                      | Zona con riesgo de inundación                       |
|     FLOR     | Floor                                  | Piso                                                |
|     FNDN     | Foundation                             | Cimentación                                         |
|     FNSH     | Finishes                               | Acabados                                            |
|     FRAM     | Braced frame or moment frame           | Marco arriostrado o marco de momento                |
|     FSTN     | Fasteners and connections              | Sujeciones y conexiones                             |
|     FUEL     | Fuel systems                           | Sistemas de combustible                             |
|     FUME     | Fume hood                              | Campana de extracción de gases                      |
|     FURN     | Furnishings                            | Mobiliario                                          |
|     GAS~     | Gas                                    | Gas                                                 |
|     GATE     | Gate                                   | Portón                                              |
|     GLAZ     | Glazing                                | Acristalamiento                                     |
|     GLYC     | Glycol systems                         | Sistemas de glicol                                  |
|     GRID     | Grids                                  | Rejillas                                            |
|     GRLN     | Grade line                             | Línea de rasante                                    |
|     GRND     | Ground system                          | Sistema de puesta a tierra                          |
|     HALN     | Halon                                  | Halón                                               |
|     HVAC     | HVAC systems                           | Sistemas de climatización (HVAC)                    |
|     HWTR     | Hot water heating system               | Sistema de calentamiento de agua caliente           |
|     HYDR     | Hydraulic structure                    | Estructura hidráulica                               |
|     IGAS     | Inert gas                              | Gas inerte                                          |
|     INGR     | Ingrants                               | Concesiones                                         |
|     INST     | Instrumentation system                 | Sistema de instrumentación                          |
|     INTC     | Intercom / PA systems                  | Intercomunicador/PA Sistemas                        |
|     IRRG     | Irrigation                             | Riego                                               |
|     JNTS     | Joints                                 | Juntas                                              |
|     JOIS     | Joists                                 | Viguetas                                            |
|     LAND     | Land                                   | Terreno                                             |
|     LEGN     | Legend, symbols keys                   | Leyenda, símbolos y claves                          |
|     LEVE     | Levee                                  | Dique                                               |
|     LGAS     | Laboratory gas systems                 | Sistemas de gases de laboratorio                    |
|     LIQD     | Liquid                                 | Líquido                                             |
|     LITE     | Lighting                               | Iluminación                                         |
|     LNTL     | Lintels                                | Dinteles                                            |
|     LOCN     | Limits of construction                 | Límites de construcción                             |
|     LTNG     | Lightning protection system            | Sistema de protección contra rayos                  |
|     MACH     | Machine shop                           | Taller de maquinaria                                |
|     MAJQ     | Major equipment                        | Equipo principal                                    |
|     MDGS     | Medical gas systems                    | Sistemas de gases medicinales                       |
|     MILL     | Millwork                               | Carpintería                                         |
|     MINQ     | Minor equipment                        | Equipo menor                                        |
|     MKUP     | Make-up air systems                    | Sistemas de aire de reposición                      |
|     MNTG     | Mounting system                        | Sistema de montaje                                  |
|     MPIP     | Miscellaneous piping systems           | Sistemas de tuberías misceláneos                    |
|     NGAS     | Natural gas systems                    | Sistemas de gas natural                             |
|     NODE     | Node                                   | Nodo                                                |
|     NURS     | Nurse call system                      | Sistema de llamada a enfermeras                     |
|     OBST     | Obstructions                           | Obstrucciones                                       |
|     OIL~     | Oil                                    | Petróleo                                            |
|     OTGR     | Outgrants                              | Conducciones de salida                              |
|     PADS     | Pads                                   | Almohadillas                                        |
|     PERC     | Perc testing                           | Prueba de percolación                               |
|     PGNG     | Paging system                          | Sistema de buscapersonas                            |
|     PHON     | Telephone system                       | Sistema telefónico                                  |
|     PIPE     | Piping                                 | Tuberías                                            |
|     PLAN     | Key Plan (Floor Plan)                  | Plano clave (Plano de planta)                       |
|     PLAT     | Platform                               | Andén                                               |
|     PLNT     | Plant and landscape material           | Planta y material de jardinería                     |
|     POND     | Ponds                                  | Estanques                                           |
|     POWR     | Power                                  | Energía                                             |
|     PRKG     | Parking lots                           | Estacionamientos                                    |
|     PROC     | Process systems                        | Sistemas de proceso                                 |
|     PROJ     | Projector system                       | Sistema de proyectores                              |
|     PROP     | Property                               | Propiedad                                           |
|     PROT     | Fire protection system                 | Sistema de protección contra incendios              |
|     PRTN     | Partitions                             | Tabiques                                            |
|     PVMD     | Photovoltaic modules                   | Módulos fotovoltaicos                               |
|     PVMT     | Pavement                               | Pavimento                                           |
|     RAIL     | Railroad                               | Ferrocarril                                         |
|     RAIR     | Relief air systems                     | Sistemas de aire de alivio                          |
|     RCOV     | Energy recovery systems                | Sistemas de recuperación de energía                 |
|     REFG     | Refrigeration systems                  | Sistemas de refrigeración                           |
|     RIGG     | Rigging / automation systems           | Aparejos/automatización Sistemas                    |
|     RIVR     | River                                  | Río                                                 |
|     ROAD     | Roadways                               | Carreteras                                          |
|     ROOF     | Roof                                   | Techo                                               |
|     RRAP     | Riprap                                 | Escalones                                           |
|     RUNW     | Runway                                 | Pista                                               |
|     RWAY     | Right-of-way                           | Derecho de paso                                     |
|     SECT     | Section                                | Sección                                             |
|     SERT     | Security system                        | Sistema de seguridad                                |
|     SGHT     | Sight distance                         | Distancia visual                                    |
|     SIGN     | Sign                                   | Señal                                               |
|     SITE     | Site features                          | Características del sitio                           |
|     SLAB     | Slab                                   | Losa                                                |
|     SLUR     | Slurry                                 | Lodo                                                |
|     SMOK     | Smoke extraction systems               | Sistemas de extracción de humos                     |
|     SOIL     | Soils                                  | Suelos                                              |
|     SOUN     | Sound system                           | Sistema de sonido                                   |
|     SPCL     | Special systems                        | Sistemas especiales                                 |
|     SPFX     | Entertainment special effects system   | Sistema de efectos especiales para entretenimiento  |
|     SPKL     | Sprinkler                              | Rociadores                                          |
|     SSWR     | Sanitary sewer                         | Alcantarillado sanitario                            |
|     STEM     | Steam system                           | Sistema de vapor                                    |
|     STIF     | Stiffener                              | Refuerzo                                            |
|     STRM     | Storm sewer                            | Alcantarillado pluvial                              |
|     STRS     | Stairs                                 | Escaleras                                           |
|     SURV     | Survey                                 | Topografía                                          |
|     SWLK     | Sidewalks                              | Aceras                                              |
|     TEST     | Test equipment                         | Equipo de prueba                                    |
|     TILE     | Tile                                   | Tejas                                               |
|     TINN     | Triangulated irregular network         | Red irregular triangular                            |
|     TOPO     | Topographic feature                    | Característica topográfica                          |
|     TRAL     | Trails or paths                        | Senderos o caminos                                  |
|     TRAN     | Transmission system                    | Sistema de transmisión                              |
|     TRUS     | Trusses                                | Cerchas                                             |
|     TVAN     | Television antenna system              | Sistema de antena de televisión                     |
|     TVVS     | Television and video system            | Sistema de televisión y video                       |
|     UNID     | Unidentified site objects              | Objetos no identificados del sitio                  |
|     UTIL     | Utilities                              | Servicios públicos                                  |
|     VACU     | Vacuum                                 | Aspiradora                                          |
|     VIDO     | Entertainment projection systems       | Sistemas de proyección de entretenimiento           |
|     WALL     | Walls                                  | Muros                                               |
|     WATR     | Water supply                           | Suministro de agua                                  |
|     WETL     | Wetlands                               | Humedales                                           |
|     WIND     | Wind powered                           | Energía eólica                                      |
|     WWAY     | Waterway                               | Vía fluvial                                         |

</div>

Por ejemplo: **A-WALL**, representa muros arquitectónicos.

El uso de grupos menores es opcional y se pueden definir un segundo subnivel.

Por ejemplo: **A-WALL-FULL**, representa muros arquitectónicos completos de piso a techo y **A-WALL-FULL-TEXT** representa los textos de anotación de los muros arquitectónicos completos de piso a techo.

> Consulte el listado completo en [United States National CAD Stardard - v5](https://facilities.duke.edu/sites/default/files/AIA%20CAD%20Layer%20Guidelines.pdf)


### Estado o fase

Un último caracter, permite establecer el estado del elemento que se está representando en la capa.

<div align="center">

| Estado | Descripción (en)     | Descripción (es)         |
|:------:|:---------------------|:-------------------------|
|   A    | Abandoned            | Abandonado               |
|   D    | Existing to demolish | Existente para demoler   |
|   E    | Existing to remain   | Existente para conservar |
|   F    | Future work          | Trabajo futuro           |
|   M    | Items to be moved    | Artículos a trasladar    |
|   N    | New work             | Trabajo nuevo            |
|   T    | Temporary work       | Trabajo temporal         |
|   X    | Not in contract      | Sin contrato             |
|  1-9   | Phase numbers        | Número de fase           |

</div>

Por ejemplo: **A-WALL-FULL-TEXT-N** representa los textos de anotación de los muros arquitectónicos completos de piso a techo que han sido proyectados a futuro.


### Nombres comunes de capas por disciplina

> El símbolo □, representa la designación de nivel 2.

**En Arquitectura:**

<div align="center">

| Layer name        | Descripción (en)                                            | Descripción (es)                                                      |
|-------------------|-------------------------------------------------------------|-----------------------------------------------------------------------|
| A□-AREA           | Area                                                        | Área                                                                  |
| A□-AREA-OCCP      | Area: occupant or employee names                            | Área: nombres de ocupantes o empleados                                |
| A□-BARR           | Barrier                                                     | Barrera                                                               |
| A□-BARR-AIR~      | Barrier: air                                                | Barrera: aire                                                         |
| A□-CLNG           | Ceiling                                                     | Techo                                                                 |
| A□-CLNG-ACCS      | Ceiling: access                                             | Techo: acceso                                                         |
| A□-CLNG-GRID      | Ceiling: grid                                               | Techo: rejilla                                                        |
| A□-CLNG-OPNG      | Ceiling: openings                                           | Techo: aberturas                                                      |
| A□-CLNG-SUSP      | Ceiling: suspended elements                                 | Techo: elementos suspendidos                                          |
| A□-CLNG-TEES      | Ceiling: main tees                                          | Techo: tes principales                                                |
| A□-COLS           | Columns                                                     | Columnas                                                              |
| A□-CONV           | Conveying systems                                           | Sistemas de transporte                                                |
| A□-DOOR           | Doors                                                       | Puertas                                                               |
| A□-DOOR-FULL      | Doors: full-height (swing and leaf)                         | Puertas: altura completa (batientes y de hoja)                        |
| A□-DOOR-PRHT      | Doors: partial-height (swing and leaf)                      | Puertas: altura parcial (batientes y de hoja)                         |
| A□-EQPM           | Equipment                                                   | Equipo                                                                |
| A□-EQPM-ACCS      | Equipment: access                                           | Equipo: acceso                                                        |
| A□-EQPM-FIXD      | Equipment: fixed                                            | Equipo: fijo                                                          |
| A□-EQPM-OVHD      | Equipment: overhead                                         | Equipo: suspendido                                                    |
| A□-FLOR           | Floor                                                       | Piso                                                                  |
| A□-FLOR-CSWK      | Floor: casework                                             | Piso: carpintería                                                     |
| A□-FLOR-EVTR      | Floor: elevator cars and equipment                          | Piso: cabinas y equipo de ascensor                                    |
| A□-FLOR-FIXT      | Floor: fixtures (plumbing)                                  | Piso: accesorios (fontanería)                                         |
| A□-FLOR-HRAL      | Floor: handrails/guard rails                                | Piso: pasamanos/barandillas                                           |
| A□-FLOR-LEVL      | Floor: level changes (ramps, pits, depressions)             | Piso: cambios de nivel (rampas, fosos, depresiones)                   |
| A□-FLOR-OTLN      | Floor: outline                                              | Piso: contorno                                                        |
| A□-FLOR-OVHD      | Floor: overhead                                             | Piso: suspendido                                                      |
| A□-FLOR-RAIS      | Floor: raised                                               | Piso: elevado                                                         |
| A□-FLOR-RISR      | Floor: risers                                               | Piso: contrahuellas                                                   |
| A□-FLOR-SIGN      | Floor: signage                                              | Piso: señalización                                                    |
| A□-FLOR-SPCL      | Floor: specialties (toilet room accessories, display cases) | Piso: artículos especiales (accesorios para baños, vitrinas)          |
| A□-FLOR-STRS      | Floor: stair treads (escalators, ladders)                   | Piso: escalones de escaleras (escaleras mecánicas, escaleras de mano) |
| A□-FLOR-TPTN      | Floor: toilet partitions                                    | Suelo: mamparas de baño                                               |
| A□-FLOR-WDWK      | Floor: architectural woodwork                               | Suelo: carpintería arquitectónica                                     |
| A□-FURN           | Furnishings                                                 | Mobiliario                                                            |
| A□-FURN-FILE      | Furnishings: file cabinets                                  | Mobiliario: archivadores                                              |
| A□-FURN-FIXD      | Furnishings: fixed                                          | Mobiliario: fijo                                                      |
| A□-FURN-FREE      | Furnishings: freestanding                                   | Mobiliario: independiente                                             |
| A□-FURN-PLNT      | Furnishings: plants                                         | Mobiliario: plantas                                                   |
| A□-FURN-PNLS      | Furnishings: system panels                                  | Mobiliario: paneles de sistema                                        |
| A□-FURN-SEAT      | Furnishings: seating                                        | Mobiliario: asientos                                                  |
| A□-FURN-STOR      | Furnishings: storage (component system)                     | Mobiliario: almacenamiento (sistema de componentes)                   |
| A□-FURN-WKSF      | Furnishings: work surface (component system)                | Mobiliario: superficie de trabajo (sistema de componentes)            |
| A□-GLAZ           | Glazing                                                     | Acristalamiento                                                       |
| A□-GLAZ-FULL      | Glazing: full-height                                        | Acristalamiento: altura completa                                      |
| A□-GLAZ-PRHT      | Glazing: partial-height                                     | Acristalamiento: altura parcial                                       |
| A□-GLAZ-SILL      | Glazing: window sills                                       | Acristalamiento: alféizares de ventanas                               |
| A□-HVAC           | HVAC systems                                                | Sistemas de climatización (HVAC)                                      |
| A□-HVAC-RDFF      | HVAC systems: return air diffusers                          | Sistemas de climatización (HVAC): difusores de aire de retorno        |
| A□-HVAC-SDFF      | HVAC systems: supply diffusers                              | Sistemas de climatización (HVAC): difusores de suministro             |
| A□-LITE           | Lighting                                                    | Iluminación                                                           |
| A□-ROOF           | Roof                                                        | Techo                                                                 |
| A□-ROOF-HRAL      | Roof: handrails/guard rails                                 | Techo: pasamanos/barandillas                                          |
| A□-ROOF-LEVL      | Roof: level changes                                         | Techo: cambios de nivel                                               |
| A□-ROOF-OTLN      | Roof: outline                                               | Techo: contorno                                                       |
| A□-ROOF-RISR      | Roof: risers                                                | Techo: contrahuellas                                                  |
| A□-ROOF-STRS      | Roof: stair treads (ladders)                                | Techo: peldaños de escalera                                           |
| A□-WALL           | Walls                                                       | Paredes                                                               |
| A□-WALL-CAVI      | Walls: cavity                                               | Paredes: cámara de aire                                               |
| A□-WALL-CNTR      | Walls: center                                               | Paredes: centro                                                       |
| A□-WALL-CURT      | Walls: curtain                                              | Paredes: cortina                                                      |
| A□-WALL-FIRE      | Walls: fire protection                                      | Paredes: protección contra incendios                                  |
| A□-WALL-FULL      | Walls: full-height                                          | Paredes: Altura completa                                              |
| A□-WALL-FULL-EXTR | Walls: full-height: exterior                                | Paredes: altura completa: exterior                                    |
| A□-WALL-FULL-INTR | Walls: full-height: interior                                | Paredes: altura completa: interior                                    |
| A□-WALL-HEAD      | Walls: door and window headers                              | Paredes: dintel de puertas y ventanas                                 |
| A□-WALL-JAMB      | Walls: door and window jambs                                | Paredes: jambas de puertas y ventanas                                 |
| A□-WALL-MESH      | Walls: mesh or wire                                         | Paredes: malla o alambre                                              |
| A□-WALL-MOVE      | Walls: moveable                                             | Paredes: móviles                                                      |
| A□-WALL-PATT      | Walls: texture and hatch patterns                           | Paredes: textura y patrones de tramado                                |
| A□-WALL-PRHT      | Walls: partial-height                                       | Paredes: altura parcial                                               |

</div>

**En Ingeniería Civil:**

<div align="center">

| Layer name        | Descripción (en)                                                    | Descripción (es)                                                              |
|:------------------|:--------------------------------------------------------------------|:------------------------------------------------------------------------------|
| C□-AFLD           | Airfields                                                           | Aeródromos                                                                    |
| C□-AFLD-ASPH      | Airfields: asphalt                                                  | Aeródromos: asfalto                                                           |
| C□-AFLD-CNTR      | Airfields: center                                                   | Aeródromos: centro                                                            |
| C□-AFLD-CONC      | Airfields: concrete                                                 | Aeródromos: hormigón                                                          |
| C□-AFLD-FLNE      | Airfields: fire lane                                                | Aeródromos: carril cortafuegos                                                |
| C□-AFLD-FLNE-MRKG | Airfields: fire lane: pavement markings                             | Aeródromos: carril cortafuegos: marcas en el pavimento                        |
| C□-AFLD-FLNE-SIGN | Airfields: fire lane: signage                                       | Aeródromos: carril cortafuegos: señalización                                  |
| C□-AFLD-GRVL      | Airfields: gravel                                                   | Aeródromos: grava                                                             |
| C□-AFLD-MRKG      | Airfields: pavement markings                                        | Aeródromos: marcas en el pavimento                                            |
| C□-AFLD-SIGN      | Airfields: signage                                                  | Aeródromos: señalización                                                      |
| C□-AFLD-STAN      | Airfields: stationing                                               | Aeródromos: estacionamiento                                                   |
| C□-AFLD-WHIT      | Airfields: white paint                                              | Aeródromos: pintura blanca                                                    |
| C□-AFLD-WHIT-TICK | Airfields: white paint: tick marks                                  | Aeródromos: pintura blanca: marcas de verificación                            |
| C□-AFLD-YELO      | Airfields: yellow paint                                             | Aeródromos: pintura amarilla                                                  |
| C□-AFLD-YELO-TICK | Airfields: yellow paint: tick marks                                 | Aeródromos: pintura amarilla: marcas de verificación                          |
| C□-BLDG           | Buildings and primary structures                                    | Edificios y estructuras principales                                           |
| C□-BLDG-DECK      | Buildings and primary structures: deck (attached, no roo foverhead) | Edificios y estructuras principales: cubierta (adosada, sin techo)            |
| C□-BLDG-OTLN      | Buildings and primary structures: outline                           | Edificios y estructuras principales: contorno                                 |
| C□-BLDG-OVHD      | Buildings and primary structures: overhead                          | Edificios y estructuras principales: cubierta                                 |
| C□-BLDG-PRCH      | Buildings and primary structures: porch (attached, roof overhead)   | Edificios y estructuras principales: pórtico (adosado, techo)                 |
| C□-BLIN           | Baseline                                                            | Línea base                                                                    |
| C□-BLIN-STAN      | Baseline: stationing                                                | Línea base: estacionamiento                                                   |
| C□-BORE           | Borings                                                             | Perforaciones                                                                 |
| C□-BRDG           | Bridge                                                              | Puente                                                                        |
| C□-BRDG-CNTJ      | Bridge: construction joint                                          | Puente: junta de construcción                                                 |
| C□-BRDG-CNTR      | Bridge: center                                                      | Puente: centro                                                                |
| C□-BRDG-DECK      | Bridge: deck                                                        | Puente: cubierta                                                              |
| C□-BRDG-EXPJ      | Bridge: expansion joint                                             | Puente: junta de dilatación                                                   |
| C□-BRDG-FALT      | Bridge: fault/break line                                            | Puente: línea de falla/rotura                                                 |
| C□-BRDG-HIDD      | Bridge: objects or lines hidden from view                           | Puente: objetos o líneas ocultos Vista                                        |
| C□-BRDG-OBJT      | Bridge: objects                                                     | Puente: objetos                                                               |
| C□-BRDG-OBJT-PRIM | Bridge: objects: primary                                            | Puente: objetos: principal                                                    |
| C□-BRDG-OBJT-SECD | Bridge: objects: secondary                                          | Puente: objetos: secundario                                                   |
| C□-BRDG-RBAR      | Bridge: reinforcing bar                                             | Puente: barra de refuerzo                                                     |
| C□-CATV           | Cable television system                                             | Sistema de televisión por cable                                               |
| C□-CATV-OVHD      | Cable television system: overhead                                   | Sistema de televisión por cable: aéreo                                        |
| C□-CATV-POLE      | Cable television system: pole                                       | Sistema de televisión por cable: poste                                        |
| C□-CATV-UGND      | Cable television system: underground                                | Sistema de televisión por cable: subterráneo                                  |
| C□-CEME           | Cemetery                                                            | Cementerio                                                                    |
| C□-CHAN           | Navigable channels                                                  | Canales navegables                                                            |
| C□-CHAN-BWTR      | Navigable channels: breakwater                                      | Canales navegables: rompeolas                                                 |
| C□-CHAN-CNTR      | Navigable channels: center                                          | Canales navegables: centro                                                    |
| C□-CHAN-DACL      | Navigable channels: de-authorized channel limits, anchorages, etc.  | Canales navegables: límites de canales no autorizados, fondeaderos, etc.      |
| C□-CHAN-DOCK      | Navigable channels: decks, docks, floats, piers                     | Canales navegables: cubiertas, muelles, flotadores, embarcaderos              |
| C□-CHAN-NAID      | Navigable channels: navigation aids                                 | Canales navegables: ayudas a la navegación                                    |
| C□-COMM           | Communications                                                      | Comunicaciones                                                                |
| C□-COMM-OVHD      | Communications: overhead                                            | Comunicaciones: aéreas                                                        |
| C□-COMM-POLE      | Communications: pole                                                | Comunicaciones: poste                                                         |
| C□- COMM-UGND     | Communications: underground                                         | Comunicaciones: subterráneas                                                  |
| C□-CTRL           | Control points                                                      | Puntos de control                                                             |
| C□-CTR L-BMRK     | Control points: benchmarks                                          | Puntos de control: puntos de referencia                                       |
| C□-CTRL-FLYS      | Control points: fly station                                         | Puntos de control: estación de vuelo                                          |
| C□-CTRL-GRID      | Control points: grid                                                | Puntos de control: cuadrícula                                                 |
| C□-CTRL-HORZ      | Control points: horizontal                                          | Puntos de control: horizontal                                                 |
| C□-CTRL-HVPT      | Control points: horizontal/vertical                                 | Puntos de control: horizontal/vertical                                        |
| C□-CTRL-PNPT      | Control points: panel points                                        | Puntos de control: puntos de panel                                            |
| C□-CTRL-TRAV      | Control points: transverse                                          | Puntos de control: transversal                                                |
| C□-CTRL-VERT      | Control points: vertical                                            | Puntos de control: vertical                                                   |
| C□-DFLD           | Drain fields                                                        | Campos de drenaje                                                             |
| C□-DFLD-OTLN      | Drain fields: outline                                               | Campos de drenaje: contorno                                                   |
| C□-DFLD-PROF      | Drain fields: profile                                               | Campos de drenaje: perfil                                                     |
| C□-DRIV           | Driveways                                                           | Accesos vehiculares                                                           |
| C□-DRIV-ASPH      | Driveways: asphalt                                                  | Accesos vehiculares: asfalto                                                  |
| C□-DRIV-CNTR      | Driveways: center                                                   | Accesos vehiculares: centro                                                   |
| C□-DRIV-CONC      | Driveways: concrete                                                 | Accesos vehiculares: hormigón                                                 |
| C□-DRIV-CURB      | Driveways: curb                                                     | Accesos vehiculares: Bordillo                                                 |
| C□-DRIV-CURB-BACK | Driveways: curb: back                                               | Entradas: Bordillo: Parte trasera                                             |
| C□-DRIV-CURB-FACE | Driveways: curb: face                                               | Entradas: Bordillo: Cara                                                      |
| C□-DRIV-FLNE      | Driveways: fire lane                                                | Entradas: Carril contra incendios                                             |
| C□-DRIV-FLNE-MRKG | Driveways: fire lane: pavement markings                             | Entradas: Carril contra incendios: Marcas en el pavimento                     |
| C□-DRIV-FLNE-SIGN | Driveways: fire lane: signage                                       | Entradas: Carril contra incendios: Señalización                               |
| C□-DRIV-GRVL      | Driveways: gravel                                                   | Entradas: Grava                                                               |
| C□-DRIV-MRKG      | Driveways: pavement markings                                        | Entradas: Marcas en el pavimento                                              |
| C□-DRIV-SIGN      | Driveways: signage                                                  | Entradas: Señalización                                                        |
| C□-DRI V-UPVD     | Driveways: unpaved surface                                          | Entradas: Superficie sin pavimentar                                           |
| C□-DRIV-WHIT      | Driveways: white paint                                              | Entradas: Pintura blanca                                                      |
| C□-DRIV-WHIT-TICK | Driveways: white paint: tick marks                                  | Entradas: Pintura blanca: Marcas de verificación                              |
| C□-DRIV-YELO      | Driveways: yellow paint                                             | Entradas: Pintura amarilla                                                    |
| C□-DRIV-YELO-TICK | Driveways: yellow paint: tick marks                                 | Entradas: Pintura amarilla: Marcas de verificación                            |
| C□-DTCH           | Ditches or washes                                                   | Cuencas o zanjas                                                              |
| C□-DTCH-BOTM      | Ditches or washes: bottom                                           | Cuencas o zanjas: Parte inferior                                              |
| C□-DTCH-CNTR      | Ditches or washes: center                                           | Cuencas o zanjas: Centro                                                      |
| C□-DTCH-EWAT      | Ditches or washes: edge of water                                    | Cuencas o zanjas: Borde del agua                                              |
| C□-DTCH-TOP~      | Ditches or washes: top                                              | Cuencas o zanjas: Parte superior                                              |
| C□-EROS           | Erosion and sediment control                                        | Control de erosión y sedimentos                                               |
| C□-EROS-CIPR      | Erosion and sediment control: culvert inlet protection              | Control de erosión y sedimentos: Protección de la entrada de la alcantarilla  |
| C□-EROS-CNTE      | Erosion and sediment control: construction entrance                 | Control de erosión y sedimentos: Entrada de la construcción                   |
| C□-EROS-DDIV      | Erosion and sediment control: drainage divides                      | Control de erosión y sedimentos: Divisorias de drenaje                        |
| C□-EROS-DVDK      | Erosion and sediment control: diversion dike                        | Control de erosión y sedimentos: Dique de derivación                          |
| C□-EROS-INPR      | Erosion and sediment control: inlet protection                      | Control de erosión y sedimentos: Protección de la entrada                     |
| C□-EROS-SILT      | Erosion and sediment control: silt fence                            | Control de erosión y sedimentos: Barrera de sedimentos                        |
| C□-EROS-SSLT      | Erosion and sediment control: super silt fence                      | Control de erosión y sedimentos: Superlimo Cerca                              |
| C□-ESMT           | Easements                                                           | Servidumbres                                                                  |
| C□-ESMT-ACCS      | Easements: access (pedestrian only; private access)                 | Servidumbres: acceso (solo para peatones; acceso privado)                     |
| C□-ESMT-CATV      | Easements: utility - cable television system                        | Servidumbres: servicios públicos - sistema de televisión por cable            |
| C□-ESMT-CONS      | Easements: conservation                                             | Servidumbres: conservación                                                    |
| C□-ESMT-CSTG      | Easements: construction/grading                                     | Servidumbres: construcción/nivelación                                         |
| C□-ESMT-ELEC      | Easements: electrical                                               | Servidumbres: electricidad                                                    |
| C□-ESMT-FDPL      | Easements: flood plain                                              | Servidumbres: llanura aluvial                                                 |
| C□-ESMT-INEG      | Easements: ingress/egress (vehicles; private access)                | Servidumbres: entrada/salida (vehículos; acceso privado)                      |
| C□-ESMT-LSCP      | Easements: landscape                                                | Servidumbres: paisajismo                                                      |
| C□-ESMT-NGAS      | Easements: natural gas line                                         | Servidumbres: línea de gas natural                                            |
| C□-ESMT-PHON      | Easements: telephone line                                           | Servidumbres: línea telefónica                                                |
| C□-ESMT-ROAD      | Easements: roadway                                                  | Servidumbres: carretera                                                       |
| C□-ESMT-ROAD-PERM | Easements: roadway: permanent                                       | Servidumbres: carretera: permanente                                           |
| C□-ESMT-ROAD-TEMP | Easements: roadway: temporary                                       | Servidumbres: carretera: temporal                                             |
| C□-ESMT-RWAY      | Easements: right-of-way (public access)                             | Servidumbres: derecho de paso (acceso público)                                |
| C□-ESMT-SGHT      | Easements: sight distance                                           | Servidumbres: distancia de visibilidad                                        |
| C□-ESMT-SSWR      | Easements: sanitary sewer                                           | Servidumbres: alcantarillado sanitario                                        |
| C□-ESMT-STRM      | Easements: storm sewer                                              | Servidumbres: alcantarillado pluvial                                          |
| C□-ESMT-SWMT      | Easements: storm water management                                   | Servidumbres: gestión de aguas pluviales                                      |
| C□-ESMT-TRAL      | Easements: trail or path (public access)                            | Servidumbres: sendero o camino (acceso público)                               |
| C□-ESMT-UTIL      | Easements: utility lines                                            | Servidumbres: líneas de servicios públicos                                    |
| C□-ESMT-WATR      | Easements: water supply                                             | Servidumbres: suministro de agua                                              |
| C□-FENC           | Fences                                                              | Cercas                                                                        |
| C□-FENC-GRAL      | Fences: guard rail                                                  | Cercas: barandilla                                                            |
| C□-FENC-POST      | Fences: posts                                                       | Cercas: postes                                                                |
| C -FENC-STEL      | Fences: steel (barbed wire and/or chain link)                       | Cercas: acero (alambre de púas y/o malla metálica)                            |
| C□-FENC-WOOD      | Fences: wood                                                        | Cercas: madera                                                                |
| C□-FIRE           | Fire protection                                                     | Protección contra incendios                                                   |
| C□-FIRE-HYDT      | Fire protection: hydrants and connections                           | Protección contra incendios: Hidrantes y conexiones                           |
| C□-FIRE-PIPE      | Fire protection: piping                                             | Protección contra incendios: tuberías                                         |
| C□-FIRE-UGND      | Fire protection: underground                                        | Protección contra incendios: subterránea                                      |
| C□-FLHA           | Flood hazard area                                                   | Zona de riesgo de inundación                                                  |
| C□-FLHA-025Y      | Flood hazard area: 25 year mark                                     | Zona de riesgo de inundación: 25 años                                         |
| C□-FLHA-050Y      | Flood hazard area: 50 year mark                                     | Zona de riesgo de inundación: 50 años                                         |
| C□-FLHA-100Y      | Flood hazard area: 100 year mark                                    | Zona de riesgo de inundación: 100 años                                        |
| C□-FLHA-200Y      | Flood hazard area: 200 year mark                                    | Zona de riesgo de inundación: 200 años                                        |
| C□-FUEL           | Fuel systems                                                        | Sistemas de combustible                                                       |
| C□-FUEL-EQPM      | Fuel systems: equipment (pumps, motors)                             | Sistemas de combustible: equipos (bombas, motores)                            |
| C□-FUEL-INST      | Fuel systems: instrumentation (meters, valves, etc.)                | Sistemas de combustible: instrumentación (medidores, válvulas, etc.)          |
| C□-FUEL-MHOL      | Fuel systems: manhole                                               | Sistemas de combustible: pozo de registro                                     |
| C□-FUEL-PIPE      | Fuel systems: piping                                                | Sistemas de combustible: tuberías                                             |
| C□-FUEL-TANK      | Fuel systems: storage tanks                                         | Sistemas de combustible: tanques de almacenamiento                            |
| C□-FUEL-UGND      | Fuel systems: underground                                           | Sistemas de combustible: subterráneos                                         |
| C□-HYDR           | Hydraulic structure                                                 | Estructura hidráulica                                                         |
| C□-HYDR-BAFL      | Hydraulic structure: baffle block and splash pad                    | Estructura hidráulica: bloque deflector y plataforma antisalpicaduras         |
| C□-HYDR-BASN      | Hydraulic structure: stilling and settling basins                   | Estructura hidráulica: estanques de amortiguación y sedimentación             |
| C□-HYDR-CNDT      | Hydraulic structure: diversion/bypass conduits/culvers              | Estructura hidráulica: conductos de derivación/bypass/alcantarillas           |
| C□-HYDR-COFF      | Hydraulic structure: coffer dam                                     | Estructura hidráulica: ataguía                                                |
| C□-HYDR-DAM~      | Hydraulic structure: dam                                            | Estructura hidráulica: presa                                                  |
| C□-HYDR-FISH      | Hydraulic structure: fish ladder/passage                            | Estructura hidráulica: escala/pasaje para peces                               |
| C□-HYDR-FLUM      | Hydraulic structure: flume                                          | Estructura hidráulica: canal                                                  |
| C□-HYDR-INTK      | Hydraulic structure: intake                                         | Hidráulica Estructura: Toma                                                   |
| C□-HYDR-NOVR      | Hydraulic structure: non-overflow structure                         | Estructura hidráulica: Estructura antidesbordamiento                          |
| C□-HYDR-PENS      | Hydraulic structure: penstock                                       | Estructura hidráulica: Tubería forzada                                        |
| C□-LOCN           | Limits of construction                                              | Límites de construcción                                                       |
| C□-NGAS           | Natural gas systems                                                 | Sistemas de gas natural                                                       |
| C□-NGAS-EQPM      | Natural gas systems: equipment (pumps, motors)                      | Sistemas de gas natural: Equipos (bombas, motores)                            |
| C□-NGAS-INST      | Natural gas systems: instrumentation (meters, valves, etc.)         | Sistemas de gas natural: Instrumentación (medidores, válvulas, etc.)          |
| C□-NGAS-MHOL      | Natural gas systems: manhole                                        | Sistemas de gas natural: Pozo de registro                                     |
| C□-NGAS-PIPE      | Natural gas systems: piping                                         | Sistemas de gas natural: Tuberías                                             |
| C□-NGAS-TANK      | Natural gas systems: storage tanks                                  | Sistemas de gas natural: Tanques de almacenamiento                            |
| C□-NGAS-UGND      | Natural gas systems: underground                                    | Sistemas de gas natural: Subterráneos                                         |
| C□-PERC           | Perc testing                                                        | Pruebas de percolación                                                        |
| C□-PERC-HOLE      | Perc testing: holes                                                 | Pruebas de percolación: Pozos                                                 |
| C□-POND           | Ponds                                                               | Estanques                                                                     |
| C□-POND-EDGE      | Ponds: edge                                                         | Estanques: borde                                                              |
| C□-POND-SWAY      | Ponds: spillway                                                     | Estanques: aliviadero                                                         |
| C□-POND-TOPB      | Ponds: top of bank                                                  | Estanques: parte superior de la ribera                                        |
| C□-POWR           | Power                                                               | Energía                                                                       |
| C□-POWR-FENC      | Power: fences                                                       | Energía: cercas                                                               |
| C□-POWR-INST      | Power: instrumentation (meters, transformers)                       | Energía: instrumentación (medidores, transformadores)                         |
| C□-POWR-MHOL      | Power: manhole                                                      | Energía: pozo de registro                                                     |
| C□-POWR-OVHD      | Power: overhead                                                     | Energía: aérea                                                                |
| C□-POWR-POLE      | Power: pole                                                         | Energía: poste                                                                |
| C□-POWR-STRC      | Power: structures                                                   | Energía: estructuras                                                          |
| C□-POWR-UGND      | Power: underground                                                  | Energía: subterránea                                                          |
| C□-PRKG           | Parking lots                                                        | Estacionamientos                                                              |
| C□-PRKG-ASPH      | Parking lots: asphalt                                               | Estacionamientos: asfalto                                                     |
| C□-PRKG-CARS      | Parking lots: cars and other vehicles                               | Estacionamientos: automóviles y otros vehículos                               |
| C□-PRKG-CONC      | Parking lots: concrete                                              | Estacionamientos: concreto                                                    |
| C□-PRKG-CURB      | Parking lots: curb                                                  | Estacionamientos: bordillo                                                    |
| C□-PRKG-CURB-BACK | Parking lots: curb: back                                            | Estacionamientos: bordillo: trasero                                           |
| C□-PRKG-CURB-FACE | Parking lots: curb: face                                            | Estacionamientos: bordillo: frente                                            |
| C□-PRKG-DRAN      | Parking lots: drainage slope indications                            | Estacionamientos: indicaciones de pendiente de drenaje                        |
| C□-PRKG-FIXT      | Parking lots: fixtures (wheel stops, parking meters, etc.)          | Estacionamientos: accesorios (frenos de rueda, parquímetros, etc.)            |
| C□-PRKG-FLNE      | Parking lots: fire lane                                             | Estacionamientos: carril de incendios                                         |
| C□-PRKG-FLNE-MRKG | Parking lots: fire lane: pavement markings                          | Estacionamientos: carril de incendios: marcas en el pavimento                 |
| C□-PRKG-FLNE-SIGN | Parking lots: fire lane: signage                                    | Estacionamientos: carril de incendios: señalización                           |
| C□-PRKG-GRVL      | Parking lots: gravel                                                | Estacionamientos: grava                                                       |
| C□-PRKG-MRKG      | Parking lots: pavement markings                                     | Estacionamientos: marcas en el pavimento                                      |
| C□-PRKG-SIGN      | Parking lots: signage                                               | Estacionamientos: señalización                                                |
| C□-PRKG-STRP      | Parking lots: striping                                              | Estacionamientos: líneas de señalización                                      |
| C□-PRKG-UPVD      | Parking lots: unpaved surface                                       | Estacionamientos: superficie sin pavimentar                                   |
| C□-PRKG-WHIT      | Parking lots: white paint                                           | Estacionamientos: pintura blanca                                              |
| C□-PRKG-WHIT-TICK | Parking lots: white paint: tick marks                               | Estacionamientos: pintura blanca: marcas de verificación                      |
| C□-PRKG-YELO      | Parking lots: yellow paint                                          | Estacionamientos: pintura amarilla                                            |
| C□-PRKG-YELO-TICK | Parking lots: yellow paint: tick marks                              | Estacionamientos Lotes: pintura amarilla: marcas de verificación              |
| C□-PROP           | Property                                                            | Propiedad                                                                     |
| C□-PROP-LINE      | Property: lines                                                     | Propiedad: líneas                                                             |
| C□-PROP-SBCK      | Property: setback lines                                             | Propiedad: líneas de retranqueo                                               |
| C□-PVMT           | Pavement                                                            | Pavimento                                                                     |
| C□-PVMT-ASPH      | Pavement: asphalt                                                   | Pavimento: asfalto                                                            |
| C□-PVMT-CONC      | Pavement: concrete                                                  | Pavimento: concreto                                                           |
| C□-PVMT-GRVL      | Pavement: gravel                                                    | Pavimento: grava                                                              |
| C□-RAIL           | Railroad                                                            | Ferrocarril                                                                   |
| C□-RAIL-CNTR      | Railroad: center                                                    | Ferrocarril: centro                                                           |
| C□-RAIL-EQPM      | Railroad: equipment (gates, signals, etc.)                          | Ferrocarril: equipo (barreras, señales, etc.)                                 |
| C□-RAIL-TRAK      | Railroad: track                                                     | Ferrocarril: vía                                                              |
| C□-RIVR           | River                                                               | Río                                                                           |
| C□-RIVR-BOTM      | River: bottom                                                       | Río: fondo                                                                    |
| C□-RIVR-CNTR      | River: center                                                       | Río: centro                                                                   |
| C□-RIVR-EDGE      | River: edge                                                         | Río: orilla                                                                   |
| C□-RIVR-TOPB      | River: top of bank                                                  | Río: parte superior de la orilla                                              |
| C□-ROAD           | Roadways                                                            | Carreteras                                                                    |
| C□-ROAD-ASPH      | Roadways: asphalt                                                   | Carreteras: asfalto                                                           |
| C□-ROAD-CNTR      | Roadways: center                                                    | Carreteras: centro                                                            |
| C□-ROAD-CONC      | Roadways: concrete                                                  | Carreteras: concreto                                                          |
| C□-ROAD-CURB      | Roadways: curb                                                      | Carreteras: bordillo                                                          |
| C□-ROAD-CURB-BACK | Roadways: curb: back                                                | Carreteras: bordillo: parte trasera                                           |
| C□-ROAD-CURB-FACE | Roadways: curb: face                                                | Carreteras: bordillo: frente                                                  |
| C□-ROAD-FLNE      | Roadways: fire lane                                                 | Carreteras: carril de incendios                                               |
| C□-ROAD-FLNE-MRKG | Roadways: fire lane: pavement markings                              | Carreteras: carril de incendios: marcas en el pavimento                       |
| C□-ROAD-FLNE-SIGN | Roadways: fire lane: signage                                        | Carreteras: carril de incendios: señalización                                 |
| C□-ROAD-GRVL      | Roadways: gravel                                                    | Carreteras: grava                                                             |
| C□-ROAD-MRKG      | Roadways: pavement markings                                         | Carreteras: marcas en el pavimento                                            |
| C□-ROAD-PROF      | Roadways: profile                                                   | Carreteras: perfil                                                            |
| C□-ROAD-SIGN      | Roadways: signage                                                   | Carreteras: señalización                                                      |
| C□-ROAD-STAN      | Roadways: stationing                                                | Carreteras: estacionamiento                                                   |
| C□-ROAD-UPVD      | Roadways: unpaved surface                                           | Carreteras: superficie sin pavimentar                                         |
| C□-ROAD-WHIT      | Roadways: white paint                                               | Carreteras: pintura blanca                                                    |
| C□-ROAD-WHIT-TICK | Roadways: white paint: tick marks                                   | Carreteras: pintura blanca Marcas de verificación                             |
| C□-ROAD-YELO      | Roadways: yellow paint                                              | Carreteras: pintura amarilla                                                  |
| C□-ROAD-YELO-TICK | Roadways: yellow paint: tick marks                                  | Carreteras: pintura amarilla: marcas de verificación                          |
| C□-RRAP           | Riprap                                                              | Escalones                                                                     |
| C□-SGHT           | Sight distance                                                      | Distancia visual                                                              |
| C□-SGHT-PROF      | Sight distance: profile                                             | Distancia visual: perfil                                                      |
| C□-SOIL           | Soils                                                               | Suelos                                                                        |
| C□-SSWR           | Sanitary sewer                                                      | Alcantarillado sanitario                                                      |
| C□-SSWR-DIAG      | Sanitary sewer: diagrams                                            | Alcantarillado sanitario: diagramas                                           |
| C□-SSWR-FORC      | Sanitary sewer: force main                                          | Alcantarillado sanitario: tubería de impulsión                                |
| C□-SSWR-LATL      | Sanitary sewer: lateral line                                        | Alcantarillado sanitario: línea lateral                                       |
| C□-SSWR-MHOL      | Sanitary sewer: manhole                                             | Alcantarillado sanitario: pozo de registro                                    |
| C□-SSWR-PIPE      | Sanitary sewer: piping                                              | Alcantarillado sanitario: tuberías                                            |
| C□-SSWR-PIPE-RCON | Sanitary sewer: piping: reinforced concrete                         | Alcantarillado sanitario: tuberías: hormigón armado                           |
| C□-SSWR-PIPE-STEL | Sanitary sewer: piping: steel                                       | Alcantarillado sanitario: tuberías: acero                                     |
| C□-SSWR-PROF      | Sanitary sewer: profile                                             | Alcantarillado sanitario: perfil                                              |
| C□-SSWR-STAN      | Sanitary sewer: stationing                                          | Alcantarillado sanitario: estacionamiento                                     |
| C□-SSWR-STRC      | Sanitary sewer: structures                                          | Alcantarillado sanitario: estructuras                                         |
| C□-SSWR-UGND      | Sanitary sewer: underground                                         | Alcantarillado sanitario: subterráneo                                         |
| C□-STEM           | Steam system                                                        | Sistema de vapor                                                              |
| C□-STEM-INST      | Steam system: instrumentation (meters, valves, etc.)                | Sistema de vapor: instrumentación (medidores, válvulas, etc.)                 |
| C□-STEM-MHOL      | Steam system: manhole                                               | Sistema de vapor: pozo de registro                                            |
| C□-STEM-PIPE      | Steam system: piping                                                | Sistema de vapor: tuberías                                                    |
| C□-STEM-STRC      | Steam system: structures                                            | Sistema de vapor: estructuras                                                 |
| C□-STEM-UGND      | Steam system: underground                                           | Sistema de vapor: subterráneo                                                 |
| C□-STRM           | Storm sewer                                                         | Alcantarillado pluvial                                                        |
| C□-STRM-CNTR      | Storm sewer: center                                                 | Alcantarillado pluvial: centro                                                |
| C□-STRM-DIAG      | Storm sewer: diagrams                                               | Alcantarillado pluvial: diagramas                                             |
| C□-STRM-HWAL      | Storm sewer: headwall                                               | Alcantarillado pluvial: muro de cabecera                                      |
| C□-STRM-MHOL      | Storm sewer: manhole                                                | Alcantarillado pluvial: pozo de registro                                      |
| C□-STRM-PIPE      | Storm sewer: piping                                                 | Alcantarillado pluvial: tuberías                                              |
| C□-STRM-PIPE-CMTL | Storm sewer: piping: corrugated metal                               | Alcantarillado pluvial: tuberías: metal corrugado                             |
| C□-STRM-PIPE-RCON | Storm sewer: piping: reinforced concrete                            | Alcantarillado pluvial: tuberías: hormigón armado                             |
| C□-STRM-PROF      | Storm sewer: profile                                                | Alcantarillado pluvial: perfil                                                |
| C□-STRM-STAN      | Storm sewer: stationing                                             | Alcantarillado pluvial: estacionamiento                                       |
| C□-STRM-STRC      | Storm sewer: structures                                             | Alcantarillado pluvial: estructuras                                           |
| C□-STRM-UGND      | Storm sewer: underground                                            | Alcantarillado pluvial: subterráneo                                           |
| C□-SWLK           | Sidewalks                                                           | Aceras                                                                        |
| C□-SWLK-ASPH      | Sidewalks: asphalt                                                  | Aceras: asfalto                                                               |
| C□-SWLK-CONC      | Sidewalks: concrete                                                 | Aceras: hormigón                                                              |
| C□-TINN           | Triangulated irregular network                                      | Red irregular triangulada                                                     |
| C□-TINN-BNDY      | Triangulated irregular network: boundary                            | Red irregular triangulada: límite                                             |
| C□-TINN-FALT      | Triangulated irregular network: fault/break lines                   | Red irregular triangulada: líneas de falla/ruptura                            |
| C□-TINN-VIEW      | Triangulated irregular network: triangulation view                  | Red irregular triangulada: vista de triangulación                             |
| C□-TINN-VOID      | Triangulated irregular network: void regions                        | Red irregular triangulada: regiones vacías                                    |
| C□-TOPO           | Topographic feature                                                 | Característica topográfica                                                    |
| C□-TOPO-DEPR      | Topographic feature: depression                                     | Característica topográfica: depresión                                         |
| C□-TOPO-MAJR      | Topographic feature: major (contours)                               | Característica topográfica: principal (curvas de nivel)                       |
| C□-TOPO-MINR      | Topographic feature: minor (contours)                               | Característica topográfica: menor (curvas de nivel)                           |
| C□-TOPO-SPOT      | Topographic feature: spot elevations                                | Característica topográfica: elevaciones puntuales                             |
| C□-TOPO-TPIT      | Topographic feature: test pits                                      | Característica topográfica: pozos de sondeo                                   |
| C□-TRAL           | Trails or paths                                                     | Senderos o caminos                                                            |
| C□-TRAL-ASPH      | Trails or paths: asphalt                                            | Senderos o caminos: asfalto                                                   |
| C□-TRAL-CONC      | Trails or paths: concrete                                           | Senderos o caminos: hormigón                                                  |
| C□-TRAL-GRVL      | Trails or paths: gravel                                             | Senderos o Caminos: grava                                                     |
| C□-TRAL-MRKG      | Trails or paths: pavement markings                                  | Senderos o senderos: marcas en el pavimento                                   |
| C□-TRAL-SIGN      | Trails or paths: signage                                            | Senderos o senderos: señalización                                             |
| C□-TRAL-UPVD      | Trails or paths: unpaved surface                                    | Senderos o senderos: superficie sin pavimentar                                |
| C□-WALL           | Walls                                                               | Muros                                                                         |
| C□-WALL-CTLJ      | Walls: control joint                                                | Muros: junta de control                                                       |
| C□-WALL-NSBR      | Walls: noise barrier                                                | Muros: barrera acústica                                                       |
| C□-WALL-RTWL      | Walls: retaining wall                                               | Muros: muro de contención                                                     |
| C□-WALL-SHEA      | Walls: structural bearing or shear walls                            | Muros: muros de carga o de corte                                              |
| C□-WATR           | Water supply                                                        | Suministro de agua                                                            |
| C□-WATR-DIAG      | Water supply: diagrams                                              | Suministro de agua: diagramas                                                 |
| C□-WATR-INST      | Water supply: instrumentation (meters, valves, etc.)                | Suministro de agua: instrumentación (medidores, válvulas, etc.)               |
| C□-WATR-PIPE      | Water supply: piping                                                | Suministro de agua: tuberías                                                  |
| C□-WATR-PROF      | Water supply: profile                                               | Suministro de agua: perfil                                                    |
| C□-WATR-STAN      | Water supply: stationing                                            | Suministro de agua: estacionamiento                                           |
| C□-WATR-STRC      | Water supply: structures                                            | Suministro de agua: estructuras                                               |
| C□-WATR-UGND      | Water supply: underground                                           | Suministro de agua: subterráneo                                               |
| C□-WATR-WELL      | Water supply: well                                                  | Suministro de agua: pozo                                                      |
| C□-WETL           | Wetlands                                                            | Humedales                                                                     |
| C□-WWAY           | Waterway                                                            | Vía fluvial                                                                   |
| C□-WWAY-DLPH      | Waterway: dolphin                                                   | Vía fluvial: delfín                                                           |
| C□-WWAY-FEND      | Waterway: fender                                                    | Vía fluvial: defensa                                                          |
| C□-WWAY-MOOR      | Waterway: mooring                                                   | Vía fluvial: amarre                                                           |

</div>

**En Electricidad:**

<div align="center">



</div>


## 2. Creación y manejo de capas (layers) en AutoCAD












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
* [Draw parabola in AutoCAD](https://www.youtube.com/watch?v=h8pjymm-A5I)
* https://blog.draftsperson.net/iso-13567-cad-layer-standard/


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