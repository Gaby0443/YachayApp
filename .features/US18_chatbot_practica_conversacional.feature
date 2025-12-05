Feature: US-18 - Chatbot de práctica conversacional
  Como estudiante, quiero interactuar con un chatbot que simule conversaciones en quechua,
  para practicar frases útiles en un entorno seguro.

  Scenario: Iniciar práctica
    Dado que el estudiante abre el chatbot.
    Cuando inicia una conversación en lengua originaria.
    Entonces el chatbot responde en tiempo real.

  Scenario: Corrección de errores
    Dado que el estudiante comete un error.
    Cuando envía la frase.
    Entonces el chatbot señala y corrige el error básico.

  Scenario: Reinicio de conversación
    Dado que el estudiante desea comenzar de nuevo.
    Cuando selecciona "Reiniciar".
    Entonces el chatbot borra la conversación y vuelve a iniciar.
