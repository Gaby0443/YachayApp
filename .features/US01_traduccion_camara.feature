Feature: US-01 - Traducción inmediata con cámara
  Como estudiante, quiero identificar objetos con la cámara de mi celular y obtener
  la traducción inmediata en quechua, para poder practicar el idioma en mi día a día.

  Scenario: El usuario quiere traducir un objeto con la cámara
    Dado que el usuario abre la aplicación y enfoca un objeto.
    Cuando la cámara detecte el objeto, mostrará su traducción en texto y audio.
    Entonces, el usuario aprenderá la palabra en lengua originaria.

  Scenario: El usuario intenta traducir sin permisos
    Dado que el usuario abrió "Traducir con cámara" sin permisos.
    Cuando la app detecte que el permiso está desactivado.
    Entonces solicitará otorgarlo y ofrecerá ir a Configuración.
