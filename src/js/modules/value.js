const values = document.querySelectorAll('[data-value]');
if (values.length > 0 && window.innerWidth <= 1024) {
    values.forEach(item => {
        item.addEventListener('click', () => {
            item.classList.toggle('_active');
        });
    });
}