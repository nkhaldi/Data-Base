/*
	База данных магазина store.
	Выведите список клиентов (имя, фамилия) и количество заказов
	данных клиентов, имеющих статус "new".
	
	Если необходимо в результате использовать группировку,
	то в операторе GROUP BY должны быть указаны все атрибуты,
	которые не являются аргументами аггрегирующих функций.
	В запросе для соединения нескольких источников данных
	операцию соединения можно использовать многократно.
*/

SELECT 
    c.first_name, c.last_name, COUNT(1) AS sale_num
FROM
    client AS c
        INNER JOIN
    sale AS s ON s.client_id = c.id
        INNER JOIN
    status AS st ON s.status_id = st.id
WHERE
    st.name = 'new'
GROUP BY c.first_name , c.last_name;
