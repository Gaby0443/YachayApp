Feature: US-42 - Modo audio
  Como estudiante, quiero escuchar módulos en formato audio continuo
  para aprender mientras camino o viajo sin necesidad de una interacción.

  Scenario: Reproducción continua de audio
    Dado que el estudiante activa el "Modo audio".
    Cuando inicie un módulo en formato de audio.
    Entonces, podrá escuchar el contenido de manera continua sin necesidad de interacción.

  Scenario: Reproducción en segundo plano
    Dado que el estudiante tiene el módulo en reproducción.
    Cuando minimice la app o realice otras actividades en el teléfono.
    Entonces el audio seguirá reproduciéndose en segundo plano sin interrupción.
