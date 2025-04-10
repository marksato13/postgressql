--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alquileres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alquileres (
    id_alquiler integer NOT NULL,
    fecha_entrada character varying(255) NOT NULL,
    fecha_salida character varying(255) NOT NULL,
    lector_id integer NOT NULL,
    libro_id integer NOT NULL
);


--
-- Name: autores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.autores (
    id_autor integer NOT NULL,
    apellido_autor character varying(255) NOT NULL,
    fecha_nacimiento character varying(255) NOT NULL,
    genero character varying(255) NOT NULL,
    lugar_nacimiento character varying(255) NOT NULL,
    autor character varying(255) NOT NULL
);


--
-- Name: categorias; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    categoria character varying(255) NOT NULL
);


--
-- Name: editoriales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.editoriales (
    id_editorial integer NOT NULL,
    "año" character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    editorial character varying(255) NOT NULL,
    sitio_web character varying(255) NOT NULL
);


--
-- Name: lectores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lectores (
    id_lector integer NOT NULL,
    codigo_postal character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    observaciones character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL
);


--
-- Name: libros; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.libros (
    id_libro integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    fecha_lanzamiento character varying(255) NOT NULL,
    idioma character varying(255) NOT NULL,
    paginas character varying(255) NOT NULL,
    portada character varying(255) NOT NULL,
    titulo character varying(255) NOT NULL,
    autor_id integer NOT NULL,
    categoria_id integer NOT NULL,
    editorial_id integer NOT NULL
);


--
-- Name: seq_alquileres; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_alquileres
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_autor; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_autor
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_categorias; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_categorias
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_editoriales; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_editoriales
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_lectores; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_lectores
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_libro; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_libro
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Data for Name: alquileres; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.alquileres (id_alquiler, fecha_entrada, fecha_salida, lector_id, libro_id) FROM stdin;
1	275760-08-18	NBWJEBF	1	1
\.


--
-- Data for Name: autores; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.autores (id_autor, apellido_autor, fecha_nacimiento, genero, lugar_nacimiento, autor) FROM stdin;
1	ewed	ewdw	edwe	eww	wedwe
\.


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categorias (id_categoria, descripcion, categoria) FROM stdin;
1	123	123
2	cwwedc	asd
\.


--
-- Data for Name: editoriales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.editoriales (id_editorial, "año", descripcion, editorial, sitio_web) FROM stdin;
1	ewdwe	dweed	bdwe	dwede
\.


--
-- Data for Name: lectores; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.lectores (id_lector, codigo_postal, direccion, nombre, observaciones, telefono) FROM stdin;
1	wdwed	dwew	dwe	DEWDE	cwefw
\.


--
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.libros (id_libro, descripcion, fecha_lanzamiento, idioma, paginas, portada, titulo, autor_id, categoria_id, editorial_id) FROM stdin;
1	BH	0002-03-12	DFGEM |	123	H	WEOFNKEW	1	1	1
\.


--
-- Name: seq_alquileres; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_alquileres', 1, true);


--
-- Name: seq_autor; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_autor', 1, true);


--
-- Name: seq_categorias; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_categorias', 2, true);


--
-- Name: seq_editoriales; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_editoriales', 1, true);


--
-- Name: seq_lectores; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_lectores', 1, true);


--
-- Name: seq_libro; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_libro', 1, true);


--
-- Name: alquileres alquileres_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT alquileres_pkey PRIMARY KEY (id_alquiler);


--
-- Name: autores autores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.autores
    ADD CONSTRAINT autores_pkey PRIMARY KEY (id_autor);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);


--
-- Name: editoriales editoriales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editoriales
    ADD CONSTRAINT editoriales_pkey PRIMARY KEY (id_editorial);


--
-- Name: lectores lectores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lectores
    ADD CONSTRAINT lectores_pkey PRIMARY KEY (id_lector);


--
-- Name: libros libros_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (id_libro);


--
-- Name: alquileres fk13xhmhyffpm394knlgs507jb7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT fk13xhmhyffpm394knlgs507jb7 FOREIGN KEY (lector_id) REFERENCES public.lectores(id_lector);


--
-- Name: alquileres fkdo7qrnha49samvv7dx2dftiyr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT fkdo7qrnha49samvv7dx2dftiyr FOREIGN KEY (libro_id) REFERENCES public.libros(id_libro);


--
-- Name: libros fkk4md5nj7qbtjlbogulcn963xv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fkk4md5nj7qbtjlbogulcn963xv FOREIGN KEY (categoria_id) REFERENCES public.categorias(id_categoria);


--
-- Name: libros fkmlo591yawpuntu5xneuuuiso0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fkmlo591yawpuntu5xneuuuiso0 FOREIGN KEY (editorial_id) REFERENCES public.editoriales(id_editorial);


--
-- Name: libros fkspm6r4x8iif19d9gjsrvwev65; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fkspm6r4x8iif19d9gjsrvwev65 FOREIGN KEY (autor_id) REFERENCES public.autores(id_autor);


--
-- PostgreSQL database dump complete
--

