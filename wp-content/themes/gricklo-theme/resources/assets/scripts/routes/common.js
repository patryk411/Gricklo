export default {
  init() {

    document.addEventListener('scroll', () => {
      const nav = document.querySelector('.navbar')

      function addShadow() {
          if (window.scrollY >= 300) {
              nav.classList.add('shadow-bg')
          } else {
              nav.classList.remove('shadow-bg')
          }

          console.log(window.scrollY);
      }

      addShadow();
  })

  const navi = document.querySelector('.nav-mobile');
  const naviBtn = document.querySelector('.burger-btn');
  
  const handleNav = () => {
    navi.classList.toggle('nav-mobile--active')   
  }
  
  naviBtn.addEventListener('click', handleNav)

  },
  finalize() {
    // JavaScript to be fired on all pages, after page specific JS is fired
  },
};
