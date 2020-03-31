/*
	База данных магазина store.
	Выведите список всех источников клиентов и
	суммарный объем заказов по каждому источнику.
	Результат должен включать также записи для источников,
	по которым не было заказов.

	В запросе для соединения нескольких источников данных
	операцию соединения можно использовать многократно.
*/

SELECT 
    sr.name AS 'source_name', SUM(sl.sale_sum) AS 'sale_sum'
FROM
    source AS sr
        LEFT OUTER JOIN
    client ON sr.id = client.source_id
        LEFT OUTER JOIN
    sale AS sl ON client.id = sl.client_id
GROUP BY 1;
