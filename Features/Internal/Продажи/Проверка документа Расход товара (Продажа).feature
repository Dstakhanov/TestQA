﻿#language: ru

@tree

Функционал: Проверка документа Расход товара

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: _0001 Проверка заполнения

* Открытие списка и формы документа

	И В командном интерфейсе я выбираю "Продажи" "Продажи"
	Тогда открылось окно "Продажи товара"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Продажа товара (создание)"

* Заполнение шапки документа

	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
	
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование' | 'Код'       |
		| 'Шлюзовая ООО' | '000000004' |
	И в таблице 'Список' я выбираю текущую строку	

	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И элемент формы с именем 'ВидЦен' стал равен 'Оптовая'

	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"Все для дома\""	
	И я жду появления элемента с именем 'Валюта' в течение 20 секунд
	И элемент формы с именем "Валюта" доступен			
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"

	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
	И я жду когда исчезнет элемент с именем 'Валюта' в течение 20 секунд

	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| 'Наименование'              | 'Код'       |
		| 'Магазин "Бытовая техника"' | '000000014' |
	И в таблице 'Список' я выбираю текущую строку	

	И элемент формы с именем 'ВидЦен' стал равен 'Мелкооптовая'		

	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И элемент формы с именем 'ВидЦен' стал равен 'Розничная'

* Заполнение табличной части
	
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыТовар'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000033" | "VekoNT02"     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Продажа товара (создание) *"

	И в таблице 'Товары' я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно "Подбор товара"
	И я активизирую дополнение формы с именем 'Дополнение1'
	И в дополнение формы с именем 'Дополнение1' я ввожу текст "Торт"
	И в таблице 'СписокТоваров' я перехожу к строке:
		| "Код"       | 
		| "000000032" |				
	И в таблице 'СписокТоваров' я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно "Продажа товара (создание) *"

	И в таблице 'Товары' я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно "Подбор товара"
	И я активизирую дополнение формы с именем 'Дополнение1'
	И в дополнение формы с именем 'Дополнение1' я ввожу текст "Доставка"
	И в таблице 'СписокТоваров' я перехожу к строке:
		| "Код"       | 
		| "000000037" |	
	И в таблице 'СписокТоваров' я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно "Продажа товара (создание) *"

	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Товар"   |
		| "1" |"VekoNT02" | 
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "10 000,00"
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3,00"
	И в таблице 'Товары' я завершаю редактирование строки
	Тогда в таблице 'Товары' поле с именем 'ТоварыСумма' имеет значение "30 000,00"
	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Товар" |
		| "2" | "Торт " |
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "1 000,00"
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2,00"
	И в таблице 'Товары' я завершаю редактирование строки
	Тогда в таблице 'Товары' поле с именем 'ТоварыСумма' имеет значение "2 000,00"

	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Товар"    |
		| "3" | "Доставка" |
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "500,00"
	И в таблице 'Товары' я завершаю редактирование строки
	Тогда в таблице 'Товары' поле с именем 'ТоварыСумма' имеет значение "500,00"

* Проверка пересчета суммы
	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Товар"   |
		| "1" |"VekoNT02" | 
	И в таблице 'Товары' в поле с именем 'ТоварыСумма' я ввожу текст "40 000,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'Пересчитать'
	Тогда в таблице 'Товары' поле с именем 'ТоварыСумма' имеет значение "30 000,00"
	И элемент формы с именем 'ТоварыИтогСумма' стал равен "32 500"	

* Прочее заполнение

	И элемент формы с именем 'ТоварыИтогКоличество' стал равен "6"
	И элемент формы с именем 'ТоварыИтогСумма' стал равен "32 500"
	И в поле с именем 'ОбоснованиеОтгрузки' я ввожу текст 'Тест'

	И пока в таблице "Товары" количество строк ">" 0 Тогда
		И в таблице "Товары" я удаляю строку
	
Сценарий: _0002 Проверка записи и проведения
	
	И я закрываю все окна клиентского приложения

* Создание и заполнение документа

	И создание рублевого документа Расход товаров

* Проведение документа

	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"

* Проверка проведения по Регистр взаиморасчетов с контрагентами

	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
	Когда открылось окно "Продажа * от *"
	Тогда таблица 'Список' содержит строки по шаблону:
		| 'Период' | 'Регистратор'    | 'Номер строки' | 'Контрагент'                | 'Сумма'     | 'Валюта' |
		| '*'      | 'Продажа * от *' | '1'            | 'Магазин "Бытовая техника"' | '32 500,00' | ''       |
	Тогда в таблице "Список" количество строк "равно" 1

