# Práctica final TIO. Grupo 4

## Descripción del proyecto
Al realizar una búsqueda sobre el turismo de cierta ciudad, es díficil saber exactamente el tipo de turista que visita una zona, las ciudades más visitas de cierto país, las fechas más visitadas, etc. En este proyecto, se intentará realizar un análisis del sector del turismo y mediante el tratamiento de lenguaje natural, se podrá responder a todas las preguntas realizadas anteriormente. 
Para el tratamiento del lenguaje natural, se utilizará el lenguaje de programación R con los paquetes necesarios para la realización del tratamiento de datos.
Las ciudades que se analizarán serán: 
* Londres
* Nueva York
* Islas Canarias

### Qué es el tratamiento de lenguaje natural
El procesamiento del lenguaje natural (PLN) es el campo que combina las tecnologías de la ciencia computacional (como la inteligencia artificial, el aprendizaje automático o la inferencia estadística) con la lingüística aplicada, con el objetivo de hacer posible la comprensión y el procesamiento asistidos por ordenador de información expresada en lenguaje humano para determinadas tareas, como la traducción automática, los sistemas de diálogo interactivos, el análisis de opiniones, etc.

Trasladando el PLN al proyecto que se realiza, se puede obtener de una manera fácil la demostración de las temporadas donde más turistas llegan a la ciudad, los turistas que más viajan, las ciudades más visitadas, etc. Estos datos, pueden servir para que diferentes touroperadoras puedan realizar un análisis completo del sector turístico en la ciudad y realizar comparaciones con otros países, mejorar las ofertas para ciudadanos de cierta zona, etc.

## Nombre del proyecto
El nombre de nuestro proyecto será OticAnalyzer.

## Propuesta tecnológica concreta a desarrollar
La realización de una aplicación desarrollada con el entorno de programación R Studio y el lenguaje de programación R. Esta aplicación realizará el análisis de lenguaje natural de la temática de turismo analizando los diferentes destinos, las fechas en las que hay mayor número de turistas, el clima durante todo el año de las diferentes ciudades y la procedencia de los turistas en diferentes años.

## Fuente de datos
Para recabar datos hemos seguido 4 parámetros para cada uno de los lugares a analizar que son, los lugares más emblemáticos o más visitados en esa localidad, las fechas es las que es más habitual viajar, o por el contrario en la que menos turistas lo hacen, cuál suele ser el clima del entorno durante el año y también los países de procedencia de los turistas.

* Londres
    * Lugares:
        * http://travel.usnews.com/London_England/Things_To_Do/
        * http://www.visitlondon.com/things-to-do/sightseeing/london-attraction/top-ten-attractions
        * http://www.planetware.com/tourist-attractions-/london-eng-l-lon.htm
    * Fechas:
        * http://travel.usnews.com/London_England/When_To_Visit/
        * http://www.visitlondon.com/discover-london/best-time-to-visit
    * Clima:
        * https://www.londoncitybreak.com/climate
        * http://www.educationuk.org/usa/articles/weather-and-seasons/
    * Procedencia (hasta 2015):
        * https://files.datapress.com/london/dataset/number-international-visitors-london/2016-07-25T10:33:39/international-visitors-london-raw.csv
        * http://files.londonandpartners.com/l-and-p/assets/our-insight-london-tourism-review-2014-15.pdf 
