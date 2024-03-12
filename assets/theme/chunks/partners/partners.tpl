<section class="section _pb0">
    <div class="container">
        <h2 class="section__title" data-aos="fade-up">{1 | resource : 'partners_title'}</h2>

        <div class="swiper _full-width" data-swiper-marquee data-aos="fade-up">
            <div class="swiper-wrapper swiper__marquee">
                {set $partners = 1 | resource : 'partners' | fromJSON}
                {foreach $partners as $row}
                    <div class="swiper-slide partner _equal-height">
                        <img src="assets/images/{$row.img}" width="{$row.width}" height="{$row.height}" alt="">
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>