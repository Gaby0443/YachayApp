function finalizarTutorial() {
  localStorage.setItem("tutorialCompletado", "true");
  location.href = "progreso.html";
}

function omitirTutorial() {
  // Marcar como “completado” solo para efectos de mostrar la frase
  localStorage.setItem("tutorialCompletado", "true");

  // Nos aseguramos de que la frase pueda mostrarse (por si ya se limpió antes)
  localStorage.removeItem("fraseMostrada");

  // Redirigir a Progreso (donde está el modal de frase del día)
  window.location.href = "progreso.html";
}
