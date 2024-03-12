{extends 'file:templates/base.tpl'}

{block 'main'}
    <div class="home-intro">
        {set $intro_slider = json_decode($_modx->resource.intro_slider, true)}
        <div class="container home-intro__container">
            <div class="home-intro__swiper swiper" data-swiper-home-intro data-aos="fade-right">
                <div class="swiper-wrapper">
                    {foreach $intro_slider as $row}
                        <div class="swiper-slide _equal-height">
                            <article class="home-intro__slide radius-20 shadow">
                                <span class="home-intro__slide-bg">1 0 1 0 0 0 1
                                    1 0 1 0 0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 <br>1 0 1 0 0 0 1 1 0 1 0 0 0 1 <br>0 1 0 0 1
                                    0 1 0 1 0 0 1 0 1 <br>1 0 1 0 0 0 1 1 0 1 0 0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 <br>1 0 1
                                    0 0 0 1 1 0 1 0 0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</span>
                                
                                {set $img_lazy = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=490&h=400&zc=1&q=1&f=jpg'
                                ]}
                                
                                {set $img = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=490&h=400&zc=1&q=90&f=jpg'
                                ]}

                                {set $img_2x = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=980&h=800&zc=1&q=90&f=jpg'
                                ]}

                                {set $img_webp = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=490&h=400&zc=1&q=90&f=webp'
                                ]}

                                {set $img_webp_2x = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=980&h=800&zc=1&q=90&f=webp'
                                ]}

                                <picture class="home-intro__picture picture _cover radius-20">
                                    <source type="image/webp"
                                        data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                                    <img class="lazy"
                                        src="{$img_lazy}"
                                        data-srcset="{$img} 1x, {$img_2x} 2x"
                                        alt="{$row.title | escape}" width="490" height="400">
                                </picture>
                                <div class="home-intro__content">
                                    <h3 class="home-intro__title">{$row.title}</h3>
                                    <p class="home-intro__subtitle">{$row.subtitle}</p>
                                </div>
                            </article>
                        </div>
                    {/foreach}
                </div>
            </div>
            <div class="home-intro__navs radius-20" data-swiper-home-intro-navs data-aos="fade-left">
                <div class="home-intro__navs-wrapper">
                    {foreach $intro_slider as $row}
                        <button class="home-intro__nav btn-reset{$row@index == 0 ? ' _active' : ''}" type="button" data-swiper-home-intro-nav="{$row@index}">
                            <span class="home-intro__nav-icon">
                                <svg class="_icon" width="45" height="45">
                                    <use xlink:href="assets/theme/img/icons/icons.svg#{$row.sprite}"></use>
                                </svg>
                            </span>
                            {$row.nav}
                        </button>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>

    <section class="section home-numbers">
        <div class="home-numbers__bg">1 0 1 0 0 0 1 1 0 1 0 0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 <br>1 0 1 0 0 0 1 1 0 1 0
            0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 <br>1 0 1 0 0 0 1 1 0 1 0 0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 <br>1 0 1
            0 0 0 1 1 0 1 0 0 0 1 <br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
        <div class="container">
            <h2 class="home-numbers__title" data-aos="fade-up">{$_modx->resource.numbers_title}</h2>
            <ul class="home-numbers__items list-reset">
                {set $numbers = json_decode($_modx->resource.numbers, true)}
                {foreach $numbers as $row}
                    <li class="home-numbers__item radius-10 shadow" data-aos="fade-up" data-aos-delay="{$row@index * 100}">
                        <span class="home-numbers__item-title">
                            <span>{$row.title}</span> 
                            {$row.subtitle}
                        </span>
                    </li>    
                {/foreach}
            </ul>
        </div>
    </section>

    <section class="section home-about _p0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-up">{$_modx->resource.about_title}</h2>
            {include 'file:chunks/about/home_about.tpl'}
        </div>
    </section>

    {include 'file:chunks/chief/chief.tpl'}

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-up">{$_modx->resource.projects_title}</h2>

            <div class="home-projects">
                {'pdoResources' | snippet : [
                    'parents'  => 6,
                    'depth' => 0,
                    'sortby' => 'menuindex',
                    'sortdir' => 'ASC',
                    'limit' => 0,
                    'tpl' => '@FILE:chunks/projects/project_item.tpl',
                    'includeContent' => 0,
                    'includeTVs' => 'icon',
                    'tvPrefix' => ''
                ]}

                <div class="home-projects__all">
                    {set $projects_img_lazy = 'pThumb' | snippet : [
                        'input' => $_modx->resource.projects_img,
                        'options' => 'w=410&h=305&zc=1&q=1&f=jpg'
                    ]}

                    {set $projects_img = 'pThumb' | snippet : [
                        'input' => $_modx->resource.projects_img,
                        'options' => 'w=410&h=305&zc=1&q=90&f=jpg'
                    ]}

                    {set $projects_img_2x = 'pThumb' | snippet : [
                        'input' => $_modx->resource.projects_img,
                        'options' => 'w=820&h=610&zc=1&q=90&f=jpg'
                    ]}

                    {set $projects_img_webp = 'pThumb' | snippet : [
                        'input' => $_modx->resource.projects_img,
                        'options' => 'w=410&h=305&zc=1&q=90&f=webp'
                    ]}

                    {set $projects_img_webp_2x = 'pThumb' | snippet : [
                        'input' => $_modx->resource.projects_img,
                        'options' => 'w=820&h=610&zc=1&q=90&f=webp'
                    ]}

                    <picture class="home-projects__picture picture _cover radius-20" data-aos="fade-up">
                        <source type="image/webp" data-srcset="{$projects_img_webp} 1x, {$projects_img_webp_2x} 2x">
                        <img class="lazy" 
                            src="{$projects_img_lazy}"
                            data-srcset="{$projects_img} 1x, {$projects_img_2x} 2x"
                            alt="{$_modx->resource.projects_title | escape}" width="410" height="305">
                    </picture>

                    <article class="project radius-30 shadow" data-aos="fade-up">
                        <h3 class="project__title">Все проекты</h3>
                        <a class="project__btn btn-reset radius-10 shadow link _full" href="{6 | url}">
                            <svg width="41" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </a>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-up">Услуги</h2>

            {include 'file:chunks/services/services.tpl'}
        </div>
    </section>

    <section class="section _pb0">
        <div class="container">
            {'!pdoResources' | snippet : [
                'parents'  => 4,
                'depth' => 0,
                'sortby' => 'menuindex',
                'sortdir' => 'ASC',
                'limit' => 0,
                'tpl' => '@FILE:chunks/products/product_item_carousel.tpl',
                'includeContent' => 0,
                'includeTVs' => 'sprite',
                'tvPrefix' => '',
                'setTotal' => 1,
                'totalVar' => 'total_products',
                'toPlaceholder' => 'products_plh',
            ]}

            <div class="swiper__header" data-aos="fade-up">
                <h2 class="section__title">Продукты</h2>

                {if 'total_products' | placeholder > 4}
                    <div class="swiper__navs">
                        <button class="swiper__nav _prev radius-10 shadow btn-reset" type="button" data-swiper-products-prev>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                        <button class="swiper__nav _next radius-10 shadow btn-reset" type="button" data-swiper-products-next>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>
                {/if}
            </div>

            <div class="swiper _full-width _shadow-vertical" data-swiper-products>
                <div class="swiper-wrapper">
                    {'products_plh' | placeholder}
                </div>
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container">
            {set $special_offers = json_decode($_modx->resource.special_offers, true)}

            <div class="swiper__header" data-aos="fade-up">
                <h2 class="section__title">{$_modx->resource.special_offers_title}</h2>

                {if $special_offers | length > 1}
                    <div class="swiper__navs">
                        <button class="swiper__nav _prev radius-10 shadow btn-reset" type="button" data-swiper-sale-prev>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                        <button class="swiper__nav _next radius-10 shadow btn-reset" type="button" data-swiper-sale-next>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>
                {/if}
            </div>

            <div class="swiper" data-swiper-sale data-aos="fade-up">
                <div class="swiper-wrapper">
                    {foreach $special_offers as $row}
                        <div class="swiper-slide _equal-height">
                            <article class="sale radius-30">
                                <div class="sale__content">
                                    <div class="sale__bg">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0
                                        0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1
                                        0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1
                                    </div>

                                    <div class="sale__icon">{$row.label}</div>

                                    <h3 class="sale__title">{$row.title}</h3>

                                    <p class="sale__text">{$row.text}</p>
                                    
                                    <a class="sale__link link _full btn _white btn-reset" href="{$row.linkid | url}">Подробнее</a>
                                </div>

                                {set $img_lazy = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=860&h=420&zc=1&q=1&f=jpg'
                                ]}

                                {set $img = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=860&h=420&zc=1&q=90&f=jpg'
                                ]}

                                {set $img_2x = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=1720&h=840&zc=1&q=90&f=jpg'
                                ]}

                                {set $img_webp = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=860&h=420&zc=1&q=90&f=webp'
                                ]}

                                {set $img_webp_2x = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=1720&h=840&zc=1&q=90&f=webp'
                                ]}

                                <picture class="sale__picture picture _cover radius-30">
                                    <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                                    <img class="lazy" 
                                        src="{$img_lazy}"
                                        data-srcset="{$img} 1x, {$img_2x} 2x"
                                        alt="{$row.title | escape}" width="860" height="420">
                                </picture>
                            </article>
                        </div>
                    {/foreach}
                </div>
            </div>

            {if $special_offers | length > 1}
                <div class="swiper__pagination" data-swiper-sale-pagination></div>
            {/if}
        </div>
    </section>

    {include 'file:chunks/partners/partners.tpl'}

    {include 'file:chunks/clients/clients.tpl'}

    <section class="section _pb0">
        {set $confidence = json_decode($_modx->resource.confidence, true)}
        <div class="container">
            <div class="swiper__header" data-aos="fade-up">
                <h2 class="section__title">{$_modx->resource.confidence_title}</h2>

                {if $confidence | length > 1}
                    <div class="swiper__navs">
                        <button class="swiper__nav _prev radius-10 shadow btn-reset" type="button" data-swiper-confidence-prev>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                        <button class="swiper__nav _next radius-10 shadow btn-reset" type="button" data-swiper-confidence-next>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>
                {/if}
            </div>

            <div class="swiper _full-width-tablet" data-swiper-confidence>
                <div class="swiper-wrapper">
                    {foreach $confidence as $row}
                        <div class="swiper-slide _equal-height" data-aos="fade-up" data-aos-delay="{$row@index * 100}">
                            <article class="confidence radius-30">
                                <h3 class="confidence__title">{$row.title}</h3>
                                <div class="confidence__text">
                                    {$row.richtext}
                                </div>
                            </article>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container">
            {'!pdoResources' | snippet : [
                'parents'  => 9,
                'depth' => 0,
                'sortby' => 'publishedon',
                'sortdir' => 'DESC',
                'limit' => 10,
                'tpl' => '@FILE:chunks/blog/blog_item.tpl',
                'includeContent' => 0,
                'includeTVs' => 'img,tags',
                'tvPrefix' => '',
                'setTotal' => 1,
                'totalVar' => 'blog_total',
                'toPlaceholder' => 'blog_plh'
            ]}
            <div class="swiper__header" data-aos="fade-up">
                <h2 class="section__title">Новости</h2>

                {if 'blog_total' | placeholder > 3}
                    <div class="swiper__navs">
                        <button class="swiper__nav _prev radius-10 shadow btn-reset" type="button" data-swiper-news-prev>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                        <button class="swiper__nav _next radius-10 shadow btn-reset" type="button" data-swiper-news-next>
                            <svg width="31" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>
                {/if}
            </div>

            <div class="swiper _full-width-tablet _shadow-full" data-swiper-news>
                <div class="swiper-wrapper">
                    {'blog_plh' | placeholder}
                </div>
            </div>
        </div>
    </section>
{/block}