﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Пометка объекта на удаление

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Пометка объекта на удаление

	И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
	Тогда открылось окно "1С:Предприятие"
	И я нажимаю на кнопку с именем 'Button0'
