/*
	База данных магазина store.
	Выведите список товаров с названиями товаров и названиями категорий,
	в том числе товаров, не принадлежащих ни одной из категорий.

	В запросе для соединения нескольких источников данных
	операцию соединения можно использовать многократно.
*/

SELECT 
    g.name AS 'good_name', c.name AS 'category_name'
FROM
    category_has_good AS h
        LEFT JOIN
    category AS c ON h.category_id = c.id
        RIGHT JOIN
    good AS g ON h.good_id = g.id
GROUP BY good_name , category_name;
