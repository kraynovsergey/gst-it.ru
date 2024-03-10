/* Политика конфиденциальности */
const data_policy = document.querySelectorAll('[data-policy]');
if (data_policy.length > 0) {
    data_policy.forEach(item => {
        validate_privacy_policy(item);

        item.addEventListener('change', () => {
            validate_privacy_policy(item);
        });
    })

    function validate_privacy_policy(item) {
        let btn_submit = item.closest('[data-policy-form]').querySelector('[data-policy-submit]');
        item.checked ? btn_submit.disabled = false : btn_submit.disabled = true;
    }
}

/* Маска телефона */
window.addEventListener("DOMContentLoaded", () => {
    [].forEach.call(document.querySelectorAll('[data-tel]'), (input) => {
        let keyCode;

        function mask(event) {
            event.keyCode && (keyCode = event.keyCode);
            let pos = this.selectionStart;
            if (pos < 3) event.preventDefault();
            let matrix = "+7 (___) ___-__-__",
                i = 0,
                def = matrix.replace(/\D/g, ""),
                val = this.value.replace(/\D/g, ""),
                new_value = matrix.replace(/[_\d]/g, function (a) {
                    return i < val.length ? val.charAt(i++) || def.charAt(i) : a
                });
            i = new_value.indexOf("_");
            if (i !== -1) {
                i < 5 && (i = 3);
                new_value = new_value.slice(0, i)
            }
            let reg = matrix.substr(0, this.value.length).replace(/_+/g,
                function (a) {
                    return "\\d{1," + a.length + "}"
                }).replace(/[+()]/g, "\\$&");
            reg = new RegExp("^" + reg + "$");
            if (!reg.test(this.value) || this.value.length < 5 || keyCode > 47 && keyCode < 58) this.value = new_value;
            if (event.type === "blur" && this.value.length < 5) this.value = ""
        }

        input.addEventListener("input", mask, false);
        input.addEventListener("focus", mask, false);
        input.addEventListener("blur", mask, false);
        input.addEventListener("keydown", mask, false);
    });
});

/* Выбор файла */
const form_files = document.querySelectorAll('[data-form-file]');
if (form_files.length > 0) {
    form_files.forEach(item => {
        let filename = item.closest('form').querySelector('[data-form-filename]');

        item.addEventListener('change', () => {
            filename.innerHTML = item.files[0].name;
        });
    });
}