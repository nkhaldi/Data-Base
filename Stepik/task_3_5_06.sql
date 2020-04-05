/*
	Схема базы данных не содержит таблиц.
	Добавить таблицу 'best_offer_sale' со следующими полями:
	-	Название: `id`, тип данных: INT, возможность использования
		неопределенного значения: Нет, первичный ключ
	-	Название: `name`, тип данных: VARCHAR(255),
		возможность использования неопределенного значения: Да
	-	Название: `dt_start`, тип данных: DATETIME,
		возможность использования неопределенного значения: Нет
	-	Название: `dt_finish`, тип данных: DATETIME,
		возможность использования неопределенного значения: Нет
	При выполнении CREATE TABLE не следует указывать название схемы.
*/

CREATE TABLE `best_offer_sale` (
    `id` INT NOT NULL,
    `name` VARCHAR(255) NULL,
    `dt_start` DATETIME NOT NULL,
    `dt_finish` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
);
