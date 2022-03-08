create table category
(
    category_id          serial
        primary key,
    category_name        varchar(50),
    category_description varchar(100)
);

alter table category
    owner to admin;

INSERT INTO public.category (category_id, category_name, category_description) VALUES (1, 'Short story', 'Alla till mig!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (2, 'Speech', 'Surrender to my will!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (3, 'Suspense/Thriller', '¡Apagando las luces!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (27, 'Legend', 'Here ya go!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (28, 'Speech', 'Activating Self Destruct Sequence.');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (29, 'Suspense/Thriller', 'Step right up.');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (30, 'Biography/Autobiography', 'Hammer DOWN!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (31, 'Mythopoeia', 'Dòng zhù! Bùxǔ zǒu!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (32, 'Humor', 'Step right up.');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (33, 'Short story', 'Freeze! Don''t move!');
INSERT INTO public.category (category_id, category_name, category_description) VALUES (34, 'Fable', 'Géill do mo thoil!');
