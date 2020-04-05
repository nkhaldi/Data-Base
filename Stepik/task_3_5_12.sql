/*
	База данных магазина store.
	Добавьте в таблицу 'client' поле 'source_id' тип данных: INT,
	возможность использования неопределенного значения: Да.
	Для данного поля определите ограничение внешнего ключа
	как ссылку на поле 'id' таблицы 'source'.
	Для определения ограничения необходимо использовать
	оператор ADD CONSTRAINT. Определение ограничения внешнего ключа
	и поля таблицы необходимо производить в рамках одного вызова ALTER TABLE.
*/

ALTER TABLE `client`
ADD COLUMN `source_id` INT NULL,
ADD CONSTRAINT fk_client_id FOREIGN KEY (source_id) REFERENCES source(id);
