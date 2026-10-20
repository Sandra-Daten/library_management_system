
#=============================================================================================================
#                                        ~~~ create tables ~~~
#=============================================================================================================

# T1 - AUTHORS
-- -----------------------------------------------------------------------------------------------------------

create table authors
(
    author_id  int auto_increment
        primary key,
    first_name varchar(64) not null,
    last_name  varchar(64) not null,
    country    varchar(64) not null
);

# T2 - BOOKS
-- -----------------------------------------------------------------------------------------------------------

CREATE TABLE books
(
    book_id          INT AUTO_INCREMENT PRIMARY KEY,
    title            VARCHAR(128) NOT NULL,
    publication_year INT NOT NULL,
    genre            VARCHAR(30) NOT NULL,
    author_id        INT NOT NULL,

    CONSTRAINT books_authors_fk_restrict
        FOREIGN KEY (author_id) REFERENCES authors(author_id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);


# T3 - MEMBERS
-- -----------------------------------------------------------------------------------------------------------

create table members
(
    member_id       int auto_increment
        primary key,
    first_name      varchar(64)  not null,
    last_name       varchar(64)  not null,
    email           varchar(120) not null,
    membership_date date         not null,
    constraint members_uk_email
        unique (email)
);

# T4 - LOANS
-- -----------------------------------------------------------------------------------------------------------

CREATE TABLE loans
(
    loan_id     INT AUTO_INCREMENT PRIMARY KEY,
    loan_date   DATE NOT NULL,
    return_date DATE NULL,
    member_id   INT NOT NULL,
    book_id     INT NOT NULL,

    CONSTRAINT loans_fk_book_id_restrict
        FOREIGN KEY (book_id) REFERENCES books(book_id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,

    CONSTRAINT loans_fk_member_id_restrict
        FOREIGN KEY (member_id) REFERENCES members(member_id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);