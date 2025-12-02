document.addEventListener("DOMContentLoaded", function () {
  const dateInput = document.getElementById("fecha-nacimiento");
  const fallback = document.getElementById("fecha-fallback");
  const diaFB = document.getElementById("dia-fb");
  const mesFB = document.getElementById("mes-fb");
  const anioFB = document.getElementById("anio-fb");

  function soportaInputDate() {
    const input = document.createElement("input");
    input.setAttribute("type", "date");
    return input.type === "date";
  }

  if (!soportaInputDate()) {
    dateInput.style.display = "none";
    fallback.classList.remove("oculto");

    // Poblar fallback
    for (let d = 1; d <= 31; d++) diaFB.innerHTML += `<option>${d}</option>`;
    const meses = [
      "Enero",
      "Febrero",
      "Marzo",
      "Abril",
      "Mayo",
      "Junio",
      "Julio",
      "Agosto",
      "Septiembre",
      "Octubre",
      "Noviembre",
      "Diciembre",
    ];
    meses.forEach((m) => (mesFB.innerHTML += `<option>${m}</option>`));
    for (let a = 1950; a <= 2025; a++)
      anioFB.innerHTML += `<option>${a}</option>`;
  }

  let datosGuardados = {
    nombre: "",
    correo: "",
    fecha: "",
    password: "",
    sobreMi: "",
  };

  const nombreInput = document.getElementById("nombre-input");
  const correoInput = document.getElementById("correo-input");
  const passwordInput = document.getElementById("password-input");
  const sobreMiTextarea = document.getElementById("sobre-mi");

  const enlaceEditar = document.getElementById("enlace-editar");
  const accionesFinales = document.getElementById("acciones-finales");
  const btnGuardar = document.getElementById("btn-guardar");
  const btnCancelar = document.getElementById("btn-cancelar");
  const mensajeError = document.getElementById("mensaje-error");

  const camposObligatorios = [nombreInput, correoInput, passwordInput];

  enlaceEditar.addEventListener("click", function (e) {
    e.preventDefault();
    activarEdicion();
  });

  function activarEdicion() {
    [
      nombreInput,
      correoInput,
      passwordInput,
      sobreMiTextarea,
      dateInput,
    ].forEach((c) => (c.disabled = false));

    if (!soportaInputDate()) {
      [diaFB, mesFB, anioFB].forEach((c) => (c.disabled = false));
    }

    accionesFinales.classList.remove("oculto");
    enlaceEditar.textContent = "Editando...";
    enlaceEditar.style.opacity = "0.6";
    enlaceEditar.style.pointerEvents = "none";
  }

  function desactivarEdicion() {
    [
      nombreInput,
      correoInput,
      passwordInput,
      sobreMiTextarea,
      dateInput,
    ].forEach((c) => (c.disabled = true));

    if (!soportaInputDate()) {
      [diaFB, mesFB, anioFB].forEach((c) => (c.disabled = true));
    }

    accionesFinales.classList.add("oculto");
    enlaceEditar.textContent = "Editar información";
    enlaceEditar.style.opacity = "1";
    enlaceEditar.style.pointerEvents = "auto";
    mensajeError.style.display = "none";
  }

  btnCancelar.addEventListener("click", function (e) {
    e.preventDefault();

    nombreInput.value = datosGuardados.nombre;
    correoInput.value = datosGuardados.correo;
    passwordInput.value = datosGuardados.password;
    sobreMiTextarea.value = datosGuardados.sobreMi;

    dateInput.value = datosGuardados.fecha;

    desactivarEdicion();
  });

  btnGuardar.addEventListener("click", function (e) {
    e.preventDefault();

    let error = false;

    camposObligatorios.forEach((campo) => {
      if (campo.value.trim() === "") {
        campo.style.border = "1px solid red";
        error = true;
      } else {
        campo.style.border = "1px solid transparent";
      }
    });

    if (passwordInput.value.length < 8) {
      passwordInput.style.border = "1px solid red";
      error = true;
    }

    if (dateInput.value === "" && soportaInputDate()) {
      dateInput.style.border = "1px solid red";
      error = true;
    }

    if (error) {
      mensajeError.style.display = "block";
      return;
    }

    // GUARDAR
    datosGuardados = {
      nombre: nombreInput.value,
      correo: correoInput.value,
      password: passwordInput.value,
      sobreMi: sobreMiTextarea.value,
      fecha: dateInput.value,
    };

    desactivarEdicion();
    alert("Datos guardados correctamente ✔");
  });
});
