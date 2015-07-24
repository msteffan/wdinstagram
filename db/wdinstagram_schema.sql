DROP TABLE if exists entries;

CREATE TABLE entries(
    id SERIAL PRIMARY KEY,
    author TEXT NOT NULL,
    photo_url TEXT NOT NULL,
    date_taken TEXT,
    caption TEXT
);
