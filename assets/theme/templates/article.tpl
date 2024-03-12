{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

        <div class="news-page">
            <div class="news-page__content">
                {set $img_lazy = 'pThumb' | snippet : [
                    'input' => $_modx->resource.img,
                    'options' => 'w=1050&h=430&zc=1&q=1&f=jpg'
                ]}

                {set $img = 'pThumb' | snippet : [
                    'input' => $_modx->resource.img,
                    'options' => 'w=1050&h=430&zc=1&q=90&f=jpg'
                ]}

                {set $img_2x = 'pThumb' | snippet : [
                    'input' => $_modx->resource.img,
                    'options' => 'w=2100&h=860&zc=1&q=90&f=jpg'
                ]}

                {set $img_webp = 'pThumb' | snippet : [
                    'input' => $_modx->resource.img,
                    'options' => 'w=1050&h=430&zc=1&q=90&f=webp'
                ]}

                {set $img_webp_2x = 'pThumb' | snippet : [
                    'input' => $_modx->resource.img,
                    'options' => 'w=2100&h=860&zc=1&q=90&f=webp'
                ]}

                <picture class="news-page__picture picture radius-30 shadow" data-aos="zoom-in">
                    <source type="image/webp" data-srcset="{$img_webp} 1x, {$img_webp_2x} 2x">
                        <img class="lazy"
                        src="{$img_lazy}"
                        data-srcset="{$img} 1x, {$img_2x} 2x"
                        alt="{$_modx->resource.pagetitle | escape}" width="1050" height="430">
                </picture>

                <time class="news-page__date" datetime="{$_modx->resource.publishedon | date : 'Y-m-d'}" data-aos="fade-right">Дата: {$_modx->resource.publishedon | date : 'd.m.Y'}</time>

                <ul class="news-page__tags list-reset" data-aos="fade-up">
                    {foreach $_modx->resource.tags | split : '||' as $row}
                        <li>#{$row}</li>
                    {/foreach}
                </ul>

                <div class="text" data-aos="fade-up">
                    {$_modx->resource.content}
                </div>
            </div>

            <aside class="news-page__sidebar" data-aos="fade-left">
                <h3 class="news-page__other-title">Другие записи:</h3>
                
                {'pdoResources' | snippet : [
                    'parents'  => $_modx->resource.parent,
                    'resources' => '-'~$_modx->resource.id,
                    'depth' => 0,
                    'sortby' => 'publishedon',
                    'sortdir' => 'DESC',
                    'limit' => 2,
                    'tpl' => '@FILE:chunks/blog/blog_item_page.tpl',
                    'includeContent' => 0,
                    'includeTVs' => 'img,tags',
                    'tvPrefix' => ''
                ]}
            </aside>
        </div>
    </div>
{/block}