Feature: US-12 - Descarga de Lecciones para Uso sin Internet
  Como docente (o estudiante), quiero tener la opción de descargar módulos completos
  con todos sus audios y actividades, para utilizarlos en el aula en zonas con conectividad
  limitada y asegurar la continuidad del aprendizaje.

  Scenario: Descarga exitosa
    Dado que el usuario tiene suficiente espacio de almacenamiento y una conexión activa.
    Cuando el usuario pulsa "Descargar módulo X".
    Entonces todo el contenido del módulo estará disponible y operativo sin requerir datos móviles o Wi-Fi.

  Scenario: Uso offline del contenido
    Dado que el usuario ha descargado un módulo y no tiene conexión a internet.
    Cuando el usuario abre la aplicación y selecciona el módulo descargado.
    Entonces podrá acceder a todas las lecciones, audios y ejercicios sin interrupciones.
