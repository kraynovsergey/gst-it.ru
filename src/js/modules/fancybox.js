import { Fancybox } from "@fancyapps/ui";

Fancybox.bind("[data-fancybox]");

/* Открытие модального окна "Спасибо" после успешной отправки форм */
document.addEventListener('fetchit:success', (e) => {
    const { form } = e.detail;

    Fancybox.close();
    Fancybox.show(
        [
            {
                src: '#modal-thankyou',
                type: 'inline'
            }
        ]
    )
});

/* Ручное открытие модального окна "Спасибо" */
const open_thankyou = document.querySelectorAll('[data-open-thankyou]');
if (open_thankyou.length > 0) {
    open_thankyou.forEach(item => {
        item.addEventListener('click', (e) => {
            e.preventDefault();

            Fancybox.close();
            Fancybox.show(
                [
                    {
                        src: '#modal-thankyou',
                        type: 'inline'
                    }
                ]
            )
        });
    });
}