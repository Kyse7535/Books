create table book
(
    isbn             varchar(60) not null
        primary key,
    book_title       varchar(60),
    book_description varchar(200),
    book_price       double precision,
    publication_date date,
    catalog_id       integer
        constraint catalog_fk
            references catalog,
    editor_id        integer
        constraint editor_fk
            references editor,
    category_id      integer
        constraint category_fk
            references category,
    image_path       varchar(100),
    popular_book     boolean
);

alter table book
    owner to admin;

INSERT INTO public.book (isbn, book_title, book_description, book_price, publication_date, catalog_id, editor_id, category_id, image_path, popular_book) VALUES ('9781889420813', 'The Glory and the Dream', 'Extended disintermediate throughput', 150.18, '2020-06-29', 56, 30, 30, 'https://placeimg.com/300/400/nature', false);
INSERT INTO public.book (isbn, book_title, book_description, book_price, publication_date, catalog_id, editor_id, category_id, image_path, popular_book) VALUES ('9790833809161', 'Pale Kings and Princes', 'Profound context-sensitive functionalities', 7.55, '2020-05-30', 57, 31, 31, 'https://placeimg.com/300/400/nature', false);
INSERT INTO public.book (isbn, book_title, book_description, book_price, publication_date, catalog_id, editor_id, category_id, image_path, popular_book) VALUES ('9790468460225', 'If I Forget Thee Jerusalem', 'Diverse 6th generation standardization', 190.16, '2020-09-11', 58, 32, 32, 'https://placeimg.com/300/400/nature', false);
INSERT INTO public.book (isbn, book_title, book_description, book_price, publication_date, catalog_id, editor_id, category_id, image_path, popular_book) VALUES ('9790999977582', 'The Violent Bear It Away', 'Synergized transitional monitoring', 48.88, '2020-04-08', 59, 33, 33, 'https://placeimg.com/300/400/nature', false);
INSERT INTO public.book (isbn, book_title, book_description, book_price, publication_date, catalog_id, editor_id, category_id, image_path, popular_book) VALUES ('9780675138789', 'The Torment of Others', 'Profound transitional structure', 122.73, '2020-08-03', 60, 34, 34, 'https://placeimg.com/300/400/nature', false);
