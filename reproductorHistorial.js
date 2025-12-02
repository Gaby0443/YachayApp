document.addEventListener("DOMContentLoaded", () => {
  const progressBar = document.getElementById("audioProgress");

  const maxValue = 900;

  const threshold = 0.95;
  const thresholdValue = maxValue * threshold;

  progressBar.addEventListener("change", () => {
    const currentValue = parseFloat(progressBar.value);

    if (currentValue >= thresholdValue) {
      console.log("Barra al final → redirigiendo...");

      setTimeout(() => {
        window.location.href = "cuestionario.html";
      }, 200);
    }
  });
});
