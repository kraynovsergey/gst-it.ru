{extends 'file:templates/base.tpl'}

{block 'main'}
    {include 'file:chunks/breadcrumbs/breadcrumbs.tpl'}

    <div class="container">
        <h1 class="h1" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

        {set $cities = json_decode($_modx->resource.cities, true)}

        <div class="tabs-container">
            <div class="swiper tabs _full-width-tablet" data-swiper-tabs>
                <div class="swiper-wrapper">
                    {foreach $cities as $row}
                        <div class="swiper-slide tabs__slide">
                            <button class="tabs__item tab btn btn-reset _bordered asd{$row@index == 0 ? ' active' : ''}" type="button" data-aos="fade-up" data-aos-delay="{$row@index * 100}">{$row.city}</button>
                        </div>
                    {/foreach}
                </div>
            </div>

            <div class="tab-panes" data-aos="fade-up">
                {foreach $cities as $row}
                    <div class="tab-pane{$row@index == 0 ? ' active' : ''}">
                        <address class="contact">
                            <div class="contact__content radius-30 shadow">
                                <div class="contact__item">
                                    <p class="contact__title">Телефон</p>
                                    <a class="contact__text contact__link" href="tel:{$row.phone | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{$row.phone}</a>
                                </div>

                                <div class="contact__item">
                                    <p class="contact__title">Почта</p>
                                    <a class="contact__text contact__link" href="mailto:{$row.email}">{$row.email}</a>
                                </div>

                                <div class="contact__item _full">
                                    <p class="contact__title">Адрес</p>
                                    <p class="contact__text">{$row.address}</p>
                                </div>
                            </div>
                            
                            <div class="contact__map radius-30 shadow">
                                {$row.map}
                            </div>
                        </address>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
{/block}