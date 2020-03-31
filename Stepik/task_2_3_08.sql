/*
	База данных магазина store.
	Выведите список товаров с названиями категорий,
	в том числе товаров, не принадлежащих ни к одной из категорий,
	в том числе категорий не содержащих ни одного товара.

	Полное внешнее соединение в MySQL может быть реализовано
	в результате операции объединения левого и правого соединений.
*/

SELECT 
    g.name AS 'good_name', c.name AS 'category_name'
FROM
    good AS g
        LEFT OUTER JOIN
    category_has_good AS h ON g.id = h.good_id
        LEFT OUTER JOIN
    category AS c ON h.category_id = c.id 
UNION SELECT 
    g.name AS 'good_name', c.name AS 'category_name'
FROM
    good AS g
        RIGHT OUTER JOIN
    category_has_good AS h ON g.id = h.good_id
        RIGHT OUTER JOIN
    category AS c ON h.category_id = c.id;
