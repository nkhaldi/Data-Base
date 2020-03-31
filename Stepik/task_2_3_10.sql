/*
	База данных магазина store.
	Выведите названия товаров, которые относятся к категории 'Cakes'
	или фигурируют в заказах текущий статус которых 'delivering'.
	Результат не должен содержать одинаковых записей.
	В запросе необходимо использовать оператор UNION
	для объединения выборок по разным условиям.

	В запросе для соединения нескольких источников данных
	операцию соединения можно использовать многократно.
*/

SELECT 
    g.name AS 'good_name'
FROM
    good AS g
        INNER JOIN
    category_has_good AS ch ON g.id = ch.good_id
        INNER JOIN
    category AS c ON ch.category_id = c.id
WHERE
    c.name = 'Cakes' 
UNION SELECT 
    g.name AS 'good_name'
FROM
    good AS g
        INNER JOIN
    sale_has_good AS sh ON g.id = sh.good_id
        INNER JOIN
    sale AS sl ON sh.sale_id = sl.id
        INNER JOIN
    status AS st ON sl.status_id = st.id
WHERE
    st.name = 'delivering';
