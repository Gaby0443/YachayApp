Feature: US-39 - Palabra del día
  Como estudiante, quiero recibir una palabra del día con su traducción y audio,
  para aprender constantemente de manera sencilla.

  Scenario: Panel grupal
    Dado que el usuario activa la función "Palabra del día".
    Cuando abra la app o reciba una notificación.
    Entonces se mostrará una palabra nueva con audio y ejemplo de uso.

  Scenario: Reducción del ruido
    Dado que el estudiante está revisando la palabra del día.
    Cuando presione el icono de audio.
    Entonces, el sistema reproducirá el archivo de audio con la pronunciación de la palabra.
