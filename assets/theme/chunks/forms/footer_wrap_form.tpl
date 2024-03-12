<div class="container footer-form__container">
    <div class="footer-form__content radius-30">
        <h3 class="footer-form__title">{'footer_form_title' | config}</h3>

        {'!FetchIt' | snippet : [
            'form' => '@FILE:chunks/forms/footer_form.tpl',
            'validate' => 'name:required,phone:required,email:required,info:blank',
            'hooks' => 'spam,email,FormItSaveForm,bitrix24',
            'emailTpl' => '@FILE:chunks/forms/email.tpl',
            'submitVar' => 'footer',
            'emailSubject' => 'Заявка с сайта ' ~ 'site_name' | config,
            'emailTo' => 'email_form' | config,
            'emailFrom' => 'emailsender' | config,
            'emailFromName' => 'site_name' | config,
            'formName' => 'Заявка',
            'formFields' => 'page,pageName,name,email,phone,company,position,message',
            'fieldNames' => '
                pageName==Название страницы,
                page==Ссылка на страницу,
                name==ФИО,
                email==Email,
                phone==Телефон,
                company==Компания,
                position==Должность,
                message==Комментарий
            '
        ]}
    </div>
</div>