<header class="header">
    <div class="container header__container">
        {if $_modx->resource.id != 'site_start' | config}
            <a class="header__logo" href="{'site_url' | config}">
        {else}
            <div class="header__logo" href="{'site_url' | config}">
        {/if}
            <svg width="148" height="60">
                <use xlink:href="assets/theme/img/icons/icons.svg#logo"></use>
            </svg>
            {if $_modx->resource.id != 'site_start' | config}
            </a>
        {else}
            </div>
        {/if}

        <div class="header__nav-wrapper">
            <nav class="header__nav">
                {'pdoMenu' | snippet : [
                    'parents' => 0,
                    'level' => 1,
                    'includeTVs' => '',
                    'plPrefix' => '',
                    'outerClass' => 'header__list list-reset',
                    'hereClass' => '_active'
                ]}
            </nav>

            <div class="header__search-wrap">
                <button class="header__search-btn btn-reset" type="button" data-search-form-open>
                    <svg class="search-form__icon" width="22" height="22">
                        <use xlink:href="assets/theme/img/icons/icons.svg#search"></use>
                    </svg>
                </button>
            </div>

            <form class="search-form" action="{33 | url}" method="get" data-search-form>
                <svg class="search-form__icon" width="22" height="22">
                    <use xlink:href="assets/theme/img/icons/icons.svg#search"></use>
                </svg>
                <input class="search-form__input" type="text" name="search" minlength="3" required placeholder="Поиск по сайту"
                    required>
                <button class="search-form__close btn-reset" type="button" data-search-form-close>
                    <svg width="24" height="24">
                        <use xlink:href="assets/theme/img/icons/icons.svg#modal-close"></use>
                    </svg>
                </button>
            </form>
        </div>
        
        <a class="header__link" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">
            <svg width="24" height="24">
                <use xlink:href="assets/theme/img/icons/icons.svg#phone"></use>
            </svg>
            <span>{'phone' | config}</span>
        </a>
        
        <a class="header__link" href="mailto:{'email' | config}">
            <svg width="24" height="24">
                <use xlink:href="assets/theme/img/icons/icons.svg#phone"></use>
            </svg>
            <span>{'email' | config}</span>
        </a>

        <button class="header__btn btn _blue btn-reset" type="button" data-fancybox data-src="#modal-order">Оставить
            заявку</button>

        <button class="header__burger btn-reset" type="button" data-fancybox
            data-src="#mobile-nav"><span></span><span></span><span></span></button>
    </div>

    <div class="header__modal" id="mobile-nav" data-lenis-prevent>
        <button class="modal__close btn-reset" type="button" data-fancybox-close>
            <svg width="30" height="30">
                <use xlink:href="assets/theme/img/icons/icons.svg#modal-close"></use>
            </svg>
        </button>

        <div class="header__modal-content">
            <nav class="header__nav">
                <form class="search-form _mobile" action="{33 | url}" method="get">
                    <svg class="search-form__icon" width="22" height="22">
                        <use xlink:href="assets/theme/img/icons/icons.svg#search"></use>
                    </svg>
                    <input class="search-form__input" type="text" name="search" minlength="3" placeholder="Поиск по сайту" required>
                </form>

                {'pdoMenu' | snippet : [
                    'parents' => 0,
                    'level' => 1,
                    'includeTVs' => '',
                    'plPrefix' => '',
                    'outerClass' => 'header__list list-reset',
                    'hereClass' => '_active'
                ]}
            </nav>
            <div class="header__modal-footer">
                <a class="header__link" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">
                    <svg width="24" height="24">
                        <use xlink:href="assets/theme/img/icons/icons.svg#phone"></use>
                    </svg>
                    <span>{'phone' | config}</span>
                </a>
                
                <a class="header__link" href="mailto:{'email' | config}">
                    <svg width="24" height="24">
                        <use xlink:href="assets/theme/img/icons/icons.svg#phone"></use>
                    </svg>
                    <span>{'email' | config}</span>
                </a>

                <button class="header__btn btn _blue btn-reset" type="button" data-fancybox
                    data-src="#modal-order">Оставить заявку</button>
            </div>
        </div>
    </div>
</header>