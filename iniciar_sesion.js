const form = document.querySelector(".formulario");

form.addEventListener("submit", function (e) {
  e.preventDefault(); // evita el envío automático del formulario

  const correo = document.getElementById("correo").value.trim();
  const clave = document.getElementById("clave").value.trim();

  // Validación simple
  if (correo !== "" && clave !== "") {
    // 🔹 Redirige al HTML que deseas abrir
    window.location.href = "inicio_tutorial.html";
  } else {
    alert("Por favor, completa todos los campos.");
  }
});
