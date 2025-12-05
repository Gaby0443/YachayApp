Feature: US-20 - Vista de reseñas de la aplicación
  Como docente, quiero acceder a una sección de reseñas de la aplicación,
  para conocer la opinión de otros usuarios y sugerencias de mejora
  que me ayuden a confiar más en el uso de la herramienta.

  Scenario: Visualización de reseñas
    Dado que el docente accede al menú.
    Cuando presiona el botón reseñas.
    Entonces se muestran comentarios con calificación en estrellas, fecha y nombre del usuario.

  Scenario: Ordenar reseñas
    Dado que el docente está en la sección de reseñas.
    Cuando selecciona "Ordenar por calificación".
    Entonces el sistema reorganiza los comentarios.
