<article class="project radius-30 shadow" data-aos="fade-up">
    <h3 class="project__title">{$menutitle ?: $pagetitle}</h3>
    <a class="project__btn btn-reset radius-10 shadow link _full" href="{$id | url}">
        <svg width="41" height="16">
            <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
        </svg>
    </a>
    <img class="project__icon" src="{$icon}" width="200" height="200" alt="{($menutitle ?: $pagetitle) | escape}">
</article>