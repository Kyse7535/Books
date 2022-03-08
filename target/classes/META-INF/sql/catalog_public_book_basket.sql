create table book_basket
(
    book_basket_id serial
        primary key,
    creation_date  date,
    delivery_date  date
);

alter table book_basket
    owner to admin;

