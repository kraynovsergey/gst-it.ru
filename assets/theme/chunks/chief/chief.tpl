<div class="section _pb0">
    <div class="container">
        <article class="chief radius-30 shadow" data-aos="fade-up">
            {set $chief_img_lazy = 'pThumb' | snippet : [
                'input' => $_modx->resource.chief_img,
                'options' => 'w=240&h=240&zc=1&q=1&f=jpg'
            ]}

            {set $chief_img = 'pThumb' | snippet : [
                'input' => $_modx->resource.chief_img,
                'options' => 'w=240&h=240&zc=1&q=90&f=jpg'
            ]}

            {set $chief_img_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.chief_img,
                'options' => 'w=480&h=480&zc=1&q=90&f=jpg'
            ]}

            {set $chief_img_webp = 'pThumb' | snippet : [
                'input' => $_modx->resource.chief_img,
                'options' => 'w=240&h=240&zc=1&q=90&f=webp'
            ]}

            {set $chief_img_webp_2x = 'pThumb' | snippet : [
                'input' => $_modx->resource.chief_img,
                'options' => 'w=480&h=480&zc=1&q=90&f=webp'
            ]}

            <picture class="chief__picture picture" data-aos="zoom-out">
                <source type="image/webp" data-srcset="{$chief_img_webp} 1x, {$chief_img_webp_2x} 2x">
                <img class="lazy" src="{$chief_img_lazy}" data-srcset="{$chief_img} 1x, {$chief_img_2x} 2x"
                    alt="{$_modx->resource.chief_fullname | escape}" width="240" height="240">
            </picture>

            <div class="chief__content">
                <p class="chief__text">
                    {$_modx->resource.chief_quote}
                    <svg class="chief__quote" width="81" height="70">
                        <use xlink:href="assets/theme/img/icons/icons.svg#quote"></use>
                    </svg>
                </p>
                <h3 class="chief__title">{$_modx->resource.chief_fullname}</h3>
                <p class="chief__subtitle">{$_modx->resource.chief_position}</p>
            </div>
        </article>
    </div>
</div>