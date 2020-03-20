/*
	База данных проектов project_simple состоит из одной таблицы project.
	Выведите количество товаров в каждой категории.
	Результат должен содержать два столбца: 
	- название категории, 
	- количество товаров в данной категории.
*/

select
	category,
	count(product_name)
	from store
	group by category;
