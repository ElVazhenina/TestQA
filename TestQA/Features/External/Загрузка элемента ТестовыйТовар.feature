﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка элемена справочника Товары Тестовый товар

Сценарий: Загрузка элемента ТестовыйТовар

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'   | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод'          | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8331005056a6a9e111ee94c9a167b086' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000104' | 'Тестовый товар' | '895636'  | 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | ''             | 'Enum.ВидыТоваров.Товар' | '65798798765464554' | ''         | 10       |

	// РегистрСведений.Характеристики

	И я проверяю или создаю для регистра сведений "Характеристики" записи:
		| 'Объект'                                                            | 'ВидХарактеристики'                                                                        | 'Номер' | 'Значение'                                                                         |
		| 'e1cib/data/Справочник.Товары?ref=8331005056a6a9e111ee94c9a167b086' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=bc070050ba5c887711e29c578feeb1c8' |

	// РегистрСведений.ЦеныТоваров

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                           | 'Цена' |
		| '07.12.2023 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8331005056a6a9e111ee94c9a167b086' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | 10     |

