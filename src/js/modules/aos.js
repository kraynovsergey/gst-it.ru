import AOS from 'aos';

AOS.init({
    duration: 800
});

window.addEventListener('scroll', () => {
    AOS.refresh();
});