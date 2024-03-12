{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container not-found" data-aos="fade-up">
        <svg class="not-found__icon" width="833" height="285">
            <use xlink:href="assets/theme/img/icons/icons.svg#404"></use>
        </svg>

        <h1 class="h1 not-found__title">{$_modx->resource.pagetitle}</h1>
        
        <a class="not-found__btn btn _blue btn-reset" href="{'site_url' | config}">Перейти на главную</a>
    </div>
{/block}