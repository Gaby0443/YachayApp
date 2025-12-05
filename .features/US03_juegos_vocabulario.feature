Feature: US-03 - Juegos educativos de vocabulario
  Como turista, quiero practicar vocabulario mediante juegos educativos en mi celular,
  para aprender frases básicas de manera rápida y divertida durante mi viaje.

  Scenario: El usuario quiere aprender con un juego corto
    Dado que el usuario abre la sección de juegos.
    Cuando complete un reto, la aplicación mostrará su puntaje y frases aprendidas.
    Entonces, el usuario reforzará su vocabulario de manera lúdica.

  Scenario: El usuario falla una jugada
    Dado que está en una ronda del juego.
    Cuando elige una opción equivocada.
    Entonces aparece el mensaje "Incorrecto" y se muestra la respuesta correcta; puede continuar.
