document.addEventListener("DOMContentLoaded", function () {
  const btn = document.querySelector(".menu-toggle");
  const menu = document.querySelector(".Menu-Horizontal");

  if (btn && menu) {
    btn.addEventListener("click", function () {
      menu.classList.toggle("active");
    });
  }
});
