import Lenis from '@studio-freight/lenis';

/* Плавный скролл */
const lenis = new Lenis();

function raf(time) {
    lenis.raf(time);
    requestAnimationFrame(raf);
}

requestAnimationFrame(raf);

/* Шапка при скролле */
const header = document.querySelector('.header');
if (document.querySelector('.header')) {
    let lastScroll = 0;
    const defaultOffset = 100;
    const containHide = () => header.classList.contains('_hide');

    lenis.on('scroll', (e) => {
        if (e.animatedScroll > lastScroll && !containHide() && e.animatedScroll > defaultOffset) {
            header.classList.add('_hide');
        }
        else if (e.animatedScroll < lastScroll && containHide()) {
            header.classList.remove('_hide');
        }

        lastScroll = e.animatedScroll;
    });
}