﻿#language: ru

@tree

Функционал: Заполнение организации из теста

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Заполнение организации из теста

* Открытие формы заказа покупателя
	Дано Я открываю навигационную ссылку 'e1cib/list/Document.PurchaseOrder'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ поставщику (создание)"

* Проверка заполнения организации
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование" |
		| "4"   | "Поставщик 2"  |
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ поставщику (создание) *"
	И поле с именем 'Partner' заполнено
	И поле с именем 'Agreement' заполнено
	Если поле с именем 'Company' имеет значение "" тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
		Тогда открылось окно "Организации"
		И в таблице 'List' я перехожу к строке:
			| "Код" | "Наименование"           |
			| "1"   | "Собственная компания 1" |
		И я нажимаю на кнопку с именем 'FormChoose'
		
			
