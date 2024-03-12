<div class="swiper _shadow-vertical _full-width" data-swiper-home-about>
    <div class="swiper-wrapper home-about__items">
        {set $about_pluses = 1 | resource : 'about_pluses' | fromJSON}
        {foreach $about_pluses as $row}
            <div class="swiper-slide _equal-height">
                <article class="home-about__item radius-30 shadow" data-aos="fade-up" data-aos-delay="{$row@index * 100}">
                    <svg class="home-about__icon" width="50" height="50">
                        <use xlink:href="assets/theme/img/icons/icons.svg#{$row.sprite}"></use>
                    </svg>
                    <h3 class="home-about__title">{$row.title}</h3>
                    <p class="home-about__subtitle">{$row.subtitle}</p>
                </article>
            </div>
        {/foreach}
    </div>
</div>