
#=============================================================================================================
-- 1. Books with their authors
#=============================================================================================================

SELECT
    b.title,
    b.genre,
    b.publication_year,
    a.first_name,
    a.last_name
FROM books AS b
INNER JOIN authors AS a
ON b.author_id=a.author_id;

#=============================================================================================================
-- 2. Currently borrowed books
#=============================================================================================================

SELECT
    b.title,
    l.loan_date,
    l.return_date
FROM books AS b
INNER JOIN loans AS l
ON b.book_id = l.book_id
WHERE l.return_date IS NULL;

#=============================================================================================================
-- 3. Number of books per author
#=============================================================================================================

SELECT
    a.first_name,
    a.last_name,
    COUNT(b.book_id) AS num_of_books
FROM authors AS a
LEFT JOIN books AS b
ON b.author_id = a.author_id
GROUP BY a.author_id;

#=============================================================================================================
-- 4. Members who joined after 2024-02-01
#=============================================================================================================

SELECT
    first_name,
    last_name,
    membership_date
FROM members
WHERE membership_date > '2024-02-01'
ORDER BY membership_date ASC;

#=============================================================================================================
-- 5. Filtering by wildcards
#=============================================================================================================

# The letter "H" is used instead of "I" from the project brief because the genre is stored in English as "Historical fiction".

SELECT
    title,
    genre
FROM books
WHERE genre LIKE 'H%' OR title LIKE '%Drina%';

#=============================================================================================================
-- 6. Finding extreme values
#=============================================================================================================

SELECT
    MAX(publication_year) AS max_publication_year,
    MIN(publication_year) AS min_publication_year
FROM books;

#=============================================================================================================
-- 7. Filtering grouped data
#=============================================================================================================

SELECT
    m.first_name,
    m.last_name,
    COUNT(l.loan_id) AS num_of_loans
FROM loans AS l
INNER JOIN members AS m
ON l.member_id = m.member_id
GROUP BY m.member_id
HAVING num_of_loans > 1;

#=============================================================================================================
-- 8. Filtering with subqueries
#=============================================================================================================

SELECT
    title,
    publication_year
FROM books
WHERE publication_year > (
      SELECT
          AVG(publication_year)
      FROM books
);

#=============================================================================================================
-- 9. Recording a book return
#=============================================================================================================

SELECT
    l.loan_id,
    m.first_name,
    m.last_name,
    l.return_date
FROM members AS m
INNER JOIN loans AS l
ON m.member_id = l.member_id
WHERE
    first_name = 'Jelena'
    AND last_name = 'Janković';

UPDATE loans
SET return_date = CURDATE()
WHERE loan_id = 2
    AND return_date IS NULL;

#=============================================================================================================
-- 10. Conditional deletion of records
#=============================================================================================================

# records for deletion
SELECT
    m.member_id,
    m.first_name,
    m.last_name,
    m.membership_date
FROM members AS m
LEFT JOIN loans AS l
    ON m.member_id = l.member_id
WHERE m.membership_date < '2024-01-01'
  AND l.loan_id IS NULL;

# records deleted
DELETE m
FROM members AS m
LEFT JOIN loans AS l
ON m.member_id = l.member_id
WHERE m.membership_date < '2024-01-01'
    AND l.loan_id IS NULL;

SELECT * FROM members;


