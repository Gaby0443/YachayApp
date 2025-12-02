function mostrarPantalla(num) {
  document
    .querySelectorAll(".pantalla")
    .forEach((p) => p.classList.remove("visible"));

  document.getElementById("p" + num).classList.add("visible");
}

/* Simula conexión real */
function conectar() {
  mostrarPantalla(2);

  /* Avanza solo después de 2.5s */
  setTimeout(() => {
    mostrarPantalla(3);
  }, 2500);
}

function finalizado() {
  alert("Dispositivo conectado con éxito");
}
