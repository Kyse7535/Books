create table author
(
    author_id        serial
        primary key,
    author_lastname  varchar(60),
    author_firstname varchar(60)
);

alter table author
    owner to admin;

INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (1, 'Benoit', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (2, 'Benoit', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (3, 'Benoit', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (4, 'Benoit', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (6, 'Benoit', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (7, 'Kisseime', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (8, 'Kisseime', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (9, 'Dupont', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (5, 'Kisseime', 'Jean');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (10, 'Bechtelar', 'Lesley');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (11, 'Williamson', 'Hulda');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (12, 'Tromp', 'Marquis');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (13, 'Jast', 'Brendan');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (14, 'Goldner', 'Bernard');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (41, 'Spencer', 'Willy');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (42, 'Oberbrunner', 'Wilber');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (43, 'Lehner', 'Milan');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (44, 'Botsford', 'Cesar');
INSERT INTO public.author (author_id, author_lastname, author_firstname) VALUES (45, 'Kulas', 'Lexie');
