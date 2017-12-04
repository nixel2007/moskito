#Использовать asserts

#Использовать "."

МокСоединение = Мок.Получить(Новый HTTPСоединение("http://localhost"));
МокСоединение.ИспользоватьАутентификациюОС = Истина;

Ожидаем.Что(МокСоединение.ИспользоватьАутентификациюОС).Существует();

Результат = МокСоединение.Получить(0, 0);
Ожидаем.Что(Результат).Равно(NULL);

// Примитивные типы
МокСоединение.Когда().Получить(0, 0).ТогдаВозвращает(1);
Результат = МокСоединение.Получить(0, 0);
Ожидаем.Что(Результат).Равно(1);

// Сложные типы

Массив1 = Новый Массив;
Массив1.Добавить(1);

МокСоединение.Когда().Получить(Массив1, 0).ТогдаВозвращает(2);

Массив2 = Новый Массив;
Массив2.Добавить(1);

Результат = МокСоединение.Получить(Массив2, 0);
Ожидаем.Что(Результат).Равно(2);

МокСоединение.Когда().Получить(Новый HTTPСоединение("http://localhost"), 0).ТогдаВозвращает(3);

Результат = МокСоединение.Получить(Новый HTTPСоединение("http://localhost"), 0);
Ожидаем.Что(Результат).Равно(3);

МокСоединение.ПроверитьЧтоВызывалсяМетод().Получить(Массив2, 0);

МетодВызывался = Ложь;
Попытка
	МокСоединение.ПроверитьЧтоВызывалсяМетод().Записать(Неопределено);
	МетодВызывался = Истина;
Исключение
КонецПопытки;

Ожидаем.Что(МетодВызывался, "Ожидали, что метод Записать не вызывался, а мок сказал, что вызывался").ЭтоЛожь();

Сообщить("");

МокСтруктура = Мок.Следить(Новый Структура);

МокСтруктура.Вставить("Ключ1", 1);

Ожидаем.Что(МокСтруктура.Количество()).Равно(1);

МокСтруктура.Вставить("Ключ2", 2);
МокСтруктура.Когда().Количество().ТогдаВозвращает(999);

Ожидаем.Что(МокСтруктура.Количество()).Равно(999);
