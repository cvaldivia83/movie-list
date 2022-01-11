const initActivateUsersButtons = () => {
  const leftBtn = document.getElementById('left-button');
  const rightBtn = document.getElementById('right-button');
  const cardUser = document.getElementById('user-card');

  rightBtn.addEventListener('click', event => {
    cardUser.style.transform = 'translate3d(-1086px, 0px, 0px)';
    cardUser.style.transitionDuration = "0.6s";
  })

  leftBtn.addEventListener('click', event => {
    cardUser.style.transform = 'translate3d(0px, 0px, 0px)';
    cardUser.style.transitionDuration = "0.6s";
  })
}

export { initActivateUsersButtons };
