USE exemple;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя пользователя',
  UNIQUE unique_name(name(10))
) ;

INSERT INTO users VALUES
  (DEFAULT, 'Issac'),
  (DEFAULT, 'Анна'),
  (DEFAULT, 'Иван');
