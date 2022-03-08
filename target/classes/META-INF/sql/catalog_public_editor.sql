create table editor
(
    editor_id      serial
        primary key,
    editor_name    varchar(60),
    editor_address varchar(100)
);

alter table editor
    owner to admin;

INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (1, 'Athabasca University Press', '0202 Beer Place, East Hedwigside, MN 07910');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (2, 'Earthscan', 'Suite 421 0625 Augustine Coves, Port Herschel, VA 39041');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (3, 'Harper & Row', '21373 Grady Throughway, Morissetteview, IA 08689-4846');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (27, 'Ian Allan Publishing', '98922 Willy Light, South Loydmouth, AL 94254-8652');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (28, 'Ten Speed Press', '794 Ruecker Fords, Dustyfort, NC 84111-7662');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (29, 'New Holland Publishers', 'Suite 887 32864 Jerry Pass, New Carroll, GA 12394');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (30, 'Felony & Mayhem Press', 'Suite 731 6066 Towne Station, North Lelandland, VT 87275-1900');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (31, 'E. P. Dutton', 'Suite 366 517 Ziemann Hill, Jacobimouth, NM 07047');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (32, 'Bison Books', '399 Oneida Highway, New Ericside, PA 48841');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (33, 'Eerdmans Publishing', 'Suite 849 1898 Rhonda Lodge, Morarberg, AK 97293');
INSERT INTO public.editor (editor_id, editor_name, editor_address) VALUES (34, 'Liberty Fund', 'Suite 251 463 Schumm Fields, East Ericahaven, ME 52763');
