/*
	База данных магазина store.
	Выведите все позиций списка товаров принадлежащие какой-либо
	категории с названиями товаров и названиями категорий.
	Список должен быть отсортирован по названию товара, названию категории.
	Для соединения таблиц необходимо использовать оператор INNER JOIN.
*/

SELECT 
    g.name AS 'good_name', c.name AS 'category_name'
FROM
    category AS c
        INNER JOIN
    category_has_good AS h ON c.id = h.category_id
        INNER JOIN
    good AS g ON h.good_id = g.id
ORDER BY g.name , c.name;
