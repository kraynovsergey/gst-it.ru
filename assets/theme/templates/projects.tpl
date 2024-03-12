{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>

        {include 'file:chunks/about/home_about.tpl'}
    </div>

    {include 'file:chunks/chief/chief.tpl'}

    <section class="section _pb0">
        <div class="container">
            <h2 class="section__title" data-aos="fade-up">Проекты</h2>

            {'!pdoResources' | snippet : [
                'parents'  => $_modx->resource.id,
                'depth' => 0,
                'sortby' => 'menuindex',
                'sortdir' => 'ASC',
                'limit' => 0,
                'tpl' => '@FILE:chunks/projects/project_item.tpl',
                'includeContent' => 0,
                'includeTVs' => 'icon',
                'tvPrefix' => '',
                'setTotal' => 1,
                'totalVar' => 'projects_total',
                'toPlaceholder' => 'projects_plh',
            ]}

            <div class="home-projects{if 'projects_total' | placeholder % 2 != 0} _alt{/if}">
                {'projects_plh' | placeholder}
            </div>
        </div>
    </section>

    {include 'file:chunks/partners/partners.tpl'}

    {include 'file:chunks/clients/clients.tpl'}
{/block}