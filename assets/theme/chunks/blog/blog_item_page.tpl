<article class="news radius-20 shadow" data-aos="fade-up">
    {set $img_lazy = 'pThumb' | snippet : [
        'input' => $img,
        'options' => 'w=560&h=318&zc=1&q=1&f=jpg'
    ]}

    {set $img_2x = 'pThumb' | snippet : [
        'input' => $img,
        'options' => 'w=1120&h=636&zc=1&q=90&f=jpg'
    ]}

    {set $img_webp = 'pThumb' | snippet : [
        'input' => $img,
        'options' => 'w=560&h=318&zc=1&q=90&f=webp'
    ]}

    {set $img_webp_2x = 'pThumb' | snippet : [
        'input' => $img,
        'options' => 'w=1120&h=636&zc=1&q=90&f=webp'
    ]}

    {set $img = 'pThumb' | snippet : [
        'input' => $img,
        'options' => 'w=560&h=318&zc=1&q=90&f=jpg'
    ]}

    <picture class="news__picture picture radius-20">
        <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
        <img class="lazy" src="{$img_lazy}" data-srcset="{$img} 1x, {$img_2x} 2x"
            alt="{($menutitle ?: $pagetitle) | escape}" width="560" height="318">
    </picture>

    <div class="news__content">
        <time class="news__date" datetime="{$pubslishedon | date : 'Y-m-d'}">{$publishedon | date : 'd.m.y'}</time>

        <h3 class="news__title">
            <a class="news__link link _full" href="{$id | url}">{$menutitle ?: $pagetitle}</a>
        </h3>

        <ul class="news__tags list-reset">
            {foreach $tags | split : '||' as $row}
            <li>#{$row}</li>
            {/foreach}
        </ul>
    </div>
</article>