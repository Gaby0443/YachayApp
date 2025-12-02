document.addEventListener("DOMContentLoaded", function () {
  const modalFondo = document.getElementById("modal-fondo");
  const btnCerrar = document.getElementById("modal-cerrar");
  const btnCerrarModal = document.getElementById("btn-cerrar-modal");
  const btnPracticar = document.querySelector(".btn-practicar");
  const cuerpo = document.body;

  // Verificar si el tutorial fue completado
  const tutorialCompletado = localStorage.getItem("tutorialCompletado");

  // Verificar si ya mostramos la frase del día antes
  const fraseYaMostrada = localStorage.getItem("fraseMostrada");

  // Condición para mostrar modal SOLO UNA VEZ
  if (tutorialCompletado === "true" && !fraseYaMostrada) {
    modalFondo.style.display = "flex";
    cuerpo.classList.add("modal-activo");
  }

  function cerrarModal() {
    modalFondo.style.display = "none";
    cuerpo.classList.remove("modal-activo");

    localStorage.setItem("fraseMostrada", "true");
  }

  btnCerrar.addEventListener("click", cerrarModal);
  btnCerrarModal.addEventListener("click", cerrarModal);
  btnPracticar.addEventListener("click", cerrarModal);
});
