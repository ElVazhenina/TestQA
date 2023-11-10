﻿#language: ru
@tree

Функционал: Документ ЗаказПокупателя проверка автозаполнения полей

Как Администратор я хочу
Создать документ Заказ покупателя 
чтобы проверить автозаполнение полей Соглашение,Организация, Склад. Проверить блокировку поля Контрагент, если не выбран Партнер.  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0102 Подготовка и загрузка тестовых данных
	Когда экспорт основных данных

Сценарий: _0402 Создание документа Заказ покупателя
	* Создание документа Заказ покупателя
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
		И я нажимаю на кнопку с именем 'FormCreate'
	* Заполнение шапки документа
		* Проверяем, что при незаполненом поле Партнер, поле Контагент недоступно для редактирования
			Если  значение поля с именем 'Partner' содержит текст "" Тогда
				И элемент формы с именем 'LegalName' не доступен
		* Проверяем автозаполнение полей Соглашение,Организация,Склад, Контрагент
			И я нажимаю кнопку выбора у поля с именем "Partner"
			И в таблице "List" я перехожу к строке:
				| 'Наименование'            |
				| 'Клиент 1 (1 соглашение)' |
			И я нажимаю на кнопку с именем 'FormChoose'
			Если поле с именем "Company" заполнено Тогда
				И элемент формы с именем 'Company' стал равен 'Собственная компания 1'
			Иначе
				И я нажимаю кнопку выбора у поля с именем "Company"
				И в таблице "List" я выбираю текущую строку
			И элемент формы с именем 'LegalName' доступен
			Тогда элемент формы с именем 'LegalName' стал равен 'Клиент 1'
			Тогда элемент формы с именем 'Agreement' стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
			Тогда элемент формы с именем 'Store' стал равен 'Склад 1 (с контролем остатка)'

	* Заполнение табличной части товары
		И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'             |
			| 'Товар с характеристиками' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItemKey"
		И в таблице "List" я перехожу к строке:
			| 'Номенклатура'             | 'Характеристика' |
			| 'Товар с характеристиками' | 'S/Красный'      |
		И в таблице "List" я выбираю текущую строку
		* Проверка заполнения цены из соглашения
			Тогда таблица "ItemList" содержит строки
				| 'Номенклатура'             | 'Характеристика' | 'Общая сумма' | 'Количество' | 'Ед. изм.' | 'Вид цены' | 'Цена'   |
				| 'Товар с характеристиками' | 'S/Красный'      | '190,00'      | '1,000'      | 'шт'       | 'Опт'      | '190,00' |
		* Изменение значения поля "Вид цены" и проверка его перезаполнения при перевыборе соглашения
			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListPriceType"
			И в таблице "List" я перехожу к строке:
				| 'Наименование'      |
				| 'Цена поставщика 2' |
			И в таблице "List" я выбираю текущую строку
			И в таблице "ItemList" я завершаю редактирование строки
			Тогда таблица "ItemList" содержит строки
				| 'Номенклатура'             | 'Характеристика' | 'Количество' | 'Ед. изм.' | 'Вид цены'          | 'Цена' |
				| 'Товар с характеристиками' | 'S/Красный'      | '1,000'      | 'шт'       | 'Цена поставщика 2' | ''     |
			И я нажимаю кнопку выбора у поля с именем "Agreement"
			И в таблице "List" я перехожу к строке:
				| 'Наименование'            |
				| 'Соглашение с клиентами (расчет по документам + кредитный лимит)' |
			И я нажимаю на кнопку с именем 'FormChoose'
			Тогда открылось окно 'Табличная часть товаров будет обновлена'
			И я нажимаю на кнопку с именем 'FormOK'
			Тогда таблица "ItemList" содержит строки
				| 'Номенклатура'             | 'Характеристика' | 'Общая сумма' | 'Количество' | 'Ед. изм.' | 'Вид цены' | 'Цена'   |
				| 'Товар с характеристиками' | 'S/Красный'      | '190,00'      | '1,000'      | 'шт'       | 'Опт'      | '190,00' |
			И я нажимаю на кнопку с именем 'FormWrite'
			И я запоминаю значение поля с именем 'Number' как 'НомерЗаказа'
			И я нажимаю на кнопку с именем 'FormPost'
			И я нажимаю на кнопку с именем 'FormPostAndClose'
	* Проверяем, что документ создан
		И я жду закрытия окна 'Заказ покупателя * от *' в течение 20 секунд
		И таблица "List" содержит строки:
			| 'Номер' 				|
			| '$НомерЗаказа$'     	|
