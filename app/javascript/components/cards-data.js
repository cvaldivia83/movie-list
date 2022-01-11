const initActivateCardData = () => {
  const cardData = document.getElementById('cards-data');

  // Event Listener Scroll
  const showCard = () => {
    if (window.scrollY + 400 > window.innerHeight) {
      cardData.style.display = 'flex';
      cardData.classList.add('animated');
      cardData.classList.add('fadeInDown');
    }
  }

  window.addEventListener('scroll', _.throttle(showCard, 300));


  // window.addEventListener('scroll', event => {
  //   if (window.scrollY + 400 > window.innerHeight) {
  //     cardData.style.display = 'flex';
  //     cardData.classList.add('animated');
  //     cardData.classList.add('fadeInDown');
  //   }
  // }, { passive: true })
}

export { initActivateCardData };
