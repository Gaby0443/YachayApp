Feature: US-10 - Feedback de Pronunciación por Voz
  Como estudiante, quiero grabar mi voz y que la aplicación me dé una puntuación
  de similitud con el audio del hablante nativo, para corregir mis errores
  y mejorar mi acento en el idioma.

  Scenario: Evaluación de pronunciación
    Dado que el estudiante selecciona una frase de práctica y graba su voz.
    Cuando la aplicación procesa el audio.
    Entonces se mostrará un porcentaje de acierto y se resaltarán las sílabas con errores de fonética.

  Scenario: Repetición para mejorar
    Dado que el estudiante recibió un feedback con una puntuación baja.
    Cuando el estudiante presiona el botón "Reintentar".
    Entonces podrá grabar su voz nuevamente para esa misma frase.
