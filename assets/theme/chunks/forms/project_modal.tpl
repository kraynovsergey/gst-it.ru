<div class="modal" id="modal-project" data-lenis-prevent>
    <div class="modal__content radius-20">
        <button class="modal__close btn-reset" type="button" data-fancybox-close>
            <svg width="30" height="30">
                <use xlink:href="assets/theme/img/icons/icons.svg#modal-close"></use>
            </svg>
        </button>

        <h3 class="modal__title">{'project_form_title' | config}</h3>

        {'!FetchIt' | snippet : [
            'form' => '@FILE:chunks/forms/project_form.tpl',
            'validate' => 'name:required,phone:required,info:blank',
            'hooks' => 'spam,email,FormItSaveForm',
            'emailTpl' => '@FILE:chunks/forms/email.tpl',
            'submitVar' => 'project',
            'emailSubject' => 'Заказ проекта с сайта ' ~ 'site_name' | config,
            'emailTo' => 'email_form' | config,
            'emailFrom' => 'emailsender' | config,
            'emailFromName' => 'site_name' | config,
            'formName' => 'Заказ проекта',
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