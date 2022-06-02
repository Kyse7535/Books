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

INSERT INTO public.member (member_id, member_lastname, member_firstname, member_email, member_address, member_password) VALUES (1, 'kisseime', 'TEVOT', 'ktevot@gmail.com', 'new address', 'new pass');
