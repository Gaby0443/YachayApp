function finalizarTutorial() {
  localStorage.setItem("tutorialCompletado", "true");
  location.href = "progreso.html";
}
