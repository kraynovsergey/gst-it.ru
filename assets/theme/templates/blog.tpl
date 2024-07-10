{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

        <div class="tabs scrollbar-hidden">
            <div class="tabs__slide">
                <a class="tabs__item btn btn-reset _bordered{$.get.tag ? '' : ' active'}" href="{$_modx->resource.id | url}" data-aos="fade-up" data-aos-delay="0">Все записи</a>
            </div>
            <div class="tabs__slide">
                <a class="tabs__item btn btn-reset _bordered{$.get.tag == 'Новости' ? ' active' : ''}" href="{$_modx->resource.id | url}?tag=Новости" data-aos="fade-up" data-aos-delay="200">Новости</a>
            </div>
            <div class="tabs__slide">
                <a class="tabs__item btn btn-reset _bordered{$.get.tag == 'Статьи' ? ' active' : ''}" href="{$_modx->resource.id | url}?tag=Статьи" data-aos="fade-up" data-aos-delay="400">Статьи</a>
            </div>
            <div class="tabs__slide">
                <a class="tabs__item btn btn-reset _bordered{$.get.tag == 'Мероприятия' ? ' active' : ''}" href="{$_modx->resource.id | url}?tag=Мероприятия" data-aos="fade-up" data-aos-delay="600">Мероприятия</a>
            </div>
        </div>

        <div class="blog-items">
            {if $.get.tag}
                {'pdoResources' | snippet : [
                    'parents'  => $_modx->resource.id,
                    'depth' => 0,
                    'sortby' => 'publishedon',
                    'sortdir' => 'DESC',
                    'limit' => 0,
                    'tpl' => '@FILE:chunks/blog/blog_item_page.tpl',
                    'includeContent' => 0,
                    'includeTVs' => 'img,tags',
                    'tvPrefix' => '',
                    'where' => [ 
	                    'tags:LIKE' => '%'~$.get.tag~'%'
                    ]
                ]}
            {else}
                {'pdoResources' | snippet : [
                    'parents'  => $_modx->resource.id,
                    'depth' => 0,
                    'sortby' => 'publishedon',
                    'sortdir' => 'DESC',
                    'limit' => 0,
                    'tpl' => '@FILE:chunks/blog/blog_item_page.tpl',
                    'includeContent' => 0,
                    'includeTVs' => 'img,tags',
                    'tvPrefix' => ''
                ]}
            {/if}
        </div>
    </div>
{/block}