create table book_copy
(
    copy_id      serial
        primary key,
    isbn         varchar(60)
        constraint isbn_fk
            references book,
    copy_title   varchar(60),
    bookshelf_id integer
        constraint bookshelf_fk
            references bookshelf
);

alter table book_copy
    owner to admin;

