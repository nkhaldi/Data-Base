/*
	База данных платежной системы billing_simple состоит из таблицы billing,
	Добавьте в таблицу одну запись о платеже со следующими значениями:
	- email плательщика: 'pasha@mail.com'
	- email получателя: 'katya@mail.com'
	- сумма: 300.00
	- валюта: 'EUR'
	- дата операции: 14.02.2016
	- комментарий: 'Valentines day present)'
*/

insert into billing values (
	'pasha@mail.com',
	'katya@mail.com',
	300.00,
	'EUR',
	'2016.02.14',
	'Valentines day present)'
);
