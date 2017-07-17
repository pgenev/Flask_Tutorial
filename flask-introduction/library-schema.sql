-- sqlite3 library.db < library-schema.sql

DROP TABLE if exists country;
create TABLE country (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

DROP TABLE if exists author;
create TABLE author (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  country_id INTEGER,
  name TEXT NOT NULL
);

DROP TABLE if exists book;
create TABLE book (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER,
  title TEXT NOT NULL,
  isbn TEXT
);
