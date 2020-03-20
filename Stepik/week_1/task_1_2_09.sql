/*
	База данных платежной системы billing_simple состоит из таблицы billing.
	Измените адрес плательщика на 'igor@mail.com' для всех
	записей таблицы, где адрес плательщика 'alex@mail.com'.
*/

update billing
	set payer_email='igor@mail.com'
	where payer_email='alex@mail.com';
