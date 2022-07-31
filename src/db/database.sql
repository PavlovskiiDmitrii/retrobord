CREATE TABLE client(
  id SERIAL PRIMARY KEY,
  name VARCHAR(256),
  role VARCHAR(256),
  email VARCHAR(256) NOT NULL UNIQUE ,
  password VARCHAR(256) NOT NULL
);

CREATE TABLE room(
  room_id SERIAL PRIMARY KEY,
  owner_id INTEGER NOT NULL,
  title VARCHAR(64),
  FOREIGN KEY (owner_id) REFERENCES client (id)
);