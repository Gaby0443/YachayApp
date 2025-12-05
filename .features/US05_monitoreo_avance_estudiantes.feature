Feature: US-05 - Monitoreo del avance de estudiantes
  Como docente, quiero monitorear el avance de mis alumnos en la aplicación,
  para evaluar su desempeño en el aprendizaje de lenguas originarias.

  Scenario: El docente revisa el progreso de sus alumnos
    Dado que el docente ingresa a su panel.
    Cuando seleccione un estudiante, verá su avance en porcentajes y palabras aprendidas.
    Entonces podrá identificar fortalezas y debilidades en el aprendizaje.

  Scenario: El docente exporta un reporte
    Dado que está en el Panel.
    Cuando pulsa Exportar.
    Entonces aparece un modal "Reporte generado" con botones Descargar y Cerrar.
