<footer class="footer {if $_modx->resource.template == 12 or $_modx->resource.template == 13}_no-form{/if}">
    {if $_modx->resource.template != 12 and $_modx->resource.template != 13}
        <section class="footer-form radius-60">
            <div class="footer-form__numbers">1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0
                0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0
                1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0
                0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1
                0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0
                1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0
                0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1
                1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0
                1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
            {include 'file:chunks/forms/footer_wrap_form.tpl'}
        </section>
    {/if}

    <section class="footer__content">
        <div class="footer__main">
            <div class="container footer__main-container">
                <h3 class="footer__title">Контакты</h3>

                <div class="footer__header">
                    <address class="footer__contacts">
                        <a class="footer__contact" href="tel:{'phone' | config | replace : '(' : '' | replace : ')' : '' | replace : '-' : '' | replace : ' ' : ''}">{'phone' | config}</a>
                        <a class="footer__contact" href="mailto:{'email' | config}">{'email' | config}</a>
                    </address>

                    <div class="footer__accreditation">
                        Аккредитовано
                        <svg width="211" height="46">
                            <use xlink:href="assets/theme/img/icons/icons.svg#mincifry"></use>
                        </svg>
                    </div>
                </div>

                <div class="swiper footer__cities _full-width-tablet" data-swiper-cities>
                    <div class="swiper-wrapper">
                        {set $cities = 10 | resource : 'cities' | fromJSON}
                        {foreach $cities as $row}
                            <div class="swiper-slide _equal-height">
                                <article class="city radius-30">
                                    <div class="city__numbers">1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0
                                        1<br>1 0 1 0 0 0 1 1 0 1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1<br>1 0 1 0 0 0 1 1 0
                                        1 0 0 0 1<br>0 1 0 0 1 0 1 0 1 0 0 1 0 1</div>
                                    <svg class="city__icon" width="80" height="80">
                                        <use xlink:href="assets/theme/img/icons/icons.svg#{$row.sprite}"></use>
                                    </svg>
                                    <h3 class="city__title">{$row.city}</h3>
                                    <p class="city__text">{$row.address}</p>
                                </article>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="container footer__bottom-container">
                <div class="footer__bottom-item">© Компания GST, 2024</div>
                <a class="footer__bottom-link" href="{11 | url}">Политика конфиденциальности</a>
                <a class="footer__bottom-link" href="{12 | url}">Согласие на обработку персональных данных</a>
            </div>
        </div>
    </section>
</footer>