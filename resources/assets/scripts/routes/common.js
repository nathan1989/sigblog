export default {
  init() {
    // JavaScript to be fired on all pages
    const navItem = document.querySelectorAll('.menu-item-has-children')
    function showMenu(){
      this.classList.add('trigger-enter')
    }
    function hideMenu(){
      this.classList.remove('trigger-enter')
    }

    navItem.forEach(item => item.addEventListener('mouseenter', showMenu))
    navItem.forEach(item => item.addEventListener('mouseleave', hideMenu))
  },
  finalize() {
    // JavaScript to be fired on all pages, after page specific JS is fired
  },
};
