Feature: US-22 - Frases de supervivencia offline
  Como turista, quiero descargar un set básico de frases en quechua
  para comunicarme en lugares sin internet.

  Scenario: Descargar frases
    Dado que el turista tiene conexión.
    Cuando selecciona "Descargar frases básicas".
    Entonces el sistema guarda el set en el dispositivo.

  Scenario: Uso de frases sin conexión
    Dado que el turista descarga algunas frases.
    Cuando abre la aplicación sin conexión.
    Entonces puede acceder al set de frases con texto y audio.
