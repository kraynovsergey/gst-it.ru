import AOS from 'aos';

AOS.init({
    duration: 800,
    once: true
});

window.addEventListener('scroll', () => {
    AOS.refresh();
});