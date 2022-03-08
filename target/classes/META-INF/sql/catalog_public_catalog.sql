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

INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (56, 'Wine and Spirits', 27);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (57, 'Civic & Social Organization', 28);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (58, 'Public Policy', 29);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (59, 'Transportationg / Trucking / Railroad', 30);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (60, 'Marketing and Advertising', 31);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (47, 'Electrical / Electronic Manufacturing', 24);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (48, 'Computer Games', 24);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (49, 'Motion Pictures and Film', 24);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (50, 'Transportationg / Trucking / Railroad', 25);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (51, 'Automotive', 25);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (52, 'E-Learning', 25);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (53, 'Building Materials', 26);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (54, 'Hospital & Health Care', 26);
INSERT INTO public.catalog (catalog_id, catalog_name, library_code) VALUES (55, 'Construction', 26);
