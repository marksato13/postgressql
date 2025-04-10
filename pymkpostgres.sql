PGDMP  
            
        }            pymkpostgres    16.3    16.3 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    34017    pymkpostgres    DATABASE     ~   CREATE DATABASE pymkpostgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE pymkpostgres;
             
   mark-admin    false            �            1259    34018 
   alquileres    TABLE     �   CREATE TABLE public.alquileres (
    id_alquiler integer NOT NULL,
    fecha_entrada character varying(255) NOT NULL,
    fecha_salida character varying(255) NOT NULL,
    lector_id integer NOT NULL,
    libro_id integer NOT NULL
);
    DROP TABLE public.alquileres;
       public         heap 
   mark-admin    false            �            1259    34025    autores    TABLE     6  CREATE TABLE public.autores (
    id_autor integer NOT NULL,
    apellido_autor character varying(255) NOT NULL,
    fecha_nacimiento character varying(255) NOT NULL,
    genero character varying(255) NOT NULL,
    lugar_nacimiento character varying(255) NOT NULL,
    autor character varying(255) NOT NULL
);
    DROP TABLE public.autores;
       public         heap 
   mark-admin    false            �            1259    34032 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    categoria character varying(255) NOT NULL
);
    DROP TABLE public.categorias;
       public         heap 
   mark-admin    false            �            1259    34039    editoriales    TABLE       CREATE TABLE public.editoriales (
    id_editorial integer NOT NULL,
    "año" character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    editorial character varying(255) NOT NULL,
    sitio_web character varying(255) NOT NULL
);
    DROP TABLE public.editoriales;
       public         heap 
   mark-admin    false            �            1259    34046    lectores    TABLE     0  CREATE TABLE public.lectores (
    id_lector integer NOT NULL,
    codigo_postal character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    observaciones character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL
);
    DROP TABLE public.lectores;
       public         heap 
   mark-admin    false            �            1259    34053    libros    TABLE     �  CREATE TABLE public.libros (
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
    DROP TABLE public.libros;
       public         heap 
   mark-admin    false            �            1259    34060    seq_alquileres    SEQUENCE     w   CREATE SEQUENCE public.seq_alquileres
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seq_alquileres;
       public       
   mark-admin    false            �            1259    34061 	   seq_autor    SEQUENCE     r   CREATE SEQUENCE public.seq_autor
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.seq_autor;
       public       
   mark-admin    false            �            1259    34062    seq_categorias    SEQUENCE     w   CREATE SEQUENCE public.seq_categorias
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seq_categorias;
       public       
   mark-admin    false            �            1259    34063    seq_editoriales    SEQUENCE     x   CREATE SEQUENCE public.seq_editoriales
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.seq_editoriales;
       public       
   mark-admin    false            �            1259    34064    seq_lectores    SEQUENCE     u   CREATE SEQUENCE public.seq_lectores
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.seq_lectores;
       public       
   mark-admin    false            �            1259    34065 	   seq_libro    SEQUENCE     r   CREATE SEQUENCE public.seq_libro
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.seq_libro;
       public       
   mark-admin    false            	          0    34018 
   alquileres 
   TABLE DATA           c   COPY public.alquileres (id_alquiler, fecha_entrada, fecha_salida, lector_id, libro_id) FROM stdin;
    public       
   mark-admin    false    215   �.       
          0    34025    autores 
   TABLE DATA           n   COPY public.autores (id_autor, apellido_autor, fecha_nacimiento, genero, lugar_nacimiento, autor) FROM stdin;
    public       
   mark-admin    false    216   
/                 0    34032 
   categorias 
   TABLE DATA           J   COPY public.categorias (id_categoria, descripcion, categoria) FROM stdin;
    public       
   mark-admin    false    217   =/                 0    34039    editoriales 
   TABLE DATA           ^   COPY public.editoriales (id_editorial, "año", descripcion, editorial, sitio_web) FROM stdin;
    public       
   mark-admin    false    218   n/                 0    34046    lectores 
   TABLE DATA           h   COPY public.lectores (id_lector, codigo_postal, direccion, nombre, observaciones, telefono) FROM stdin;
    public       
   mark-admin    false    219   �/                 0    34053    libros 
   TABLE DATA           �   COPY public.libros (id_libro, descripcion, fecha_lanzamiento, idioma, paginas, portada, titulo, autor_id, categoria_id, editorial_id) FROM stdin;
    public       
   mark-admin    false    220   �/                  0    0    seq_alquileres    SEQUENCE SET     <   SELECT pg_catalog.setval('public.seq_alquileres', 1, true);
          public       
   mark-admin    false    221                       0    0 	   seq_autor    SEQUENCE SET     7   SELECT pg_catalog.setval('public.seq_autor', 1, true);
          public       
   mark-admin    false    222                       0    0    seq_categorias    SEQUENCE SET     <   SELECT pg_catalog.setval('public.seq_categorias', 2, true);
          public       
   mark-admin    false    223                       0    0    seq_editoriales    SEQUENCE SET     =   SELECT pg_catalog.setval('public.seq_editoriales', 1, true);
          public       
   mark-admin    false    224                       0    0    seq_lectores    SEQUENCE SET     :   SELECT pg_catalog.setval('public.seq_lectores', 1, true);
          public       
   mark-admin    false    225                        0    0 	   seq_libro    SEQUENCE SET     7   SELECT pg_catalog.setval('public.seq_libro', 1, true);
          public       
   mark-admin    false    226            j           2606    34024    alquileres alquileres_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT alquileres_pkey PRIMARY KEY (id_alquiler);
 D   ALTER TABLE ONLY public.alquileres DROP CONSTRAINT alquileres_pkey;
       public         
   mark-admin    false    215            l           2606    34031    autores autores_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.autores
    ADD CONSTRAINT autores_pkey PRIMARY KEY (id_autor);
 >   ALTER TABLE ONLY public.autores DROP CONSTRAINT autores_pkey;
       public         
   mark-admin    false    216            n           2606    34038    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public         
   mark-admin    false    217            p           2606    34045    editoriales editoriales_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.editoriales
    ADD CONSTRAINT editoriales_pkey PRIMARY KEY (id_editorial);
 F   ALTER TABLE ONLY public.editoriales DROP CONSTRAINT editoriales_pkey;
       public         
   mark-admin    false    218            r           2606    34052    lectores lectores_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.lectores
    ADD CONSTRAINT lectores_pkey PRIMARY KEY (id_lector);
 @   ALTER TABLE ONLY public.lectores DROP CONSTRAINT lectores_pkey;
       public         
   mark-admin    false    219            t           2606    34059    libros libros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (id_libro);
 <   ALTER TABLE ONLY public.libros DROP CONSTRAINT libros_pkey;
       public         
   mark-admin    false    220            u           2606    34066 &   alquileres fk13xhmhyffpm394knlgs507jb7    FK CONSTRAINT     �   ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT fk13xhmhyffpm394knlgs507jb7 FOREIGN KEY (lector_id) REFERENCES public.lectores(id_lector);
 P   ALTER TABLE ONLY public.alquileres DROP CONSTRAINT fk13xhmhyffpm394knlgs507jb7;
       public       
   mark-admin    false    215    219    4722            v           2606    34071 &   alquileres fkdo7qrnha49samvv7dx2dftiyr    FK CONSTRAINT     �   ALTER TABLE ONLY public.alquileres
    ADD CONSTRAINT fkdo7qrnha49samvv7dx2dftiyr FOREIGN KEY (libro_id) REFERENCES public.libros(id_libro);
 P   ALTER TABLE ONLY public.alquileres DROP CONSTRAINT fkdo7qrnha49samvv7dx2dftiyr;
       public       
   mark-admin    false    215    4724    220            w           2606    34081 "   libros fkk4md5nj7qbtjlbogulcn963xv    FK CONSTRAINT     �   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fkk4md5nj7qbtjlbogulcn963xv FOREIGN KEY (categoria_id) REFERENCES public.categorias(id_categoria);
 L   ALTER TABLE ONLY public.libros DROP CONSTRAINT fkk4md5nj7qbtjlbogulcn963xv;
       public       
   mark-admin    false    217    4718    220            x           2606    34086 "   libros fkmlo591yawpuntu5xneuuuiso0    FK CONSTRAINT     �   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fkmlo591yawpuntu5xneuuuiso0 FOREIGN KEY (editorial_id) REFERENCES public.editoriales(id_editorial);
 L   ALTER TABLE ONLY public.libros DROP CONSTRAINT fkmlo591yawpuntu5xneuuuiso0;
       public       
   mark-admin    false    4720    220    218            y           2606    34076 "   libros fkspm6r4x8iif19d9gjsrvwev65    FK CONSTRAINT     �   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fkspm6r4x8iif19d9gjsrvwev65 FOREIGN KEY (autor_id) REFERENCES public.autores(id_autor);
 L   ALTER TABLE ONLY public.libros DROP CONSTRAINT fkspm6r4x8iif19d9gjsrvwev65;
       public       
   mark-admin    false    216    220    4716            	   (   x�3�427573�5��5���s
�rur�4�4����� e��      
   #   x�3�L-OM)圩)�@V9g9������ �	�         !   x�3�442a.#����Ԕd����=... U�%            x�3�L-O)O����$(3%�+F��� �P�         &   x�3�,O)OM�� ���5�ŕ3�<5��+F��� ��	�         7   x�3�t��4000�50�54�tqsw�U��442���w�w��v�4A�=... ��	w     