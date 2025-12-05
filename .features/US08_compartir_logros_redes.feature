Feature: US-08 - Compartir logros en redes sociales
  Como turista, quiero compartir mis logros de aprendizaje en redes sociales,
  para mostrar mis avances y motivar a otros.

  Scenario: El usuario quiere compartir un logro
    Dado que el usuario desbloquea un logro.
    Cuando seleccione "Compartir", la aplicación generará una tarjeta visual.
    Entonces, podrá publicarla en Facebook e Instagram.

  Scenario: El usuario intenta compartir sin sesión
    Dado que presiona "Compartir".
    Cuando elige una red sin sesión activa.
    Entonces aparece un modal "Inicia sesión" con Cancelar / Continuar.
