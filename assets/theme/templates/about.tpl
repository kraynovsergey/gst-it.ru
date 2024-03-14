{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <article class="sale radius-30 shadow" data-aos="fade-up">
            <div class="about-intro__content sale__content">
                <div class="sale__bg">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0
                    0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0
                    1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>

                <h1 class="h1 about-intro__title" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>

                <p class="about-intro__subtitle" data-aos="fade-right">{$_modx->resource.intro_subtitle}</p>

                <p class="about-intro__text" data-aos="fade-right">{$_modx->resource.intro_text}</p>
            </div>

            {set $intro_img_lazy = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=860&h=540&zc=1&q=1&f=jpg'
            ]}

            {set $intro_img = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=860&h=540&zc=1&q=90&f=jpg'
            ]}

            {set $intro_img_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=1720&h=1080&zc=1&q=90&f=jpg'
            ]}

            {set $intro_img_webp = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=860&h=540&zc=1&q=90&f=webp'
            ]}

            {set $intro_img_webp_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=1720&h=1080&zc=1&q=90&f=webp'
            ]}

            <picture class="sale__picture picture _cover" data-aos="fade-left">
                <source type="image/webp" data-srcset="{$intro_img_webp_2x}">
                <img class="lazy"
                    src="{$intro_img_lazy}"
                    data-srcset="{$intro_img_2x}" 
                    alt="{$_modx->resource.pagetitle | escape}" width="860" height="540">
            </picture>
        </article>

        {set $intro_scheme_lazy = 'pThumb' | snippet : [
            'input' => 'assets/theme/img/about-scheme.png',
            'options' => 'w=1760&h=352&zc=1&q=1'
        ]}

        <picture class="about-intro__scheme picture" data-aos="flip-left">
            <source type="image/webp" data-srcset="assets/theme/img/about-scheme.webp 1x, assets/theme/img/about-scheme@2x.webp 2x">
            <img class="lazy"
                src="{$intro_scheme_lazy}" 
                data-srcset="assets/theme/img/about-scheme.png 1x, assets/theme/img/about-scheme@2x.png 2x" 
                alt="{$_modx->resource.pagetitle | escape}" width="1760" height="352">
        </picture>

        <div class="about-intro__big-text shadow radius-10" data-aos="fade-down">{$_modx->resource.tesis}</div>
    </div>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.values_title}</h2>
    
            <div class="swiper _shadow-vertical _full-width" data-swiper-home-about>
                <div class="swiper-wrapper home-about__items _about">
                    {set $values = json_decode($_modx->resource.values, true)}
                    {foreach $values as $row}
                        <div class="swiper-slide _equal-height">
                            <article class="home-about__item radius-30 shadow" data-aos="fade-up"
                                data-aos-delay="{$row@index * 100}">
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
        </div>
    </section>

    <section class="section _pb0">
        <div class="container history">
            <h2 class="section__title history__title" data-aos="fade-right">{$_modx->resource.history_title}</h2>
            <div class="history__content">
                {set $history = json_decode($_modx->resource.history, true)}
                {foreach $history as $row}
                    <article class="history-item" data-aos="history-item" data-aos-offset="300">
                        <div class="history-item__content shadow radius-30">
                            <h3 class="history-item__title">{$row.title}</h3>
                            <p class="history-item__text">{$row.text}</p>
                        </div>
                    </article>
                {/foreach}
            </div>
        </div>
    </section>

    {include 'file:chunks/chief/chief.tpl'}
{/block}