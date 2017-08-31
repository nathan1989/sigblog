export default {
  init() {
    // JavaScript to be fired on all pages
    const navItem = document.querySelectorAll('.menu-item-has-children')
    function showMenu(){
      this.classList.add('trigger-enter')
      setTimeout(() => this.classList.contains('trigger-enter') && this.classList.add('trigger-enter-active'), 150)
    }
    function hideMenu(){
      this.classList.remove('trigger-enter', 'trigger-enter-active')
    }

    navItem.forEach(item => item.addEventListener('mouseenter', showMenu))
    navItem.forEach(item => item.addEventListener('mouseleave', hideMenu))
  },
  finalize() {
    // JavaScript to be fired on all pages, after page specific JS is fired
  },
};
