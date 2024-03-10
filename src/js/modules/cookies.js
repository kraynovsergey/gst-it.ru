const data_cookie = document.querySelector('[data-cookie]');
	if ( data_cookie && (localStorage.cookie !== '1') ) data_cookie.classList.add('_active');

	const data_cookie_approve = document.querySelector('[data-cookie-approve]');
	if ( data_cookie_approve ) {
		data_cookie_approve.addEventListener('click', () => {
			localStorage.cookie = '1';
			if (data_cookie) data_cookie.classList.remove('_active');
		});
	}