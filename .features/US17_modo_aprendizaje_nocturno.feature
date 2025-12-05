Feature: US-17 - Modo aprendizaje nocturno
  Como estudiante, quiero un modo de aprendizaje nocturno con frases relajantes
  y audio en voz calmada, para repasar antes de dormir.

  Scenario: Activar modo nocturno
    Dado que el estudiante activa "Aprendizaje nocturno".
    Cuando abre la app de noche.
    Entonces se reproducen frases y canciones suaves en la lengua originaria con traducción.

  Scenario: Control de reproducción
    Dado que el estudiante está en modo nocturno.
    Cuando presiona "Pausar" o "Siguiente".
    Entonces el sistema detiene o cambia la reproducción.

  Scenario: Interfaz adaptada
    Dado que el estudiante usa la app en modo nocturno.
    Cuando navega por las pantallas.
    Entonces la interfaz se muestra con fondo oscuro.
