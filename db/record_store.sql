DROP TABLE artists;
DROP TABLE albums;

CREATE TABLE albums(
id SERIAL8 PRIMARY KEY,
title VARCHAR(255),
genre VARCHAR(255),
stock_level VARCHAR(255),
release_year INT2
);

CREATE TABLE artists(
id SERIAL8 PRIMARY KEY,
name VARCHAR(255)
);