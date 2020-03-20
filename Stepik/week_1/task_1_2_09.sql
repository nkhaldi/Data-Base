/*
	База данных платежной системы billing_simple состоит из таблицы billing.
	Измените адрес плательщика на 'igor@mail.com' для всех
	записей таблицы, где адрес плательщика 'alex@mail.com'.
*/

UPDATE billing
	SET payer_email='igor@mail.com'
	WHERE payer_email='alex@mail.com';
