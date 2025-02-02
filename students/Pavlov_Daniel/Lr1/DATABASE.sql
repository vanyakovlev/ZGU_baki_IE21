PGDMP                          {            rest    15.1    15.1 N    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    19421    rest    DATABASE     x   CREATE DATABASE rest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE rest;
                postgres    false            �            1259    19423    client    TABLE     X   CREATE TABLE public.client (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    19422    client_id_seq    SEQUENCE     v   CREATE SEQUENCE public.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public          postgres    false    215            Y           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public          postgres    false    214            �            1259    19430    drink    TABLE     �   CREATE TABLE public.drink (
    id bigint NOT NULL,
    name character varying(255),
    price integer,
    serving_size integer,
    id_menu integer,
    order_id integer
);
    DROP TABLE public.drink;
       public         heap    postgres    false            �            1259    19429    drink_id_seq    SEQUENCE     u   CREATE SEQUENCE public.drink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.drink_id_seq;
       public          postgres    false    217            Z           0    0    drink_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.drink_id_seq OWNED BY public.drink.id;
          public          postgres    false    216            �            1259    19437    employee    TABLE     �   CREATE TABLE public.employee (
    id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    age integer,
    post character varying(255),
    order_id integer,
    rest_id integer
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    19436    employee_id_seq    SEQUENCE     x   CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.employee_id_seq;
       public          postgres    false    219            [           0    0    employee_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;
          public          postgres    false    218            �            1259    19446    food    TABLE     �   CREATE TABLE public.food (
    id bigint NOT NULL,
    name character varying(255),
    serving_size integer,
    price integer,
    id_menu integer,
    order_id integer
);
    DROP TABLE public.food;
       public         heap    postgres    false            �            1259    19445    food_id_seq    SEQUENCE     t   CREATE SEQUENCE public.food_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.food_id_seq;
       public          postgres    false    221            \           0    0    food_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.food_id_seq OWNED BY public.food.id;
          public          postgres    false    220            �            1259    19453    menu    TABLE     l   CREATE TABLE public.menu (
    id bigint NOT NULL,
    name character varying(255),
    table_id integer
);
    DROP TABLE public.menu;
       public         heap    postgres    false            �            1259    19452    menu_id_seq    SEQUENCE     t   CREATE SEQUENCE public.menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.menu_id_seq;
       public          postgres    false    223            ]           0    0    menu_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.id;
          public          postgres    false    222            �            1259    19460    order    TABLE     w   CREATE TABLE public."order" (
    id bigint NOT NULL,
    id_client integer,
    total_price integer,
    data date
);
    DROP TABLE public."order";
       public         heap    postgres    false            �            1259    19459    order_id_seq    SEQUENCE     u   CREATE SEQUENCE public.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public          postgres    false    225            ^           0    0    order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
          public          postgres    false    224            �            1259    19467    post    TABLE     �   CREATE TABLE public.post (
    id bigint NOT NULL,
    title character varying(255),
    payroll integer,
    function character varying(255),
    employee_id integer
);
    DROP TABLE public.post;
       public         heap    postgres    false            �            1259    19466    post_id_seq    SEQUENCE     t   CREATE SEQUENCE public.post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public          postgres    false    227            _           0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public          postgres    false    226            �            1259    19476    rest    TABLE     y   CREATE TABLE public.rest (
    id bigint NOT NULL,
    name character varying(255),
    street character varying(255)
);
    DROP TABLE public.rest;
       public         heap    postgres    false            �            1259    19475    rest_id_seq    SEQUENCE     t   CREATE SEQUENCE public.rest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.rest_id_seq;
       public          postgres    false    229            `           0    0    rest_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.rest_id_seq OWNED BY public.rest.id;
          public          postgres    false    228            �            1259    19485    table    TABLE     j   CREATE TABLE public."table" (
    id bigint NOT NULL,
    id_restaurant integer,
    id_client integer
);
    DROP TABLE public."table";
       public         heap    postgres    false            �            1259    19484    table_id_seq    SEQUENCE     u   CREATE SEQUENCE public.table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.table_id_seq;
       public          postgres    false    231            a           0    0    table_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.table_id_seq OWNED BY public."table".id;
          public          postgres    false    230            �           2604    19426 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    19433    drink id    DEFAULT     d   ALTER TABLE ONLY public.drink ALTER COLUMN id SET DEFAULT nextval('public.drink_id_seq'::regclass);
 7   ALTER TABLE public.drink ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    19440    employee id    DEFAULT     j   ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);
 :   ALTER TABLE public.employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    19449    food id    DEFAULT     b   ALTER TABLE ONLY public.food ALTER COLUMN id SET DEFAULT nextval('public.food_id_seq'::regclass);
 6   ALTER TABLE public.food ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    19456    menu id    DEFAULT     b   ALTER TABLE ONLY public.menu ALTER COLUMN id SET DEFAULT nextval('public.menu_id_seq'::regclass);
 6   ALTER TABLE public.menu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    19463    order id    DEFAULT     f   ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    19470    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    19479    rest id    DEFAULT     b   ALTER TABLE ONLY public.rest ALTER COLUMN id SET DEFAULT nextval('public.rest_id_seq'::regclass);
 6   ALTER TABLE public.rest ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    19488    table id    DEFAULT     f   ALTER TABLE ONLY public."table" ALTER COLUMN id SET DEFAULT nextval('public.table_id_seq'::regclass);
 9   ALTER TABLE public."table" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            B          0    19423    client 
   TABLE DATA           *   COPY public.client (id, name) FROM stdin;
    public          postgres    false    215   �Q       D          0    19430    drink 
   TABLE DATA           Q   COPY public.drink (id, name, price, serving_size, id_menu, order_id) FROM stdin;
    public          postgres    false    217   (R       F          0    19437    employee 
   TABLE DATA           [   COPY public.employee (id, first_name, last_name, age, post, order_id, rest_id) FROM stdin;
    public          postgres    false    219   tR       H          0    19446    food 
   TABLE DATA           P   COPY public.food (id, name, serving_size, price, id_menu, order_id) FROM stdin;
    public          postgres    false    221   �R       J          0    19453    menu 
   TABLE DATA           2   COPY public.menu (id, name, table_id) FROM stdin;
    public          postgres    false    223   GS       L          0    19460    order 
   TABLE DATA           C   COPY public."order" (id, id_client, total_price, data) FROM stdin;
    public          postgres    false    225   �S       N          0    19467    post 
   TABLE DATA           I   COPY public.post (id, title, payroll, function, employee_id) FROM stdin;
    public          postgres    false    227   �S       P          0    19476    rest 
   TABLE DATA           0   COPY public.rest (id, name, street) FROM stdin;
    public          postgres    false    229   RT       R          0    19485    table 
   TABLE DATA           ?   COPY public."table" (id, id_restaurant, id_client) FROM stdin;
    public          postgres    false    231   �T       b           0    0    client_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.client_id_seq', 4, true);
          public          postgres    false    214            c           0    0    drink_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.drink_id_seq', 3, true);
          public          postgres    false    216            d           0    0    employee_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.employee_id_seq', 4, true);
          public          postgres    false    218            e           0    0    food_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.food_id_seq', 3, true);
          public          postgres    false    220            f           0    0    menu_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.menu_id_seq', 3, true);
          public          postgres    false    222            g           0    0    order_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.order_id_seq', 3, true);
          public          postgres    false    224            h           0    0    post_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.post_id_seq', 4, true);
          public          postgres    false    226            i           0    0    rest_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.rest_id_seq', 3, true);
          public          postgres    false    228            j           0    0    table_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.table_id_seq', 1, false);
          public          postgres    false    230            �           2606    19428    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    215            �           2606    19435    drink drink_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.drink
    ADD CONSTRAINT drink_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.drink DROP CONSTRAINT drink_pkey;
       public            postgres    false    217            �           2606    19444    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    219            �           2606    19451    food food_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.food DROP CONSTRAINT food_pkey;
       public            postgres    false    221            �           2606    19458    menu menu_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    223            �           2606    19465    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    225            �           2606    19474    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    227            �           2606    19483    rest rest_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.rest
    ADD CONSTRAINT rest_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.rest DROP CONSTRAINT rest_pkey;
       public            postgres    false    229            �           2606    19490    table table_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."table"
    ADD CONSTRAINT table_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."table" DROP CONSTRAINT table_pkey;
       public            postgres    false    231            �           2606    19531    drink fkdrink_menu    FK CONSTRAINT     p   ALTER TABLE ONLY public.drink
    ADD CONSTRAINT fkdrink_menu FOREIGN KEY (id_menu) REFERENCES public.menu(id);
 <   ALTER TABLE ONLY public.drink DROP CONSTRAINT fkdrink_menu;
       public          postgres    false    223    3231    217            �           2606    19521    drink fkdrink_order    FK CONSTRAINT     u   ALTER TABLE ONLY public.drink
    ADD CONSTRAINT fkdrink_order FOREIGN KEY (order_id) REFERENCES public."order"(id);
 =   ALTER TABLE ONLY public.drink DROP CONSTRAINT fkdrink_order;
       public          postgres    false    225    3233    217            �           2606    19491    employee fkemployee_order    FK CONSTRAINT     {   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT fkemployee_order FOREIGN KEY (order_id) REFERENCES public."order"(id);
 C   ALTER TABLE ONLY public.employee DROP CONSTRAINT fkemployee_order;
       public          postgres    false    3233    219    225            �           2606    19511    employee fkemployee_rest    FK CONSTRAINT     v   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT fkemployee_rest FOREIGN KEY (rest_id) REFERENCES public.rest(id);
 B   ALTER TABLE ONLY public.employee DROP CONSTRAINT fkemployee_rest;
       public          postgres    false    229    3237    219            �           2606    19526    food fkfood_menu    FK CONSTRAINT     n   ALTER TABLE ONLY public.food
    ADD CONSTRAINT fkfood_menu FOREIGN KEY (id_menu) REFERENCES public.menu(id);
 :   ALTER TABLE ONLY public.food DROP CONSTRAINT fkfood_menu;
       public          postgres    false    223    221    3231            �           2606    19516    food fkfood_order    FK CONSTRAINT     s   ALTER TABLE ONLY public.food
    ADD CONSTRAINT fkfood_order FOREIGN KEY (order_id) REFERENCES public."order"(id);
 ;   ALTER TABLE ONLY public.food DROP CONSTRAINT fkfood_order;
       public          postgres    false    3233    221    225            �           2606    19536    menu fkmenu_table    FK CONSTRAINT     s   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT fkmenu_table FOREIGN KEY (table_id) REFERENCES public."table"(id);
 ;   ALTER TABLE ONLY public.menu DROP CONSTRAINT fkmenu_table;
       public          postgres    false    3239    223    231            �           2606    19541    order fkorder_client    FK CONSTRAINT     x   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT fkorder_client FOREIGN KEY (id_client) REFERENCES public.client(id);
 @   ALTER TABLE ONLY public."order" DROP CONSTRAINT fkorder_client;
       public          postgres    false    225    3223    215            �           2606    19496    post fkpost_emp    FK CONSTRAINT     u   ALTER TABLE ONLY public.post
    ADD CONSTRAINT fkpost_emp FOREIGN KEY (employee_id) REFERENCES public.employee(id);
 9   ALTER TABLE ONLY public.post DROP CONSTRAINT fkpost_emp;
       public          postgres    false    3227    227    219            �           2606    19501    table fktable_client    FK CONSTRAINT     x   ALTER TABLE ONLY public."table"
    ADD CONSTRAINT fktable_client FOREIGN KEY (id_client) REFERENCES public.client(id);
 @   ALTER TABLE ONLY public."table" DROP CONSTRAINT fktable_client;
       public          postgres    false    215    3223    231            �           2606    19506    table fktable_rest    FK CONSTRAINT     x   ALTER TABLE ONLY public."table"
    ADD CONSTRAINT fktable_rest FOREIGN KEY (id_restaurant) REFERENCES public.rest(id);
 >   ALTER TABLE ONLY public."table" DROP CONSTRAINT fktable_rest;
       public          postgres    false    231    229    3237            B   2   x�3������/�2��M�NM��+ή�2�H,���p�'�d1z\\\ A�4      D   <   x�3��O�N�4700�45���".#�h"��\Ș�='3��,53���� Y*F��� n�\      F   w   x�-�=�0��͏����E�T��]��Nj�T���"�g|*�q4!�6Ȕ��SY)��o�GKY��!V�?�^L󷌰��F�8\�����J��L�ɼ��G�e|����s?��)      H   <   x�3��H�J,�420�441~@�e��_T���i2B�s�䧥����Ec���� �%�      J   ,   x�3�����O���2�tK���I��9]R�S�J�R1z\\\ ��      L   0   x�3���44200�4202�50�54�2���	�-,LQc���� �7�      N      x�5�A
1��uz��@�΀p�	fK�4�6u���
.��p�W�z�!�f%s���#�a���S�b'�e����D{1�6�&E�_ ��>.c�<ܐR*]Mt�`���
a��(�=
���F�h�8�tt0q      P   B   x�3����ILO�tO,P04�1�2��	��*��r#S9�
R�3���uL��b���� ��d      R      x������ � �     