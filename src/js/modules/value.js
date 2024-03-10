const values = document.querySelectorAll('[data-value]');
if (values.length > 0) {
    values.forEach(item => {
        item.addEventListener('click', () => {
            item.classList.toggle('_active');
        });
    });
}