* Проверка проведения по Регистр продаж 

	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр продаж"
	Когда открылось окно "Продажа * от *"
	Тогда таблица 'Список' содержит строки по шаблону:
		| 'Период' | 'Регистратор'    | 'Номер строки' | 'Покупатель'                | 'Товар'    | 'Количество' | 'Сумма'     |
		| '*'      | 'Продажа * от *' | '1'            | 'Магазин "Бытовая техника"' | 'VekoNT02' | '3,00'       | '30 000,00' |
		| '*'      | 'Продажа * от *' | '2'            | 'Магазин "Бытовая техника"' | 'Торт '    | '2,00'       | '2 000,00'  |
		| '*'      | 'Продажа * от *' | '3'            | 'Магазин "Бытовая техника"' | 'Доставка' | '1,00'       | '500,00'    |
	Тогда в таблице "Список" количество строк "равно" 3

* Проверка проведения по Регистр товарных запасов

	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр товарных запасов"
	Когда открылось окно "Продажа * от *"
	Тогда таблица 'Список' содержит строки по шаблону:
		| 'Период' | 'Регистратор'    | 'Номер строки' | 'Товар'    | 'Склад'               | 'Количество' |
		| '*'      | 'Продажа * от *' | '1'            | 'VekoNT02' | 'Склад отдела продаж' | '3,00'       |
		| '*'      | 'Продажа * от *' | '2'            | 'Торт '    | 'Склад отдела продаж' | '2,00'       |
	Тогда в таблице "Список" количество строк "равно" 2
	И В текущем окне я нажимаю кнопку командного интерфейса "Основное"
	
* Удаление документа из базы
	
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"
	И удаление объекта из базы
	
Сценарий: _0003 Проверка записи и проведения валютного документа

	И я закрываю все окна клиентского приложения

* Создание и заполнение валютного документа

	И создание валютного документа Расход товара

* Проведение валютного документа

	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"

* Проверка проведения по Регистр взаиморасчетов с контрагентами

	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
	Когда открылось окно "Продажа * от *"
	Тогда таблица 'Список' содержит строки по шаблону:
		| 'Период' | 'Регистратор'    | 'Номер строки' | 'Контрагент'                | 'Сумма' | 'Валюта' |
		| '*'      | 'Продажа * от *' | '1'            | 'Магазин "Бытовая техника"' | '85,11' | 'USD'    |
	Тогда в таблице "Список" количество строк "равно" 1

* Проверка проведения по Регистр продаж

	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр продаж"
	Когда открылось окно "Продажа * от *"
	Тогда таблица 'Список' содержит строки по шаблону:
		| 'Период' | 'Регистратор'    | 'Номер строки' | 'Покупатель'                | 'Товар'    | 'Количество' | 'Сумма'    |
		| '*'      | 'Продажа * от *' | '1'            | 'Магазин "Бытовая техника"' | 'Тапочки'  | '2,00'       | '3 000,00' |
		| '*'      | 'Продажа * от *' | '2'            | 'Магазин "Бытовая техника"' | 'Валенки'  | '1,00'       | '2 000,00' |
		| '*'      | 'Продажа * от *' | '3'            | 'Магазин "Бытовая техника"' | 'Доставка' | '1,00'       | '500,00'   |
	Тогда в таблице "Список" количество строк "равно" 3

* Проверка проведения по Регистр товарных запасов

	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр товарных запасов"
	Когда открылось окно "Продажа * от *"
	Тогда таблица 'Список' содержит строки по шаблону:
		| 'Период' | 'Регистратор'    | 'Номер строки' | 'Товар'   | 'Склад'   | 'Количество' |
		| '*'      | 'Продажа * от *' | '1'            | 'Тапочки' | 'Большой' | '2,00'       |
		| '*'      | 'Продажа * от *' | '2'            | 'Валенки' | 'Большой' | '1,00'       |
	Тогда в таблице "Список" количество строк "равно" 2
	И В текущем окне я нажимаю кнопку командного интерфейса "Основное"

* Удаление документа из базы

	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"
	И удаление объекта из базы

Сценарий: _0004 Превышение остатков

	И я закрываю все окна клиентского приложения

* Создание и заполнение документа

	И создание рублевого документа Расход товаров
	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Количество" | "Сумма"     | "Товар"    | "Цена"      |
		| "1" | "3,00"       | "30 000,00" | "VekoNT02" | "10 000,00" |
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "10 000,00"
	И в таблице 'Товары' я завершаю редактирование строки
		
* Проведение документа

	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'OK'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"

* Удаление документа из базы
	
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"
	И удаление объекта из базы

