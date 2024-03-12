<form class="form modal__form" action="{$_modx->resource.id | url}" method="post" data-policy-form>
    <input type="text" style="position: absolute; left: -9999px; top: -99999px;" name="info" value="">
    <input type="hidden" name="nospam:blank" value="">
    <input type="hidden" name="consultation" value="1">
    <input type="hidden" name="page" value="{$_modx->resource.id | url : [ 'scheme' => 'full' ]}">
    <input type="hidden" name="pageName" value="{$_modx->resource.pagetitle | escape}">

    <input class="form__input radius-10" type="text" name="name" placeholder="Имя*">

    <input class="form__input radius-10" type="tel" name="phone" placeholder="+7 (ХХХ) ХХХ-ХХ-ХХ*" data-tel>

    <textarea class="form__textarea radius-10" name="message" placeholder="Комментарий"></textarea>

    <button class="form__submit btn btn-reset _blue" type="submit" data-policy-submit>Оставить
        заявку</button>

    <div class="form__checkbox">
        <input class="form__checkbox-input" type="checkbox" name="privacy_policy" id="policy-consultation-modal"
            data-policy>
        <label class="form__checkbox-label" for="policy-consultation-modal">
            <span class="form__checkbox-label-check"></span>
            <span>Я ознакомлен с <a href="{11 | url}" target="_blank">Политикой конфиденциальности</a>,
                согласен на <a href="{12 | url}" target="_blank">обработку персональных данных</a> и подтверждаю, что
                мне исполнилось 18 лет</span>
        </label>
    </div>
    
    <div class="form__required"><span>*</span>Обязательно для заполнения</div>
</form>