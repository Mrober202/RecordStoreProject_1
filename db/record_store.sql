DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists(
id SERIAL8 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE albums(
id SERIAL8 PRIMARY KEY,
artist_id INT2 REFERENCES artists(id),
title VARCHAR(255),
genre VARCHAR(255),
stock_level VARCHAR(255),
release_year INT2,
cover VARCHAR(255),
buy_price INT2,
sell_price INT2
);

