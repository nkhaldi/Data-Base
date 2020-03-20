/*
	База данных платежной системы billing_simple состоит из таблицы billing.
	Удалите из таблицы записи, где адрес плательщика или адрес
	получателя установлен в неопределенное значение или пустую строку.
*/

DELETE FROM billing
	WHERE (payer_email ='' OR payer_email is null)
	OR (recipient_email = '' OR recipient_email is null);
