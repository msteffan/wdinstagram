DROP TABLE IF EXISTS entries;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS comments;

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    bio TEXT,
    prof_pic TEXT
);

CREATE TABLE entries(
    id SERIAL PRIMARY KEY,
    photo_url TEXT NOT NULL,
    date_taken TEXT,
    caption TEXT,
    author_id INTEGER REFERENCES authors(id)
);


CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    body TEXT NOT NULL,
    date_taken TEXT,
    entry_id INTEGER REFERENCES entries(id)
)
