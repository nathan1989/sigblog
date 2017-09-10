export default {
  init() {
    // JavaScript to be fired on the home page
    // PHASE 2: add insta carousel, modal, pull in caption, hashtags, load more photos
    // const imageLinks = document.querySelectorAll('.insta-link')

    // function getImage(e){
    //   e.preventDefault()
    //   // console.log(this.getAttribute('href'))
    //   if(document.body.querySelector('.modal')){
    //     document.body.removeChild(document.body.querySelector('.modal'))
    //     document.body.classList.remove('modal-open')
    //   }
    //   const modal = document.createElement('div')
    //   modal.classList.add('modal')
    //   const image = document.createElement('img')
    //   image.setAttribute('src', this.getAttribute('href'))
    //   modal.appendChild(image)
    //   const close = document.createElement('button')
    //   close.classList.add('modal-close')
    //   close.textContent = 'Close'
    //   modal.appendChild(close)
    //   document.body.appendChild(modal)
    //   document.body.classList.add('modal-open')
    // }

    // imageLinks.forEach(links => links.addEventListener('click', getImage))

    // document.addEventListener('click', function(e){
    //   if(e.target.classList.contains('modal-close') || e.target.classList.contains('modal-open')){
    //     document.body.removeChild(document.body.querySelector('.modal'))
    //     document.body.classList.remove('modal-open')
    //   }
    // })
  },
  finalize() {
    // JavaScript to be fired on the home page, after the init JS
  },
};
