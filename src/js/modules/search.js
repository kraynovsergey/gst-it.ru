const search_form = document.querySelector('[data-search-form]');
const search_form_open = document.querySelector('[data-search-form-open]');
const search_form_close = document.querySelector('[data-search-form-close]');

if (search_form && search_form_open) {
    search_form_open.addEventListener('click', () => {
        search_form.classList.toggle('_active');
    });
}

if (search_form && search_form_close) {
    search_form_close.addEventListener('click', () => {
        search_form.classList.remove('_active');
    });
}