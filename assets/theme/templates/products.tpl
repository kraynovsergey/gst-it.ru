{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}
    
    <div class="container">
        <h1 class="h1" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>

        <div class="products" data-aos="fade-up">
            {'pdoResources' | snippet : [
                'parents'  => $_modx->resource.id,
                'depth' => 0,
                'sortby' => 'menuindex',
                'sortdir' => 'ASC',
                'limit' => 0,
                'tpl' => '@FILE:chunks/products/product_item.tpl',
                'includeContent' => 0,
                'includeTVs' => 'sprite',
                'tvPrefix' => ''
            ]}
        </div>
    </div>
{/block}