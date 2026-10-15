
#=============================================================================================================
#                                            ~~~ insert data ~~~
#=============================================================================================================

# T1 - AUTHORS
-- -----------------------------------------------------------------------------------------------------------

INSERT INTO authors (first_name, last_name, country)
VALUES
    ('Ivo', 'Andrić', 'Bosnia and Herzegovina'),
    ('Miloš', 'Crnjanski', 'Serbia'),
    ('Meša', 'Selimović', 'Bosnia and Herzegovina'),
    ('Jane', 'Austen', 'United Kingdom'),
    ('George', 'Orwell', 'United Kingdom'),
    ('Agatha', 'Christie', 'United Kingdom');

# T2 - BOOKS
-- -----------------------------------------------------------------------------------------------------------

INSERT INTO books (title, publication_year, genre, author_id)
VALUES
    ('The Bridge on the Drina', 1945, 'Historical fiction', 1),
    ('The Travnik Chronicle', 1945, 'Historical fiction', 1),
    ('Migrations', 1929, 'Historical fiction', 2),
    ('Death and the Dervish', 1966, 'Historical fiction', 3),
    ('The Fortress', 1970, 'Historical fiction', 3),
    ('Pride and Prejudice', 1813, 'Romance', 4),
    ('Emma', 1815, 'Romance', 4),
    ('Animal Farm', 1945, 'Political satire', 5),
    ('Nineteen Eighty-Four', 1949, 'Dystopian fiction', 5);

# T3 - MEMBERS
-- -----------------------------------------------------------------------------------------------------------

INSERT INTO members (first_name, last_name, email, membership_date)
VALUES
    ('Jelena', 'Janković', 'jelena.jankovic@example.com', '2023-06-15'),
    ('Marko', 'Petrović', 'marko.petrovic@example.com', '2024-03-10'),
    ('Ana', 'Nikolić', 'ana.nikolic@example.com', '2024-02-01'),
    ('Nikola', 'Jovanović', 'nikola.jovanovic@example.com', '2025-01-20'),
    ('Milica', 'Ilić', 'milica.ilic@example.com', '2022-11-05'),
    ('Stefan', 'Popović', 'stefan.popovic@example.com', '2023-09-12'),
    ('Sara', 'Stanković', 'sara.stankovic@example.com', '2026-04-08'),
    ('Luka', 'Đorđević', 'luka.djordjevic@example.com', '2024-01-31'),
    ('Tamara', 'Pavlović', 'tamara.pavlovic@example.com', '2022-05-18'),
    ('Milan', 'Simić', 'milan.simic@example.com', '2023-12-31'),
    ('Ivana', 'Marković', 'ivana.markovic@example.com', '2024-02-02'),
    ('Petar', 'Stojanović', 'petar.stojanovic@example.com', '2024-07-22'),
    ('Marija', 'Đukić', 'marija.djukic@example.com', '2025-03-14'),
    ('Aleksandar', 'Kostić', 'aleksandar.kostic@example.com', '2025-06-09'),
    ('Teodora', 'Lazić', 'teodora.lazic@example.com', '2026-01-12'),
    ('Filip', 'Ristić', 'filip.ristic@example.com', '2021-08-25'),
    ('Sofija', 'Todorović', 'sofija.todorovic@example.com', '2023-04-03'),
    ('Nemanja', 'Vasić', 'nemanja.vasic@example.com', '2024-11-16'),
    ('Katarina', 'Radovanović', 'katarina.radovanovic@example.com', '2025-09-05'),
    ('Jovan', 'Mitrović', 'jovan.mitrovic@example.com', '2026-08-20');

# T4 - LOANS
-- -----------------------------------------------------------------------------------------------------------

INSERT INTO loans (loan_date, return_date, member_id, book_id)
VALUES
    ('2023-07-01', '2023-07-20', 1, 6),
    ('2026-10-01', NULL,         1, 1),
    ('2024-04-05', '2024-04-19', 2, 3),
    ('2025-05-10', '2025-05-25', 2, 8),
    ('2026-10-03', NULL,         2, 9),
    ('2024-02-10', '2024-02-24', 3, 7),
    ('2025-02-01', '2025-02-18', 4, 4),
    ('2026-09-28', NULL,         4, 5),
    ('2026-04-15', '2026-05-02', 7, 2),
    ('2024-02-05', '2024-02-20', 8, 1),
    ('2022-06-01', '2022-06-21', 9, 3),
    ('2024-01-10', '2024-01-25', 10, 8),
    ('2024-03-01', '2024-03-16', 11, 6),
    ('2024-08-01', '2024-08-20', 12, 9),
    ('2025-04-01', '2025-04-15', 13, 4),
    ('2025-07-01', '2025-07-18', 14, 5),
    ('2026-02-01', '2026-02-15', 15, 7),
    ('2023-05-01', '2023-05-20', 17, 2),
    ('2024-12-01', '2024-12-19', 18, 3),
    ('2025-10-01', '2025-10-21', 19, 8),
    ('2026-09-01', '2026-09-15', 20, 6),
    ('2026-10-05', NULL,         7, 2),
    ('2026-10-07', NULL,         11, 7),
    ('2026-10-09', NULL,         12, 6);