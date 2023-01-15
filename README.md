# SQL

Основные типы операторов SQL:

● DDL (Data Definition Language) — операторы определения данных, которые работают с целыми таблицами. Например: CREATE — чтобы создать таблицу (TABLE) или базу данных (DATABASE), DROP (TABLE/DATABASE) — чтобы удалить всю таблицу или базу данных, USE — чтобы выбрать нужную базу данных.

● DML (Data Manipulation Language) — операторы манипуляции данными, которые работают с содержимым таблиц. Например, UPDATE — чтобы обновить данные, DELETE — чтобы удалить, INSERT — чтобы добавить новые, SELECT (FROM/WHERE) — чтобы выбрать нужные данные по заданному параметру.

● DCL (Data Control Language) — оператор определения доступа к данным для разных пользователей. Например, GRANT — чтобы открыть доступ или DENY — чтобы запретить.

● SQL клиент-сервер — для управления доступом к данных для разных пользователей.

● SQL трёхуровневой архитектуры — для защиты данных от несанкционированного копирования и распространения.

Кроме операторов используют TCL (Transaction Control Language) — язык управления транзакциями, то есть сериями команд, которые выполняются поочередно. 
Если хотя бы одна из команд не выполнена, все последующие тоже отменяются. Так происходит, к примеру, с оплатой онлайн, когда нужно последовательно ввести данные и 
подтвердить платёж. Например, BEGIN TRANSACTION — начало транзакции, COMMIT TRANSACTION — изменение команд в цепочке, а SAVE TRANSACTION — промежуточная точка 
сохранения внутри транзакции.

![1](https://sun9-west.userapi.com/sun9-50/s/v1/ig2/ebu945JobxqMCPWUE8yXmiaHlfERsFpmYmNFPl-0TXEDNvstYeTqZN_ejxQmt9Z8F0_jn639r18kHGnpZEVPkbXA.jpg?size=946x713&quality=96&type=album)
