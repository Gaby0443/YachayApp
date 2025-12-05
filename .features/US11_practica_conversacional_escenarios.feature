Feature: US-11 - Práctica Conversacional por Escenarios
  Como turista, quiero acceder a un modo role-play con el chatbot con escenarios específicos,
  para practicar situaciones de comunicación real y sentirme más seguro al interactuar.

  Scenario: Inicio de Role-Play
    Dado que el turista selecciona el escenario "Mercado Andino".
    Cuando el chatbot inicia la conversación con una pregunta de bienvenida.
    Entonces, el turista podrá responder usando la voz o texto,
    manteniendo la conversación hasta el cierre del rol.

  Scenario: Solicitud de Ayuda/Traducción
    Dado que el turista está en una conversación de role-play y no entiende una frase del chatbot.
    Cuando el turista presiona el botón "Traducir" o "Ayuda".
    Entonces, la frase del chatbot se traducirá a su idioma principal o se le dará una pista.
