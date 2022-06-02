create table author
(
    author_id        serial
        primary key,
    author_lastname  varchar(60),
    author_firstname varchar(60)
);

alter table author
    owner to admin;

create table editor
(
    editor_id      serial
        primary key,
    editor_name    varchar(60),
    editor_address varchar(100)
);

alter table editor
    owner to admin;

create table category
(
    category_id          serial
        primary key,
    category_name        varchar(50),
    category_description varchar(100)
);

alter table category
    owner to admin;

create table library
(
    library_code    serial
        primary key,
    library_name    varchar(50),
    library_address varchar(100)
);

alter table library
    owner to admin;

create table catalog
(
    catalog_id   serial
        primary key,
    catalog_name varchar(50),
    library_code integer
        constraint library_code_fk
            references library
);

alter table catalog
    owner to admin;

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

create table book_author
(
    author_id integer     not null
        constraint author_id_fk
            references author,
    isbn      varchar(60) not null
        constraint isbn_id_fk
            references book,
    primary key (author_id, isbn)
);

alter table book_author
    owner to admin;

create table member
(
    member_id        serial
        primary key,
    member_lastname  varchar(60),
    member_firstname varchar(60),
    member_email     varchar(100),
    member_address   varchar(100),
    member_password  varchar(20)
);

alter table member
    owner to admin;

create table book_basket
(
    book_basket_id serial
        primary key,
    creation_date  date,
    delivery_date  date
);

alter table book_basket
    owner to admin;