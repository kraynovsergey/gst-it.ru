{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-right">{$_modx->resource.pagetitle}</h1>

        <div class="vacancy-page">
            <div class="vacancy-page__content">
                <div class="vacancy-page__block shadow radius-30 text" data-aos="fade-up">
                    <p class="vacancy-page__place">
                        <svg width="24" height="24">
                            <use xlink:href="assets/theme/img/icons/icons.svg#place"></use>
                        </svg>
                        {$_modx->resource.address}
                    </p>

                    <h2>Требуемый опыт работы: {$_modx->resource.experience}</h2>

                    <p>{$_modx->resource.type_employment}</p>
                </div>

                {set $text_blocks = json_decode($_modx->resource.text_blocks, true)}
                {foreach $text_blocks as $row}
                    <div class="vacancy-page__block shadow radius-30 text" data-aos="fade-up">
                        {$row.richtext}
                        
                        {if $row@index + 1 == $text_blocks | length}
                            <div class="vacancy-page__controls">
                                <button class="btn btn-reset _blue" type="button" data-fancybox data-src="#modal-rezume">Отправить
                                    резюме</button>
                                <button class="btn btn-reset _bordered" type="button" data-fancybox
                                    data-src="#modal-question">Задать вопрос</button>
                            </div>
                        {/if}
                    </div>
                {/foreach}
            </div>

            <aside class="vacancy-page__sidebar">
                <h3 class="vacancy-page__sidebar-title">Другие вакансии:</h3>

                {'pdoResources' | snippet : [
                    'parents' => $_modx->resource.parent,
                    'resources' => '-'~$_modx->resource.id,
                    'depth' => 0,
                    'sortby' => 'menuindex',
                    'sortdir' => 'ASC',
                    'limit' => 3,
                    'tpl' => '@FILE:chunks/career/vacancy_item.tpl',
                    'includeContent' => 0,
                    'includeTVs' => 'city',
                    'tvPrefix' => ''
                ]}
            </aside>
        </div>
    </div>
{/block}

{block 'modals'}
    {include 'file:chunks/forms/rezume_modal.tpl'}

    {include 'file:chunks/forms/question_modal.tpl'}
{/block}