Feature: US-02 - Lecciones interactivas en RA
  Como docente, quiero acceder a lecciones interactivas que combinan audio, texto
  e imágenes en RA, para enseñar a mis alumnos con métodos modernos.

  Scenario: El docente quiere usar una lección interactiva en clase
    Dado que el docente abre una lección.
    Cuando active la función de RA, verá imágenes 3D acompañadas de texto y audio.
    Entonces, podrá enseñar el idioma de forma dinámica.

  Scenario: El dispositivo no usa RA y se ofrece alternativa simple
    Dado que el usuario abre una lección en un equipo sin RA.
    Cuando toca "Inicia RA".
    Entonces se muestra una pantalla 2D de la lección con imagen + texto + botón de audio.
