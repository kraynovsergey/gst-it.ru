{extends 'file:templates/base.tpl'}

{block 'main'}
    <section class="project-page-intro">
        <svg class="project-page-intro__icon" width="400" height="400">
            <use xlink:href="assets/theme/img/icons/icons.svg#project-page-intro"></use>
        </svg>

        <div class="container project-page-intro__container">
            <div class="project-page-intro__content">
                {include 'file:chunks/breadcrumbs/breadcrumbs.tpl' without_container=1}

                <div class="project-page-intro__text" data-aos="fade-right">
                    <h1 class="project-page-intro__title">{$_modx->resource.pagetitle}</h1>

                    <div class="project-page-intro__subtitle text">
                        <p>{$_modx->resource.intro_text}</p>
                    </div>

                    <button class="btn btn-reset _blue" type="button" data-fancybox data-src="#modal-project">Заказать
                        проект</button>
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

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.target_title}</h2>
            <div class="targets">
                {set $target = json_decode($_modx->resource.target, true)}
                {foreach $target as $row}
                    <div class="targets__item shadow radius-30" data-aos="fade-up">
                        <svg class="targets__icon" width="60" height="60">
                            <use xlink:href="assets/theme/img/icons/icons.svg#target"></use>
                        </svg>
                        <p class="targets__text">{$row.text}</p>
                    </div>
                {/foreach}

                {if $target | length != 2}
                    {set $target_img_lazy = 'pThumb' | snippet : [
                        'input' => $_modx->resource.target_img,
                        'options' => 'w=860&h=340&zc=1&q=1&f=jpg'
                    ]}

                    {set $target_img = 'pThumb' | snippet : [
                        'input' => $_modx->resource.target_img,
                        'options' => 'w=860&h=340&zc=1&q=90&f=jpg'
                    ]}

                    {set $target_img_2x = 'pThumb' | snippet : [
                        'input' => $_modx->resource.target_img,
                        'options' => 'w=1720&h=680&zc=1&q=90&f=jpg'
                    ]}

                    {set $target_img_webp = 'pThumb' | snippet : [
                        'input' => $_modx->resource.target_img,
                        'options' => 'w=860&h=340&zc=1&q=90&f=webp'
                    ]}

                    {set $target_img_webp_2x = 'pThumb' | snippet : [
                        'input' => $_modx->resource.target_img,
                        'options' => 'w=1720&h=340&zc=1&q=90&f=webp'
                    ]}

                    <picture class="picture _cover radius-30" data-aos="fade-left">
                        <source type="image/webp" data-srcset="{$target_img_webp} 1x, {$target_img_webp_2x} 2x">
                        <img class="lazy" 
                            src="{$target_img_lazy}"
                            data-srcset="{$target_img} 1x, {$target_img_2x} 2x"
                            alt="{$_modx->resource.target_title | escape}" width="860" height="340">
                    </picture>
                {/if}
            </div>
        </div>
    </section>

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-right">{$_modx->resource.solutions_block_title}</h2>
            <div class="solutions">
                <article class="solutions__item _yellow shadow radius-30" data-aos="fade-up">
                    <h3 class="solutions__title">{$_modx->resource.solutions_title}</h3>
                    <div class="solutions__text text">
                        {$_modx->resource.solutions_text}
                    </div>
                </article>

                <article class="solutions__item _blue shadow radius-30" data-aos="fade-up" data-aos-delay="200">
                    <h3 class="solutions__title">{$_modx->resource.solutions_result_title}</h3>
                    <div class="solutions__text text">
                        {$_modx->resource.solutions_result_text}
                    </div>
                </article>
            </div>
        </div>
    </section>
{/block}

{block 'modals'}
    {include 'file:chunks/forms/project_modal.tpl'}
{/block}