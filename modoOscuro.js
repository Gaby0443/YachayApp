const modoOscuroSwitch = document.querySelector("#modo-oscuro-toggle");

modoOscuroSwitch?.addEventListener("change", () => {
  document.body.classList.toggle("modo-oscuro", modoOscuroSwitch.checked);
});
