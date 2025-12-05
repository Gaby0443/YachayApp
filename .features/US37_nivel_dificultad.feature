Feature: US-37 - Nivel de dificultad
  Como estudiante, quiero que la aplicación ajuste automáticamente la dificultad
  de las lecciones según mi desempeño, para no frustrarme ni aburrirme.

  Scenario: Reducción de dificultad
    Dado que el estudiante comete errores frecuentes.
    Cuando el estudiante complete varias actividades.
    Entonces la aplicación bajará el nivel de dificultad y repetirá el vocabulario básico.

  Scenario: Aumento de dificultad
    Dado que el estudiante tiene alta tasa de aciertos.
    Cuando complete varias actividades.
    Entonces la aplicación propondrá retos más complejos.
