const vacancies = document.querySelectorAll('[data-vacancies]');
if (vacancies.length > 0) {
    vacancies.forEach(vacancy_block => {
        let vacancy = vacancy_block.querySelectorAll('[data-vacancies-item]'),
            vacancy_more = vacancy_block.querySelector('[data-vacancies-more]');

        if (vacancy.length > 3) {
            vacancy_block.classList.add('_more');
        }

        if (vacancy_more) {
            vacancy_more.addEventListener('click', () => {
                vacancy_block.classList.add('_active');
            });
        }
    });
}