{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>

        {include 'file:chunks/services/services.tpl'}
    </div>
{/block}