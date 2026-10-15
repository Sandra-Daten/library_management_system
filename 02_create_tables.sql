
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

create table books
(
    book_id          int auto_increment
        primary key,
    title            varchar(64) not null,
    publication_year int         not null,
    genre            varchar(30) not null,
    author_id        int         not null,
    constraint books_authors_fk
        foreign key (author_id) references authors (author_id)
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

create table loans
(
    loan_id     int auto_increment
        primary key,
    loan_date   date not null,
    return_date date null,
    member_id   int  not null,
    book_id     int  not null,
    constraint loans_fk_book_id
        foreign key (book_id) references books (book_id),
    constraint loans_fk_member_id
        foreign key (member_id) references members (member_id)
);
