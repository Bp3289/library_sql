-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON authors.id=books.author_id WHERE authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON authors.id=books.author_id WHERE authors.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON authors.id=books.author_id WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom';
-- Find out how many books Albert Camus wrote.
SELECT COUNT(*) FROM books JOIN authors ON authors.id=books.author_id WHERE authors.name = 'Albert Camus';

-- Find out how many books written before 1980 were by authors not from the US.
SELECT COUNT(*) FROM books JOIN authors ON authors.id=books.author_id WHERE authors.nationality != 'United States of America' AND books.publication_date < 1980;

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name ILIKE 'J%';

-- Find all books whose titles contain 'the'.

SELECT * FROM books WHERE title LIKE '%the%';
