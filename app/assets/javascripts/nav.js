const menuButton = document.querySelector('.mobile-menu');
const nav = document.querySelector('nav');
const head = document.querySelector('header');

menuButton.addEventListener('click', () => {
  nav.classList.toggle('show');
  head.classList.toggle('show');
});