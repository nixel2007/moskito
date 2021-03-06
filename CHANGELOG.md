## 0.4.1

* Поддержка OneScript 1.1.0

## 0.4.0

* Поддержка изменений рефлектора в движке OneScript 1.0.21
* Минимальная требуемая версия движка OneScript повышена с 1.0.20 до 1.0.21

## 0.3.0

* Добавлена возможность переопределения возвращаемого значения через обработчик ответа - метод `TогдаОтвечает`. Добавлены новые классы `Ответ` и `ИнформацияОВызове`
* Добавлен обход невозможности создания моков массивов. Методы, совпадающие по именам с глобальными функциями (например, `Найти()`) заменяются на имя с подчеркиванием (`_Найти()`)
* В мок-объект переносятся аннотации процедур и параметров процедур мокируемого объекта

## 0.2.1

* Исправлен манифест пакета

## 0.2.0

* Добавлена связка `Когда`-`ТогдаВыбрасываетИсключение`, позволяющая указать выбрасываемое исключение при вызове метода
* Добавлена возможность переопределять вызовы методов по условиям, например, `ЛюбаяСтрока` или `ЛюбоеЗначение`. Функции-условия называются "матчеры" и находятся в одноименном модуле `Матчеры`. Есть возможность создать собственный матчер через конструктор `Новый Матчер(ОбъектСодержащийФункцию, ИмяФункции, НеобязательныйМассивДополнительныхПараметров)`
* Исправлена ошибка избыточного сохранения факта вызова метода при переопределении метода после вызова `Когда()`

## 0.1.1

* Убрано принудительное debug-логирование

## 0.1.0

* Первый релиз
