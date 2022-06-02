create table bookshelf
(
    bookshelf_id          serial
        primary key,
    bookshelf_name        varchar(50),
    bookshelf_description varchar(100),
    book_number           integer,
    library_code          integer
        constraint library_code_fk
            references library
);

alter table bookshelf
    owner to admin;

INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (46, 'Hera', 'Enterprise-wide dedicated structure', 5, 24);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (47, 'Poseidon', 'Re-engineered bifurcated architecture', 3, 24);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (48, 'Artemis', 'Reduced eco-centric interface', 14, 24);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (49, 'Hades', 'Monitored maximized open architecture', 2, 25);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (50, 'Hades', 'Reverse-engineered modular encoding', 7, 25);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (51, 'Ares', 'Optimized multi-tasking customer loyalty', 4, 25);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (52, 'Poseidon', 'Seamless real-time system engine', 12, 26);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (53, 'Hermes', 'Horizontal exuding knowledge base', 1, 26);
INSERT INTO public.bookshelf (bookshelf_id, bookshelf_name, bookshelf_description, book_number, library_code) VALUES (54, 'Artemis', 'De-engineered 4th generation orchestration', 16, 26);
