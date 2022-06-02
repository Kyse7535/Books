create table library
(
    library_code    serial
        primary key,
    library_name    varchar(50),
    library_address varchar(100)
);

alter table library
    owner to admin;

INSERT INTO public.library (library_code, library_name, library_address) VALUES (24, 'Collins, Gusikowski and Thiel', 'Suite 226 7304 Lamont Pike, New Adalinechester, IN 35089');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (25, 'Gulgowski, Torphy and Rau', '39630 Gail Lake, Charmainestad, IN 29054-7180');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (26, 'Hamill-Goodwin', 'Suite 656 4589 Brett Spur, Erikland, WI 98708');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (27, 'Harris LLC', '023 Carroll Ways, New Celestineland, AK 41369-6153');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (28, 'Stiedemann-Feeney', '989 Suzette Cove, Port Opalmouth, ND 19189');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (29, 'Sawayn-Dare', 'Suite 894 5637 Vanessa Drives, Carterland, ID 15615');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (30, 'Skiles-Schowalter', '716 Kanesha Center, Hyattstad, NJ 69466-4228');
INSERT INTO public.library (library_code, library_name, library_address) VALUES (31, 'Hessel-Schuster', 'Apt. 225 1721 Joseph Walks, Lake Dorian, RI 82919-6027');
