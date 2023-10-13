export default {
  init() {

      document.addEventListener('scroll', () => {
      const nav = document.querySelector('.navbar')

      function addShadow() {
          if (window.scrollY >= 870) {
              nav.classList.add('shadow-bg')
          } else {
              nav.classList.remove('shadow-bg')
          }

          console.log(window.scrollY);
      }

      addShadow();
  })
    
  },
  finalize() {
    // JavaScript to be fired on the home page, after the init JS
  },
};
