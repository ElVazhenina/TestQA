﻿#language: ru
@tree

Функционал: Отчет D2001 Продажи

Как  Администратор я хочу 
Сформировать отчет Продажи
чтобы проверить корректность отображения возвратов  в отчете

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0201 Подготовка тестовых данных
	Когда экспорт основных данных
	Когда Экспорт документа Возврат товаров от покупателя

Сценарий: _0202 Отчет D2001 Продажи
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Когда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Параметр' |
		| 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsDataParametersValue"
	И я нажимаю на гиперссылку с именем "SwitchText"
	И я нажимаю на кнопку с именем 'DayVariant'
	И в таблице "PeriodVariantTable" я перехожу к строке:
		| 'Value'   |
		| 'Сегодня' |
	И я нажимаю на кнопку с именем 'Select'
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано Табличный документ "Result" равен макету "$КаталогПроекта$\Etalons\Отчет D2001 Продажи.mxl" по шаблону