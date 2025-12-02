function generarCodigo() {
  const codigo = "WAYN - " + Math.floor(100000 + Math.random() * 900000);
  document.getElementById("codigo-generado").textContent = codigo;
  document.getElementById("codigo-box").style.display = "block";
}
