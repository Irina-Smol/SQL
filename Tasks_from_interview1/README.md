## Есть таблица анализов Analysis:

- an_id — ID анализа;

- an_name — название анализа;

- an_cost — себестоимость анализа;

- an_price — розничная цена анализа;

- an_group — группа анализов.


## Есть таблица групп анализов Groups:

- gr_id — ID группы;

- gr_name — название группы;

- gr_temp — температурный режим хранения.


## Есть таблица заказов Orders:

- ord_id — ID заказа;

- ord_datetime — дата и время заказа;

- ord_an — ID анализа.

### Задачи:

1) Junior: вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю
(проверяется базовое знание SELECT-запросов и умение работать с датой-временем).

2) Middle: нарастающим итогом рассчитать, как увеличивалось количество проданных тестов каждый месяц каждого года с разбивкой по группе
(проверяется базовое понимание оконных функций, джоинов и группировок).

3) Senior: рассмотрим таблицу балансов клиентов:

ClientBalance(client_id, client_name, client_balance_date, client_balance_value)

- client_id — идентификатор клиента;

- client_name — ФИО клиента;

- client_balance_date — дата баланса клиента;

- client_balance_value — значение баланса клиента.

Формулировка: в данной таблице в какой-то момент времени появились полные дубли. Предложите способ для избавления от них без создания новой таблицы.
