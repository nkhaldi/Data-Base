/*
	База данных магазина store.
	Выведите список всех категорий продуктов и количество продаж товаров,
	относящихся к данной категории.
	Под количеством продаж товаров подразумевается суммарное количество
	единиц товара данной категории, фигурирующих в заказах с любым статусом.
*/

SELECT 
    c.name, COUNT(s.id)
FROM
    category AS c
        LEFT JOIN
    category_has_good ch ON c.id = ch.category_id
        LEFT JOIN
    sale_has_good AS sh ON ch.good_id = sh.good_id
        LEFT JOIN
    sale AS s ON sh.sale_id = s.id
GROUP BY c.name
