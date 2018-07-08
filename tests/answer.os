#Использовать asserts

#Использовать ".."

&Тест
Процедура ПроверитьРаботуОтвета() Экспорт
	
	Делегат = Новый Делегат(ЭтотОбъект, "ЗадублироватьВызовМетода");
	
	// given
	МокОбъект = Мок.Получить(Тип("Массив"));
	МокОбъект.Когда().Добавить(Матчеры.ЛюбоеЧисло()).ТогдаОтвечает(Делегат);
	
	// when
	МокОбъект.Добавить(1);
	
	// then
	Ожидаем.Что(МокОбъект.Количество()).Равно(2);

КонецПроцедуры

Функция ЗадублироватьВызовМетода(Знач ИнформацияОВызове) Экспорт
	МокОбъект = ИнформацияОВызове.Мок();
	ИмяМетода = ИнформацияОВызове.ИмяМетода();
	Параметры = ИнформацияОВызове.Параметры();

	Рефлектор = Новый Рефлектор();
	Рефлектор.ВызватьМетод(МокОбъект, ИмяМетода, Параметры);

КонецФункции