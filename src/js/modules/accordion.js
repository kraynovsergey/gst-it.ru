import Accordion from 'accordion-js';

/* Аккордион в услугах */
const accordion_services = document.querySelector('[data-accordion-services]');
if (accordion_services) {
    new Accordion(accordion_services, {
        activeClass: '_active',
        openOnInit: [0],
        collapse: false
    });
}

/* Тоггл меню */
/*const toggle_menu = document.querySelector('[data-toggle-menu]');
const main = document.querySelector('.main');
const footer = document.querySelector('.footer');

if (toggle_menu) {
    const toggle_menu_ac = new Accordion('[data-toggle-menu]', {
        activeClass: '_active',
        beforeOpen: function (currentElement) {
            main.classList.add('_blur');
            footer.classList.add('_blur');
        },
        beforeClose: function (currentElement) {
            main.classList.remove('_blur');
            footer.classList.remove('_blur');
        }
    });

    const content = toggle_menu.querySelector('.ac');
    if (content) {
        document.documentElement.addEventListener('click', (e) => {
            if ((e.target !== content) && (e.target !== toggle_menu.querySelector('.ac-trigger'))) {
                toggle_menu_ac.close(0);
            }
        });
    }

    window.addEventListener('scroll', () => {
        if ( document.querySelector('.header__nav-block').classList.contains('_active') ) {
            toggle_menu_ac.close(0);
        }
    })
}*/