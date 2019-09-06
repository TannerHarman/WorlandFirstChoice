const menuButton = document.querySelector('.mobile-menu');
const nav = document.querySelector('nav');

menuButton.addEventListener('click', () => {
  nav.classList.toggle('show');
});