const initActivateFaqCards = () => {
  // selections
  const cardOne = document.getElementById('faq-card-one');
  const cardTwo = document.getElementById('faq-card-two');
  const arrowOne = document.getElementById('faq-arrow-one');
  const arrowTwo = document.getElementById('faq-arrow-two');
  const titleOne = document.getElementById('faq-title-one');
  const titleTwo = document.getElementById('faq-title-two');
  const paragraphOne = document.getElementById('faq-paragraph-one');
  const paragraphTwo = document.getElementById('faq-paragraph-two');

  const openCardOne = event => {
    cardOne.classList.toggle('active-box');
    arrowOne.classList.toggle('active-text');
    titleOne.classList.toggle('active-text');
    paragraphOne.classList.toggle('active-text');
  }

  const openCardTwo = event => {
    cardTwo.classList.toggle('active-box');
    arrowTwo.classList.toggle('active-text');
    titleTwo.classList.toggle('active-text');
    paragraphTwo.classList.toggle('active-text');
  }

  // Event Listener Callback For Card One
  // const openCardOne = (event) => {
  //   cardOne.style.backgroundColor = 'white';
  //   cardOne.style.height = '100px';
  //   titleOne.style.color = '#28372F';
  //   arrowOne.style.color = '#28372F';
  //   paragraphOne.style.display = 'initial';
  //   cardOne.style.transitionDuration = "0.6s";
  // }

  // Event Listener Callback For Card Two
  // const openCardTwo = (event) => {
  //   cardTwo.style.backgroundColor = 'white';
  //   cardTwo.style.height = '100px';
  //   titleTwo.style.color = '#28372F';
  //   arrowTwo.style.color = '#28372F';
  //   paragraphTwo.style.display = 'initial';
  //   cardTwo.style.transitionDuration = "0.6s";
  // }

  //Click Event Listener For Card One
  cardOne.addEventListener('click', openCardOne);

  // Click Event Listener For Card Two
  cardTwo.addEventListener('click', openCardTwo);
}

export { initActivateFaqCards };
