Feature: US-06 - Lecciones cortas por falta de tiempo
  Como turista, quiero tener lecciones cortas y prácticas, para aprender frases útiles
  sin invertir mucho tiempo en estudio formal.

  Scenario: El turista accede a una lección rápida
    Dado que el turista dispone de poco tiempo.
    Cuando abra la aplicación, encontrará lecciones de máximo 5 minutos.
    Entonces, podrá aprender frases útiles sin perder tiempo en exceso.

  Scenario: El usuario reanuda una lección interrumpida
    Dado que salió a mitad de una lección.
    Cuando vuelve a abrirla.
    Entonces aparece un banner "¿Continuar donde te quedaste?" con Continuar / Empezar de nuevo.
