CREATE ROLE postgres WITH LOGIN;
ALTER ROLE postgres WITH SUPERUSER;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  release_year INTEGER NOT NULL,
  author_id INTEGER REFERENCES authors(id)
);

INSERT INTO authors (name) VALUES
  ('Brené Brown'),
  ('Tony Robbins'),
  ('Dale Carnegie'),
  ('Eckhart Tolle'),
  ('Jen Sincero'),
  ('Marie Kondo'),
  ('Malcolm Gladwell'),
  ('Rhonda Byrne'),
  ('Stephen Covey'),
  ('Louise Hay');

INSERT INTO books (title, release_year, author_id) VALUES
  ('Daring Greatly', 2012, 1),
  ('Awaken the Giant Within', 1991, 2),
  ('How to Win Friends and Influence People', 1936, 3),
  ('The Power of Now', 1997, 4),
  ('You Are a Badass', 2013, 5),
  ('The Life-Changing Magic of Tidying Up', 2011, 6),
  ('Outliers', 2008, 7),
  ('The Secret', 2006, 8),
  ('The 7 Habits of Highly Effective People', 1989, 9),
  ('You Can Heal Your Life', 1984, 10),
  ('The Power Is Within You', 1991, 10),
  ('A New Earth', 2005, 4);
