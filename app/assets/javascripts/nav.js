const menuButton = document.querySelector('.mobile-menu');
const nav = document.querySelector('nav');
const homeButton = document.querySelector('.cta');

menuButton.addEventListener('click', () => {
  nav.classList.toggle('show');
  homeButton.classList.toggle('behind');
});