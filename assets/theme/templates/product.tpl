{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>

        <div class="tabs-container">
            {set $intro_tabs = json_decode($_modx->resource.intro_tabs, true)}

            <div class="tabs scrollbar-hidden">
                {foreach $intro_tabs as $row}
                    <div class="tabs__slide">
                        <button class="tabs__item tab btn btn-reset _bordered asd{$row@index == 0 ? ' active' : ''}" type="button" data-aos="fade-up" data-aos-delay="{$row@index * 100}">{$row.title}</button>
                    </div>
                {/foreach}
            </div>

            <div class="tab-panes">
                {foreach $intro_tabs as $row}
                    <div class="tab-pane{$row@index == 0 ? ' active' : ''}">
                        <article class="product-sale">
                            <div class="sale__content shadow radius-30" data-aos="fade-right">
                                {if $row.label}
                                    <div class="sale__icon">{$row.label}</div>
                                {/if}

                                <h3 class="sale__title">{$row.title}</h3>

                                <p class="sale__text">{$row.text}</p>
                            </div>

                            {set $img_lazy = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=710&h=373&zc=1&q=1&f=jpg'
                            ]}

                            {set $img = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=710&h=373&zc=1&q=90&f=jpg'
                            ]}

                            {set $img_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=1420&h=746&zc=1&q=90&f=jpg'
                            ]}

                            {set $img_webp = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=710&h=373&zc=1&q=90&f=webp'
                            ]}

                            {set $img_webp_2x = 'pThumb' | snippet : [
                                'input' => 'assets/images/' ~ $row.img,
                                'options' => 'w=1420&h=746&zc=1&q=90&f=webp'
                            ]}

                            <picture class="sale__picture picture _cover shadow radius-30" data-aos="fade-left">
                                <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                                <img class="lazy" 
                                    src="{$img_lazy}"
                                    data-srcset="{$img} 1x, {$img_2x} 2x"
                                    alt="{$row.title}" width="710" height="373">
                            </picture>
                        </article>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>

    <section class="section _pb0">
        <div class="container">
            {set $equipment = json_decode($_modx->resource.equipment, true)}
            <div class="equipment__header">
                <div class="equipment__header-content">
                    <h2 class="section__title" data-aos="fade-up">{$_modx->resource.equipment_title}</h2>
                    <p class="equipment__text" data-aos="fade-up">{$_modx->resource.equipment_text}</p>
                </div>
                
                {if $equipment | length > 3}
                    <div class="swiper__navs" data-aos="fade-up">
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

            <div class="swiper _full-width-small-desktop _shadow-full" data-swiper-products>
                <div class="swiper-wrapper">
                    {foreach $equipment as $row}
                        <div class="swiper-slide _equal-height" data-aos="fade-up" data-aos-delay="{$row@index * 100}">
                            <article class="value shadow radius-30" data-value>
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

            {if $_modx->resource.equipment_text_bottom}
                <p class="equipment__text equipment__bottom" data-aos="fade-up" data-aos-delay="200">{$_modx->resource.equipment_text_bottom}</p>
            {/if}
        </div>
    </section>
{/block}