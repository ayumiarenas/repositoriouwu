PGDMP  )                    }            basededonas    17.5    17.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16389    basededonas    DATABASE        CREATE DATABASE basededonas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE basededonas;
                     yumi    false            �            1259    16390    datos    TABLE     �   CREATE TABLE public.datos (
    fila integer NOT NULL,
    aplicacion character varying(50),
    estado character varying(50)
);
    DROP TABLE public.datos;
       public         heap r       postgres    false                      0    16390    datos 
   TABLE DATA           9   COPY public.datos (fila, aplicacion, estado) FROM stdin;
    public               postgres    false    217   g       �           2606    16394    datos datos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_pkey PRIMARY KEY (fila);
 :   ALTER TABLE ONLY public.datos DROP CONSTRAINT datos_pkey;
       public                 postgres    false    217               S   x�3�OM�t,(�OJL��2���tK����2F0MLS���z3��9�ib��X��8�\�C<�������� ��+]     