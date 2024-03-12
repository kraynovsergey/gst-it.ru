<div class="modal" id="modal-order" data-lenis-prevent>
    <div class="modal__content radius-20">
        <button class="modal__close btn-reset" type="button" data-fancybox-close>
            <svg width="30" height="30">
                <use xlink:href="assets/theme/img/icons/icons.svg#modal-close"></use>
            </svg>
        </button>

        <h3 class="modal__title">{'order_form_title' | config}</h3>
        
        {'!FetchIt' | snippet : [
            'form' => '@FILE:chunks/forms/order_form.tpl',
            'validate' => 'name:required,phone:required,info:blank',
            'hooks' => 'spam,email,FormItSaveForm,bitrix24',
            'emailTpl' => '@FILE:chunks/forms/email.tpl',
            'submitVar' => 'order',
            'emailSubject' => 'Заявка с сайта ' ~ 'site_name' | config,
            'emailTo' => 'email_form' | config,
            'emailFrom' => 'emailsender' | config,
            'emailFromName' => 'site_name' | config,
            'formName' => 'Заявка',
            'formFields' => 'page,pageName,name,phone,message',
            'fieldNames' => '
                pageName==Название страницы,
                page==Ссылка на страницу,
                name==ФИО,
                phone==Телефон,
                message==Комментарий
            '
        ]}
    </div>
</div>