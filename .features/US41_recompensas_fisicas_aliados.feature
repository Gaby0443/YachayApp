Feature: US-41 - Recompensas físicas con aliados
  Como estudiante, quiero canjear mis puntos acumulados por beneficios
  en instituciones o empresas aliadas, para sentir mayor motivación.

  Scenario: Selección de recompensa
    Dado que el estudiante acumula puntos suficientes.
    Cuando abra la sección de "Recompensas".
    Entonces podrá elegir un beneficio disponible y recibir un código de canje válido.

  Scenario: Confirmación de canje
    Dado que el estudiante elige canjear puntos.
    Cuando ingrese el código en la tienda o plataforma aliada.
    Entonces se confirmará el canje y el estudiante podrá acceder al beneficio.
