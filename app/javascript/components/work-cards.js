const initActivateWorkCards = () => {
  // selections
  const cardOne = document.getElementById('card-work-one');
  const cardTwo = document.getElementById('card-work-two');
  const cardThree = document.getElementById('card-work-three');

      // Scroll Event Listener
      window.addEventListener('scroll', event => {
        if (window.scrollY > 500) {
          cardOne.style.visibility = 'visible';
          cardOne.classList.add('animated');
          cardOne.classList.add('fadeInLeft');
        }
        if (window.scrollY > 550) {
          cardTwo.style.visibility = 'visible';
          cardTwo.classList.add('animated');
          cardTwo.classList.add('fadeInRight');
        }
        if (window.scrollY > 590) {
          cardThree.style.visibility = 'visible';
          cardThree.classList.add('animated');
          cardThree.classList.add('fadeInLeft');
        }
      }, { passive: true })
}

export { initActivateWorkCards };
