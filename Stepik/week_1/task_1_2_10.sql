/*
	База данных платежной системы billing_simple состоит из таблицы billing.
	Удалите из таблицы записи, где адрес плательщика или адрес
	получателя установлен в неопределенное значение или пустую строку.
*/

delete from billing
	where (payer_email ='' or payer_email is null)
	or (recipient_email = '' or recipient_email is null);
