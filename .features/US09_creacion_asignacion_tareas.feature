Feature: US-09 - Creación y Asignación de Tareas
  Como docente, quiero crear tareas personalizadas con contenidos específicos de la app
  y asignarlas a mis estudiantes, para enfocar el aprendizaje en las áreas que más necesitan refuerzo.

  Scenario: Asignación de tarea
    Dado que el docente ha seleccionado un módulo de vocabulario y una lista de estudiantes.
    Cuando el docente establece una fecha límite.
    Entonces los estudiantes seleccionados verán la tarea como obligatoria en su panel de inicio.

  Scenario: Visualización del progreso
    Dado que el docente ha asignado una tarea y varios estudiantes la han completado.
    Cuando el docente accede al detalle de la tarea.
    Entonces podrá ver qué estudiantes han completado la tarea y quienes no.
