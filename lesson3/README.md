# Урок 3. Вебинар. Введение в проектирование БД
## _Основы реляционных баз данных. MySQL_
## Задания выполненнено на:

|Техническая информация|
| ------------ |
|  OS windows 10 pro 64 20H02 build (19042.867) |
|  Виртуальнаая машина VirtualBox 6.1|
|  Ubuntu 20.04.2 LTS  (на витрульной машине)|
|  mysql  Ver 8.0.23-0ubuntu0.20.04.1 for Linux on x86_64 ((Ubuntu))|



## Практическое задание
- 1.Написать крипт, добавляющий в БД vk, которую создали на занятии, 3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей)



| № | Файл |
| ------ | ------ |
| 2 |  [lesson3.sql](https://github.com/HENRYHKll/gb_basics_relational_db_MySQL/blob/main/lesson3/lesson3.sql) |

## 1.Написать крипт, добавляющий в БД vk, которую создали на занятии, 3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей)

```sh
DROP TABLE IF EXISTS video_directory;
CREATE TABLE video_directory (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) DEFAULT NULL,
  user_id BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
)COMMENT = 'Видеокаталог';


DROP TABLE IF EXISTS video;
CREATE TABLE video (
	id SERIAL PRIMARY KEY,
	video_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (video_id) REFERENCES video_directory(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
)COMMENT = 'Видео';


DROP TABLE IF EXISTS audio_list;
CREATE TABLE audio_list (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) DEFAULT NULL,
    user_id BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
)COMMENT = 'Плейлисты';


DROP TABLE IF EXISTS music;
CREATE TABLE music (
	id SERIAL PRIMARY KEY,
	audio_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (audio_id) REFERENCES audio_list(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
)COMMENT = 'Музыка';

```