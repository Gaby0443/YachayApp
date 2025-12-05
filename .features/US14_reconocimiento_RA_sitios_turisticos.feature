Feature: US-14 - Reconocimiento RA en Sitios Turísticos
  Como turista, quiero apuntar mi cámara a un sitio o monumento histórico
  y que la aplicación me muestre información cultural en el idioma nativo junto a su traducción,
  para tener una experiencia de inmersión más profunda.

  Scenario: Detección AR
    Dado que el turista abre la cámara AR y enfoca un punto de interés reconocido (ej. Machu Picchu).
    Cuando la app identifica el lugar.
    Entonces, aparecerá una caja de texto superpuesta con una frase histórica corta en quechua
    y su traducción al español.

  Scenario: Interacción con Información AR
    Dado que la información AR está visible en la pantalla.
    Cuando el turista toca la caja de texto.
    Entonces, se abrirá una vista con más detalles sobre el lugar y su significado cultural.
