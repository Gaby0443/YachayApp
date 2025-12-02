document.addEventListener("DOMContentLoaded", () => {
  const track = document.getElementById("idiomasTrack");
  const idiomas = document.querySelectorAll(".idioma");
  const btnLeft = document.querySelector(".carousel-btn.left");
  const btnRight = document.querySelector(".carousel-btn.right");

  let currentIndex = 0;

  function isMobile() {
    return window.innerWidth <= 768;
  }

  function scrollToIndex(index) {
    if (!isMobile()) return;
    currentIndex = index;
    const item = idiomas[index];
    if (item) {
      // Desplazamiento suave al centro
      item.scrollIntoView({
        behavior: "smooth",
        block: "nearest",
        inline: "center",
      });
    }
  }

  btnRight?.addEventListener("click", () => {
    if (isMobile() && currentIndex < idiomas.length - 1) {
      scrollToIndex(currentIndex + 1);
    }
  });

  btnLeft?.addEventListener("click", () => {
    if (isMobile() && currentIndex > 0) {
      scrollToIndex(currentIndex - 1);
    }
  });

  // Opcional: detectar swipe táctil para actualizar índice
  let startX = 0;
  track?.addEventListener("touchstart", (e) => {
    startX = e.touches[0].clientX;
  });

  track?.addEventListener("touchend", (e) => {
    if (!isMobile()) return;
    const endX = e.changedTouches[0].clientX;
    const diff = startX - endX;

    if (diff > 50 && currentIndex < idiomas.length - 1) {
      scrollToIndex(currentIndex + 1);
    } else if (diff < -50 && currentIndex > 0) {
      scrollToIndex(currentIndex - 1);
    }
  });
});
