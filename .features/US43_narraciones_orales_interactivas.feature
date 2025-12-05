Feature: US-43 - Narraciones orales interactivas
  Como usuario, quiero escuchar historias narradas por hablantes nativos con subtítulos,
  para aprender en un contexto cultural auténtico.

  Scenario: Sesión rápida
    Dado que el usuario selecciona una narración en la sección "Historias".
    Cuando la app inicia la reproducción del audio del hablante nativo.
    Entonces aparecen subtítulos sincronizados, se resaltan palabras clave
    y el usuario puede tocar una palabra para ver su definición y audio.

  Scenario: Control de reproducción
    Dado que la narración está en curso.
    Cuando el usuario presiona los botones de pausa, retroceso o avance.
    Entonces el audio responde de inmediato y los subtítulos permanecen
    correctamente sincronizados con la nueva posición.
