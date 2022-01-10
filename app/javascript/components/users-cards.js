const initActivateUsersButtons = () => {
  const leftBtn = document.getElementById('left-button');
  const rightBtn = document.getElementById('right-button');
  const cardUser = document.querySelector('.users');

  rightBtn.addEventListener('click', event => {
    cardUser.style.transform = 'translate3d(-320px, 0px, 0px)';
  })

  leftBtn.addEventListener('click', event => {
    cardUser.style.transform = 'translate3d(320px, 0px, 0px)';
  })
}

export { initActivateUsersButtons };
