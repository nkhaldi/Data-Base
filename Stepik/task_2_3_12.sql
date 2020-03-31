/*
	База данных магазина store.
	Выведите список источников, из которых не было клиентов, либо клиенты
	пришедшие из которых не совершали заказов или отказывались от заказов.
	Под клиентами, которые отказывались от заказов, необходимо понимать клиентов,
	у которых есть заказы, которые на момент выполнения запроса находятся
	в состоянии 'rejected'.

	Для проверки существования записей в каких-либо таблицах
	можно использовать оператор EXISTS в условии WHERE.
*/

SELECT 
    sr.name
FROM
    source AS sr
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            client AS cl
        WHERE
            cl.source_id = sr.id) 
UNION SELECT 
    sr.name
FROM
    source AS sr
        INNER JOIN
    client AS cl ON cl.source_id = sr.id
        INNER JOIN
    sale AS sl ON sl.client_id = cl.id
        INNER JOIN
    status AS st ON st.id = sl.status_id
WHERE
    st.name = 'rejected';
