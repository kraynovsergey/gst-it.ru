{extends 'file:templates/base.tpl'}

{block 'main'}
    <section class="career-intro radius-bottom-30">
        <div class="container career-intro__container">
            <div class="career-intro__content">
                {include 'file:chunks/breadcrumbs/breadcrumbs.tpl' without_container=1}
                
                <div class="career-intro__text">
                    <h1 class="career-intro__title" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>
                    <p class="career-intro__subtitle" data-aos="fade-right">{$_modx->resource.intro_subtitle}</p>
                </div>
            </div>
            
            <div class="career-intro__gallery" data-aos="fade-left">
                {set $intro_gallery = json_decode($_modx->resource.intro_gallery, true)}
                {foreach $intro_gallery as $row}
                    {if $row@index < 8}
                        {if $row@index == 0 or $row@index == 3 or $row@index == 4 or $row@index == 7}
                            {set $classname = ' _small'}
                            
                            {set $img_lazy = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=260&h=300&zc=1&q=1&f=jpg'
                            ]}

                            {set $img = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=260&h=300&zc=1&q=90&f=jpg'
                            ]}

                            {set $img_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=520&h=600&zc=1&q=90&f=jpg'
                            ]}

                            {set $img_webp = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=260&h=300&zc=1&q=90&f=webp'
                            ]}

                            {set $img_webp_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=520&h=600&zc=1&q=90&f=webp'
                            ]}
                        {else}
                            {set $classname = ''}

                            {set $img_lazy = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=449&h=300&zc=1&q=1&f=jpg'
                            ]}

                            {set $img = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=449&h=300&zc=1&q=90&f=jpg'
                            ]}

                            {set $img_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=898&h=600&zc=1&q=90&f=jpg'
                            ]}

                            {set $img_webp = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=449&h=300&zc=1&q=90&f=webp'
                            ]}

                            {set $img_webp_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=898&h=600&zc=1&q=90&f=webp'
                            ]}
                        {/if}

                        <picture class="career-intro__picture picture radius-30 _cover{$classname}">
                            <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                            <img class="lazy"
                                src="{$img_lazy}"
                                data-srcset="{$img} 1x, {$img_2x} 2x"
                                alt="{$_modx->resource.pagetitle | escape}" width="260" height="300">
                        </picture>
                    {/if}
                {/foreach}
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container career-about">
            <div class="career-about__content radius-30 shadow" data-aos="fade-right">
                <h2 class="career-about__title">{$_modx->resource.about_work_title}</h2>
                <h3 class="career-about__subtitle">{$_modx->resource.about_work_subtitle}</h3>
                <div class="career-about__text text">{$_modx->resource.about_work_richtext}</div>
            </div>

            {set $img_lazy = 'pThumb' | snippet : [
                'input' => $_modx->resource.about_work_img,
                'options' => 'w=710&h=553&zc=1&q=1&f=jpg'
            ]}

            {set $img = 'pThumb' | snippet : [
                'input' => $_modx->resource.about_work_img,
                'options' => 'w=710&h=553&zc=1&q=90&f=jpg'
            ]}

            {set $img_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.about_work_img,
                'options' => 'w=1420&h=1106&zc=1&q=90&f=jpg'
            ]}

            {set $img_webp = 'pThumb' | snippet : [
                'input' => $_modx->resource.about_work_img,
                'options' => 'w=710&h=553&zc=1&q=90&f=webp'
            ]}

            {set $img_webp_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.about_work_img,
                'options' => 'w=1420&h=1106&zc=1&q=90&f=webp'
            ]}

            <picture class="career-about__picture radius-30 picture _cover" data-aos="fade-left">
                <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                    <img class="lazy" 
                    src="{$img_lazy}"
                    data-srcset="{$img} 1x, {$img_2x} 2x" 
                    alt="{$_modx->resource.about_work_title | escape}" width="710" height="553">
            </picture>
        </div>
    </section>

    <div class="section _pb0">
        <div class="container">
            <div class="career-about__big">
                <div class="career-about__big-numbers _left">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                <div class="career-about__big-numbers _right">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                <div class="career-about__big-text shadow radius-10" data-aos="zoom-in">{$_modx->resource.tesis}</div>
            </div>
        </div>
    </div>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.values_title}</h2>

            <div class="swiper _shadow-vertical _full-width" data-swiper-home-about>
                <div class="swiper-wrapper home-about__items _about">
                    {set $values = json_decode($_modx->resource.values_career, true)}
                    {foreach $values as $row}
                        <div class="swiper-slide _equal-height">
                            <article class="value shadow radius-30" data-value data-aos="fade-up" data-aos-delay="{$row@index * 100}">
                                <div class="value__text text">
                                    {$row.richtext}
                                </div>
                                
                                <div class="value__content">
                                    <h3 class="value__title">{$row.title}</h3>

                                    <div class="value__icon">
                                        <svg width="120" height="120">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{$row.sprite}"></use>
                                        </svg>
                                    </div>
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
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.care_title}</h2>

            <div class="care">
                <div class="care__items">
                    <div class="swiper _full-width-tablet _shadow-full" data-swiper-care>
                        <div class="swiper-wrapper">
                            {set $care = json_decode($_modx->resource.care, true)}
                            {foreach $care as $row}
                                <div class="swiper-slide _equal-height" data-aos="fade-up">
                                    <article class="care__item shadow radius-30">
                                        <svg class="care__icon" width="50" height="50">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{$row.sprite}"></use>
                                        </svg>
                                        <h3 class="care__title">{$row.title}</h3>
                                        <ul class="care__list list-reset">
                                            {set $list = json_decode($row.list, true)}
                                            {foreach $list as $item}
                                                <li>{$item.title}</li>
                                            {/foreach}
                                        </ul>
                                    </article>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>

                <section class="care__gallery">
                    <div class="swiper__header" data-aos="fade-left">
                        <h2 class="care__gallery-title">{$_modx->resource.care_gallery_title}</h2>

                        <div class="swiper__navs">
                            <button class="swiper__nav _prev radius-10 shadow btn-reset" type="button"
                                data-swiper-care-gallery-prev>
                                <svg width="31" height="16">
                                    <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                </svg>
                            </button>

                            <button class="swiper__nav _next radius-10 shadow btn-reset" type="button"
                                data-swiper-care-gallery-next>
                                <svg width="31" height="16">
                                    <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                </svg>
                            </button>
                        </div>
                    </div>

                    <div class="care__gallery-wrapper" data-aos="fade-left" data-aos-delay="200">
                        {set $care_gallery_bg_lazy = 'pThumb' | snippet : [
                            'input' => 'assets/theme/img/tmp/career/career-care.png',
                            'options' => 'w=810&h=792&zc=1&q=1&f=jpg'
                        ]}

                        <picture class="care-gallery-bg picture">
                            <source type="image/webp"
                                data-srcset="assets/theme/img/career-care.webp 1x, assets/theme/img/career-care@2x.webp 2x">
                            <img class="lazy" 
                                src="{$care_gallery_bg_lazy}"
                                data-srcset="assets/theme/img/career-care.png 1x, assets/theme/img/career-care@2x.png 2x" 
                                alt="Фон" width="810" height="792">
                        </picture>

                        <div class="swiper" data-swiper-care-gallery>
                            <div class="swiper-wrapper">
                                {set $care_gallery = json_decode($_modx->resource.care_gallery, true)}
                                {foreach $care_gallery as $row}
                                    {set $img_lazy = 'pThumb' | snippet : [
                                        'input' => 'assets/images/' ~ $row.img,
                                        'options' => 'w=650&h=541&zc=1&q=1&f=jpg'
                                    ]}

                                    {set $img = 'pThumb' | snippet : [
                                        'input' => 'assets/images/' ~ $row.img,
                                        'options' => 'w=650&h=541&zc=1&q=90&f=jpg'
                                    ]}

                                    {set $img_2x = 'pThumb' | snippet : [
                                        'input' => 'assets/images/' ~ $row.img,
                                        'options' => 'w=1300&h=1082&zc=1&q=90&f=jpg'
                                    ]}

                                    {set $img_webp = 'pThumb' | snippet : [
                                        'input' => 'assets/images/' ~ $row.img,
                                        'options' => 'w=650&h=541&zc=1&q=90&f=webp'
                                    ]}

                                    {set $img_webp_2x = 'pThumb' | snippet : [
                                        'input' => 'assets/images/' ~ $row.img,
                                        'options' => 'w=1300&h=1082&zc=1&q=90&f=webp'
                                    ]}

                                    <div class="swiper-slide _equal-height">
                                        <figure class="care__gallery-item">
                                            <picture class="picture">
                                                <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                                                <img class="lazy" 
                                                    src="{$img_lazy}"
                                                    data-srcset="{$img} 1x, {$img_2x} 2x"
                                                    alt="{$row.title | escape}" width="650" height="541">
                                            </picture>
                                            <figcaption>{$row.title}</figcaption>
                                        </figure>
                                    </div>
                                {/foreach}
                            </div>

                            <div class="care__gallery-pagination" data-swiper-care-gallery-pagination></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>

    <div class="section _pb0">
        <div class="container">
            <div class="career-about__big">
                <div class="career-about__big-numbers _left">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                <div class="career-about__big-numbers _right">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                <div class="career-about__big-text shadow radius-10" data-aos="zoom-in">{$_modx->resource.tesis2}</div>
            </div>
        </div>
    </div>

    <div class="section _pb0">
        <div class="container">
            <div class="swiper _shadow-vertical _full-width" data-swiper-home-about>
                <div class="swiper-wrapper home-about__items _about">
                    {set $vacancies_type = json_decode($_modx->resource.vacancies_type, true)}
                    {foreach $vacancies_type as $row}
                        <div class="swiper-slide _equal-height">
                            <figure class="career-types radius-30" data-aos="fade-up" data-aos-delay="{$row@index * 100}">
                                {set $img_lazy = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=410&h=285&zc=1&q=1&f=jpg'
                                ]}

                                {set $img = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=410&h=285&zc=1&q=90&f=jpg'
                                ]}

                                {set $img_2x = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=820&h=570&zc=1&q=90&f=jpg'
                                ]}

                                {set $img_webp = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=410&h=285&zc=1&q=90&f=webp'
                                ]}

                                {set $img_webp_2x = 'pThumb' | snippet : [
                                    'input' => 'assets/images/' ~ $row.img,
                                    'options' => 'w=820&h=570&zc=1&q=90&f=webp'
                                ]}

                                <picture class="picture">
                                    <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                                    <img class="lazy" 
                                        src="{$img_lazy}"
                                        data-srcset="{$img} 1x, {$img_2x} 2x" 
                                        width="410" height="285" alt="{$row.title | escape}">
                                </picture>
                                
                                <figcaption>{$row.title}</figcaption>
                            </figure>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">Вакансии</h2>
            <div class="tabs-container">
                <div class="tabs scrollbar-hidden">
                    <div class="tabs__slide">
                        <button class="tabs__item tab btn btn-reset _bordered asd active" type="button"
                            data-aos="fade-up" data-aos-delay="0">Все города</button>
                    </div>
                    <div class="tabs__slide">
                        <button class="tabs__item tab btn btn-reset _bordered" type="button" data-aos="fade-up"
                            data-aos-delay="200">Москва</button>
                    </div>
                    <div class="tabs__slide">
                        <button class="tabs__item tab btn btn-reset _bordered" type="button" data-aos="fade-up"
                            data-aos-delay="400">Санкт-Петебург</button>
                    </div>
                    <div class="tabs__slide">
                        <button class="tabs__item tab btn btn-reset _bordered" type="button" data-aos="fade-up"
                            data-aos-delay="600">Самара</button>
                    </div>
                    <div class="tabs__slide">
                        <button class="tabs__item tab btn btn-reset _bordered" type="button" data-aos="fade-up"
                            data-aos-delay="800">Саранск</button>
                    </div>
                </div>
                <div class="tab-panes" data-aos="fade-up">
                    <div class="tab-pane active">
                        <div class="vacancies" data-vacancies>
                            <div class="vacancies__items">
                                {'pdoResources' | snippet : [
                                    'parents'  => $_modx->resource.id,
                                    'depth' => 0,
                                    'sortby' => 'menuindex',
                                    'sortdir' => 'ASC',
                                    'limit' => 0,
                                    'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
                                    'includeContent' => 0,
                                    'includeTVs' => 'city',
                                    'tvPrefix' => ''
                                ]}
                            </div>
                            <div class="vacancies__more" data-aos="fade-down">
                                <button class="btn btn-reset _blue" type="button" data-vacancies-more>Посмотреть все вакансии</button>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane">
                        <div class="vacancies" data-vacancies>
                            <div class="vacancies__items">
                                {'pdoResources' | snippet : [
                                    'parents'  => $_modx->resource.id,
                                    'depth' => 0,
                                    'sortby' => 'menuindex',
                                    'sortdir' => 'ASC',
                                    'limit' => 0,
                                    'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
                                    'includeContent' => 0,
                                    'includeTVs' => 'city',
                                    'tvPrefix' => '',
                                    'tvFilters' => 'city==Москва',
                                ]}
                            </div>
                            <div class="vacancies__more" data-aos="fade-down">
                                <button class="btn btn-reset _blue" type="button" data-vacancies-more>Посмотреть все вакансии</button>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane">
                        <div class="vacancies" data-vacancies>
                            <div class="vacancies__items">
                                {'pdoResources' | snippet : [
                                    'parents'  => $_modx->resource.id,
                                    'depth' => 0,
                                    'sortby' => 'menuindex',
                                    'sortdir' => 'ASC',
                                    'limit' => 0,
                                    'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
                                    'includeContent' => 0,
                                    'includeTVs' => 'city',
                                    'tvPrefix' => '',
                                    'tvFilters' => 'city==Санкт-Петербург',
                                ]}
                            </div>
                            <div class="vacancies__more" data-aos="fade-down">
                                <button class="btn btn-reset _blue" type="button" data-vacancies-more>Посмотреть все вакансии</button>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane">
                        <div class="vacancies" data-vacancies>
                            <div class="vacancies__items">
                                {'pdoResources' | snippet : [
                                    'parents'  => $_modx->resource.id,
                                    'depth' => 0,
                                    'sortby' => 'menuindex',
                                    'sortdir' => 'ASC',
                                    'limit' => 0,
                                    'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
                                    'includeContent' => 0,
                                    'includeTVs' => 'city',
                                    'tvPrefix' => '',
                                    'tvFilters' => 'city==Самара',
                                ]}
                            </div>
                            <div class="vacancies__more" data-aos="fade-down">
                                <button class="btn btn-reset _blue" type="button" data-vacancies-more>Посмотреть все вакансии</button>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane">
                        <div class="vacancies" data-vacancies>
                            <div class="vacancies__items">
                                {'pdoResources' | snippet : [
                                    'parents'  => $_modx->resource.id,
                                    'depth' => 0,
                                    'sortby' => 'menuindex',
                                    'sortdir' => 'ASC',
                                    'limit' => 0,
                                    'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
                                    'includeContent' => 0,
                                    'includeTVs' => 'city',
                                    'tvPrefix' => '',
                                    'tvFilters' => 'city==Саранск',
                                ]}
                            </div>
                            <div class="vacancies__more" data-aos="fade-down">
                                <button class="btn btn-reset _blue" type="button" data-vacancies-more>Посмотреть все вакансии</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
{/block}