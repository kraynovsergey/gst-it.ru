<div class="breadcrumbs" data-aos="fade-up">
    {if $without_container != 1}
        <div class="container">
    {/if}
        {'pdoCrumbs' | snippet : [
            'showHome' => 1,
            'tplWrapper' => '@INLINE:<ul class="breadcrumbs__list list-reset">{$output}</ul>',
            'tpl' => '@INLINE:<li><a href="{$link}">{$menutitle}</a></li>',
            'tplCurrent' => '@INLINE:<li>{$menutitle}</li>'
        ]}
    {if $without_container != 1}
        </div>
    {/if}
</div>