Сценарий: _0005 Проверка печатной формы Расходная товарная накладная рублевый документ

	И я закрываю все окна клиентского приложения
	И создание рублевого документа Расход товаров
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"

	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Тогда открылось окно "Таблица"
	И я жду когда в табличном документе "SpreadsheetDocument" заполнится ячейка "R11C2" в течение 20 секунд
	Тогда табличный документ 'SpreadsheetDocument' содержит строки по шаблону:
		| 'Расход товара' | ''                                                   | ''           | ''       |
		| ''              | ''                                                   | ''           | ''       |
		| 'Номер'         | '*'                                                  | ''           | ''       |
		| 'Дата'          | '*'                                                  | ''           | ''       |
		| 'Покупатель'    | 'Магазин "Бытовая техника"'                          | ''           | ''       |
		| 'Склад'         | 'Склад отдела продаж'                                | ''           | ''       |
		| 'Сумма'         | '32 500 рублей (Тридцать две тысячи пятьсот рублей)' | ''           | ''       |
		| 'Вес'           | ''                                                   | ''           | ''       |
		| ''              | ''                                                   | ''           | ''       |
		| 'Товар'         | 'Цена'                                               | 'Количество' | 'Сумма'  |
		| 'VekoNT02'      | '10 000'                                             | '3'          | '30 000' |
		| 'Торт '         | '1 000'                                              | '2'          | '2 000'  |
		| 'Доставка'      | '500'                                                | '1'          | '500'    |

	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"
	И удаление объекта из базы

Сценарий: _0006 Проверка печатной формы Расходная товарная накладная валютный документ

	И я закрываю все окна клиентского приложения
	И создание валютного документа Расход товара
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"

	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Тогда открылось окно "Таблица"
	И я жду когда в табличном документе "SpreadsheetDocument" заполнится ячейка "R11C2" в течение 20 секунд
	Тогда табличный документ 'SpreadsheetDocument' содержит строки по шаблону:
		| 'Расход товара' | ''                                                     | ''           | ''      |
		| ''              | ''                                                     | ''           | ''      |
		| 'Номер'         | '*'                                                    | ''           | ''      |
		| 'Дата'          | '*'                                                    | ''           | ''      |
		| 'Покупатель'    | 'Магазин "Бытовая техника"'                            | ''           | ''      |
		| 'Склад'         | 'Большой'                                              | ''           | ''      |
		| 'Сумма'         | '5 500 долларов США (Пять тысяч пятьсот долларов США)' | ''           | ''      |
		| 'Вес'           | ''                                                     | ''           | ''      |
		| ''              | ''                                                     | ''           | ''      |
		| 'Товар'         | 'Цена'                                                 | 'Количество' | 'Сумма' |
		| 'Тапочки'       | '1 500'                                                | '2'          | '3 000' |
		| 'Валенки'       | '2 000'                                                | '1'          | '2 000' |
		| 'Доставка'      | '500'                                                  | '1'          | '500'   |
	
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"
	И удаление объекта из базы

Сценарий: _0007 Проверка печатной формы Доставка

	И я закрываю все окна клиентского приложения
	И создание рублевого документа Расход товаров
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"
	
	И я нажимаю на кнопку с именем 'ФормаОформитьДоставку'
	Тогда открылось окно "Оформление доставки"
	И я жду когда в табличном документе 'ТабличныйДокумент' заполнится ячейка "R7C2" в течение 20 секунд
	Тогда табличный документ 'ТабличныйДокумент' содержит строки по шаблону:
		| 'Заявка на доставку товара'         | ''  |
		| ''                                  | ''  |
		| 'Прошу доставить товары по адресу:' | ''  |
		| ''                                  | ''  |
		| ''                                  | ''  |
		| 'Вес:'                              | ''  |
		| ''                                  | ''  |
		| 'Срок доставки:'                    | ''  |
		| 'Дата доставки'                     | ''  |
		| ''                                  | ''  |
		| 'Дата:'                             | '*' |
		| 'Подпись:'                          | ''  |
	
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"
	И удаление объекта из базы
	
Сценарий: _0008 Проверка отчета остатки по складу
	
	И я закрываю все окна клиентского приложения
	И создание рублевого документа Расход товаров
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылка"
	И я нажимаю на кнопку с именем 'ОстаткиПоСкладу'
	Тогда табличный документ 'Результат' равен:
		| 'Отбор:'      | 'Склад Равно "Склад отдела продаж"' | ''                   |
		| ''            | ''                                  | ''                   |
		| 'Товар'       | 'Склад отдела продаж'               | 'Итого'              |
		| ''            | 'Количество Остаток'                | 'Количество Остаток' |
		| 'Sony К3456P' | '50,00'                             | '50,00'              |
		| 'Veko67NE'    | '49,00'                             | '49,00'              |
		| 'Veko876N'    | '100,00'                            | '100,00'             |
		| 'VekoNT02'    | '193,00'                            | '193,00'             |
		| 'Молоко'      | '100,00'                            | '100,00'             |
		| 'Торт '       | '98,00'                             | '98,00'              |
		| 'Итого'       | '590,00'                            | '590,00'             |
	
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$НавСсылка$"	
	И удаление объекта из базы