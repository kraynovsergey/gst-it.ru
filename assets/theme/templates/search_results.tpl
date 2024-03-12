{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container text" data-aos="fade-up">
        <h1 class="h1">{$_modx->resource.pagetitle}</h1>
        
        {'!SimpleSearch' | snippet : [
            'limit' => '9999',
            'containerTpl' => 'tpl.search_results_wrap',
            'tpl' => 'tpl.search_result'
        ]}
    </div>
{/block}