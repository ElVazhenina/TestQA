﻿
#language: ru
@tree
@БыстрыеПроверки

Функциональность: Проверка открытия форм Документов
# Конфигурация: Демонстрационное приложение
# Версия: 1.0.35.1

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы списка документа "Заказ"

	Дано Я открываю основную форму списка документа "Заказ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка документа Заказ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка документа Заказ"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка документа "Приход товара"

	Дано Я открываю основную форму списка документа "ПриходТовара"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка документа ПриходТовара"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка документа ПриходТовара"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка документа "Расход товара"

	Дано Я открываю основную форму списка документа "РасходТовара"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка документа РасходТовара"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка документа РасходТовара"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Заказ"

	Дано Я открываю основную форму документа "Заказ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Заказ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Заказ"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Операция по учету товаров"

	Дано Я открываю основную форму документа "ОперацияПоУчетуТоваров"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ОперацияПоУчетуТоваров"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ОперацияПоУчетуТоваров"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Оплата"

	Дано Я открываю основную форму документа "Оплата"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Оплата"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа Оплата"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Поступление денег"

	Дано Я открываю основную форму документа "ПоступлениеДенег"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПоступлениеДенег"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПоступлениеДенег"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Приход товара"

	Дано Я открываю основную форму документа "ПриходТовара"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПриходТовара"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа ПриходТовара"
	И Я закрываю текущее окно

Сценарий: Открытие формы документа "Расход товара"

	Дано Я открываю основную форму документа "РасходТовара"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа РасходТовара"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму документа РасходТовара"
	И Я закрываю текущее окно
