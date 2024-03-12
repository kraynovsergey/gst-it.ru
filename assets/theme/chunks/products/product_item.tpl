<div class="swiper-slide _equal-height" data-aos="fade-up" data-aos-delay="{($idx - 1) * 100}">
    <article class="product radius-30 shadow">
        <svg class="product__icon-right" width="90" height="90">
            <use xlink:href="assets/theme/img/icons/icons.svg#{$sprite}"></use>
        </svg>
        <svg class="product__icon" width="60" height="60">
            <use xlink:href="assets/theme/img/icons/icons.svg#{$sprite}"></use>
        </svg>
        <h3 class="product__title">
            <a class="product__link link _full" href="{$id | url}">{$menutitle ?: $pagetitle}</a>
        </h3>
    </article>
</div>