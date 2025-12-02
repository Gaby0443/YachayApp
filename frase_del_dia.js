document.addEventListener("DOMContentLoaded", function () {
  const modalFondo = document.getElementById("modal-fondo");
  const btnCerrar = document.getElementById("modal-cerrar");
  const btnCerrarModal = document.getElementById("btn-cerrar-modal");
  const btnPracticar = document.querySelector(".btn-practicar");
  const cuerpo = document.body;

  // --- 1. Estado del Modal ---
  // Variable para rastrear si el usuario ya vio y cerró el mensaje.
  let modalFueVisto = false;

  // --- 2. Simulación de Activación (Si la frase es diaria/única) ---
  // Por defecto, vamos a asumir que la frase se muestra automáticamente
  // al cargar la página (solo la primera vez).
  // Si quieres activarla con un botón, elimina estas 3 líneas y usa una función de un botón.
  modalFondo.style.display = "flex";
  cuerpo.classList.add("modal-activo");

  // --- 3. Función para Cerrar Modal (No se vuelve a abrir) ---
  function cerrarModal(event) {
    // Evita que el evento de clic se propague al documento.
    event.stopPropagation();

    modalFondo.style.display = "none";
    cuerpo.classList.remove("modal-activo");
    modalFueVisto = true; // Establece que el modal ya fue cerrado.
  }

  // --- 4. Asignación de Eventos ---

  // Asigna la función de cerrar a ambos botones de cierre
  btnCerrar.addEventListener("click", cerrarModal);
  btnCerrarModal.addEventListener("click", cerrarModal);

  // También cierra el modal si se pulsa "A practicar"
  btnPracticar.addEventListener("click", cerrarModal);

  // --- 5. Evita que el clic en el fondo oscuro cierre el modal ---
  // Esto asegura que solo los botones lo cierren.
  document
    .querySelector(".modal-contenido")
    .addEventListener("click", function (event) {
      event.stopPropagation();
    });

  // --- 6. Impedir que clics en la página lo re-activen ---
  // NOTA: El listener de 'document' se ha ELIMINADO.
  // La única manera de reabrir el modal ahora sería con un botón dedicado
  // que podrías añadir a tu menú de navegación o a la página.
});
