import Swiper from 'swiper';
import { Navigation, Autoplay, EffectFade, Pagination } from 'swiper/modules';

/* Свайпер в интро на главной странице */
const swiper_home_intro = document.querySelector('[data-swiper-home-intro]');
const swiper_home_intro_navs = document.querySelectorAll('[data-swiper-home-intro-nav]');
if (swiper_home_intro && (swiper_home_intro_navs.length > 0)) {
    const swiper_home_intro_init = new Swiper(swiper_home_intro, {
        modules: [Autoplay, EffectFade],
        spaceBetween: 40,
        autoplay: {
            delay: 3000
        },
        effect: 'fade',
        fadeEffect: { crossFade: true },
        on: {
            slideChange: function (item) {
                let index = item.activeIndex;
                swiper_home_intro_navs.forEach(row => {
                    row.classList.remove('_active');

                    if (row.getAttribute('data-swiper-home-intro-nav') == index) {
                        row.classList.add('_active');
                    }
                });
            },
        },
    });

    swiper_home_intro_navs.forEach(item => {
        item.addEventListener('click', () => {
            let index = item.getAttribute('data-swiper-home-intro-nav');

            swiper_home_intro_navs.forEach(row => {
                row.classList.remove('_active');

                if (row.getAttribute('data-swiper-home-intro-nav') == index) {
                    row.classList.add('_active');
                }
            });

            swiper_home_intro_init.slideTo(index);
        });
    });
}

/* О нас */
const swiper_home_about = document.querySelectorAll('[data-swiper-home-about]');
if (swiper_home_about.length > 0) {
    swiper_home_about.forEach(item => {
        new Swiper(item, {
            breakpoints: {
                0: {
                    spaceBetween: 15,
                    slidesPerView: 1.2,
                    enabled: true,
                },
                575: {
                    spaceBetween: 15,
                    slidesPerView: 2.2,
                    enabled: true
                },
                768: {
                    spaceBetween: 20,
                    slidesPerView: 3.2,
                    enabled: true
                },
                1024: {
                    spaceBetween: 0,
                    slidesPerView: 'auto',
                    enabled: false
                }
            }
        });
    })
}

/* Продукты */
const swiper_products = document.querySelector('[data-swiper-products]');
if (swiper_products) {
    new Swiper(swiper_products, {
        modules: [Navigation],
        navigation: {
            nextEl: '[data-swiper-products-next]',
            prevEl: '[data-swiper-products-prev]'
        },
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 1.2
            },
            575: {
                spaceBetween: 15,
                slidesPerView: 2.2
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 3.2
            },
            1024: {
                spaceBetween: 40,
                slidesPerView: 4
            }
        }
    });
}

/* Спецпредложения */
const swiper_sale = document.querySelector('[data-swiper-sale]');
if (swiper_sale) {
    new Swiper(swiper_sale, {
        modules: [Navigation, Pagination, Autoplay],
        autoplay: {
            delay: 6000,
            disableOnInteraction: false
        },
        navigation: {
            nextEl: '[data-swiper-sale-next]',
            prevEl: '[data-swiper-sale-prev]'
        },
        pagination: {
            el: '[data-swiper-sale-pagination]',
            clickable: true
        },
        slidesPerView: 1,
        spaceBetween: 0
    });
}

/* Бесконечная бегущая строка */
const swiper_marquee = document.querySelectorAll('[data-swiper-marquee]');
if (swiper_marquee.length > 0) {
    swiper_marquee.forEach(item => {
        new Swiper(item, {
            modules: [Autoplay],
            slidesPerView: 'auto',
            autoplay: {
                delay: 0,
                disableOnInteraction: false,
                reverseDirection: true,
            },
            allowTouchMove: false,
            loop: true,
            speed: 4000,
            breakpoints: {
                0: {
                    spaceBetween: 30
                },
                768: {
                    spaceBetween: 40
                },
                1280: {
                    spaceBetween: 50
                },
                1440: {
                    spaceBetween: 60
                },
                1600: {
                    spaceBetween: 70
                }
            }
        });
    });
}

/* Нам доверяют */
const swiper_confidence = document.querySelector('[data-swiper-confidence]');
if (swiper_confidence) {
    new Swiper(swiper_confidence, {
        modules: [Navigation],
        navigation: {
            nextEl: '[data-swiper-confidence-next]',
            prevEl: '[data-swiper-confidence-prev]'
        },
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 1.2
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 1.5
            },
            1024: {
                spaceBetween: 40,
                slidesPerView: 2
            }
        }
    });
}

/* Нам доверяют */
const swiper_news = document.querySelector('[data-swiper-news]');
if (swiper_news) {
    new Swiper(swiper_news, {
        modules: [Navigation],
        navigation: {
            nextEl: '[data-swiper-news-next]',
            prevEl: '[data-swiper-news-prev]'
        },
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 1.2
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 2.8
            },
            1024: {
                spaceBetween: 40,
                slidesPerView: 3
            }
        }
    });
}

/* Города */
const swiper_cities = document.querySelector('[data-swiper-cities]');
if (swiper_cities) {
    new Swiper(swiper_cities, {
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 1.2
            },
            575: {
                spaceBetween: 15,
                slidesPerView: 2.2
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 3.2
            },
            1024: {
                spaceBetween: 40,
                slidesPerView: 4
            }
        }
    });
}

/* Табы */
const swiper_tabs = document.querySelector('[data-swiper-tabs]');
if (swiper_tabs) {
    new Swiper(swiper_tabs, {
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 'auto'
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 'auto'
            }
        }
    });
}

/* Забота */
const swiper_care = document.querySelector('[data-swiper-care]');
if (swiper_care) {
    new Swiper(swiper_care, {
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 1.2,
                enabled: true,
            },
            575: {
                spaceBetween: 15,
                slidesPerView: 2.2,
                enabled: true
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 3.2,
                enabled: true
            },
            1024: {
                spaceBetween: 0,
                slidesPerView: 'auto',
                enabled: false
            }
        }
    });
}

/* Забота - галерея */
const swiper_care_gallery = document.querySelector('[data-swiper-care-gallery]');
if (swiper_care_gallery) {
    new Swiper(swiper_care_gallery, {
        modules: [Navigation, Pagination],
        navigation: {
            nextEl: '[data-swiper-care-gallery-next]',
            prevEl: '[data-swiper-care-gallery-prev]'
        },
        pagination: {
            el: '[data-swiper-care-gallery-pagination]',
            type: 'fraction',
        },
        spaceBetween: 0,
        slidesPerView: 1
    });
}

/* Актуально */
const swiper_actual = document.querySelector('[data-swiper-actual]');
if (swiper_actual) {
    new Swiper(swiper_actual, {
        breakpoints: {
            0: {
                spaceBetween: 15,
                slidesPerView: 1.2,
                enabled: true,
            },
            575: {
                spaceBetween: 15,
                slidesPerView: 2.2,
                enabled: true
            },
            768: {
                spaceBetween: 20,
                slidesPerView: 2.5,
                enabled: true
            },
            1024: {
                spaceBetween: 0,
                slidesPerView: 'auto',
                enabled: false
            }
        }
    });
}