<article class="service ac">
    <button class="service__btn btn-reset radius-10 shadow ac-trigger" type="button">
        <span class="service__btn-bg">1 0 1
            0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0
            0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1
            0 1 0 0 1 0 1</span>
        <span class="service__btn-title">{$menutitle ?: $pagetitle}</span>
        <span class="service__btn-arrow radius-10 shadow">
            <svg width="21" height="16">
                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right-short"></use>
            </svg>
        </span>
    </button>

    <div class="service__content radius-30 shadow ac-panel">
        {set $img_lazy = 'pThumb' | snippet : [
            'input' => $img,
            'options' => 'w=1010&h=350&zc=1&q=1&f=jpg'
        ]}

        {set $img_2x = 'pThumb' | snippet : [
            'input' => $img,
            'options' => 'w=2020&h=700&zc=1&q=90&f=jpg'
        ]}

        {set $img_webp = 'pThumb' | snippet : [
            'input' => $img,
            'options' => 'w=1010&h=350&zc=1&q=90&f=webp'
        ]}

        {set $img_webp_2x = 'pThumb' | snippet : [
            'input' => $img,
            'options' => 'w=2020&h=700&zc=1&q=90&f=webp'
        ]}

        {set $img = 'pThumb' | snippet : [
            'input' => $img,
            'options' => 'w=1010&h=350&zc=1&q=90&f=jpg'
        ]}

        <picture class="service__picture picture radius-30 shadow">
            <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
            <img class="lazy" 
                src="{$img_lazy}"
                data-srcset="{$img} 1x, {$img_2x} 2x"
                alt="{($menutitle ?: $pagetitle) | escape}" width="1010" height="350">
        </picture>

        <h3 class="service__title">{$menutitle ?: $pagetitle}</h3>

        <p class="service__text">{$introtext}</p>

        <div class="service__link-wrapper">
            <a class="service__link link btn btn-reset _blue _full" href="{$id | url}">Подробнее</a>
        </div>
    </div>
</article>