/*
	Из базы данных магазина store заданнй структуры выведите
	все позиций списка товаров принадлежащие какой-либо категории
	с названиями товаров и названиями категорий.
	Список должен быть отсортирован по названию товара, названию категории.
	Для соединения таблиц необходимо использовать оператор INNER JOIN.
*/

SELECT 
    g.name AS g_name, c.name AS c_name
FROM
    category AS c
        INNER JOIN
    category_has_good AS h ON c.id = h.category_id
        INNER JOIN
    good AS g ON h.good_id = g.id
ORDER BY g.name , c.name;
