/*
	База данных платежной системы billing_simple состоит из таблицы billing.
	Выведите поступления денег от пользователя с email 'vasya@mail.com'.
	В результат включите все столбцы таблицы и не меняйте порядка их вывода.
 */

SELECT * FROM billing
	WHERE payer_email='vasya@mail.com';
