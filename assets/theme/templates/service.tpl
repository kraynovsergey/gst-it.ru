{extends 'file:templates/base.tpl'}

{block 'main'}
    <section class="project-page-intro">
        <svg class="project-page-intro__icon" width="400" height="400">
            <use xlink:href="assets/theme/img/icons/icons.svg#project-page-intro"></use>
        </svg>

        <div class="container project-page-intro__container">
            <div class="project-page-intro__content">
                {include 'file:chunks/breadcrumbs/breadcrumbs.tpl' without_container=1}

                <div class="project-page-intro__text _sale" data-aos="fade-right">
                    {if $_modx->resource.intro_label}
                        <div class="sale__icon">{$_modx->resource.intro_label}</div>
                    {/if}

                    <h1 class="project-page-intro__title">{$_modx->resource.pagetitle}</h1>

                    <div class="project-page-intro__subtitle text">
                        {$_modx->resource.intro_richtext}
                    </div>

                    <button class="btn btn-reset _blue" type="button" data-fancybox data-src="#modal-consultation">Получить консультацию</button>
                </div>
            </div>
            
            {set $img_lazy = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=790&h=840&zc=1&q=1&f=jpg'
            ]}

            {set $img = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=790&h=840&zc=1&q=90&f=jpg'
            ]}

            {set $img_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=1580&h=1680&zc=1&q=90&f=jpg'
            ]}

            {set $img_webp = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=790&h=840&zc=1&q=90&f=webp'
            ]}

            {set $img_webp_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.intro_img,
                'options' => 'w=1580&h=1680&zc=1&q=90&f=webp'
            ]}

            <picture class="project-page-intro__picture picture _cover radius-left-30" data-aos="fade-left">
                <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                <img class="lazy" 
                    src="{$img_lazy}"
                    data-srcset="{$img} 1x, {$img_2x} 2x"
                    alt="{$_modx->resource.pagetitle | escape}" width="790" height="840">
            </picture>
        </div>
    </section>

    <div class="section _pb0">
        <div class="container">
            <div class="career-about__big">
                <div class="career-about__big-numbers _left">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1
                    0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                <div class="career-about__big-numbers _right">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0
                    1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                <div class="career-about__big-text shadow radius-10" data-aos="zoom-in">{$_modx->resource.tesis}</div>
            </div>
        </div>
    </div>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.actual_title}</h2>

            <div class="swiper _full-width-tablet _shadow-full" data-swiper-actual>
                <div class="swiper-wrapper actual">
                    {set $actual = json_decode($_modx->resource.actual, true)}
                    {foreach $actual as $row}
                        <div class="swiper-slide _equal-height" data-aos-delay="{$row@index * 100}">
                            <div class="actual__item shadow radius-30" data-aos="fade-up">
                                <span>{$row@index + 1}</span>
                                {$row.text}    
                            </div>
                        </div>    
                    {/foreach}
                </div>
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container history">
            <h2 class="section__title history__title" data-aos="fade-right">{$_modx->resource.main_targets_title}</h2>

            <div class="history__content _icon">
                {set $main_targets = json_decode($_modx->resource.main_targets, true)}
                {foreach $main_targets as $row}
                    <article class="history-item _icon" data-aos="history-item" data-aos-offset="200">
                        <svg class="history-item__icon" width="70" height="70">
                            <use xlink:href="assets/theme/img/icons/icons.svg#service-target"></use>
                        </svg>
                        <div class="history-item__content shadow radius-30">
                            <h3 class="history-item__title">{$row.text}</h3>
                        </div>
                    </article>
                {/foreach}
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.components_title}</h2>
            <div class="swiper _shadow-vertical _full-width" data-swiper-home-about>
                <div class="swiper-wrapper home-about__items _about">
                    {set $components = json_decode($_modx->resource.components, true)}
                    {foreach $components as $row}
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
{/block}

{block 'modals'}
    {include 'file:chunks/forms/consultation_modal.tpl'}
{/block}