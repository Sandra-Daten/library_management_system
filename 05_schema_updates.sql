

USE library_management_system;

ALTER TABLE books
MODIFY COLUMN title VARCHAR(128) NOT NULL;

ALTER TABLE books
    DROP FOREIGN KEY books_authors_fk,
    ADD CONSTRAINT books_authors_fk_restrict
        FOREIGN KEY (author_id) REFERENCES authors(author_id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT;

ALTER TABLE loans
    DROP FOREIGN KEY loans_fk_book_id,
    DROP FOREIGN KEY loans_fk_member_id,
    ADD CONSTRAINT loans_fk_book_id_restrict
        FOREIGN KEY (book_id) REFERENCES books(book_id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    ADD CONSTRAINT loans_fk_member_id_restrict
        FOREIGN KEY (member_id) REFERENCES members(member_id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT;


SHOW CREATE TABLE books;
SHOW CREATE TABLE loans;