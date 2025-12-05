Feature: US-04 - Progreso de aprendizaje
  Como estudiante, quiero ver mi progreso de aprendizaje en porcentaje y logros,
  para mantenerme motivado y constante.

  Scenario: El usuario consulta su progreso
    Dado que el usuario abre la sección de progreso.
    Cuando revise su panel, verá el porcentaje completado y logros obtenidos.
    Entonces el usuario podrá medir su avance en el idioma.

  Scenario: El usuario desbloquea un logro
    Dado que completó una lección o juego.
    Cuando vuelve a Progreso.
    Entonces aparece una tira o alerta "Logro desbloqueado"
    y la insignia se muestra activa en la lista.
