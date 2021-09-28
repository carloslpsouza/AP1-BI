PGDMP     !    "                y            tr_loca_bike    10.16    10.16 `    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            k           1262    33748    tr_loca_bike    DATABASE     �   CREATE DATABASE tr_loca_bike WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE tr_loca_bike;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            l           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            m           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    34414    aluga    TABLE     4  CREATE TABLE public.aluga (
    cod_locacao integer NOT NULL,
    dt_locacao date NOT NULL,
    hora_locacao time without time zone NOT NULL,
    tempo_locacao integer NOT NULL,
    desconto integer NOT NULL,
    cod_cli integer NOT NULL,
    cod_func integer NOT NULL,
    cod_bicicleta integer NOT NULL
);
    DROP TABLE public.aluga;
       public         postgres    false    3            �            1259    34412    aluga_cod_locacao_seq    SEQUENCE     ~   CREATE SEQUENCE public.aluga_cod_locacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.aluga_cod_locacao_seq;
       public       postgres    false    218    3            n           0    0    aluga_cod_locacao_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.aluga_cod_locacao_seq OWNED BY public.aluga.cod_locacao;
            public       postgres    false    217            �            1259    34363 	   bicicleta    TABLE     �   CREATE TABLE public.bicicleta (
    cod_bicicleta integer NOT NULL,
    vl_hora real NOT NULL,
    marca character varying(50) NOT NULL,
    modelo character varying(50) NOT NULL,
    tipo character varying(50) NOT NULL
);
    DROP TABLE public.bicicleta;
       public         postgres    false    3            �            1259    34361    bicicleta_cod_bicicleta_seq    SEQUENCE     �   CREATE SEQUENCE public.bicicleta_cod_bicicleta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.bicicleta_cod_bicicleta_seq;
       public       postgres    false    3    205            o           0    0    bicicleta_cod_bicicleta_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.bicicleta_cod_bicicleta_seq OWNED BY public.bicicleta.cod_bicicleta;
            public       postgres    false    204            �            1259    34369    bicicleta_filial    TABLE     �   CREATE TABLE public.bicicleta_filial (
    qtde_bicicletas integer NOT NULL,
    cod_filial integer NOT NULL,
    cod_bicicleta integer NOT NULL
);
 $   DROP TABLE public.bicicleta_filial;
       public         postgres    false    3            �            1259    34406    cliente    TABLE     _   CREATE TABLE public.cliente (
    cod_cli integer NOT NULL,
    cod_pessoa integer NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false    3            �            1259    34404    cliente_cod_cli_seq    SEQUENCE     |   CREATE SEQUENCE public.cliente_cod_cli_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cliente_cod_cli_seq;
       public       postgres    false    216    3            p           0    0    cliente_cod_cli_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cliente_cod_cli_seq OWNED BY public.cliente.cod_cli;
            public       postgres    false    215            �            1259    34347    endereco_filial    TABLE     �  CREATE TABLE public.endereco_filial (
    cod_endereco_fil integer NOT NULL,
    tipo_log character varying(10) NOT NULL,
    logradouro character varying(50) NOT NULL,
    numero integer NOT NULL,
    complemento character varying(50) NOT NULL,
    bairro character varying(50) NOT NULL,
    uf character varying(2) NOT NULL,
    cep character varying(9) NOT NULL,
    cod_filial integer NOT NULL
);
 #   DROP TABLE public.endereco_filial;
       public         postgres    false    3            �            1259    34345 $   endereco_filial_cod_endereco_fil_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_filial_cod_endereco_fil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.endereco_filial_cod_endereco_fil_seq;
       public       postgres    false    3    201            q           0    0 $   endereco_filial_cod_endereco_fil_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.endereco_filial_cod_endereco_fil_seq OWNED BY public.endereco_filial.cod_endereco_fil;
            public       postgres    false    200            �            1259    34382    endereco_pessoa    TABLE     �  CREATE TABLE public.endereco_pessoa (
    cod_endereco_pes integer NOT NULL,
    tipo_log character varying(10) NOT NULL,
    logradouro character varying(50) NOT NULL,
    numero integer NOT NULL,
    complemento character varying(50) NOT NULL,
    bairro character varying(50) NOT NULL,
    uf character varying(2) NOT NULL,
    cep character varying(9) NOT NULL,
    cod_pessoa integer NOT NULL
);
 #   DROP TABLE public.endereco_pessoa;
       public         postgres    false    3            �            1259    34380 $   endereco_pessoa_cod_endereco_pes_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_pessoa_cod_endereco_pes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.endereco_pessoa_cod_endereco_pes_seq;
       public       postgres    false    3    210            r           0    0 $   endereco_pessoa_cod_endereco_pes_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.endereco_pessoa_cod_endereco_pes_seq OWNED BY public.endereco_pessoa.cod_endereco_pes;
            public       postgres    false    209            �            1259    33793     endereco_pessoa_cod_endereco_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_pessoa_cod_endereco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.endereco_pessoa_cod_endereco_seq;
       public       postgres    false    3            �            1259    34339    filial    TABLE     �   CREATE TABLE public.filial (
    cod_filial integer NOT NULL,
    cnpj character varying(20) NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.filial;
       public         postgres    false    3            �            1259    34337    filial_cod_filial_seq    SEQUENCE     ~   CREATE SEQUENCE public.filial_cod_filial_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.filial_cod_filial_seq;
       public       postgres    false    3    199            s           0    0    filial_cod_filial_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.filial_cod_filial_seq OWNED BY public.filial.cod_filial;
            public       postgres    false    198            �            1259    34398    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    cod_func integer NOT NULL,
    cod_pessoa integer NOT NULL,
    cod_filial integer NOT NULL
);
    DROP TABLE public.funcionario;
       public         postgres    false    3            �            1259    34396    funcionario_cod_func_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_cod_func_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.funcionario_cod_func_seq;
       public       postgres    false    214    3            t           0    0    funcionario_cod_func_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.funcionario_cod_func_seq OWNED BY public.funcionario.cod_func;
            public       postgres    false    213            �            1259    34374    pessoa    TABLE     �   CREATE TABLE public.pessoa (
    cod_pessoa integer NOT NULL,
    nome character varying(50) NOT NULL,
    cpf character varying(12) NOT NULL,
    email character varying(50) NOT NULL
);
    DROP TABLE public.pessoa;
       public         postgres    false    3            �            1259    34372    pessoa_cod_pessoa_seq    SEQUENCE     ~   CREATE SEQUENCE public.pessoa_cod_pessoa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pessoa_cod_pessoa_seq;
       public       postgres    false    208    3            u           0    0    pessoa_cod_pessoa_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pessoa_cod_pessoa_seq OWNED BY public.pessoa.cod_pessoa;
            public       postgres    false    207            �            1259    34355    telefone_filial    TABLE     �   CREATE TABLE public.telefone_filial (
    cod_tel_fil integer NOT NULL,
    ddd integer NOT NULL,
    telefone character varying(15) NOT NULL,
    cod_filial integer NOT NULL
);
 #   DROP TABLE public.telefone_filial;
       public         postgres    false    3            �            1259    34353    telefone_filial_cod_tel_fil_seq    SEQUENCE     �   CREATE SEQUENCE public.telefone_filial_cod_tel_fil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.telefone_filial_cod_tel_fil_seq;
       public       postgres    false    203    3            v           0    0    telefone_filial_cod_tel_fil_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.telefone_filial_cod_tel_fil_seq OWNED BY public.telefone_filial.cod_tel_fil;
            public       postgres    false    202            �            1259    34390    telefone_pessoa    TABLE     �   CREATE TABLE public.telefone_pessoa (
    cod_tel_pes integer NOT NULL,
    ddd integer NOT NULL,
    telefone character varying(15) NOT NULL,
    cod_pessoa integer NOT NULL
);
 #   DROP TABLE public.telefone_pessoa;
       public         postgres    false    3            �            1259    34388    telefone_pessoa_cod_tel_pes_seq    SEQUENCE     �   CREATE SEQUENCE public.telefone_pessoa_cod_tel_pes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.telefone_pessoa_cod_tel_pes_seq;
       public       postgres    false    212    3            w           0    0    telefone_pessoa_cod_tel_pes_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.telefone_pessoa_cod_tel_pes_seq OWNED BY public.telefone_pessoa.cod_tel_pes;
            public       postgres    false    211            �            1259    33897    telefone_pessoa_cod_tel_seq    SEQUENCE     �   CREATE SEQUENCE public.telefone_pessoa_cod_tel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.telefone_pessoa_cod_tel_seq;
       public       postgres    false    3            �
           2604    34417    aluga cod_locacao    DEFAULT     v   ALTER TABLE ONLY public.aluga ALTER COLUMN cod_locacao SET DEFAULT nextval('public.aluga_cod_locacao_seq'::regclass);
 @   ALTER TABLE public.aluga ALTER COLUMN cod_locacao DROP DEFAULT;
       public       postgres    false    217    218    218            �
           2604    34366    bicicleta cod_bicicleta    DEFAULT     �   ALTER TABLE ONLY public.bicicleta ALTER COLUMN cod_bicicleta SET DEFAULT nextval('public.bicicleta_cod_bicicleta_seq'::regclass);
 F   ALTER TABLE public.bicicleta ALTER COLUMN cod_bicicleta DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    34409    cliente cod_cli    DEFAULT     r   ALTER TABLE ONLY public.cliente ALTER COLUMN cod_cli SET DEFAULT nextval('public.cliente_cod_cli_seq'::regclass);
 >   ALTER TABLE public.cliente ALTER COLUMN cod_cli DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    34350     endereco_filial cod_endereco_fil    DEFAULT     �   ALTER TABLE ONLY public.endereco_filial ALTER COLUMN cod_endereco_fil SET DEFAULT nextval('public.endereco_filial_cod_endereco_fil_seq'::regclass);
 O   ALTER TABLE public.endereco_filial ALTER COLUMN cod_endereco_fil DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    34385     endereco_pessoa cod_endereco_pes    DEFAULT     �   ALTER TABLE ONLY public.endereco_pessoa ALTER COLUMN cod_endereco_pes SET DEFAULT nextval('public.endereco_pessoa_cod_endereco_pes_seq'::regclass);
 O   ALTER TABLE public.endereco_pessoa ALTER COLUMN cod_endereco_pes DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    34342    filial cod_filial    DEFAULT     v   ALTER TABLE ONLY public.filial ALTER COLUMN cod_filial SET DEFAULT nextval('public.filial_cod_filial_seq'::regclass);
 @   ALTER TABLE public.filial ALTER COLUMN cod_filial DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    34401    funcionario cod_func    DEFAULT     |   ALTER TABLE ONLY public.funcionario ALTER COLUMN cod_func SET DEFAULT nextval('public.funcionario_cod_func_seq'::regclass);
 C   ALTER TABLE public.funcionario ALTER COLUMN cod_func DROP DEFAULT;
       public       postgres    false    213    214    214            �
           2604    34377    pessoa cod_pessoa    DEFAULT     v   ALTER TABLE ONLY public.pessoa ALTER COLUMN cod_pessoa SET DEFAULT nextval('public.pessoa_cod_pessoa_seq'::regclass);
 @   ALTER TABLE public.pessoa ALTER COLUMN cod_pessoa DROP DEFAULT;
       public       postgres    false    208    207    208            �
           2604    34358    telefone_filial cod_tel_fil    DEFAULT     �   ALTER TABLE ONLY public.telefone_filial ALTER COLUMN cod_tel_fil SET DEFAULT nextval('public.telefone_filial_cod_tel_fil_seq'::regclass);
 J   ALTER TABLE public.telefone_filial ALTER COLUMN cod_tel_fil DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    34393    telefone_pessoa cod_tel_pes    DEFAULT     �   ALTER TABLE ONLY public.telefone_pessoa ALTER COLUMN cod_tel_pes SET DEFAULT nextval('public.telefone_pessoa_cod_tel_pes_seq'::regclass);
 J   ALTER TABLE public.telefone_pessoa ALTER COLUMN cod_tel_pes DROP DEFAULT;
       public       postgres    false    212    211    212            e          0    34414    aluga 
   TABLE DATA               �   COPY public.aluga (cod_locacao, dt_locacao, hora_locacao, tempo_locacao, desconto, cod_cli, cod_func, cod_bicicleta) FROM stdin;
    public       postgres    false    218   �q       X          0    34363 	   bicicleta 
   TABLE DATA               P   COPY public.bicicleta (cod_bicicleta, vl_hora, marca, modelo, tipo) FROM stdin;
    public       postgres    false    205   ��      Y          0    34369    bicicleta_filial 
   TABLE DATA               V   COPY public.bicicleta_filial (qtde_bicicletas, cod_filial, cod_bicicleta) FROM stdin;
    public       postgres    false    206   ��      c          0    34406    cliente 
   TABLE DATA               6   COPY public.cliente (cod_cli, cod_pessoa) FROM stdin;
    public       postgres    false    216   '�      T          0    34347    endereco_filial 
   TABLE DATA               �   COPY public.endereco_filial (cod_endereco_fil, tipo_log, logradouro, numero, complemento, bairro, uf, cep, cod_filial) FROM stdin;
    public       postgres    false    201   �      ]          0    34382    endereco_pessoa 
   TABLE DATA               �   COPY public.endereco_pessoa (cod_endereco_pes, tipo_log, logradouro, numero, complemento, bairro, uf, cep, cod_pessoa) FROM stdin;
    public       postgres    false    210   -�      R          0    34339    filial 
   TABLE DATA               8   COPY public.filial (cod_filial, cnpj, nome) FROM stdin;
    public       postgres    false    199   �       a          0    34398    funcionario 
   TABLE DATA               G   COPY public.funcionario (cod_func, cod_pessoa, cod_filial) FROM stdin;
    public       postgres    false    214   �      [          0    34374    pessoa 
   TABLE DATA               >   COPY public.pessoa (cod_pessoa, nome, cpf, email) FROM stdin;
    public       postgres    false    208   �      V          0    34355    telefone_filial 
   TABLE DATA               Q   COPY public.telefone_filial (cod_tel_fil, ddd, telefone, cod_filial) FROM stdin;
    public       postgres    false    203   �o      _          0    34390    telefone_pessoa 
   TABLE DATA               Q   COPY public.telefone_pessoa (cod_tel_pes, ddd, telefone, cod_pessoa) FROM stdin;
    public       postgres    false    212   �o      x           0    0    aluga_cod_locacao_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.aluga_cod_locacao_seq', 1, false);
            public       postgres    false    217            y           0    0    bicicleta_cod_bicicleta_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.bicicleta_cod_bicicleta_seq', 1, false);
            public       postgres    false    204            z           0    0    cliente_cod_cli_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cliente_cod_cli_seq', 1, false);
            public       postgres    false    215            {           0    0 $   endereco_filial_cod_endereco_fil_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.endereco_filial_cod_endereco_fil_seq', 1, false);
            public       postgres    false    200            |           0    0 $   endereco_pessoa_cod_endereco_pes_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.endereco_pessoa_cod_endereco_pes_seq', 1, false);
            public       postgres    false    209            }           0    0     endereco_pessoa_cod_endereco_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.endereco_pessoa_cod_endereco_seq', 1, false);
            public       postgres    false    196            ~           0    0    filial_cod_filial_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.filial_cod_filial_seq', 1, false);
            public       postgres    false    198                       0    0    funcionario_cod_func_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.funcionario_cod_func_seq', 1, false);
            public       postgres    false    213            �           0    0    pessoa_cod_pessoa_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pessoa_cod_pessoa_seq', 1, false);
            public       postgres    false    207            �           0    0    telefone_filial_cod_tel_fil_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.telefone_filial_cod_tel_fil_seq', 1, false);
            public       postgres    false    202            �           0    0    telefone_pessoa_cod_tel_pes_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.telefone_pessoa_cod_tel_pes_seq', 1, false);
            public       postgres    false    211            �           0    0    telefone_pessoa_cod_tel_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.telefone_pessoa_cod_tel_seq', 1, false);
            public       postgres    false    197            �
           2606    34368    bicicleta cod_bicicleta 
   CONSTRAINT     `   ALTER TABLE ONLY public.bicicleta
    ADD CONSTRAINT cod_bicicleta PRIMARY KEY (cod_bicicleta);
 A   ALTER TABLE ONLY public.bicicleta DROP CONSTRAINT cod_bicicleta;
       public         postgres    false    205            �
           2606    34411    cliente cod_cli 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cod_cli PRIMARY KEY (cod_cli);
 9   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cod_cli;
       public         postgres    false    216            �
           2606    34352     endereco_filial cod_endereco_fil 
   CONSTRAINT     l   ALTER TABLE ONLY public.endereco_filial
    ADD CONSTRAINT cod_endereco_fil PRIMARY KEY (cod_endereco_fil);
 J   ALTER TABLE ONLY public.endereco_filial DROP CONSTRAINT cod_endereco_fil;
       public         postgres    false    201            �
           2606    34387     endereco_pessoa cod_endereco_pes 
   CONSTRAINT     l   ALTER TABLE ONLY public.endereco_pessoa
    ADD CONSTRAINT cod_endereco_pes PRIMARY KEY (cod_endereco_pes);
 J   ALTER TABLE ONLY public.endereco_pessoa DROP CONSTRAINT cod_endereco_pes;
       public         postgres    false    210            �
           2606    34344    filial cod_filial 
   CONSTRAINT     W   ALTER TABLE ONLY public.filial
    ADD CONSTRAINT cod_filial PRIMARY KEY (cod_filial);
 ;   ALTER TABLE ONLY public.filial DROP CONSTRAINT cod_filial;
       public         postgres    false    199            �
           2606    34403    funcionario cod_func 
   CONSTRAINT     X   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT cod_func PRIMARY KEY (cod_func);
 >   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT cod_func;
       public         postgres    false    214            �
           2606    34419    aluga cod_locacao 
   CONSTRAINT     X   ALTER TABLE ONLY public.aluga
    ADD CONSTRAINT cod_locacao PRIMARY KEY (cod_locacao);
 ;   ALTER TABLE ONLY public.aluga DROP CONSTRAINT cod_locacao;
       public         postgres    false    218            �
           2606    34379    pessoa cod_pessoa 
   CONSTRAINT     W   ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT cod_pessoa PRIMARY KEY (cod_pessoa);
 ;   ALTER TABLE ONLY public.pessoa DROP CONSTRAINT cod_pessoa;
       public         postgres    false    208            �
           2606    34360    telefone_filial cod_tel_fil 
   CONSTRAINT     b   ALTER TABLE ONLY public.telefone_filial
    ADD CONSTRAINT cod_tel_fil PRIMARY KEY (cod_tel_fil);
 E   ALTER TABLE ONLY public.telefone_filial DROP CONSTRAINT cod_tel_fil;
       public         postgres    false    203            �
           2606    34395    telefone_pessoa cod_tel_pes 
   CONSTRAINT     b   ALTER TABLE ONLY public.telefone_pessoa
    ADD CONSTRAINT cod_tel_pes PRIMARY KEY (cod_tel_pes);
 E   ALTER TABLE ONLY public.telefone_pessoa DROP CONSTRAINT cod_tel_pes;
       public         postgres    false    212            �
           2606    34445    aluga bicicleta_aluga_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluga
    ADD CONSTRAINT bicicleta_aluga_fk FOREIGN KEY (cod_bicicleta) REFERENCES public.bicicleta(cod_bicicleta);
 B   ALTER TABLE ONLY public.aluga DROP CONSTRAINT bicicleta_aluga_fk;
       public       postgres    false    205    218    2749            �
           2606    34440 .   bicicleta_filial bicicleta_bicicleta_filial_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.bicicleta_filial
    ADD CONSTRAINT bicicleta_bicicleta_filial_fk FOREIGN KEY (cod_bicicleta) REFERENCES public.bicicleta(cod_bicicleta);
 X   ALTER TABLE ONLY public.bicicleta_filial DROP CONSTRAINT bicicleta_bicicleta_filial_fk;
       public       postgres    false    206    2749    205            �
           2606    34475    aluga cliente_aluga_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.aluga
    ADD CONSTRAINT cliente_aluga_fk FOREIGN KEY (cod_cli) REFERENCES public.cliente(cod_cli);
 @   ALTER TABLE ONLY public.aluga DROP CONSTRAINT cliente_aluga_fk;
       public       postgres    false    2759    218    216            �
           2606    34430 +   bicicleta_filial filial_bicicleta_filial_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.bicicleta_filial
    ADD CONSTRAINT filial_bicicleta_filial_fk FOREIGN KEY (cod_filial) REFERENCES public.filial(cod_filial);
 U   ALTER TABLE ONLY public.bicicleta_filial DROP CONSTRAINT filial_bicicleta_filial_fk;
       public       postgres    false    199    2743    206            �
           2606    34425 +   endereco_filial filial_endereco_pessoa_1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco_filial
    ADD CONSTRAINT filial_endereco_pessoa_1_fk FOREIGN KEY (cod_filial) REFERENCES public.filial(cod_filial);
 U   ALTER TABLE ONLY public.endereco_filial DROP CONSTRAINT filial_endereco_pessoa_1_fk;
       public       postgres    false    2743    201    199            �
           2606    34435 !   funcionario filial_funcionario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT filial_funcionario_fk FOREIGN KEY (cod_filial) REFERENCES public.filial(cod_filial);
 K   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT filial_funcionario_fk;
       public       postgres    false    2743    214    199            �
           2606    34420 )   telefone_filial filial_telefone_filial_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.telefone_filial
    ADD CONSTRAINT filial_telefone_filial_fk FOREIGN KEY (cod_filial) REFERENCES public.filial(cod_filial);
 S   ALTER TABLE ONLY public.telefone_filial DROP CONSTRAINT filial_telefone_filial_fk;
       public       postgres    false    199    203    2743            �
           2606    34470    aluga funcionario_aluga_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluga
    ADD CONSTRAINT funcionario_aluga_fk FOREIGN KEY (cod_func) REFERENCES public.funcionario(cod_func);
 D   ALTER TABLE ONLY public.aluga DROP CONSTRAINT funcionario_aluga_fk;
       public       postgres    false    2757    218    214            �
           2606    34450    cliente pessoa_cliente_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pessoa_cliente_fk FOREIGN KEY (cod_pessoa) REFERENCES public.pessoa(cod_pessoa);
 C   ALTER TABLE ONLY public.cliente DROP CONSTRAINT pessoa_cliente_fk;
       public       postgres    false    208    216    2751            �
           2606    34465 #   endereco_pessoa pessoa_enderecos_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco_pessoa
    ADD CONSTRAINT pessoa_enderecos_fk FOREIGN KEY (cod_pessoa) REFERENCES public.pessoa(cod_pessoa);
 M   ALTER TABLE ONLY public.endereco_pessoa DROP CONSTRAINT pessoa_enderecos_fk;
       public       postgres    false    210    208    2751            �
           2606    34455 !   funcionario pessoa_funcionario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT pessoa_funcionario_fk FOREIGN KEY (cod_pessoa) REFERENCES public.pessoa(cod_pessoa);
 K   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT pessoa_funcionario_fk;
       public       postgres    false    208    2751    214            �
           2606    34460 "   telefone_pessoa pessoa_telefone_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.telefone_pessoa
    ADD CONSTRAINT pessoa_telefone_fk FOREIGN KEY (cod_pessoa) REFERENCES public.pessoa(cod_pessoa);
 L   ALTER TABLE ONLY public.telefone_pessoa DROP CONSTRAINT pessoa_telefone_fk;
       public       postgres    false    208    2751    212            e      x�d]Y�%9����K�i�����Z ��mS3�]��箅"A�?%��_j�����_K�~����s����oѐ�_�?y���g��~�Ϭ���O��>$�����d�K�/����~���ٯ}~��������~���؟��4d���OZy��ħ�T���o�b?���R��s�����wh��?���ο��*�������7����J�ۯQ�Q���w����S�'�����3�����G��e�R�k�L���>3�7�C�|w�ۿ�~���c>���w����w��5}��7�_����p�.B�U���/� Ӡ����_;�9���S�?��̲a9�_Ɨ���/��o��Y�Ӟ|�|�&O�R4�a��������LK�{��9��|�1�%c-�d�=��+��J�T���Qk���oIz��o��d���z���{�}AJ���?7|��=�������A�>(�_k��f{��{o�R����o�R��^m������������__�{L�ݏ���x�7���o��4V�f͏��Y������q7+�탱���?f�/O>��|v�n?����u��7�>=����=/u�Q.��mꔱ�_��n{[f�vu�s�ϩ��v��Q|Py{v�<�O��?7�����i���VK���M,���jw�Ɣ}�a�|��9mX����?��V��z6u�+����?�3�&v�o��|�g�?���t�&�?��z�����S��C0�g��w,�>�~��[`*ۯ�����g��0A����~ƞ����Y�{`�[y�4����N��Co�|��^/7�8�}�s�mgK�������'2s�k7���k�H��tk�!?�~�~��It���l�J��������@4���2^h�������e0�����I߷������z�����D����m�_�m���f\K��Ǿy�DOl��צ�B,X�,�Ǽ{po������L�O���<���$��mc�S�΢�kg?�s,����n?����n�[{{����^�=��je^����˵_W�� �-+>}�ü�Z�",���ka�m~v��7��l������z��~��xp������Θƽ_�Jv���ͷ}���p���ӈ9ꅷ]7�_9~t�����w���qd��R�)��I� �)o��ض�;��+|����~n0w�w�>?So��$NX�}?O��9�۸��㚗T�[���1��F��H���^G�_�M�׻
V�Ӗ���=R��{)��Q�X{7��2��y�L�#�\���gY�/�>��Ҙ�A������sc���[���4?m{]��ٷ�ێ����ίٽ\��g���1���{��guV}���nΚ��T�v1Ӝ�����7�����_z�3C>��,����gOO�U�����oX����r,g��:����8�{��__|Ep���U�8�A�Po��ST�k�$6ޫ��k7D��}&���Ƚ볯�lw����G���۫6�����;�ֆ�6m_�0�ÍC��{[ۗv�}�g�]�O<�m���ig�	I:�y%��;����p��Z�¹[�GY��+������̒���ߠt�����O��&Ygk�Ӷ��'ݏNm=��V�0F���}\��!7��.2��퉬xN��$�����c*.S�3ن�/~Q���]9�r��\ϭ.� m{;���-�;Mk>�� U���=�3�[��Y��H���tf;k��D��q_��W˝��\�vVd�BpM=>Igws������	��bE,��5�ذ~?�J��B���|�۶ׅgMӔS�o�{��/���& �����3�����D��q��^+ڥīd����3s��3¢�[iO�~g���=�n�&>q��o|9�'�ݰAwl_&����o��gz����p��r�Y'��QX�	`2��`T�M�=l»Yn.���Ao�����&���r~�eƶ�BдO��5�����Yg7<��r;C�����{�nl��p��I��D�]�������gƟA,�V��<��s9v�"��0��o��+sOՍ w,n�<��}g����rWf�[��rW�^�fOp�}�n�Ws����]����{����ެ�=�M��¦ڳp"I�+�����5x	�K�&.r�r:⎊5|�|�a*��wS��y�{�7������r0���\�OXp�@�
�z7�G�n������yJ�{`����K���p�p����'Z����ݼ�X��
�!�G�@�P�vz�i�CQ�o����3���oF߽8��N�>� B����$O��>�u�����SP������4Auݝ�SP=����N~ ��nd9��xĜ����Y~��rOcqg(��ٻC��#�~��s��Q�w�V��)�� \��{a���W|�����p!Y�/��w��^��{'�3˳w���������A!ĄG���	];�����׃��Lo{z��a�'��K��Ќy.��>���ؠ;��>��g` ۹�n������*��+��K~q��'���׹}��m8
�7��33&�7�4y]�<����à��ė��\��р���B�9f8���:9m�����f�^T��R�]�����W��.�<�o�! �7&�? ſ�f��rw�V�o�g���!<��>��?p���q �w��>#7M>s�k���������Ύ鵊�[���U��{{��K��QAB�s�W�9����~wǞ|̳2	3�8��4����iO��-o�A3"�R��l~.�?GO��z��x��?�~��\�Xd�y�^xr�;�zưǜ9��ʎ+�ʼ��ɕ�6��/�l��;~X\G��A�VmȽg�gaaۣ��.�9 �#��C���W��ձ'�q��SqO(�~�_nn��ѽt�s�UO%���πa٫���>oeH�r���g�O�[�sn��{J�,󁆼�L�!�[~|P��x��7��@������Õ�!�¶x���A���v/ <���|��2��`����H|�R)�}����y�@N��	7�{4�tHc��:�8�0�Sg�w9���U���ˏkk=P�_ tҿ���n�� .�~�%.��2����P�'����Sg��۲�,W���ƞ���#7�	G��PU��|#R������齬q�(#��t�����m�+8�]N��*�=��k�嫼ޫ�D��}�Q() .M�%�P)<�Ф��O9 2��}�g���3�����y��Zk:/6�b�k�G�����H���m-|�K
;��c�v�e?u�	�o�� �Pw^<q���x����y��)x�����L�baкo�o�W��YN<�,���I�9��g���^e�� ��{��(9�\t� p���7�^���Jg^�����np6�g��a,���x����9܊g���mJs�"���6�� `�{�	.I/��|��N�*�D����z�e��9 $�fe��ƣESP��Dr�Ï��+����w���1�M'rw�$�Xn4ʠ'#OR��b��K�i���D��c��࢔w}��'�6��ܭ�V��`̫Й:����֤��V�^�����I���'��\��5��O���\�a;��~�>;3#Yi��I�O5ؕ�M�"fB����C>��p������g�_,J�bC�T����R3b)s���yt�z��z,��wΕ���Knw$`pĺ|^T�������Ag�����~7H��+5��p��������4dn���MO�"�~&����� r�o�z���)��}�����KU�,3�Ĉ_���A�����[�V�{҃o�At�md\�O��8"�b�Md��'�!��2���r�P?���:��L9�N�bͭ��<������3�� Ӂ�}~=цmp�Ц9�nFd�=�����;��*��� �7oa�Ì�C��O�[�A/��fk��"jʶ	��xi/��7q�X�6c�rcPrՑ��4~>.Di_lѣF0`�3�1�ǜ)�0N��A.��D|�m� -�k7*ør�Lm4Ъ�������e�u���4ӫNb}��mN�����}Wzʶ�rG�68��o��Q�s����L�JUw�a����    z������>$���}^�\e^؞)p��
��՞	O�D���[pƪ;����n����=��������W�?����A� �q�P&a<�d]jp���Ȏ�9{&���i�灮ic
������7g�h�{o��!��e`2���A��2�j�8h�!�l(}'��,��Z���;���8�M'j��μO���"3��_H�kׅD��� �a��4BP�0l;�ny�-)!4�o��;�>ԕa����=3�vO
��}]�.7��@p*�������!���k���>(�������I��{��QR����@� �9��G�� �0_ ���8��$&u��P��N�e~��@��1z79:��A~-ߩ��佋n7/�������4�7AwW�FG3^ó�
� � \�mm-ӕmĖ=��0�|3�J��(�X=N��d����^�[f��4޽ 0pgh���xt�a�(��t�p��Ejk��	��n�)�z��Ui��Ѐ�.n�z�Ѫ�&�r2�����QM]�Y4#[B/VU����4s'�ό��5Ś�F�Y�0G��� ǳ����# |~j���6��z�ѡ���J����XS��}����Vq���sB\����1�����AI��@Z*������%�^E@c`Zu�[j�F����`��R���`.g�)j�n^~��L���ؿ�pQ���!����d&5k~>q�<Bn�	����HjF�ܛ�L�I���ht*3�����Az�n~F5,0�+{�b��^ֈ�r��%��^�?�ƣK<����i���a9P?Tɧ?娃�ֿ���8��a@��@8���U��Pz��[oz��Y~"��}������9ϸ���!�m�ҌP��u�m��XC~�{/;�����1&a�sd
 8`���ݣ��S� �Map��>S�A��7c�����cdm�>����K���ʏ<=����'��&I�VIM�7EZSGy��{N ǃ�}�jBR���~�c?� p�NG`��\<~���Oo���!i��X|�c������G�(��w-Q����N�q�7P4��C���ý�C
�<aB����?x󣆫�z��
}�!�b!s�Į�aױ��/���y�mg�|�g��.��n=;����.#���2�� 0j��#y򦋤��g�Qi����v��$A�7�*�سi"'�u'h��|�:�d�ck Y��l![t�O�����+St�F�S�P�]SEX�GbWR�E�t7<Բ��z����I�)�=&d�L�g���O����@�R�v_�O�
�f��ꐶ����]1^�_��SN�5�^�w1}���?SbRoX:����I���>(X�"��p�Cڭ�a��^ȀW��р{�W�Q��KI�N�Ǔ�ŭ��j�(������1kHˋ��%!i!-�z|o�?
�7$%U ���P��>�]���;�*�׋��(���c�'��l(�X��W�nuϜ�k���&P3#��?x�!X�Q^����7/�^	n�N{�r�F MZ�a���ܐthml�]�Q,J�Q���0RbY'31���q�n��`���(��0��9K��F����:~X��6;3ĩ*��W��F�|T7�>�$����x�:�
4����P�l������SV�d9�ڈ��I�+��Gyl >�?*Ծ1�@�k��E���$H���i�ʒ�G+�)p!�~�D�;�cW�5��p� ��UJ�����}+O]�7$m��a��p�O�a�e=˃�I�x���I��P|�1M�=�5g}=��)�80QÆ�z6�$� [aI]�)R�	�$�yK��nD�8��N�;e2�PW `���Dn�3��o���Й��D�_�J��"$ށ6T�ъ�l�sWy�����0��uJB�o�F��J���%�f+�-���sW!RCĐm_�7-=����$r!/鉅Q�,�˩��
��^2��J�J����E%���h*���û�w�dH9��gZn������Mnm-��|�אu���&M���<��|c�O�8�5��N�](�/s�q܃C,���R |U�'�Z~�;�4�Z�1�p;�i:�sb��_f��B]ѩv�lL�J�vk?�؂��Ƨp(�)�_�fa�XՈ:���F���Ŗ�|��=2�ī޿�Cԋ�l)��<g�k�`�I��㝼�����kf`kϩG
��������5#WȲ��u�wOE�1�g}��y*�O&b��m��*1�&i�Ht&��<��lڤ��Ū�kV��ͷ�h=�d�#�v�S�N谮����Z�S��a��O;6�͘=ʓ��<PycSb����������F%�вR-�m��5�0IX�q��@ڱ�L{a�.3�+Q��X.$�1�/ ����𨗦f.�kq���5K�Eq�u�C	���h�2�psus�7:;�c*2Wf�������8���tF2�3az�|`�Q�Nqc� ��*ۗ��tP;�l-�ztV����i�<�ebϕa�K_�S �v�,$�@/�ar�ڔ�`!HM\@#������y�V^-�C���ƨ��<���4�oo�y�;nn��<F��/4p��MM��7��b����|[�R��E��z��m�u���J�<y����+�F�@����s��yx ;�!�����6�0��\ EJ�*�p������R^���S��6wS�,��s䐭?����+s�y�]��^�%�lܨ���2`9��P���:\V��]�� H�"1�I��n�J�>JRҾuV��TM�2��d�Z"�h7R�.ʋF{@���ށ�K�v[�V�V�B*��R�J-^F�LᙝH�x��T��X?�'�B�* �75zGp����"�\���zY��	����FHk��B�����!ü��;ԯU{< � 	��B��'���9�q�e�Vw��1?�)�Ln�j�n&p7�?�Cc���t�<<��IXI��Y�.d��v����03�1�������!��3����>N�a��E�"P���"B¨]��X�/]OBs�O����H�������0�ji���3�(oOӗ�K�N<�<�ƍO��,�a�0����w��~q�I�
J��?ύ�_���R��b��W��f�00�!eJ�`�X���9��p=�W�MǸ�q��!�L9We'4��_� =.����.&�t�[=BLX�(]��$�K���g��*��0Rj�&M����X~�E��q~[ș��ۭvnd�vh<��A)?�{3�j�v�[gf$
:���W:$^���TI�N�[ZZU��A*A��E/�]oQ
�t�*Ju��?`�YE����+MP���.�\���4=�-?�P)&s��r��-?�Q:����6 GﯻyӉMU�N��o%�O�`[L�ȩ7����DL��5I�x����{�r�oԁڼ�|�1����Ӭ}HLҺ'_�{��4�(�{�i��r��px�|����t^��>�,����ӣӺJxh�ۍMOសx�U4�#>幍*�2�p�C�j��ˌKi��� �������T9���`�
~�z	��Tx�@Ka�0(ܤYL��ʽ^����7��nxߨ���}��d�S� xh�`sBb[//:ŋ��U}c:y��ݸ5k7.=3@=��ɏvs��
I���`��R��6��E�ݵ_����*�P!���!��T�v4�ĭm�]�*V.���,;��V�E��5���G��5.�p�ۡL g�� I�I���p��f8Jf<�f֢h���@��_�"A�>��JʶI��]2o~c���1�lxx�,@_�i�~��J�O����v-�2$��?�E�q�r�^o�����L<�t�͘�m�@G�A���3���Q�*�O��H6ߣZ�G�%ͲV(c��ڛ��ا}���@,t1"�_LI%�9`.�7����da)iC톥��� ׃%�P4��þ��Ub�9���(:"�T+����˸��Re]ܹ�����l�9�4#-���R�    ����9�� ���)-�A��U�~��Y��+��_)�!(5��F����u�En����i�|;�e!	d�~ڳp�Ҧ��'cv�yN(�ڪ�L�$���_TJ�/Fvբ*sh�����a J�u�)d5@s� �Ύk|�	��\��`[�m�}n'�(��%d�x�I.�_�w���ve�:v�@��c+�N�W�x�EqV�ꀳ���n' uߌՔ�a�$�� � �w=���1��x�:)�(/f�=�x�Ճ�b���n�D��/�ǝP3g!����G;\^�
`��#��$�6ߴ��������s(Ҵ����4��K�̚ћ:5��<e]飹�G�y�aA�ʈ�4�t��4��CE rf�/FJ�T�3&bNg��FNͽ�t$i�f�0&�X):}�����78�c;�q=��«�g��¨ ���M����	�߶�QO�Q,U�����BF#�!��s7��H��D[(�t{�ﻙSbq�QI���!��	�� 롰�0bڑ;r��<1�2�Ɍ�PK}�xΨDv�?p}�Հ��B�|�K��!��ธկ���nG� رF����A�ܨO�v��؟=���8؝��������΃:���K���\�*��x����n4Qz��qX����D%UT�%��%4XK��� .L
Q���u�#�T��X)��/�wJ�*��њ8}�
�ʑj:�C�QP��B�����I�s �6�� Sw%�����0-1���N�)���ZK"zt%t���ܢZN��c�ClJO�#}mD��aB�Tbc"5q����6M���jPj1����
�FI7���Λ�R��A^�W��$Q:ã&�s���5eFr#xE. L�V�NPC�Fl�̔旅�f�V��Q{	s��G�M48�p��gAyףI��=�Q_�w���7@�ƣ 3������+���$�ǌR~����.�r��JF쩐/e&�j=@f����t�Q�Sy =
�<xƔ�Q~�[��;G�E����"Pڃ�.'�f*ϭ��J�qip8 ��/0�Wx�{�����t0�5���_��T`�<H����F�0��E:�s���nϤKɨ�n���.���ti}����Y�n &z�=��*��-5E��L
�^����n�UO&����šj�=_]=Fُ|��Ƥ�0�T��{Ꜯz�|^P;YV�Å��JG��������A$���jU�د���[�!BH1Q! rT���{�E�^t$7O�kK�SҋH3	<�� �h�����}��e�[��.I)8��l��*�\^i�`/+��I�I-4����5�p�����:�w�{L�_7aɐ���SҖ�_|7	}��)ͽ�qJ_B:N~�⪍�I҄����^y�,ʍ�~u"��Q�Ȏ�2k$e|P��^"���	�{P(�J��ے�Ǥ�?�v0Q����*8�ۼ�$��QI"�͛�g���by=(�JH���"��4p/6*G3���a�ܐ�T��~�H,��x�\iC��P�o�
��5@���G*�����]�(֗Hp!4T����/�c�YҪ�IFc! �D�Ib�,JF5݄_���@�,��#��i���|T��N�(�������-�n��=&J�a�P�ň�^ ��Ͳ���7�W`������M���kp��'�oH:�"x��q���ߐt42�����OX�"E��g��TVHQ��ga�_�F��7b��ɼL�v�fqG�$���f=Q�\	!�y�Wp)	�h��čs�S�<�#uT���e�V�:����+���!0�\��ߏ�!��C�4��PhkCIٯ~������������G��0vE/H��2��BܦB��Z�G�lS{S2���e��^������O{R�rG�����j�?��~WmD�������u^ 恡L}���]�~q%g�	Gz�W:<Ȱ��ߏ��GڣӃsuQ�G ��J�x��{����w�^�~ވ��"m��M*�#?�ǝ����DD>g�\�8�W��U�=�ޑF_�~�ϖ��F������i&����_O}��K��L\z��%����}�q�4r�Px���5��7O
������ƼC�L�~����T$D<z�$�]\�)h�<�4h ��)]���_��b� ��@�8�>�c�Bo�T�T��H[)��n��i�-e�]�^����EQ'�{
�i���٤�)4jH�vǍ4J0�I)N�e-���w^�+z�A����6=ꃼ�:�SU
���m��[#-z�~���@�z�M.l��A�3�1��+(�Ȝ8���A��8#V�e(�bĳ�V�T�Ja2��%�1��p/nҊ��~*��A� �U��(ie��'e�xM��1WH@e�iF�Y_�[�����K�q�3�M�{�#�{��
��<'ܤY�'��}��y�ҪܺUV\��F�0B���Hu�b�.ؗ�.�q�|K��4�����u��vJ��K��%��������xTP$���S�	V��h�:DR{#'��-x�S7驴�Ёf=H�~�Nj��Oq�q���d��q��y!(�E��bus"}b���*<��h��]Ĵ�?�:ʨ-Q4Y&�p�ː#^Ѿ
�������)�T�����#h��1�*#��/�9�k�BNe#ƥ]8*V��<8N#��hQTe�x����Hc M�
 ��w�siČ�����7��Y�[2S�{y\{�S�d�h����c+=��v�t�<xp/OO
M0ȯ��[�,g�� P�-��=Q{��%��(Ρ
�O�z�MK�&q����Ai= c���S9�&/�AW�G�Îԍ���d%U)mw��\Vp^ʩ��
{�M;�&��\�|�
L��q�Y=�M��<p�1^tD+\E2Q�4��㹍��V�Y���G�7��
➺�G�8�H�OȒ�m\��!����i�Q�3f�EM�f;v���n�^0�Zc�0,UR���G�̕.P9Ze�����a�:T ����Kt0�[���;����3SZ��7�Q�|������n�q�ͱ��.�,ٕLF-��(�{dI��~
���NM v;�0��P��z�.O�\8�-K6~�4i�}A�<:|�N�e8m�\�����	Ma2U4 
�W'�w��ƈ�!kpL�<��G֪8,�qن�0�3u��'��f
@��r[����^���[b�D��H��=�ý��-��{�]GqO�L�"� #�ة��pȼ�G�qf��z�1g
�:����q*��J�ĦjPF�bM�*3h�J��I���6�z�:�ΰ�H$kl}Ҥ�A��Qr8�üTۧ8�9��Q��U�Ğ�BE�F�[������"⇫�?���VOdJ�$�
�:��3�ݤ�=�]-��3?L]ꇃ����|�o@ڎ�T�cU�����|t��>���Z���¨6bR�0�,�Ig���X���,i��E�a�<�ټiQ毝.^�XD0�7w�$���JFܼI�#!� �NV%�ƣM��	�r��`Vh�������i/3��yc��R��&�=_��{��h�;��A������<�	u�'�noq�Pu&ށ��n ��a�YR"��	/��c('���5';mz�!� g�*-*uE���X3�(����y�7���-'�횩�h�XWJ�{'#�� �d�/�N9q&bȼe�]Xk+��NW��/��.�?�1��U=�O�1�ȳNy�3���z!����;CWA�
H˞��&�tS������N{��3d-�	yu'����՟���-���?��D�GYF9�iaڛ��J�����Ȼ$��`�%�y�JO/��������30$X�� ���c�yS�],!�e3��*@���Յ��_AYDw��H��2�L�&�1����7ؒ�߹�LUp�^�~�a��ޔ�Sj��@ W�� �Rh)���!�-��H�ٺyYg@�~gކ0C�˸$gw�d�POʎ��#ĸ�u��fhD    J�1+��jծ��¨��T���#��{�c������`�c�s_�1{�@8i)�ys�G���k�+���C~�A\�D�g��ϰ��� �3{�N�����7��Abh8��JLF�t�J����TkFX�q'_zk )�
2��Q;��1=��Q�eCk8�3t���C#�L���@c�#���TB6�p�Cŏ@��A�yVM�x�:��}���s
>o���u�6.<��:���5(�&��Ձ�5oh:�ڒ���.Ҝ�ܗ�;�D^��1��Rbms�����5�J�Ef՜!S�'i���s>K�:7�I�����9S��JUe�+e�Ri·�Sk��*=������2-Zj2a���G�o{z*�5U0��&����� �Q$f��-�}�-* ���6<�+mR�mr>|� ț���(cqO`0X���h�R#��2	gNEL�{�z#;g��Ԕ�,�!��Пe|����>�^'?&�bP���,h� x�{���k�	��9�c�̚7g:����t_� �
�+YɃ��z�Э�2�׏-�ݎ�x*��6m���v�J{�Bx��z�B�
y��ԏy]lG '`��?�%�ݞ&cV|�/���hIW@A����s�kR?��t�<�A+(��Y��è�����0�3���o������֔�SEV��y�'AE/	��e�7劙���������ݩ���&7���W�'��݌��R"+�xs9�j"V� ���@�tYJ,$��s��v�@���`�v�#vmٳ��cp�)�`~P�V-1��Oj�]D׍O�j�ܱP$�Gͫ<t��H�+�бD0�J��֤LĶ{�G�W����N�^d�&h
����&�Ea鯗��7�ʳ0���h�-cEں<�zf}��L:���[N"7Wƫ%`W$�3�A�f&�B����qoAW�Șҗ4e�B���ƦW+�����,���oa�W�Q˒�N�A�	��&M�� '5#~r:�+�&M�i��ں��q<*h~3�9ISǠ���g��I��)O��P��تo♝��-9+�+�Ѫ�y��Wɩ�PbJ�:϶M�*W}۝���p��)���KݤiV�]�J��ᐘ�����G����G-��&�D�N���*ղ�Lµ��=�<��')V��܌A���5	�h(s@.%I�p��'�С�ܠb�Yb01o���D%r �ǽ���Z�ȩ-{�z�S^ˢ�~�`�Y�1U�mc#C����e�u�C���}dJ��0����L;4Վ�pxp��TR6li���3U�.�� 9�����*�]�2��+�-�����RQ���*i�UI��mG;�h8�7q�N�J�=�����s�?�ᄩ�Lnʊ�K�r���^A���O�@P�yC(غy����Gq?5>(ܧp+�]�ڀ�����8��Eh�<Qkc*6[�EJc{P2 :��u#�CF3X�s7��Vp�(1=B�&4�Ps2Lb��Z�����f�qa%�Ih���,�cw$F���(����׋U�\�Y�z:V66�q���2�]��o1J��A�1lY�M;����yͽ�)���L�A:&.������h�2�����]�LobR��>��>�葁��Ȉ߭��-��s�*��f�����̄��0U󛲦�0v
�b����;2��?)-0���B��WaJWoQmp�Se��������!�g*�J$��bۺt�,�w�]��z6=h�^���ö
xTК:��BN�-e��zw)!�z#��Zfo�	j������`�Ԇ��&�$�,:���*"=��><���#�Qտl�g�Zc��z((���=��.7��`��.N��0�D�px��$��?ai��$�B�W���+qS����;n�D���u���4TM�W�L˸r�^��f�醦G�j���<�p�p�
X�xcfq��j@�np����A�)f���A`	f^G׻b[�����N�"���V75�M�Yvf�<�{�"�5��v��E�(;���O�څ��*q�j��ӥRpt��fE]�S�B`�MST�L�j����ļK�*�*N�W�j>�Wa���R9�!L%󠂭
O���˽���v4���Ʃ�H�Qo�ӹ�ts��z�ݍS ��%)�J��;4S�a�y�1h0��릫�*1���ƪE%.�x���}L.g�!���z{���k�����`��]@T߃�S���&#��n��T6C�R��rS��� ,bkXq�x��'�D�Ք��F�sZ�#�(���H�Z13� %���Wr��/p"D0�q��>�&UO#n��g6����V:?�)�m�4�����Δp�K�GL�*QX��c�LM$JU�5��]*2�=*86K@�Z��*��=.4�'ᦠ�E���'�89~ b��z���W��P<5 1X5_��1cg��Ut��F((J0$�c,R/}�K8�)%�!�R�������4�� P���^Ed���"�>�yZ�ode�PnE�D"{���b]鯴��Y%@=t�f�F&�e�N����Q��PU,1�(F ��a��}�a8�.	`����^���%������H6�%�Vx
��� NN�@d�֝G�K���n,�q��hσt/������`���������`�x��V�zBI�ZT�2�qFz弶���\:��A{���TsG���R�J�p[�b�(��[��{��P�Fp
f����td�L��އ���?wSm�����v��L:��,|�@x�7D�P�G訋��;5����b����7D�{T����TK�
P�({��}�I�v�j̍��<OQ\�nJ���أ�3%�l��=�ϼa�)!n ����c6n\;��H
�  VF�{X�h���EOq�R�y?�� �������W���c]�����=�	�/��P����
��E���i�.=؄U�ư{"���5wn�D�A�@`3������:s��� D}�xNWxW�N$�̈G�; ��W(J�������),��c�h�(��P>�%�`���&^���E�x�Ȍ#d��j6���À������K��+�܃�T�=*l��̶[���}�dH���{5wQ����N�`��2å�t�m����0�R�x�ٚ"��Q��ۆJ	�8e*��W���F�BGF�$M�z��wv%xE��q���p��:V���|lS��E9�@����E��,!���xأ��\��t��ᖱ����K�W���;:?E�.�kh��6�����x����I������V�"��_�<���p�������l������U��9�����v�$j[<P9�CP����Zj��Gq� 6&�� �J'��Z��V	�Z�HNΗ@��z��෣�0�p��)�g�Q��B������З���s�l3xg�e�i�r(l�U]�b/c�e{��R��.�G7��E����ɜt5r~)�'�;�R�_�7���f�<����C�T���bQ昛,?\Y<�~{{x
��{T?�m�������jI�u�M�����^���x�r"�ɱ����V��)ĳ,dm-$�GG)��W��-��dr���,9�Uf����JWx�j��'���uvFy����F���?��O,yuW��O�!{hJ���1���ذf
�>I8H�7� S:}�4��N>��)5��.J��"����ҏ4�]���O�C=���:5s�#MΡ�*��"�nO�}�[ �_�o1�"I�7j��_�����p�r�a�zug����X�G��5�RJ�c����-l���"�iݭq�c�kbQ�B�a�|�E*�^B.�c?�Ҍ��t:�K��L�r�q���3f��ڣ��~�Dga�|e6��:��ITj�|�����HqB�5��[¦r,�yq���ķ���SȮ���آr��s��W�(��j$w��̋��*�� �2	2z �K��I�- ����t͙T�r���T֩�F%&���M�5J.P;���a'�-�Rb��v����p��ΰz���.^t���_��,g�ubx�oN�    ��޴h�C������F���Ϲ���^mJ��}1*��,d��)`�q�{�!���k_.���t=���8x�U�R}T�u�:��i�7Yy+��Sa5���G�qN���N]'��D0"�����8U��_!ԘG @�W:ɼ����z��A�X����Jd��������:N���1��ߤ�)]�. >��n�@2����`�� Q^�SU��|P��+#�k�(�uh-9���������:��_�#`@�1�P��d��m*pql1KL�nO*8������U4x��g���&�8���~��.�Ui�˲���7 ��'�/�q���*��|�gY"!���J3��g��da)�xŬ=�]�9�-_'��٨úG=Zj���3�.<)�l/K�[_��d��1�{��L���:�w ���Tu�C�S�K��� 8ٕ��M��IJص�l%�Įg}�hz�����������H���~�ѕ�p{m:��'��o�I�u�"PnOSB`&�m����hY� �����˯_��Q��Ԓ�������0�B���8�Ӯ����yel%5�V:�L�ш�uYyi���@��N+t�P�t�Þ��j�P��(������?����}�Xuv��B�	0�t�<;m��n����j=�\����r�z
�[2����P��q���T���l��;��-7|� �"�m�]|Z��\��n
��bԴ���[�c�(�%�&T�4Q��G�I2��f�"�v{ D:Jj��m���B3������,���q6je��:q��WyEr\*w�&h��V8�B@�!�����ol��B��*|T�������$SG%D�L�0���*l�� �{���䀙e�˥,�~�7�d�ٻ�qc�,pI�)V�y�z2��\�V��/�[+��#�����_^L��d�+"��>��-˺|�$|�Ԑ�1�)�T�(��|���pNN}Rߟ=�� �P���	�Ih��R�P�	!䢜�Qn ܤ^)[��]Qw	��K�2F:����r�\��ȻHU��ה+'
�N��o U��7�[fێ�IW�[Y��_��`n[�mU(뜐�� �ԉ�R6`^�%tɑbEӒ���ʍ��x��[�x�>�B"��)�6 ��ˍ����^�D^c�3`�"�3K�vB���<�SlK��$n�e�P���>=��[�Z����1T@�|Z'U���'cLA�A��i0<����GDr���Ч�Â<q?����vZG�a!�$=�T���5!��O�eU��ZLT�K @,�q�}��/�0nQ�(���M����*DGe�e.W���H�c�*��C.�o�"���q�o&�6����L_ڳ���ڑ�0��Z���s^[�s^'�e�2��ɣf�Z�:��`�gM�	�c�`v��v6g��G��_
�]\�,Ӵ�����l����S�E��*�4��d��� ���eV�;W�R�-�@hˢ>�|��g�Y�ꞁ���*�+�� d5TH�t�����^ ��m�9�^Ց'�_��������Oj�Tܔu
 	��M?e�$���r=�7��zM�t�+k8}ǆ(�P/G#��tJ��,0��l�et�8DQ�8Yڕ��������fNG��Q����&#��}�:1(U�J�^hn����apAڤ�XDy�����f�8����P:T�s�\�H�1����4�ǩ�P�$�WBSn�_����p�j�嘘�)n���D�i]Y�"Uu
b��-�9�~�"�X�p���z"c�r�`eD
���:��D*7f�EE�W�-f-a@e� ��Ylt3(7�2s�X(��L��(S��(���U:��,��t�*�@��B�U�J�$�T�s��R�5�ɗ�RU�0c%�3nbz$q3�/�\Ma�q#������,r@ntP�{WSH����_�/҅���|Ou��e��P��5=ߟM:��x�(����z����̂��L��7���8r�2x0�A���gm"��k-ɡ��<7�)�<n�G�QA�ح́�j����̟J_����7M��/k��n���AYܙ��S��<�V�Mj|��:y9;/F
K������~��ScD����l��m|��W�lQ:�s.B3�&�x>�*4�����"oqJ�y�/��Z��9Ճ�4�}����2���^�)b�PrOG��y�������;���L��ž �Ϩ�<�l��Zkh��a��!�6Zׁv�D��|I1 ݚ,��=�_�N�B�*�Ts�/ّ\sPv����Q��n,�b�,��Z�@��q�$��L�\�t_����d�j��ҽ�y�W�@�����7�pP���{YV�V�<��o�[��i����{Dg�*-��^C��Kwڱ��x��7�K1=����<���vMq{:�<��k}f�]}='�ń]i�����Μc��|~NEb���/��汷��1K,Ca��7�Q�u�a*ߓ�b�R���qcg�5>i��?�h�ys�z�����6w�m��1������o/bxXp;���/���,*i�_���Vt*?���xԷv��t!�&w���/�;��@�P��g��ה:9���1Qyk{���vei��z7�!T��Uj��k{~��Ubm!���~CٰI�����Q��վl�B���t�k��C���%ǆ����_��G
p{5�0~�Wp��P���Y_����f�E�q{]��E��:�TUO�)��IM�=�~6��N����B�{؋�p�U���$)AY��>�U8m�럏�BY]T#�k�f+��멢>P}Q/;��Ǽd$l� �L2S�)V��:�@ܶ��c\�qC��-��Z)��f!�+"l�č�%�����$B��=�K+�S����).\2f&U�\oY��)�/~�7��]xŧ��:lDh�I�X��R���'�P�����J����{}�a �357JK��xF���F��4x3��%����S�DC�M����Ge36�7��0�n]���P�����S$��L~�Q��Un���R�&�IX&��*��c�����h��~GLz������j�	K��!���	`���ky�M���C��n���Yed�z�NoA���e]](���U>*d��ၫ���on�o=�A��n���(�ƴo9�҇ ������O�����í���SɌ%CP�u�ܼ��λ�ٱP�M>Y��kWP4n?�nַ(kM��ϓ ��S�;�t���.��|�<:����@K�|��b�����U|X��D�W�{�̛�
~O�e_H� �j�YA{�.�P!53^H,�Hj���d]�y����N���tf��5�𫟮�*[�&[���<�&�%=ŜX��-���i�.��� �a	ʩ�<�2�2���l9@nE^Y:�Ug(0��������d7x�L�Y~�����;A�F�B�+��t;y�:��}Y1a�1n��Z|Z�}�ʡ1N��f��l?:Σ`�%{�O2�� TTh/]�t�g.�d���q���L��N����-H)�=a$U O��ʻ���:A��Y�U����Xq��QV�t6[	� ZU�����������~\^�,vc%ؠ���#>�.|b��P��P�	�g�>#t�w�J����;+������̂\�T����X�K|�J:b9y�I�ѪE[%R��
K;h��w'V���Ы�Y}�g=�dR���W��KS\^2P\�FV�>ܓ���/Wr���V�@�'�*N/#c��l�mj�b�hJ§���&K���#1�l7�O�Aa����un{�S���fS@a�r��daq)`�SAk����3ŏXg�*C�U吗|)�3S�h��K��g���Y�?I�Y��Q��5�M�T;��؍�kfrX��Ȏ����#������[巌�x�N�+1�[r�CC3��0�X%� �-6.fk˂м([x�
�JE��銹������<�k��u>,��K��t�cS�f��@]�(t^����,�����г�;9g�E`��RW_A�    ������m�5ً�@�2=��`ӣ�p6��=�1��P����Q�7�̼�n|Kq���W:�&�fAG�4"�堄��>���9�U�����,���4��U�O�?�S�Hj.��H�=�T��-����]�N�����{9�t�Y���Ww�f���Tq~�R�l� 8IE���u�̛����*1^_m*[h�]��H�S�{��#H\)�>�V��p�q0�N�+ܜ&���w
����R�Ƶ�U����Ts$i�^�i��A�#�����<��	�nR��o-�8��O芢 59`X��?b<J�B����|���ڕn[[�8g���b��-Xb��ls|��B����̀B,��t���R�2���'�������1����H.��q�S��=<Z�oD���@x(Jag%��6��-d˭%S�5�VpC�+�{XI.���,ق&�|��\�o�:U�a����m����!���W��!Tt�����'��Tc��}*Z�������ǵ�;(J/EY���/�n���t���Ȣ���>}̎�D��������G���� ��G�a��X�O\���"�z 8��u!��_���!tv+�Tۙ�o�CgJWNc�;��%���~�!�.:�P�+��:�d��e@�NJ$gq�#���!�m�HT)H-���-�8O��RO�����`��6#�թٓ��s�!�B�E���nf�?y���Om1f���A��rRo�̜�'�:&���=Q~��5��_�,���ݭ�a��떙�XR��_+���g<�����*W覀O�\^�0��K�]��~Zg���.@����p��^��[�0��J�AI���H`�Nt1p97f��QгL�|��ͣ����&�7-�K��F��0^ �6���I�DJj��0[	((Y�Uj�����Q��hr^<"�J�&����V��*�F�,�[} �K��µ���~i��p����o�mc�?�����mYM�<62U�P�+�xl5wSi6o<5*]r�7��r� x�U��8o��f� �?�r�3�������b/CU9��6����������-E%2-J`QZ��F"�]5, @�:&��{�&+fm0�ý��`n�6�����@�.��`�r��Y~UK�Ӥ��Y��x�l�
y�N��f!V:AЍ���F���8I�����p��g|r>'���j3G�y��Mad������������q��>M�)�v*�O
��JR�Z�q�8Wg��`��Q��t�`�*��1v1��e=�z�f��-UO�Hl�n��+�v�!ϡ��wh׶*'{�����_V����4���˫.���ۆ�,Sj����2^jM~z=��J:�gGvz�r��m���v�`veP�>,h`%݅M%����,*D�z_�uIY5���BJ����i��g������ξ���n\�~�8,O�e�#���+g@5FD����~���8�����0�����Э�GΘI�a�	q"�-n����6�b�\U�Ên?���6�5�`W���#���?�s�eF�b��|c�.���q�n��}�+IU��l�B�,5g�4��6��/��it�A6Չd��[|�a�pLv��|@�vЫ��I�T4h��׸��,��\�A�r��pI�A\�Q�O�MgiQz8�)"{j��|V�$'��kt�>-��e�p=�Q?��6����k	 �T*�̀��gb�%g�D7G�f���{z���r��S�l�䛅i�Ǔ��d{��k�ƿ��6FK�yv�m=��~��}����ǯG)h�vD�BS"ϓ��N����GND���?i�3�4���Y�M��(��H�����-��2�6e.�|�n����m��S8��f=��V\���� ABa�C�+)�D�Z
Is��|��f���g��j�{�Lī��U��W�߸�86�*��"���w�R��E5��P���P��*��x����!̊
@萉c�H|�S(�%�)`�AB?y`�����l6�,ݣP��3;��d]����C�/C����%�4%#���&���{����v�&� �l�u�9 ̱������_�9,��|E9^{?�a��M�W3�?Ѕc�%n��J�W��Gm�@5��Lq���_&��S"{R�&�*n�xW�zRH�=�&�����a�'����S�~y��W1�Gu\�t�{�+,_�O�3��%�`��e���M�Mr/��҈+*�v����g�iC�/�A���n�Ɉ��yqE� _,�����*V��`*�o��䝇��W���>x氀��^�kAK:��>�p��ާp77;�ÂqU�`f�
�07v���"g�H{�#g���/:ڒrî,_���P��� ��s�ϰ'�ʦRYJr��+"M���H�j��� ��벇��J��It�$�z�	`�!aEu恥���'�}c�x��)]|�TB04<w�A��Kbgq[L0K����7L���4T9��~�(���m ��F�_��$�!
�a*�Q��.F����-y���������F��`�h5�d�����sU�N
�TN��*n�MY�ޞ�I����V��Mo/�Bk����1�7�^߼K֚�97r�s�e?�Ӡ�I�%��{����uʗ.H���j��<օ(�;�A��D)�&G�M�}���\'�â4��H}��K�=:$>*H��%u�]��$���zW@�%�9��������]T�rR�=�^Ɋ5:�n�S�CC#zĬlf��B�y���}D�rz%U%{�iD�h�z�f��3�ƽ<d{�ʭS\���]Ƨ)P�̣q����R��S����7���~z18al�wʥ�W���_�҅��P�+!c4'�V�I������[��_�+��#���t��w�A��xi/y寲ܳN<r�?jI�@5�i����駊4�z�~��H�����Ro0x�	���q���a*;�!�'��g��h��vt,��w�ϗ���i�g�e�?����p�l�"HS�t"��mC'[j[�����: ���~n�[���k��3k��+~5U^[��_�M�|=�����R��z ��` m�-�1�I���e
��-����;�	<DC����K��R�� �0vD��Â�:���j�������n׸��Qzhy�d�f�X�dF�GtWm0���\�븭zU`��j����,���e�����z(`��W�;���	�Kƫ���h�d�v�+#D��$VẺx#�6.��a9���`7nƷ�l�י�F�{�`���
\U�ᱠi�-�H~��ҘyCCv1�-��U2f#��=:�FX��6��}�9��8@]T�L�����RzJ�A��#�#���'��%H�� �#H?3xg���Ey�19,�����������z�
O����/��~�<vV��̈��
���� ��	���n`S�#K�0����Es������C���&�=\��;8��/ԁ��'c����[	�����y���輭����65����M�&E�H$U�+�\N���x�8��� F/~�vYl��x�'���vjP��mv����� �%�ף��_5��Y���1�3uP�҇��ٴ�Ňt{GkDZ�R/M>�W��d��F}ї���-0��ˌQAt)˵��W�Nε��ߣ��4��1.�����{1����9���Q_�E��E�?f��U�e�zp7��*��|�wP��-�)c?��.�o��k!{��2d�|GS/�3��o��$ZXŵ���8��q��.����8`N {D��,����*��ˀ>�ΰid�����G��|��<���W��Y��C�%<,�χ��hz/�) �R_,�J(�)��Nj؊�%�h}3�e[ �B��$ST�4n�"ǆ��7�����M&zNVqR�A! 3��HC(���B eE+[U��<�?��?�1�&̰����/�Y�JV@2�{�wf{�ǲ�o'oi0�-x��!�YCQ�h!︔��)���wj�`Rg�~@����j���E�W�ƅ���0��%����l˫��a���OQO�$a�M    /����&�èu����@���N$���F�I��3�]�"��� l��� F$��?�Ϲh��*�L�����a�;,Ү��b)G������gzf�g���f6y �:r>���-��α�&�,���9_fK�eIg_���W��M��xix���h��=Q{��h鸍�RekJ�&�/���l�ġ���K��3�>E�ID%��x���hlr~��a����ٞ��c��/��A	�l8}�+c�����J��|ݟ[ l��`��b�?#�m��~�Ci(�)�c���fW����E�[矻�d���a�����J��T�����З���W�+�7uj����F(u�H�#ОY��Nzy)�9Vp~����Fz��wG,��;�@ 
aP}�d�QB��;P�IϢ�d�kŷcߪ\!���߫rjܴ�8�6��Oj�'?���4�T�n�����8+G��9�xO��w�t�2ȮN�Ǽ忧�Hz* v����F�tIz*h�q���"�]e0]?(3�1��y1"d3&h 5P6��xы�̹��zT ������K����J��t�!���z�T��Q���C	U�����W��'�V8!��żQ�	*���8��[�A�A�;̖
�+
�iPf�{����q�H3�٧��Ml��iM3�|SQ���Bgq&igH��ڒ����f�:�p��~�,Ś����C=W���V8*��Ki=��]���M�9�5��mJ i���h�]2��{[R�g	>���T���J��nƷb_W�ա��4�+3��Ew�α4�ϳ<��vAK�\�ʅ��P�z8�W]Ե����Žd)�"O7�-��g}H�o��f�bT�}��ܑTB�6������(�xRH�����q�L�0kȸ'!�p7=�:��Ĭ�4�=�ly��i�YC�i��k _��6��<�I�$����ę���:���Ĭpm�P�[��6�T�`+��7��r �a?jb3(=������֐����cX������M{�0�K{�P�K�Ŵ����\'��0 �!��
)�<r��y�(�N��e���yo��s�s�H2x��<g��LiB��rP0��G�K�ч��4��4����fb�c�
�ى#d*�hx�HV��r2 ����ˤ�s|=�ϛ�͇݈7���E,���F����"^�l/��S�~�҂wcܘ���]���+pg{�?�'�զ�r���7�՝mI5�	�&��`�%�������Þ3��3����~����@O���$�㆐����g�N
 �Ʃ��=����E���85�R��H����4x�����K-k�P���:{��N!T�c�8r�f,����Ygӡ��R�ό#*�!�pm('=o��W��:�c������'	���C ��{�f�2]��F+:��c�T��Os�-z77�=꿭��B�6ȍ;��&��_��ڼ�W���r�+����F�'r7b�K�>	ƽ���.�=��� ��j�'�^�9��^�]fP���O�4
c}֊,��u�-����O�.uI`�0 �7��O!�b�'�����Y!��t�ɼ���k�k�,Pd��ߋ�71^:�_<,�*1���vL�|W��7ıq��m�|��ܼ��ҿq�%mܨ�L��f�@� ���=�7�h�/ΥXr�ֻ��Q<�qq;AE�|V�>�*U��A���R�t�Kќ�w�
ɯu�m���¨P�5��"Zl�Pk���p��)we@�:<���Bl�F�9��� �t ^�Ub��ML��e��r�|��nb��/��c~	�Z'V	4����x�+���:4�Bha-Ց�(�L�����v(l�.�?�5�.���b��y:Ft���X���Vy��۞C���QpUG,t hP�|�7u�"k�d�V
��I�0RH��_��kE�^�I'������}�I#9���o!u�B�m�߷�?	黴��pL�0����
3Ve��� ��n�4�4���ʥ��z�g��ZI�����!�5���$2+���7�dW�9Tx^4�+��W?1�T���=�`S��U>�]��KZA���ݦ�5(DW��\@E
=�%�V�B�P��Y�7κ�W��[�/����
u�$�8��OBCn�fy+�B�fdd����v�~OwE�Ē�4�cY�M?ё6�e)A�����
?��)n$'q�W�yD��Zٕ�̡�d�d]ҧ�4h���^�]=�r��a��A��'�D��k�Ժa�aG(W�"1Ǭ@�z�����i���>+
�.,50�tMOad����x��&�Z"֣7�����XB��t�?���O :O�=������ ?��B�9��L�̲��UB`��rA|�Qh�+Y[y�\�r�� �Q�GB�~�0��{a��
%��C�ퟄ�Eԃ�<ģ[��_����*��Q�֡N"�mn;�= �f��@�H�r[� ���P=���QA�J����y�`�y�w�w����{����c4�a�<1o��3>*�n���ތ�{��_�H� ��лn��R��MJ9�7�{�j󕛁�)O��<W�&�E�l�f���o���|hUAgS
p��~2�iR��"p�ץ<_邩���n��&�����Ⱥ�D�N]���h Ӿ��-K2�N>���U�[VS����T;�|/.`��]�m}C�ꬷ�G�!"^���}��}B�H,���x��|h�hK2�wxzrb�{��Ԋ���loO6�*�I�A �z�D�R�+�^�G[x��v~��Mnbث��\'�}ٖ��E�'�}�)�H:I�/>+��!l�e��M)��}�����ɑ���m���]�I�?��R��P�d�AtH"'k}Q����g����-���w� 0��+���E��J�e���9��PL��	�U�.�]Q� e��t�8��]�t)vC��^q�w���kʡ
�S�G�)��!��(����{�#���2|�D����1��"��-���_:�b��&�-j��i�dT�ޔ��Tz.5��>8*bj��N�w�N����'6���^϶l�I�9'�U�B%^RՓ̮4.��G�Xr���H3��(V��X�#�A�ِ� ��<�}i�V�yn���T�T�mUi���<_�(����	?�:������{���缝��`o {A9�k�<��۰�9��[;6�o]����(��v=�`�-KS�"y�1	�r0�|U�jD-N���RߪT�`R'�bTUt�ߪ��4�{0'�#HړoY:y�:�&��Q���z���TI�TQ����{z#a�Ka��~�"�R�9��<���E+w�;��������YϷ�=��K-D�6n�ߺ���j�� T���zn��M�d�fʍ�oY�<o���Ngp6f_ߪ�sŢ�Ɇ��HE�U��5?C�)��^��I��ZX��*�FҚXY8U�ݓo��D��1~V+���4�v�;.{�G�d/&.~[��u��-a`�p��>/}��å�O6�V�Yl��ᠮ�8�K���[���V��,�Pםl�rB^s  A����~� �>;Y��F��4~��U�䒑�_Y�W�U����Wu����1*����}qV��wݼ��ߪ4uD�k0�dt"V�2{FwQ�Y�
�����ϳ���Q-�JWJ�I72��-*��e��lƺXY^��&�#����#�A3�oYB�M�T��~���`�[v~>qr��������w��X���ه��`{?ȰGb�a��Ϸ�9��7�FW���V�g�ڠR��ޡ�r�
h���|�o]��^��F,�� 7
?��
�i�uǾ�M/xd3=����sGK�:w"ߢt��WbM.Ҵ��F��)�a!��r�x�-{[�U�X���3Ʒ,Y���K��&�'�o���ȿ�ܼG�&?+��[]����S���zw�K�.��6nw���2�9�M�J$����g�g\Ʊ�ɦL�oQ��]��Nn��X���V%���;�ջ���߁o�[�K��ޖٷ�Wh4����;�V~؛6��0c3w_�O�=�Rh��E���x    ��Gε�.�4#%�[���E����1�֥��#�6:{Z��)�=�V��wSMl6x�`տ#w ĸ���ת4��V@�* &�!�
\tP�cj���Rb�oUF��;��Q���}%gk���1��k�~�~��X�tg�P���U�{`k�����AҰ s�w�V���~c+���c��z�^�ۀ00�q޵��Xp`h��_+M(��K�*A���` ��Ә�����7��_6w�a���O����W%�Ew�Gv�8�[���Y�{����m~�Ҭ�D�3e0��b��	��*	0P��P��-K��X����~g�}�D?�38ϭ ��z`��D��E�FK�oUJ�������mp_[9i�2d�XD������I`������%�b�t_{S% o��-{h��
�{g]�5r��	��Z�}�w��W8�92f��z�=�M|�^��>%�+N��B���ըΫ>k��"
�o?'�^M.x��z���ם'��%]��)3�j��v�������ĵz3����WdE�>��[n�&��b4�V��3��k8�}��9�ݷz#�,i!"�+����:�^b^���2`F�jR�r�J�PH]~�߲d4���g._�STo�k���X��"�j}��^|0�i4`o�|�Ȩ5ٗϨZ��}�x$W��U�t{߲T��7\0����[��� ��6F�̷*���m�~^��a��LZ_*�:������GI���f��W~&�rݛ9�K�v�}ʊ��J���j	�!�pKB�"���7��+�����~د�[��-fz�	H���W�)6�Č
��n%<�Q:}��w�KN�;�|�\��:�ޤ���РA�b�����j�H��%��&��Ff�8=�!Y�1��m)D�UKt�2$���lȦ�UK�	�P��<������j�K�_�����WQ+:�t�(�m��\u1�{%9�6�^-ߪ�`�l���'n����H* ��[l+��*o|k���_@5[�Y�U�I�Ҹ�k�ު%ܿ��G�I��a)눸�m�|������|�y7��'��a���zQ/���:��y�����.d�u@o4��[E\�F�$2Yh;ED���l�<��nqd��/]��*�5����u/�CL����8���7RF ��y�q��o�5�2���ܕ�ؘ���x ���5���l岔�b�A��q���]�dօ�^����/0��
{~_���CN������w�Il-#r$��)ӷ��eX��Mf�jj���F��$�������g�[��L{��@*�{�����������v�[�f� �+�;��з����w�qXy^����n���C��u���Κ;pll�L��WKM�T����|���1ҚD��K�G���C��b���y+ɓe�~��|�P��I�-��C_Sa�%�Pr[I9G
oA6�-�~dj�����zx��+�����GzY��-��з��Y��Ė��z|��E��+w��F_S�F�%�P�a�i�z������C��,I�[�^�vuҕ�e���e�T��:���$/2t�8cݯ	������s��6 �z��.�n_�f=D!��?�r���0�s�q��Up����8E�X��W ݢ�����3͗��/!�M����&���E)d$�J�r�eE�.a@]��~6��]�"�--1�`�NS#V��,� �B-/V��U��Y�=`[���K
���;��;y��J�7,��X8\�  ��������^#hPo�Ή6`Sx ��/��|բ�%�:$n������D`����_bw�r�k��y�ύ�Ó��cC��Z�ʥ��W-d�{����"ěۿ7�Uxd���Uv���۵u��W�(�os�喡t���g��{�(2@�엵��7h`:��}�^�[�BKಃ��ױ�b|����zD�J	�$�����l�8�ѓ��u+	/�K�~2�ZKc_Vn�dW��]��:_Y�*`��6�y�T�4m���%Dڲ�3��Ñ�ͺ������u��MS�V�@�ao4�_0?��hk��Y�3z ~�/��:�Z:��T6��6D���Z�p�o�R��7�C��V]����7�K,�[
7b�|�1>4.G��֒�s�)s-���8��Ǆ�}q�V����WM��m��T��o]�:qh�J��:��j-�|	���N8$v�v��M!v�м#Q�sk��]���5�A��ZKO?O��a��Ģ��b����y()�[´lr��Fg.�5�v}�b��[�1Dۭbe�v#�j�"u�ja��$'����ˮ���21���۠��=��E��}��Q��:�ښ��l1e� g5�Ҿ5{�/��N�}#���������Drڲ�A�	w8��8��{��7y!hX��K�G\�Ds�@��݃�D�KS]Z�ʳrcC�{V�O"�U��v�Q���~8��C��n��V/ؑ�Ԣ%�ݖw��'s4�<�=�V��K�I��?�CZuk�g��G���3��~�N��]B����7:I��D�*��gD&(��f����c�u����"��x���AJ/� H�F�;�� 29d�<NG*�Ù�����˝��%�e���(;pؖS�bH��aC��]�d��L���|���۵7Y��gS���Y�F�d�$7��f^�2��#�y�Ò��Dɐ���|������l
xYgz��ΐ�*�Ok3�l�	���O��-9[1���57�S|��pfwݤ�lp��	~���ɳd��{�O�zH����D�/ViP��z�^�J����.L[S&8�X�N�|&����~��������w�yW�&�LN=QE��Ni4��~�VcUb;�U�͊5]��l��<5ܼEo�z�F�_��c=�Wٻ��P_�슎����`�U)�.Բ�0�X��`�M��ڥ8��V+����_�붔fD����i�T���}Z�X�gt��=����X��s��>�aʹ�*�+��"�-e���7�-�2�����oi��Q���R������J�7����i��*�f�����y�F1W�o��e��Ϗ�$��6L8��C�3�ڎ���(A�m��Y�]���t�}����U�V�}�����r����]��oտ\�^nϲ�X5�v�anf�]r�����pf�> �|�|(B��Ҩ��֥Pq�L4�vͭ�����x��~��nV�"���u��z@�":1(����Y�9�%l(M��a[�������	��C��z��Ĭ�y,H�m��v�F�9�`�k%]}z�O����p"o��L�-ψtT�j55]=l��~�b_`�M)`*(ǎ��h����}ڒ�H�A.9 �L��:�=`%5_?q�[̦��L��~kҘk(�uB�����Q��mM�l*��e��OE��h%�����쾲:r��E��y�j(? b= |Y+?�r���ʧ��\}�QW���Ԭ�ʧ>S����/�my#4���ǌG����饲����L(����`"�#��B�͟7��.<�����5���	Z��$Bq�ҹ[U��G'<����l].�BC�_+��l��Rr��]k�hI�Ka��&�p��G��o����x�WkY9��������6{Fi2�S�M[��ϕ�'K3�A�ղW�sx�J29vO�5,�x��h���#�-�9��VM�{D�Va���ǰ�'VI����-5�tY��!�ԍX�v�҅�ۘ���_��g���W������ �E����zB۪�&Z�q�ϭ���{�v���l'������Q�q3����"_� 7B��.v �[Ͳ��Q��؉wxBbѓ�Ҿ�f`���悖����	��H����<A1{�8�ܤ;�e��{S8&SX�Q���H�ǜ�a���%�s�X9:�ѭ�3^K�Vʊ����n-�xM]I��&�^�km�|�AG�8H��l�ԩ>�/����0��f)����-����)ӑ�}���_l��kDI3Dq���@~�7���z"'6�- �S��-]��%������VJ��=��{���Z\[�o�    �V[Ӽx���i�*mBS���0G29��cy@l�_����%�?�G�{��F%4����嵝�mj}IL0�[�ރ�k덹4�-lI�(����W�� �5�N0Q�_���p�Q/\hLp��w�s�����+��Un��řipq��_q�T�U�ʁ��x+��3+YgI�8�V^q��IQ�ņ�qn�l��O{���A<�%���07B��^R���C2$Z���;�W1����N���~����w� 
�A��$䱤�eZ&�L�3~d򖤞~�� Έ}�]�s0���0��y
=�����N��j�0V[fw[�05×?���x��6�̢�s������~��,<w\�DF�:�%�?$[����y��^���h�J���9��|/m���VI�n����*Y�^d��&!	|���+����8�7�!�pKa�2����8�ZD����RS<4��=���/� 2��
��"����	�]]5_��m�6�S͞����DX��MZd���A�)]}Qz�M�Xc-�8��J��x���jzI��� �u?%Г�W���-���S�3�����.��(��<��kg1�ELz/�6Z�Moؠ��-�`>̆��,#e�G?�W\a.ߺw�y�2��{��=�߾w(��@+��ӨE��an$x�!# ��XBZ{}�3���c��h"�{}���C	�J.�{��<�ʠ�Q'�k��w�OY�5ͳ{j}���V�D3�S��w;�z��4�,�\�P�x���߲��(ϢB�V%�-\8j���P���켟�D�ܲG��'cg2�F��:��m��P�a(��mA��)ɗ]y�Բ�Vh�I�[c�b� G���ؙ��hb����?�Z;��b:��w�����8�0�l�����ۻ����/��f2��Ĩ�,96�y��p�xs�󁞊�	�Jy
��9�K
���=K%��K���!�@Oԧ���;�n"Г�34J����ĽOM_,y�r�q��/��n�_����G�{�[�*ɫ�W�̟���"BD��g���X���U�e�����g��s����h�Qdu���漴v�� ��>�����6S�K�-_���~><E	i.��*���{����j'zڞf�
��������=���b,3�S�\r��R��#�J���w�З"�#g��Kp�a����R*�	=�:�묊�����'�@����ܚ8)}$��']�P+`�ؙ��J8[����e8Q�v��Ԁ/��U��дAN�3Ƚ���.�1r�!��)�_����4��*�*�o�c�1iu��c"����2�/�ޢ����!�<
�QX��"k���>��t�]/�}��_�^�X-T��*|S(�hr����-�����{9[��ͼ�ѡ=>�S��\��2��{���_Cgs6,����k_?C/�9�T��N)Έ)c-���=�n�+��[�ڂ�oH�ĲGuc��;���q]�u�z�[��*�Q3��-Ҿ���X���T�M�u�@y��'�|i�hU�J��g�w�;C��o�%pg��� [�I���N�iO�fz|��N����������x�˸1Y<�ЈW���M��&/�B4O�!�$|T�����p�)�+���G�;�Ҵ�	^�dj%�.ӾR�����'�'2��A0��l��N �i;�la_��g�y��u��׫fB=q�UIM��TL�*&���@��A���<�K�"���h�]��JO~�-*�	;���T?��a53L���C����]*�Ѐ��D�=�|��C1.�����-{��b�����N5���(� �"��u�|�4��wc)8�����|T��*^�.@N��U+:�%�'�(	�� ηDVu���6������z����e�祈Z�2�T�<�ŋԍ��Q�����S���5A6W%���5�N3��4��W��B'y�G��q[�`��F�<�X�������-<`I2�|7g��C�.�m�w������[���5]�	��7�Ie�GG�.M�,r#�M�	i�XE>�T�{��� �2n�;
(�)I�:u�7zQ�H٘؊���wk*�����g/4���O��j��x���w��k�i���E�_|':�QJ��C��}G�:���3~��藬�@M!"ȥ����H�/���E�����Y�S(�8�F�ڮG{�G��[�z@��w<�9�S�Zڧ�]#k��"��%q�[ �D���L���:�s�d&Ls�E�:��-bǸ����v/>��5n����8j(p�`�@)H�Z�^Y;�ͼ��P�;���ڰ4�B����-��ao�ȶ��
�'��a���b4@*y�$����2d�����/H��L��r\�IU}X�>�:��t�7cY��T�-!T�k��~32չ�'X�x��~w�;]��?"�[���x�=��A��e�ь}���:r�������ot׳E�'���c��tK�$��YN|�;��C��m_[��1�@�=�u=_$u��D9��b�`%�x��o��;<��*y@&�,�}k��c
\r)�^��� >h���[H���9=j�}���\E�nC3-�a%^���pZ���C���u�_Ξ�7�zz����-�b��ϊ�׈�����Bڽ{p�-F��
$�,>�0�����W����ѯ)��|�h%��`K�=t��A���	>�^��;c�w�)s[=���hc��]�&npXkQ����-����'#�{9J`�v�m�u�z��dg�jgĹ��w��o	����~�����wd?ht�,�X}ի@I̅�Ou�1湍����䮩"݇�''S�!�[�o������-SW���z�m�/��w	����㎻~�?�W�[5�,]A�]ո�~�g�W���M�����>�AFW5$���>���,��1mW�[����j&��K�1����@��t7����+=�E����	#��,iK��0,�W�ц����.��/8���܍dm(��W�{� _����3�\�m<�Г&`��Iy�F<x������*8�ݍz�d�7r������>���MLg������t��=��|��X8��`�8��X�ѳڏӡ��oٓ��n�����+�M]a���1(��,i�B��f��4ժ��z����VÇ�ދ�ȓr��"�����-6De�crи,�;-R;�g�0��w�u�K��1�J1�U�'ߞ��_]��<�M�]ìA*^��xϾ�'5$8����u�W��=a��plm}��/^.�Ȣc�&�&� @�0�iXfM���l��\�͊����_=�QV
���~��sz"��,�9/Vո�և��L�^�dm���DU��3%��������'\���mM�&�q��J((����c{l�� c��;�������*
�L���a|�6{��3	|e)V�A�.+�y�+(�P����`	rՃ<9�n[���wK1�ߺ�!H��;�I/y
�%�K�/h�m�zZm�QMGp<�
���+�1�ɵ`�J��߇���:[hE��=ʉ���3/���=ē��z4���/���Dx&)k���i؎����&�g1H���c?����x}I�<���;��u�FLƺ$��R�	� �U��C��̔g�C�m�t?`_����fւ|���_�������/Y��_���4������y��M��C�v��yު0Kn�4rY1Z�y�P#1ŝA��㝹�<$U�xK�����d�o|���苽z_����� D�_�^#�PY"n�p�>o�;�u����1-��=��й>����G	ȼ�n��a�8�f"��,�\Fл(xs������;�W��"����n��s���?7~^�#�8������N���8� s�V�	���g�͑��#�r���jOg��ʤǨ�/f#.�|?��eN�������¬%�2*_g�9��d�P��VlOw�{�	,b��������Bm���?��W	�L�Fx-��ϙn@��Xy�
�����,�$S���]��=e���İ�    �u[���bρ�+�ߙ�d��X78��� ��%ybP*9���y�V��l�GE��䩋U�˜���(���������<���U�&~���O�mu���E�d��H������!��ӺW#��cv3�Z��+��v�b���@KH#�;��]D+����u��#����J+��yg�x9��h�N���ܯ�oQAŴZV*;Am=�:E���zfގwE�wgB����s�ǟ4�b��B1����{w�>5��r�4~��E�1Z�6p"�~�vP��r����yh3G�^�����F 7o:�ж�j���i}P�Q�TU���*�nƛ��Y�)�W��h�||�vi��0ʢG�ݪu�]����-<ҳ�c��^�~�P��tz��=o$�Aj�o���ۧ�42� a+�G��*inG>$}j�ѧ�g����R��_a��q�*��>yk�?D�Eoo�(d�;̗L��%:]X�]��.��W��ه��dӈeI]͌
�����G������R�C���ş��	<+����ߘpf��ERG�gUm�j�n*`�"�U5�_I��h�4�7�-*a���%v���6 _�,��YS*FE�k�ԽʙnT)@R��&�;�"�7&%�k�'���Î���\I�+��
�߫kR�n�Q��iS����t�F�:�g|�2���C����0�%&ٺo1]ݱ�w�ˬ;�ݡOha�G��;�ݡ�
���
l6+yI�(��b%أW-MyeL�ua�K)���,^(��<�2�^�ݍ,����ۡ
|���s�e��V��;�m*|܅�hbp��[�}�!���τ_~��c|?[�M�JD�*+%��
7b*�VC������.�#&�%c����EH���M>�F$g���_Cĺ����Y.{�nY2�k�A���ug�aE2��,������7p3��Z+`V=W��ީ���L��}���� �W���]<P����r����c��5`��BVp���Q�;ݾ�\���j�]�WY7�q����s�zx�B�Hd����D��~�Z
![������߃�.[r����
�t�7�y�H�O[����]<1/�y��/SFM.�8X/�y�e��
 cpJ�#5_���$賑�Fߴu;��7�¿ܐ�ɺݯ=�<���i���d0��Tz;�/^����T�l�x�c:~��$D���g�=��}HW9�;�z}%'g�9i'�`�xE�̗C�n���I�P������o��v�7��d��Hg򥷢$ޯ� ��G�����tP����kOWg����i�)V�W�y��mJ�+8�}!Xɋ?3݂-�;+� :�"Idg���K��Q��z/���������f��\p���J �3��-�4���Ip������p�V���
l����_|�^FxJH�󣢺�VK��R(��*5��� 7��4?i:���z'�4p�y�8��6y����}�RlS����j�@�)��
����Ζ�c�i�7��#X�����������n�;^7���U��x�tD�$
4�A�}\{��T�d��}v��b?[OB��R��+��s�CC�z���I�~�p�s��P�ecf�l�5�<#�ǔN�"���Df:��I$��%�Yi�K
yǘ��Z?�7��gT�p�&;̓��}1�'��T3�3IiF|�������#�u^�L�2I��MVc�u�Î�:aI��\�jPaI[������e��i߆R	al�;�[�-d
�7�y���]��v�z
�]������TS1s��&��.o�E� ��8&@�h����ti(lߌ�\98�%ա��qZ��mM{�Ntg�,�������n�(�6QU-����d�5f�{���]A'T����#hy�w�!j1HM>�!���{�4��`��G�!j@�?����Ds��o��tP9 M�ߙ(υC!x����<6ܨ�/�8��ƨ���	�M�����|��Ӕ���W�k�w��f@�p�t�4$����_��w�ſ�Է��D5n|�ftBxXY��W�*Twt����C������peA���l:&ǩ��ά@�%���q�1QNhDk"J�N9`�}=��xP��2Ϥ�ݗ���Q!����
�ǻ�ퟻ�m�&7��a������҂��Y6l�w��V��i.t�¥�M��Jj��'�}�&��!$���v>�aͶ7}���/9@n�'�I�o��N�}��5HYK����Ϭk,KB���V�SS���\�)2I��>=
�(Xk[�|z�A��<[�Ӷ���q��4(�D\ľ]pU�.'�����Lt�wZ׏�����_?\�H�lv��:�x��6g�����_-W�^��l�o�T��ڰ��<w�_�0��`2�a6��" ��#��-�#A���Z���{\�"_@�d�㍰=�>���ƾv�c����\�H��I�!T��V�6i����|�}���s�����$��9��)ǈ�N~i!�P\�z{lI+��������UD�V齽�,���?t�uɤ��{��b�����P03>�i�Kѕ��i���9ƈ�N�o��⠜	�ܚ��Z�J�};�#B�m�v.dw�o�3��'���T��G��N!F�Ov�<��J{n��d�"Ydwn�P���ڪ�R{4q�+����Ďi��H��渲p��=��(M�悾����n�PW�Rثג�ugs�%Y}U�r"XZ���GoS!Ѓ	X��+�$.8JzF�nw�[�N�8����_��o��ϗ�������d��� B�� vg�s�ء�dk5��{=�_�3H�^6o�.�zO���w8�"ЯL/�K&%V��DB�w�Mcc2!�����~T:��� Aj_�s���{f�㓼�� �_c�C�4��i�{��;��m�40Fv�3��(4���n,�}{Uf�W1�w����ߐ�Xcp�����K>e��D�]��O�l��N�sI=��a�t3cqD(�#^��~�$���&���Mo��p 3���/K#��F`����о��-��v���}ƻ����!�`N\���69���lO�'Y��`T�>@9�2��v��*!��5��Y����k#j�3���S�c�ÆC7�n.K�G�K�M�5���2�kl�R�;��<�4�R��T���j����s��k�0u
a\��f�ܞ�ɬy�2�E.j�U���,�*�����S��'�Q��[P�pR~�/�lʬE����OK��f��i�-?��֒uK�S�$���ܖ�����uH��#�Է� ��H��]��85���'���S�@���ԁ���(˟����%���l�α�Qt��W� ��r�v��i��l�v\��[x�T�'�+y��|'��������?�יh�L�5�IzyZ}f�������=��]��N�I�7�s��=�{&1Vx�־rn�{
��4�%�ѓ���$TGy��N~��M�7M_��Or�R"�#�D���)���(. �p�>��L����8�������d��N�U�7p�Ya�蝍8��~w���IY�$�K׾ɿnG�o�����5یk�y��3oxkL j��'q�{/��N\��+6�|�B�ρQ�,'9[�.��1�J��Oc_�I�۵���-o$a���ܬ�z�s�ޡ�S3�"zS�$�e݋8߮����ܦw+E�����`'��ՙ�����^����WM�K����HVj/?�4�NO�F�ɮ>���\zz�:��OQ"܁�E��Ŗ^D]�t��	�m�ĥ��X�$���;�\�|�	�3��g<�_*���·���~%�1��rJ�}�{��l���8�����u��4����zw�C�eߵH��^KP&����oA,���O��˧��
)��\"��\Uo�|�
\�a�&��܆7���LRP��'��|-���ئ���i�P{q
䜳���6����*��sǽC�6e�] �u}�4p	��14��G�g>��a��f�;F.U��s��T��x���\�xwܻ��Eg���r$�a�yS0D��k�g$�w���w�KpSΕ�ƛiF(jA�E��Yo�����XC�*k��w"�    т�V�\�}ox�a���u�u�z�?�q��V�Py��
O��m��׎ �%�������z4=8�����g�,ۼH;�mA*w��-�f�N' ��>��u�����o�����A��y?����� *�])E-�ٿ/l��u�N��w*7�OL���������:p.��C�����m�M����c�;wQ�d��h&sr�	[dx���旼��'���=��=���"<|0Q�{	F�'�ڪF܉�x�����Oc��
���K4Rv���1鱏U�v��2�mϥ�GP�9���t����ΙB��y�g�:���L��ܙ�(P�p8����ɝ�F���4�d[�ГD�l�*��D����j%�|�I�����[��}��C�˶��ߢ�-`��n�]]�S�[��/�:���B.K�[1�̃9��|��/�M�6����J�e����}��~��L�h,3N�ÏJb���`Cͪ�J���	��~�;� +���x��U�}׷*V��ΐ�u8j�%gӛk�f^�״�\�qe�S���[���"��Mkx ߹�C�آ�.��e�pKF7Rfž����z�F�1�R�{�x��[�
���~j[�W��p܂�A|�n�K�aC�C�/��;�V%O�)��0��w �ߪ$��a��+�}��G&y/����6ۏ>:�An��t�QA�/ڷ�u�z���e�?;Isߪ����N6W`s�V%q�ǐ9E罯I��Eӂin��e��+�c���3y�D�+e)|z04"n�[�k�v5:�����g��g����Pxs�ȎVK�&�5l_��ރ/g��wh�^�K���є��A��^�`9�}}S.)0>fR}�����>���f{|��ş��y���η�ɻj�-�[������,�(w�H稧����[��-���*F�g���tҌ���KA$�k��-Kf�3����K�6W�$�!��`|#4>|#{��Mi�ڎp��V%'�����kF�-K���i�`!�Z�f��0�XcVğ)�����j\�����s�i��:6?'�$�U�^�Зu,F7[����J�lUlދ4%~}��J���\��Y�_�4�U0RU��!��xl��޷CN�����=�\6�N�^�[�(�%$v��u'����W1'��UsQ�i~P�߹��7�Dm�ڨq7�m�ҫB.
X2����[�8>]{g[��J� _��.S�h8|��*��oU����1$+;hSy3o�[��°�}�g�|/;�bT{�ؗ��Lo���O��]߇��-���7/�myÇ�O�CM17��o��gd֖I��[���H$jE%[�˴��w��J( �r�UoЎ���t�β�ξ� 	Q���yE+걕0�
�\�s�G��4nD�䘃Ļu�1��z_�!OZ68������$����cE��ް���d�E�+��<tR4|3:��_-��&̓���%7�Lq�9�E�ʨ��wh�P
IC`�^�l�\uiѲ3����Ó�.Wl�cr<��J�JG���]�h���w�!-�;C��N�O����f�|�R�?Za�ڸ�'a>[c,2����N:b��@"�:λ�%z�F�y�q�:oڮh� �˪���OE��U<�����C�y�p���\L<²��3߂,�4��~��hZM8�O85�Y)Ȕ��T�=`��*�9S13��t�V�ۂj|�I}ߟ;_���S̢"NJm�JZ���!�
��M� }�ǟ�0����Vs�o����\{���^[�.��r8��rd	�Z����1! t���'ہ,1+2����Q���:4!/!Jq�
Lҿu��T8�����(ʳZ�; �p��.����P�~妀�Ȧ���_g�B��U��������
���ؿe��D�"E[A)��߲g�FG���J��8�|���K�\U|�K�n_�<m�WX]�P��Q c��w@��,�5�;���xj���ߪ
���T���E	y8������ʰ�ՖP�)&zW �����JP-�u���\��݊�A\�q�/��D��ȝ*|��SN>A����$|e�R�,H��Lͩ�0��oU2�B�hM{�o�G�R�w��\�2@H�O>�v ʐ���{0h��_-�����C��=���z;�<�Iq�
�h��>��V$���Wn�����R����K@�w �	�y�W�pY�ݦ����7��Z�w����=�(2����`�V��Y��t�z��,Bd$�k���j;P�aseW��3�>���;צjՈ�8����,ik:kU����c_�t�I�r>C����� ^dH�$�B�I�[�T��ܕ�����HM�y��g#�o�2�gJ-��_.�yI뫓z�#�?c�a5i}�CK�6g�����=tv?c�����~W0]��~��
9�:����*����4���D�3(Z��t��;xE8�V|�.ٹIY�����0~˒��6eȲ%�����>��W/^�"ur��Y����˿�|�w�����"��^��rL��e������~��C��Ngq�C�W�C��>nSĸ§���Lē�T�\CQ����)��oh�2�2�����LA5%�����,�@�z[����rLH��w�%�T1H�j���u,��'c��x+5`[�'29]�)�ܷ��\/2�*o4u���w���6�zQ'XV�����"�|��όՕʟ#Y]�aO���o�+AAD���?W�������
��H�w{&W%��Cztr��^)S!l~hH��� ����r��L8��Sі�윉m�k�8p������H���������<��j����Q����~�+T�!���_�݈y��6���e��ꅠ1�yV�J*�����J�,4�z���QX�f�*�����i�ۥk�K��q���-:o߹��Q�׶5����od�u����"N�VR��<UU����ʵZ��A�^�s�������4n��%+�@�,;\�e���QjթH�ʬ_���6�Lv���|vN�8�-�F��M+�k'�UfY�,�������2�M�U���a�@ľ��WŢ�,�$���Ұ}GٰHF�"�_��ir���zǧ�;�"7�>�E%��J:u��g(�]`7���V%�W��j'Ee���t�B��~��'���_m)����v�� F����\� �ON���%ix��?�k��[��	��	KR�2A���T��3�1�dԟ�����9��A��/�X��t:��4]��-��)h��G[�_��d�a]��اY�,� ��Y������������Y��剻.��.�����-���ϳ-�Xko�g��K F)|ZS���6�C'���Z{�ga�]��ҹ}�����(�"��㦇���N\��wz���cs��Z��IӨ�b�:-۾E�eB���̔[�M���Q�j�oC��w�6�-,�
�ؾ�e΢vI��嘤^�M>��̭d�4����8�oYJp�Y	`E
3�d�Uo�y�2���E��5��ܘ9ׂZ5�oy�@��W;|V"z�(��W������2�[5y������W&+���A�|�-�B�t�O��lH����ٯ�H3��֭���i�<N��u[x\��1Ll�ZK��F�h��\�Ė��w�%�ǐa�@�Ӛ���vY�����4�-�9SRSz|�߯EO�n�u!��K�i����\�?KCcN~e"�� ���`U�t�qԏ�'��oqҌt�
��L�t:���m|�z���A���$����~i��Y����]�}c�x����P/]��<������0K����#�U��C��Ä\�)N�2�y�t�<��qW%zѥ%��w[Ei�]���k���%إ���7�T�h7����:�{e�!<�)bƸ�oկ�6̙��[xvx����.�<$p�{+�Uo�"�9�4W8�yZjsqa����z��oU�y�&��Mi-�>	,��zP�~�z�q�_a�C�);����o�4�[Șd�:��#i=�MZ��{l��{֫{�w��
�DW��n�w�2G��o&i�Ðn�%θ��m��[����� 5��    RͿ�[�dx�*�m=��v0����g)_����}]
㗷���Ҵx�S����� L�^�A�� �Ѡ���r>�$bt�����Q�A��&cDqt��S�"�q����g���C-tW�s��c��;�e�kE	�����a��+"�W�jY�;L�4MAr����g��ה1�(ELЖԽ�Q�a���~�i��l��nv�'�I�?5"�8��;����^���x$��j{[H���Ml��6�-�M&~���F�VAw�|�sS��``�4������kIq@����]�eU�&o�eN��M�I۷��
�	��N�_�Nz����:Q�e�4�]]��T�_g&Ah�eh\��ԇ0��UM���R��e�h���k�����g~R��+�X���H���K8oHo�-K��e�j�;�q�/Կ����&�3+i�	Ӄ��Ag
��c���uK�r�����7����Wu�0���QS��ٽ�\�l
�2�i�"R�I�F���7����|gg�|��|Y:%�aK#�C��jz	�r1��V����)�t�7�D>s�	?���x��ds�*y$v��UMh�'�ۋ&�f�՞%�#⥳���[�J���hRP7�4���5f��=�v�T�-	�(-�����g��#<��\�����*t3�y"l��]k��3��h-��{�����]��NN��W���8fw�i8�� �������8��w	_��}�X���y���0{;���h��ObS�o��-�
�H4�v��Z�C�j^P���j����@so$}/�y���J��ĵ��j�Rrg�<���9f��˱��e��U$0i�����N�^�V�O~��V�z�v���6�LB����mjH#��4_z��!��G���T�h��(��V%o�81��أo�!�-KIRG�&�.�T���* f�p�ć�v�=[%��ʉҲ-����:=�[*sm���93K�<������"�U"W�":W%o
Ԝ��F�m.�g���s�ݏL������Կ��Q��5^���[D�%��١鬍ԃQ�8"��G��i5K��
������9޴�/�s'N���q���p��C+�x^��J�ƮV���F�~vž]�kwr���g���(zN
��]�H9��[�������w[�)�X�R��h<Pn����,T�O���Yn����6���'������Q��(K�n�	�\*�@�����n6�ŗ����dkn�?�N0Dup���J$�٤Z��+U�Y�f��-)�,E��Kwn!Xh�}�����`�;+N��`��Wr
��=�ݜ�L0�� �W��zGu��B��#��T�r��&�k$����jH;SL^�~��i�߲�w���ܲ�G�w��l��竡�;���L-L*B^f+u��(�p&��\��ҧY��S��f;m��oV��o"�R_m��N��/�����=0������i��M����Sf-9�A����kQJ�=;�}�_D�ϖSX��X��9�j�t��9�,�yJ	ο</\�dpV/�-uq\g���e;׈�|�#������8$��x&b`'m�5\�92������$Fϊ�)�Ť�h�XO�'����:��i-CΠ��h����&��F>�-1��.��(}17"�3}��Y2Vش[���ԋ�K�+C\��:`��(��B��K����U���{�3҄���4� �\�̄�t#z�#������5��R��˞�F���·��X����1�-R�N`��O=u�%�fg%� �ʽ���Gj}&.,S|VR:�Gh �p1�V]�c꫃���SuT��t���=6(��={9Ӎ=�~�275F�W�;���~-�IW��A�4�h¹��X���C�k�2��S<�=M}�����2���W��)R�it��^_�#��[
�Z/M��~���њ�Ͷq����v!op����o���]���W���L�o�+|H�b�mpA	����~rA�Mn��L ��?d0w�4�/v�r���ˌ,�J/B?)��]7�C0���Գ���ˣ�U�H�u1R�!�����^���Þi��%,�Ē���&L]��_���,���q�,��h����~���Aa��к�;����m3�{�)���C~�{�p̳?�
����+=y@���3�N�M�V��;�@��oP|���6%K�F�ۃ�R�W��~���Of���-_�
�����9t�����"L��C��~ͭ��2����K-��)�WE�Q�Js&��g���w����`	���R�.��ŷ���{O{�	I��y;�8�?���n��.�H����r����s�u)^��S��K\.����nE�ğ�e`?���)�]���E�[�oi��r�������ǻ��>���2[�>�IҘL�>�����x/Ϥ�u�T�����������GWUw��ؗ/�m��`h���w���nd#ƚswJ�f��2`���l#έ�|��=��8�#�����vȅ!	b4�/��t�
�/͗����5E�?��a����J�t�t���6O}X�t��i�����W���<T�~�'��8�cGu�q4�՗�j���n�,	��L�l�=���A��I�cX��=c�gvs�	<�����6�#��6�����D d���C�Q�<���!f���8�oM^�n���}��_$i�����T�WB<��u�D��ò��_k>��H��W����$�ߘj	��垏	CW��YU<�o��9�Y� ��G�~���q��}�#�9D(Q"d�c��_�~�7�Oe����ݍh%g!�+�Qnb����G{��OQX�v��ײ��m)�����B��+��%v}�9�
Z$q�͑i���^��lwfE��<�]�򛧸7����Q�q+�-o�����چ�븸���V��U��3�Wd��cZ�nz��jUqN��\66�/��7AR.$xTWS$�O*yH������/�yh3G6��~ۛ$�~�����xc?juB\3�"�^�I0�0;��4�������H�"h�Xn�r���2�:�p�W����;�lqӛ�l�k��iK�.U]jnذa�/��8X�:�emd3���+�����"��e�k�^�$͍_i/���Cl$m/�@>I���qj��?��+^#�a[5M�j�hj#�49��T�¬����j�7��θ��������'҆6Lo	�����j� �Q�ם��	i���D�������M�4����������n�zC0�Ū$+�*9L�\$��H�V4#!M�����hi�~���r#�	/O���DG���ڔ�-��7A��Kט3�F{g�6�Ee�@�/{ݖF�K�|~�n�+��F��||��u[��E�ހKJ]�b	n z�6U���Î�*~�Q���^t���O�m�z<� �a�K��˪��um��R�S��I1��7j$��O�A;Ut��{ħ`wJp6��z��y�7�7>i�K�1l��'%E{P��Q�.y�n'�e��"ld$���J�?.͹F���j���£Hr����,��FN/a3%7[hsp�U1��|"�����@��e��&ل���namu���;�W�+�� ���0��WW%3g4-���G��d�:��sP��+>��-zP% i�t4�����gO���iAl�����s�Ne�ʹ��F�z���]�Er/��`��yo*���߆�����+���$3g�H�&����2q�x`�S���r9#�]]�3���u~ZR��G�^pn���^���bюo�c�x��Uz'����C���6��\M��j�5fB��,.��GW�$�3�]t�&�>$
�`�|W��{_q!�C:�?������`c�g)��!�6���S^{�bp�>��g��/��{���W����Ƒ�	6����ڏM�΃���S�M��nӇϬ���U�lZ��*���J��R�b�����֩���	<�)1��������P4�{��=����8�R��y�c��p�G����&�M�K�����%��(��/4�)���ǄÓ��    9:���\54�Ln�&i3�+|8�+R�z�q'�@�eH�1�T}�G��ˤo����J��T?:��sWt�@ן|O�}xJ8ܣ
��7N[�1�?b3p���Y�UE;�ˎࣱ_��yq�4(���{�o�O�@���F�te��E�US>�8>�ݟ��h�4�qE�;D50��R�Q�f�#;��,�����w����#�#�ܸ�^�����5L�H��ƥ4�h� ��A��d��sW�V��v^��u�o�,���� ��K��[�Ⱥޮ�ox �b�)��O�8\����Y~�f��7Tn���~���b��Eox����EV�3�Ƽ�]��#����_��;��,]�Y~
Fn�6��E6���A�0�lIuҕHpg��	h@;��e�ګ (�e8[��n�Y�k"�H���s��$쥑��܈��0!TQ3�q��{��*����W��:�T^�34�������B|��QB�2�;v�&�1�l�ȅ�y�͜b�E�版���J��l{�K ow.K�RӸϪ�[ͳ�����Oq<���3Mxe�,��2���� r@�&�dc�J�����-ruѡbo��5\m	�`,� KQġ��L� (��������釲��UI\�}b�AH$M͖�榳�s�ݿ��Σm����>3�X���	;y;4��ޔE���ӊ����wu��E��Y5g�1ݥ ]�zdO1ঽM_��T��.�F���j�ʵG�[��6Sx]� ����L��^�����V�U�d��kp�br� l&n3{��.��y�<N��x�,�G���@�@H}&n3u�R�?KN��	l��+��E����u�D1F�㝻���"�d�ч�y�%�Ι���b��E����a��P�'U2�B��y����ƾ�B�����S�eZV�s=����A���@��[.�e֒�Œ�TQ3�^��d��'3��w�Nz���耊ާ���	'g�cc5�zן�mTw�e�IF���1�h�f�0��Obot�P*u���|�S5�FF�_��^ɉe���w���**�Z����DU\��-oG4���@[���eK�;�Ӧ�Gs&7���j`�ZǪ��������񐋮חM�"�e�ͱoIx�L��V%������@ ��BQ���Y���
��W�i�K^��k������S�sw==�V�w��0R��9u������ឋ6�4{DPs�Zo��z���/�߁�dE��r.�?�޸� s��cnb�ś��l"��4��*����K���t�%�q޶���o���c<^�D�2�k|�����t�Ɖ�������P}�;�+�D����41�<gJ}:�����w�uH����=z�T��dqzj�H� ����yM|+�����$�̝�	�DJ���W޾�f�����`�:��T�ѤP�ӟp����#? ^��૞���K�k�;#��[� g�����=$��a�%�]����"yM:��3�0�I�o��5����k���&�O̪ŪW��E�����7���rJ� ��-����R��G�@hhn���|1�Գ8�U:��a�0>ǟ����oY�?#案���o����V{7�9nh�7oQ��$;���v�6m%q�F�ТH�7��{c�ф4y��eH��C:�D
Vb7��@"�鍧� �*mŬuq��E��n�|&=���E�y�J�VGոС��`��n=`Jw
�TW�4�3���	@V����ti�$|
��|M&�(��Vhֵ7��U��(H[ 4Qf�Uiڋ���ԇ�dӬ`D���A(2�]���*OJ�(���l��붾�iӚ�U�.���n�� F��x�V򴺱C�>���L{�ao�C���XC�ҰW�cW\��Z�*v��ԡz��w�Q�7�{g���RpP������H��h��Bd��7���&�:��2�K���ox51x ��\��a�hb����*iK�JY��Ρ�{�ڻd�����I]��i�[o���X��]������*�9`�+��I�r�[��Z#p�n�I�£�[1i>�%7OY��v#�1���i��4�'�Оɠ{ii��G#V�3Uw]n3�8�لၜ�K�t��)0P�:H�ಇ�`������e|��+>ۖFߋS�d��W�!1�ơ�K&�J�m���HN[���;�I!��m��_�EX�!e�,�P�gށ�� �`��+��h �h
�jlVO��s)��_�]i��>���{�����V����(�����f6~,���W�8K4���s�v6���kl���\!�v�CO�g���x�T�PQ�L��:��C�jPtbh�?��Kɓ�r�������oLl��|�>�Km��^��'��I������ga��@�w.k��L��M����hdY/��kNm��5+�|���
i�p-�7����.�����,�fB�9�@�6�xP���4��Og�7O�r�k���,��e�kX���#���Z����g�	E����H��f�~�CBO�#�z]�s�a�ʴx����hbE��%j�3��0��n�k2$۞/�E���'ɈS�&_���Z� �l��n8a1�Gv���|Be"�v%_+�
�� �!�v�#D�@���p�<Q�u��MC�*��aC�dec+T�N�TU��d�$��O��wٛ:�-�Z��s�S�o�8M6%�,yS��Q����S�v���zQP7�HEZ)��pe=�&p_��8��K�,��f��Y)]�D�������Tykl��2v:�{�y���c\�ۊL�n�����;�j �z�Ȳ�ܾ$�{�J3��W�*Zn��x��56��쾲���á)�C�r^��/F�	����N:�>�G��7��Cvs�Z�Ae�N��������+�Rwv��<��	0��o95�ws߱o�h�Ʉd����� f�E��"�w��c��q�Wжt�vy�[xo�L�6������]�G����Ƈ% ���-��8�ۗ�
S������m_?��`E����L`�.�f�J}/^����2�i*���!
�� X���=Cr�
��T�k���&Yپ���=P-!����Q�Y���u�i6�X����o��/�@� |�_J`�y~�4��2�w�*Mf���N9F���<��$�Z�rD��ܮBT��?�������h[w{o@��Te�g�Ƈ��?m{���AGB�f�@�jhh�i����wi|�Dm��@��v�<���kB�ݪ��r�}��["���;�[)��0�GCK���~� �!�{�l�% �-6W.;M��gsZ��|N_�ht�퀯���7�a��`�+A�!2&ۡ�h�-pճ����y��o܄���X�����ko���������շ��mmJu��Hmo�p[��׉H�p�=Z3M���U�)Η�$V�N�Z�o��I��z�41�Ī���O[X�lq�Ʒ�c��ʆc_��Q{B�5����v|%�M�hA�=��?T�ab�ʌ�,y;s�I&, �K�$�4،����e�_L�+�i��5(˸`�9jZG���#��R6������Ky>AU�_ ˪��)��*0���v7�=~�0��Q���ƿ�.�����n��*u���բ��r>�Q����Wy�Dn�Z��x����	)={$��7��,2��W|r�ܯ��,4��U���4��0�vg{>��g��nNe� �h��j#����[|V��]/��V��L;��V\&�jدb�3��[����}�Eݷ�����N�<F�F{�_��NI74+�����d���ä���T�(Ps���v�U!�!nG%;uiS�Kz�­�$���u^��\4%�)�1v�u���բ�e\�T���l�AO[�o��.��^i�!	e,t�3�w�~���о7����*O����wc�+>��?6�;���'���'��&��{0߷�>����7�%|�m}�H,6%/�N'U�W��ޫ �?|KP��$����CZ�����a?�ޥc��㺙��    q�|ְ��t�h��(���`��Ҏ��0��%����*e<B� �iy��G�����1��f����U��j
�V0�6mvR��*ж��������i�K6��n�I��S|��ɘmc+~,Jn�C�
/zx������fbA��oG":S�o~�8����޾�ȷ����ī����)����Ġ��X���&¿�p&�E_���j�F��̇E��{M�cd��Kw��x���hM(���^�՜`S��r|+\bb���!&����7�ts.�yडk� 0�oۭs�K�-`�.�]?1�y1{Ē�؏�}n�{]sL��?��~�i�o���$�p�x.�y���Bz��~���I`:$��L�S3�Sk��
��}ץYĩ�ؔ�A'�f�0�+e�Vp�0̨��᪟,Z��>���8�L|�n�Nf�u�߭�i���"����nhN:��P� ��"��I�b��d51w��.B�f�=6��2{)A%���?��Ҽ+BȡC�Y�Kq;�M�f:�|�W%#�pw��:�?<�id�#�F�čNN0�����)J�I�^0���{���K���F�T`w�ɟ�f%�/�%��k��=��m�Un�gP=�3��m���<e���h�ς��k��_
���I�ُ6ڪ4e������L8�WT�*����u�iR90|u��KuNA"�G��gmR��zSҹ�<�['���oy��O�R��+xH�h]�P�Knb��0��F<�Q���[Tq�m��P���JN9Q�&���9 N
�UH������)���o�H�����B#�I���{k4��sG�H���Nz��r���S��� �� ^�sl�cQ���'�G}�e¤��f���=A�K`\{\�-�	g�p׭������3^�)�0b.�l��)N���XeC��J ;��䰕���(8w�Kz �3scN>��Սx]��T�#F��a/�Z�97��3��C��ؼb�_��r���Km���3����Ι��Cד�z�%	�f{Kxf궨�Z����o�юݢR���dg�c�=���#��|S.��1\�%'����6��m���ѓI�]���:��4�<��\U��,e�1�����F�
�'�=��N���ş�7^psRx��G"NUA��U�`;C�#��p�z�#GY�bU�����L��u� ί�W��#�9NA�Y	d
d���{�zG.�d}Q���**�ɺ^Y��`̙�Ν�F�d��s�4�8+�W�T�~d*��~�>k6w)�
Ɛ��	/����A-��j?��9��-�.������mr��"�L�E��@6w����2��	c�/�1���~jt9���N����yzvB7�Fϔ�U8�d8��<bE�H��v�<g�#~��n&Ӫ�<1���<a��p�W�MR�o�!ᬲ1���4��8.=�H^��y޶�T/�)!�$����y�Ez�xO��'�s/8��%��,�X�f��y�� ��6���]�!T��ɇ/���`6�Q/�h� 6,��;��*.��~31���^�w�8J��?�pG�>�[U�L�Ԅ�<�|�̓�g4݀�P�U�c(d�ʱ{���o���Bk0���}W�[�vS;����&��|P��B������3�!oW��v~X�59�f�Xs���ߪ����ªE�`/I���0�ǋ��y媴��W�p�m���l�L�(Ҫ�����u���U�^4��[��}����"P	T�oaUڀ�������xxj�8���N�I��Oϥ8C��עRR�!<��oU"����z���[�RK�B����_��.>i�~�Ri�{&���U�`Eo��/�J�e�q���a�4QC����v�����*�TF��A"A�.$�vȠ�E�;O{@t����֥�?N�4axDn~g����9��d��%~����v���&|�s�c��en��ޜ�'}�^ѯH��Z��w����x�]�A��oQ:{���j��3=���vW4����W�ƹ�����S�^0~ 9�[��E��a/���?����x�N8Ojo�Ko�w��F���KQ qn����T�iֿg�,~22�p�Q��yY�������� q��g���#"��1ş��^"��w������n��t�Ι3���a#u\��np}e:
/m�nFg���t��W<�7�A�����߲D�*�kX����$n\�������#|�~������'�OPR��MQ�7�ަ�q����ҝ�F3���4`��W&�����_n���+g�k��Ɯ������7$���oY�5Q-��(�?��gg��y6��F�oY���2�)�vB_�g^7�+��51��e?�~9�P�w�=���ؐV8���V���x�W�l��_vs}��n�e��"��Tʰ�ۇ�oY��p����d�X}U*�G�,.z�v��U�\ۂ�0 �"��W?��UE>7H�A����֫u��c�&U�e��3ܱ��wjU�:_�E�N�F��|���O9�ˉ+�\^����V��ɵ-:�׃��}�Y�fWrL�oٯ�p���
|�3��a�H���,q�o����8fDu����GH*�z�
��:P3%ۭ��B�? anC�*�l>�nqRp�޻4���t����$�ډe~˒�g��3��U� �(;U�C���T���4�e�p��$u2w���%�Dl��ۋVnA�mA���7�sƌ�o�;�kH:��c����z�3�4��Byt���� �1��l�ީ��48�#K�oY�7��*�������eY?�t	�����G�����p����|׳�f���ܬ�OB<�:4<���>,��k�hG;z¤�%۠h���?�I���-�������᫞��� Ui��n~Tb�l��HDs:Q��[��s�a0��3e���<��	�թ�@�G�}�І��+x(�'G-zc�n��ڕ-k�*Y�bg����lM�o��o��g�w�Cʨ���/��+��,��7mb�`��z�^�L�t��j��V�̴��TSr�z�
{�p����ٵr�k2��ݱ���3lA(�&��H�������,�o���g�R�j�|���.���z�4�AI����_L�Έp��Z�v�-9�i�?��������R�uq��^06�N���4U6��z����"B��Q߸�N���)����՟$�����.��E8���*���w��)PC�������K_�q���$��B{9�*F���d���u��-Tbp*D�˜�%|�^n{m��jPv���ַ�fȂ�)��%5/�G����mL�'��d��bl\�� ��ZF���AK�.<�Q���C�F��f���z��-y�,w����n�(1��VmR2�m~�
�1e�<@�������a�|+C��j��;������ |��̜/&��y�W���d
^;2lk���w���^��,��M�z�����oZe2Z5�9s(?*�%^����x��CkBE1P�OH�V���r!���(�\�:��Z;1�w���Qǻ�A1�w9�/���W}�C�`8�@��X�6��a.�]~�V S5�{��r�*��d�L/s[�~[�>n.J��P�A�+�q���ȏlMҢFB��;��EQ�EX:?,�_��uYs- |XW�3�&렉�`���e�=bjj�q��VM���hM[�m��3��M�u]��ʬ��(c��k�>�7k>�v!��vt7�*ނ;�ݏ���Qϰ�n�N툫G�T�Nu֟ݪ�;��#ߘQ�;��=�P�q���Q竁8�h��fO�K;�)���r�X2�V��z8���-=�
��=u�'Ǧ;.�	_��]&�*G
��'�=�M+�[
=y��w
��1�>J���[��M;0��=�J�Q��u�P�� LӢT�0˅�V��;w�u�7$6�&�T�v�BU�����]~&<��p�C���l��f�p��|���f�\��$��W5�R	ʶ��jtz��B{E�m���Ӓ���tn�,��oX��~��y�n��w��2����5����-K�C	�^�!�    G��_�yor* ����m~�͂�7L>�,����UN;�kT7�����w��kE�t�߈g��,^�:Sn/ʤ�A��$�Q��W�M��a41~�y����2�zw�G��#���2�2�q{�JDmv�-�W���K���ˈ޷f[+�bE�b8o���zC��B8�A>��}Ǿ5hAu&4�RE2�y;����P`sQ��o{{�ܨ���##��l���/����TA�d鬐�ƹ����Q�*m�[�Wx`��v�_&�{�Ϻ�9��ߪ�-�5U���./'��÷��&��|�0R�Lgӄ����l[5^��o�E�d���;�n�k���X��
t�}��{I�F����Q�7ZMG/�9��'�k����r<�pA�����t^:G��O�3�-y[���(��2�?�72�k'����շ��n����B1=Z2��iƌzѭAY��dĪ�𝛔������0���`����h5m>a`2#a֗�J��T���h�d�#�m�
o��\��>�r+q�$�[�����̂��6;V������]�h]���Xk�׶Xd�����m��)�w�l��B�_���t�h�m�Ov�sF��ߩA��
/F��h)Ũ�gz��Mb[��%��*G�����W��o�	�Eڴ��o�V��7	[p�6Q�t[��x���\m�n���Of^�Y��C=��Z�:���22���/o�:�x-At�6�Մ���.?-K��I�_}1�u	��t���T���v�[�oG
���Ϸj�ڇ.ɀ�[�[��/-|�u�>DM���w?�F2z ����6�#!T�=�yLٽ��v%��𫛜��&16cr�/��a�����^�E7	�s��9��0�OqO�ʟ��_n�����m��~���NUQ�Q,����n{' gL��H�E��m�w0��j"'�R�/�G���5�m�; �4��e1�m4{���L�wſ�a)��j��H��U��l\����K�;��&�eo|I�=��pm����/#Oı�Ӊ��f�%���y�#�����-� �H�]�yM�	L����h!R9[ȥF��%�c��D�]w��1��!IW��� ��+m('t>�)Ј|)�t3>�;��p$&�C��*�����;1є��Kn~�o�K�>�v�i�W@��Qp�_����>gŭ�`w��zW_7�^G0��/KI��<��PV�<o|���cF���D�ZN�sŝu�m���!�13U/CG[	�9z� M}�T��h�� A����D5���w �5��U�[�~�\j��o�~������5�����W�����h?[m>���&סz�[�.=����8Z���__[49W��>�n����r�J�(�O1qZ6���]aE�w��z��Wy����	�g#f����.Ꝫ�ε�6�I�pE�$rM%n��x�}Q��D�sI�{f��R�Q�Ar��jJ{J��e�]M�`����;{�Э@��?�C�9qn'=�ln-'RJY*�@��I�ʂwo.�-Z�vnA�G�{I���]o�)�����J�@ 1����b]F�>`��o<�z惎���E�P��R�H��iȹ���s��� ���=�Ӽ�7�}7�c��y+�a���`K��]S1ٟ��& ���Ka{��z���^����q43i�P{IM 
�V05���ײ� j����е�C[{/���(�?�K�����?	|�N2'O��=��<�����_D���׆�� _�H]LP{} A3��`"�d7>��<�2�8�gQ�;��W�(�wwQ�����0�]�f�"I��	�)�ͧ�j��\�UIrWE~f)��/9�O�E�cA�&GC�p��V�#P��1X�e� ��_;=�nQ�����;�2)Fu������d�f!��-���9K��ߙl.��T���b��t#�V:6H�rCƯ��6x���*y6�J���4f��!�G
,K��6���h0��v��3�U��x��~�G�F���?Oc+���>
�2��7J �������7�wƮ��c�A�$���tlqS���M�K���
�Xd����Wr:�ə�q����b��]����z�0��cJyGG`2�z�NT*]��-7��큗����
��*]��	�Ǯ�ϩ{J$[+R�Kx8v�A����t3#���kB�b��A3����4=����>$��O�a1f�/K��UV�D��#���i�Kw(��( �ؤ��K ��I/�6��\� �Z��8^~Ó�sm1�gNù�~��"�j��s�.�EO�V�T+R��e}�e)[��Y�[��
�h���ӷ˂����V��з�I~����������@���~��B�W����/M��))����� b�95���=����qM��w�-���O��p��%څ���9�����^�!�q�@�o�;�9�Nң��gŏ�� �[jX�U������P����d��cU��UŶ7;��G���%s��=I�B�$��5Ag����ʞ8��!�I��<�^@Y�9,r����V� @�@n�o��.{7��c'�O��j�+�5�PRM)��t�'��
	 �3�:LŇ�t�K��'uJ����;�G��_
t� _��Ɩp)�'��zE�hZ�J]�С	gܮK�jP���l�Ć���/q��=��kP܃ ��6�?�HF�i,qH��6�<��á���G�>�^ �+S�Z��'��=Y��w���G��ppt�1��{)9dNP���ݿ^LS� fj�=��=�!oJ�p�6=���E&~$vX�S�ua��3]���wEDX��!uQOGTo ���z��?=7�&A_����Bs�P�B���gV���}�AH`#�U����$����[�i|ZD��yy�];����;�ƈ��w�5j�Z�e����zpȾ�>��-Kן�Ѷ��<�bp�Gy%(K��)�]1F��Þ�T�ٹy1������a�Y�&t|d{g\�c{��Th�2v�+-2�f���)$g����M�Au�q /�(�pt�'��om����ٍ�_^�׿�w���ሁ����Q�Rgћt�-#E��1��:c��� A����̯�b��4��:��ڟ��'�n�A闭�m�Q����4�v6�G�y3v>?��:��Ep��p�@��_�h��-¦�������A��8��櫞��
%)g� ����C�\b��s̱G�wVr`x�t� ���/�0��K����?� %\&+=��S�G;�ib=
U�N�j�3G{ 7�!��f!�������T��w
\j7���+��~���D.�7�X��V����GR�n|�<{���H����v���H�Ίq��5jL��퀷Z L�y�f�bYr7_RJC���7GbA+�o)�f���m�f�3q�����R�)�C�%�ü���j�lb�� :yx��I�Wl��D�9��_�8p-�GU�p��~?o�Q�Z#�^�ʥu��P����|?�����0X�z5¼��~~��'-l�}$>�:�Gv���xY���x���c5e�k�Om��U�[h�c�Bq���./�)���2F��"WlF�8��u`,-G'	�B�HM0y��>��r\��l�0��aqd��@����������0&}%�'���Y�X���m�����7��8��C�Z�����3p���/��H
֨ERL��Wl�'.V��K�����G؜Q���D�JV,5���﫨�NR��*+
���hY�-��#U~X��	i����'c�!|N���1|i��* Y�9Ex	1��-K �d�����R��F�@�q �� �zP=��*o�m]9jIL�?LeD�R�g���T�>}d�=��~z�]�����.�&�27��Dv����@��E�E��I�=V:c�6��<�sYJX6�f2�ݱ���J����h�z�sg�v#��B$�U�k?"z�� ���Z襖(�c?�����L"�y������*��3/�����U���{��,\����(�&�C�b.��a����o���    XZ��	��WV�Q�$���"��l�l����x�y��QPSK����@�T8�u���� �1΃��uĒR�945�Tu3:T8粁���R���RK�%V%�C���v�k�x��;~���T�n��ƯOL��xn֎c�Y��A ��te߂�5�l�;����B���!ܸ4�&G�w�͑aF��B��/�i�yX�7b������2��@��FA�[q0ٝ Wу�
 Q{m��Y���Q��q��(���_V���bV�ܣ���G��"�3������k�w���޿���(��� �W����|����R��8Q8#`�?�&�I%S��kK���O��i��������w��\�U4 �;��S(��5�ܖ��$�h�k��j函�/���~r���_�)�*jg Ժ߷���"�:l$ؐ�o5�h�z��i�9�����c�&������l�0�rM�g���u��C�IK獥x_پo��/*�Q,��IB��\f�-���u� މ[ء�w�����kU���}����@��aw�;��0�������b��t��kw�k�Ҡ�p�ǚ���?���mߏ�/�2�.A��ƅP*_�� s�p,@�����G2�9 "H��=��D9��~(S9�~敢}�RƯ򱚆�l��ʍ7b�t< +�Z펀���i�[ 6��w�R8�TO���1�_�c�ݠS�T/���/�0����`��m����>�N��?7�d�a��>������F8�-	�����f	���70�1�i��G%�U���x��?�Y��l5<d��
��^Ի���|�;�#J�E���J~�S�^�|�k�?�HW��7rT�M�K~�b*�VrLb���D&3�O1�ݚ�����o\:}��Z���>-�P��AG}��ED�W�����|Z�x�.?������G�O���(^���� �4|TBvL{6�M��%䳆]�\.���=�SV$[B��@�!35^-Hr5�ъ��~i�%zї�3S�,�OM�>r$�y�����F�7���d^����=�BH��q�Sd>ء�_��֎�ji�moW��?����m�U�zB�Y��w$����^��}���_]]�����J]�Ԗ!����o���U�̠������a��1s�(�[���Lac���,��yߦ~�z��87Hav��*��{�4��s�/�ͤ0�T@�?�.�y���yLm!���4b ��࠰ş�<��g��~�r<���� �J%cA���JE+wř;&E���M���2�t�9�=��]t��*�����z�a 늀wq�|l��c�N���9[�+���=�O��Y��N������
b����C~�K�&ic�����~��̙���Q� �a���J5�z�f�3���3-�6�MT.�w��u������qJ��#Y���髜�NU��t��Dk�����I��+��c��'mB����#����8��e�X�|��"K��~6��������%{o�!M�|�?�o���3�T����/�������K2�y�}Kx:+�&4���,	{+���0�^\�/���/�tL���v�S[��*������&U2d�əy�K�|�Y��k�u"s�^7E+�}�)�H�b[�[?9��%�!w�̻EZ����z6\�}}���x�7~'5��ҽ`W��q[��b��q�u�6kz���c�>�B�H��o2���q���B�3�C�.���)Ц���h��N�j3��@�t(�1_��箫QґA�k�T0G�-�4L!��W�x�^�}���	����o@Wk;�B���^��-��=_�n}����$���V`<���V��^�c�7񨊾��ۧ��eM�g"S߾8����s�
�*p@�竒��B�C�ŉ�ƣb���5F۴��j���́�Yf�3���'�ÑiR�!�e�����XM0�}�ɿ1ɀ٥5�;�{���]r0���O������"��$�~�qk�/�d���>�}��}VH��Q������i�UC*C�����~Xq������N�`1���`G�Z�j�y�Z$.��,���eN���� �(*f�|��a�M�v�<s��Ny'�L������@�g�������՘w�LL#]��u����p����#f'dJ���~�w�{�sAs/�B���m=r)�ft
~�)��]���O���$ڃ?E
P���
A��)�^äC�h&>��W���
|��0�-��5��+���&鋑|Ο���#���Ӆ�M{�/��"���&s ���d�vE��4�Y�;��80_:L���s�ˏi�U�R���y�%��g%�I�Ò���>O(;ߨ���ո�Q��~%q`��0�����+��Τ�eb����Ɩ!�F��L�%\ҍ�dC��|��:5�O���Z�y��+�de��05��w�$�\gj'�蒭�@�殫th�����M_x�ǲ��{�z�';��I�Ј�I�Wt�kC��w�}���J�#MCb5>Nd.ؘ��
�2�^d42�XUs��W f�}Ĭ��~��`�3�&�+�����C�QgҒ�<�?�0���������v"mFB��58��=��*ɡљ��/����{Dl���'��xg��W�����!��e��<ʦ��Ec�1�������39ny��J9����s��#�W���V��r&�s9bdD܆1�i�+��&�����-��y��#�h����T.����=�/^�69a���n=�=��ZRy0�_�>#�U����y��E�L�`R0���K|��8�\Xl���Q2���s�J" ޒ�%���Lba������s��Oh�&EVN7��������=v𚯒��ac<�7!ݗ%�ې��轾��A+[@���*v������r(H���x��Ǒ'��R�I�߲Ľ�~�
;��)_����hf	�'ԛ��;���Y��F~H�hr��跫+7�*��%1UY��T.�MF��/�����w�]Ÿ�Pׇ�ҟ�W%���/�D������B#�� �����؀�gW'O~ؿ��%���P�����̩�l��n�t����*4��fW}ǯ�x0`���H���2WG�M����w���Am��nX��Acr���ۃf��q��w+��*K�/�3?��gQ�g$n�߾t�uӏV�M�`���<��m~�̝���?A�'�j��/�	1�71�V��J kxʔ%xeݾ7��N����J��eQ��� ��ӓ����aZh|Ň��u���mG"[ؐ�j��_NN�փ�3V�쩣�U�g�n�w�Y��K����x�W=�U�>ʩq u��}��B4l��{ɘ}�/
�a
�4:,w.K󗀷���[|^{�~�T�M"�$�5��OcF��Z������L��~�8*��c<��OFY�N�Kp@�F���ջ�x����w��8f*�MV�k�݇������Zr���o�Cӎ���k�uſE�K�$�s�Z$i�˒��X�������:";��޷S��Wզ�N���MA�c%��0�E0~#`T��%��J�m�#\������w���g���t�o�����W&�cS�^���s��nK�S�?*	���j0'���l����a����i츗�6��{	�5~�L���M��hn���#7�j���]�s�糍CH���=2��(�CPz���5z���(�YO��[Tq�2��_��@箪�!L�C5����kc���b+��Y�ۑ�k�B����w?zʐ)�� ����m��������d��FײW�����ӧ�:�C�6�C3>?�4�u�dRO�J�Ƭ:�Q�"I�Z� �,Ќ��C�W����%E�WL�]Y�{dpݘT��tq�������(��K�е��+����s#��N�� ��������A�+���k�v�yh��KeUI�?�E��-ڪF����<u�.W�T���D�!5���V�w%�3Ǌ]N�I?,� K�L��1P1[�K{�A>�Z�#�5��=/��0�.�7    됸��k�um��L(��yȿ��Qf��ӥ��X�11U��t~�7|�<�_`-%~%�+��������ű�:o����!�x㛙��$p���a�$��<� �at=^��� vZ��\U+�~I7�I#o�M�����|l�b�����˫�Kq��|�˩a�4w�
�k��|Xǁ�.}P�[	j��a�kwV�b�V'ދ�N���5�����-���9����^5��W�
�t��;�%w�dSq<�V1�q?�g��/��3�������e^W(��x5wM�3F��
W�ҭ-�ʾ��)���,�n�폆>�)���uD������~��,@t��FX�kbJ��#��2���w��/�֖<Eu;��rӊ�v�3�h��RƜ��-�x���;mŸ��D����<ྪ:��,k���z���Ǡ����/����J�(�'�[���j��~�����qĴp��oD| ����w>e���|Q�Q_��nt����Xe�e�,E
��,�9⦾/�0������J
$ɟ�P��� #؀�N1AF��.?;��P ��\�r���[��y/�Dy܉�,��-��ӻ;��;��������������4�4u���?��h�`��/J�ۢ��A?qԱ���_�1�vl׽w⋻�KO	����OR����=U?d��#�r>b���![�zx��i�ŹGB��K��aVUo{<�G@�9�Mz��{�Y����	d|͏�?:j�7���㕞�� ��w>���r9�,`K��M��έ/|�[e!2a�\�~����������q�n�;d|�SB3y]���ԑ�G���^l{{����)�AB��f/%N���8eh^��U?�3q+~�:Ҫ���7�H���B�֬<�,��;�9�w�@5�ؗ�<"|�p����mo�%����D�궄~.-&��ݕ�/�yʹ#���I��GE���_N[����p�58h�"cJa�g�L�%�fhI�I�{^�$g|�$j_��ig�������}�8�/��h���G&�g
�A���� �˙x?t��2uk�8�l'�+��8�_�Q)�x�'�u�u(������w���(��{E���z���ЙTz�}X��Ne>T9{H�6��s �u\x�FQξ�o�v�$(�s�����n �".|��NPT���p0���3������5��Dw` �ҮW����]g�8�)�e@O�Y�Z8Li?H�_�Y��"��Ͽ��
 ��l
7�`��	��������}�c�nF�'��-h���G#�ǿ.����~#0��M87�q�Q�@졍ӻ�I�۫*���nJ0ع	&�(f wJ?-E0ɈM�L�y5�kZI�%P�Qvb@��B�>ި����.����4Т�;����\��iU��)���d�B��� Oq�����.��=0���c�=8ˠ�@ 6D���� 3�R

!��ڽ�+-j��P"��G�<��fs>}����-��s��>�A�S����S�̓-���1�t�_����b��;�*��s)�+��Eŷ���㔟�	`�H0U��'�?�Ͼd�6�Y�a�|[��0�o�B����B�h�Ӂ����=9�mA�9"z����/��.�|#B�{�̣N����E�dװ��W�\�Ԕ��1�$�+�V���$�F�|���ȝ0ⅉo*���b����8Z,0�ͬ��sxـYJ|�o
CW%�G[b:���aNd��g����"9�Ma��*z� ��]�i�m�HX�dfp��)ܽ�)tC!E���>��! ����dp;���HD���_$�^8� tƯE�S�Ĥ�A����m�{���<�K��I�W$��������Mp��g6J����z�C!��7���T�p���� :#����A��:1��{�=#詧�:��F�U=�"]��=/'!�P�H���Ɛ玁�u@���ߧ���,��/�h$������!�D�XN�	��s��"Q�Qb��p�>==�C���l)N�O�lG��ys�;:�Q J�O����A}n�|�F�=�G�`���p�8>�mr5A���Ͽ�bX��φ�X���u�͑G	\�������IYm�iprF�X�c4Qޤ`�#��J����[Q"�'y@���*N�������kE���9��Mzd��(����p� {�c��'$�μ�=4�Z�X-*�EkL�p3S����]��U]�j�����Ơ��'����o�;h��]? L	��S��~d;������:�$��3�]E�5�[��d�T�Տ!p��^��e�"
zfl�c�������Q0_�/��RC�hs��rVf�0��
g�@��pu��V��Ka�@������)+��Ԟ��ܞ"�7�r�����};��Cv���O�v~��]{��'R���q��`�Ӹ�XoN�Y����,���`;`��z�4hH��d(�T'��D0�젋d�z�O[�+l(�?��6�&DS@��fLA�g�X���c��32=A�>�RÎ��֌�:+�3N I�z����O�@Ev-�HB�}�Á��1zi��8;�jeLr[g�lY�;�"[�����[p�*Ȩ�˞]�-ĲdB9u�"��ڟ��8�kլ9}A�s��L�U�n거�1�*�F``��W�7�RɾIb=�� �x����R ���d���n�zM�d\��O��=�Џ��sM�ΐ3�o{T4�_y�������n�A����-QJ�w�����6�#fjPdu�(;;��4k���W�����j����W&�}�49�Y)��������x�E��<�*��b�oQr!��("�6��ߪ$$7�h�����[�@h�wȏUm*ߪ�a*����q�^�[�8p��3��cF�[�~��y���ۜEqԷ�Q�����)����[�Ás�Q�o�����/�(�a�BB׷,�On�8�Ƞ�]��W��D�m�6r> ��Ϸ�ϴ�`ݾ"�N|���i4_�N��oQj|��m�q�\X~|���+�>`(
 ���J�/=3�~v����O�{;�������-�a�2$���&:x�����P`,6%Fn����?h��|��7��ǿ5�H���@����O��Z*������ki�X��R��-�?������7~�~����GD�ϟ�����3A���;˷Ᵹ��T���<n:[��'D��\�1�������V�MjC���n������C�-�5�AlN����&�3QЫ�	E"�*d�[�6FWpB�2��o�à�@.J|��=ߪd�7�6���t�V%���
�?ܼ,k���Z�RG����@~�N����J�|O~���F@����3`g��mo��ߪ�<Of�U�服������	��ۇ�l=֫����O��Er�w�\��6���'�$+p7p����F��*�j<�W���]�_��!<��T�)G	f�l�e�z����B���� $yi�4y�p�c�����wr_����+r{��yG�����������ไj��h�-K�{U�bX�O�uv�I,��!Ֆ!'R�,����K��H�[? ��s|��|ys���,E�,E�*1Ppe���a~�|�-M}��[����	%� ��,�?��Z�dq²tc�]�h/�i�|��o"^T��7J|U��u��T�-K"���^;��	߲������V{L�aߪ�?1�AbL�o���ոUΟ�IF��4V2�<��z��ߪ�A�mO�)0Aޞ߲WQ��;�(6�^���j �&��=���z�[%Z`��9Z�쁟|KHu�L}��z���up��ߪ�x�)�htOjmfW S�×i�����fj���o,�9��;ޒi�Ź?]��^𑱞�h�}�Z�B��%�I�ͭ���p�����yq�V�g���9�f/ڂr��}���)�%NU��f��o���*�M^�6��C������7f>�p�8�d���<�.�wFB��,�?��ߨ��O�,��T�J�4��K��o��}X���S    '�c����Z�I-���l�E���P��΁��*���1��tB��*�����u,2�x���{��!���T\U���c�ow�1J�g}.kS��)Sy�߲���!*Se]��^�j��B!_���>|Qr��Jea��c���W�� -��.J�[�B ;�v����4�HweZ#|��e�~��	�f#@ �ߢg=�ɚ����?���v����l�t�����v�Y(~�K���W�ڇӱ2Yy7\�	���0]�M�e�|��>����*Vo�;C��ø)2�[��9_`�x@�l��qQ�ޑoZ�CL��$�[�wh-�I8vw���f�sҺb���C�U	r����ʟ�N,�jM���%.+�[��0�6�E2H{D?X��s������7|^��`�-�c�A
�1����.���s���މ�R��{Ȝ����� n�zݜ%W?T^��=@z����cr�-u]8�z���:K�$��\� %��F�.�3Q���O����+�~k�*+X���EK��D�n�8�8���m/1���Ji���z�����.��e�oܝ�9��a �_�QU�Ԭ�%�\���x�����#"�5��~��aL�g1�������U�y̶�8�Ⱦ��^&�=:/���7��5�Z�
��:~�~Üj�� j�6�#
`��+�T�VS�q�Qh�~�\M�gI�1�mk�`5M}I�eyD�^� ��=�_QɅɊ^'���:��E
s��������;�m���y*b��r�B�]�'�6Y�[��/,��%IWZ
��q7�]��Y߲��;���A�%1��6�s��E���З;C��_)t��jo���He�7��J�4���91ڔ\�[�8?;2+CG_��f���O^�`Ic��䭴��0��1H�j�����C
����[9�sD��ϓ��M�+߲�qf͐j�7|U}�{���х:�e��|��e�[�`��?r���]��s�)����߭B�-6|�<�%�t����%/�o�/�0�l��oFϐoճ|�}z��~S�U���&� ���4'�z�+4p�WշQ�U)��L&LFǡ���~���L��d ����
�|t������u=ęo��Y4>>4��g:&c}$����h4z55����!1�-��|[���t������\����Cgzz�vZ���-{��4k�J"�����F�W�)|��1���j���D�{�{��1�Ye�#�pr+��݁oE"���N�C����i��`/H�g#N_�w�=/�jw�Rh�ի�풡�y�[ƌ���I:!M���ʹ�՝�C��1��;^r��ptj��x�����z.�r���_�Q�$ԓ\ΐ v@���@�}61�:��w��U����wL�®��y<�x���vO���	�b�ڊV�ʟ��^���]�vⴿ�ޭV�T��mȑ+��3k��r�K	WS]�_�]eg����v��k}��[�D�������3�R�p����c:��������/L�Ô���������M��{��X�\)��4�j��5�J�g��WqҸ��&5^p�Ӯe�\�	?3���@��.ѹE���<L:(�xV�乕r<��\��nWcI"r�{��>����ؗ��.J�C���jf���s��ިQy&U|�s]k��*;�((q�U��[���j�I��Tݦ��.�0��ܢ� �]�o�.���R����w�t3��ㅝ6�n�;#ˢi���-$B�O�m���;BI����L���	1��m`�~�r�Is�����zL�zi>]Goߢ�4�e�N:M��$����:A������U��eo�"��]� xX�O�%'���l�d�����}���I$�_u�{.�y���|����]cW�f�џz��+~��n�?�,9v� ���3Z�}���L���~�Q?��J[=^'a��������$VH(~��]�s�6IH��[ѯ�� �g�w���n�}�5v+�me�|�R�sIHg<e��J���݃�&3�ຨ����Wa��P`rD�A�ݶ��3�zA��Hi�퍛I�e�Lw,Ņ��^��@���ŵ��7�Ԑx��Q4�$�e{�M�6��^��_�[�W
Ow�����7�"H���:��yqQz����L{�|�S��=�Nh��ç��쁞$�a��B|Z<?I�K����o�5���=�6�N(tˉ�(v[��� ���U�Z����l�۩D�oQ"���q�qP`6������,�2,��Z$ϥ�{Y5X���Ò�e���K�TY�o�W0̉��^7����+�[���UO �d�L�5�t;�;�����8ow/@
�����8jP��t���^�sD����~���#$�e��W����]�G�n�Q���X��Y'���-<Jh�����`Yj~e_&�5�3Q��;��}��E�^��T�f�3�u���b�L�I�@���(j�����잙pe����T$6�-���B%8<��~�/�y����+X��z�)5���j�_r<�)�H�k � ��a��7�<���ԧ��&,�s����z���B��m��ӎ"��x��%�g�R��-��8-KJ���"� �|уXI�s�i��vƷ�m�#[`��z?̍����)��������>���4Z��t�nI���;_�v�T������+�������k-8�n��=%�ݣK]|�c�e	���J�ûu���ߪ�����0F����y�'Qn�;�?��Ǉ줓�Ɖ8E蠷k��'U�;��4Fw��X��Vk�_,}�'��K^τ��P`���=_O<g�84�O�?s'��\#��2���Qki`�˻���<t����潔��Øq`�t����z��;�Z�K�|�,�;{�M�����5v$l���]=���ܗEF1���}�$O$���ď)$���7fpq }����3��������Y߸�Ԑ!�#��cU��J���0�G�b��o��=@>$bj]�v��+�%��1��^�/w���LԊ�W��/�R܅H>��\��7|ߑ�*CS����@O6ȅ�D��&�_�+�>d�`�FtX���n��zQ��8�,M�z{?-e�T�䀁 ����?#���	L���^�s��-#��L�K�b��o.:*�q�&�i=|9�h�^��'��'�/ɍ��,4u4.[?oSSg�ߟ��>܌��ԧe5����0�7>B~�*��ǉr��x� c{��r�#��s���-��9V�X-Ţ���>���dw�d����d]EY���������.�p��O�:B.f8��,Q��u�Z!`�اJ���?4)�k��W�*��⇽��;�M���Ar����ڍ��)�w��7�7Jg'M����q��pb;�����$x�%}�@4T)7�T�a��F���kF��qw����x����߲d�2��Ȱ�	��}��mi�m'8}7�H(�.���;��j·G�^��З��0���W�(z��b��HUBx�Ѹ,����lr2�*��x�C�-��sZ2���2�qG%�&��a���j�R��pz�Bc�W���]�R��J�*�a�U�ou=ݡ+�~�<���l��֐�˝�W�)S_� !�ܳ�s"8�~+A+�I�ȡ���B�j�
}wL�v�޿�E�)�����g�s�����!M�=��?X�lP �MS2׼�/=����ԧ~� ���~	D�E���T����0��S�Z�ӍZB��m�4�B"X7aR�����C����ݫTA���sa\�Nj�a���C�L[f09������k$"�p���~�0�d���i}=��oۊ����y�&�oYg�H�Qc�ݓ�a`6�S���E�obrgkRO�q�+O#��jBĸAe��8������e��<�!C�;#���6�3p�"��{�-��;�=�S�Mg����5�_&�^�lM9{J�-�m�Yt��UI�;��'4���~�zn~������'�qX�2I��u]����ܾS���c��I�ܥ�|r�بM� ���i�ЛCCq�{�x)�6���z���V�����R��c2����&�H�#ߩ̳6�
r�F�t�砣�    ��z�\��U	��孄���=;=�Je����*y�o���#�,YU���߃=n�;D�o�C�|����v��x����"�h��s�;�R�����J^�UN�4&�^����:�#��F�����^J�<P�魄~���p��
Q0��x�F�=}}�G�,7	�`�W��/�dH��@�ʼ�q;�(
�����ue�7n|��b�+��������@Jhq�8��^�$����R�+�Y>�%��ɲ�X���ŷd��wFT=�HH��y3R�Ki��{O:��|�^飙�?�i�i#�<s#3��p��rԷ����au���5}F�ֽl�@~z{#G�n�[���G{���z�9����J��_eyO����"��_�g�>��N�	���J�t%�ч�ʠq��A��1{�(���w�����������!�]��L��M:��ea�O�]�ݑ���.�s^!���u1��FO�ϐ�$P`�@5l�������|OK�p{$��v��pJ�<����X��4��۷�zI��0\-S����8�^���wU����0k��_�YB���ۏ	�������GN_*@�{P29��},� ��X���R�̟|>f#�C�Y���,Y�#�|y�;	d���-�\�dFR�5J-{����1'�;�bꊍ�*O�K!�Rqċ>R�?į�0�7��o]��"���>�6�-��mz/�����Jd���\�-Zb�*ۂ�FR�2WL`�q�~M�z�Ʒ)�����r���q���&G*'V�wF�[��,|��X��������0�\h�2_��%�3��<4X9k��t�1��M�����ކ�[ o�[�i�l&m��7|�`�����<Ɔ�ዲm�U�����z����L�������t/i�s����;�� R�Ob�r�|��vw��9��x�oգ��=���,{i7H�/���H�mo����e�Gg�u��G��-��H�(A�)�W�3���������g�yHI:�1�K{�/�/�:��|�ۂ���E_o8O���?3��@(�Mq*�[�F�8v�����c%�!� �=��^5�+�?5����~���9��\��]�z����sی�T�O��R��gj,�ܩR��4�y{/2�9&�3��,�e�]�%��u��k]wu�@�#S�-���H�3$�Y�H[2.��o�U���B!�ܲ �6����A����������A���qG�K��U���nQ�y.A6=
���w��"�؂p��St�s���&�v�W 1��EI���C%��}�^J�gP�H��o*g�&n��f~ظ��)n������w�_�<��#0�؍4�X��N~#��#E�[G.V��gDI��B�3����H�0���+�E�Qg����<䍛��lޑ�d�j-�|[�T˘֙�2|����wECY$ScU��E>X�9�|_����+4ËNRch�j���b�v���T�X�B�L�n/.�<h�<���N�Y�Xwu��/�9t��&�] ӍVV~'d�1�6�t�e���¶JH5�Tv9��?����%�
K}/�-�6����m�	�ߏrB��"sg��}�*+&h�*V�k?�̈�:_�h���m o����&l���)ͅ$�= |��d���+�X��"Y"<�ؽ�M�"�X����y��i�`��;�ݑJ4nI	��������ӎxz|����R�/#�*F<x0�#'������X]V4�|C�[#9�8>��>Ặt�KHɿw�m�+����
w���Vj-��Sd���y�*-��e���V �1���6�W�&�O�e����^������{y��#�C�F���;O����n�U���f���t�t�[ؤ`nU�qo�.ݞ%��`4X����:M���Vn����D��m�W��;as0 |������o�Tg�wa3�7=5���bg߼6=٩�e�O�BD�w�'|��̷˳�0������wȟ������x&���e��%�~�.�'����T��as�<�+K�Vʚ�:�+��8(��wf��W����g���TI
)=X�2�o��Hf��7>�Q$P���������7�)����]j
Űdpu��E�I�f��9��Kѫ���?���Oj���J���f\K3����6w*��ǻ�U��N�h��5K'@Ө��Ɣ�w�
}�88e� �X"<�i�@E=�i$�/�@[b�z�}����ܕxe����Ά-}9c�pJ���Y�^��`b/���!�:_SܨӮ�Ɯ���i3��{�vY�/:w���.j���r��BX2v��j�29����ĦX�`�17��K�1�'eh���H�Μ��v][1�{�Q��[�yv������6n�����!{���jf�|n�/I��o�c�f�}���V���N��B�i+�f-�Q�n+]����@��s��W���C��mq�o���ۡϩ΅�]��b\DB5���p[g!�H�1
����c�&���`Abwu,Kު��ޫ�Ph����H0Քd�.�� �S���ʍ�w~X��� �i��aQ��Dx(��E�w�cճV���Cy�ڨsM�T(�sf=�1�E-3�kPxz�Վ�����,Ubݺ�,w�({��1�$���=�0�w6�!fb����/[̌uzl�������N	�����=D1�X)���ι���i�P��NTg�A\���q�BC�5
ڌ���
���S��\�$Β
J���qn��R���-)�~��(6S����)[ �Ox͛�"Ӆ8=�A��$6�a�<.H��,V��*x���t) <�+�)�k;|oo�k;C쫨`y�lD\p��I�xd�&ʳ8��֙tXScWtOw�	���P�Eq+�����s��ց�� �%�Y_��.�f��9�Xx������O�@��u���I�֔��mY�����x�[7Ւ��LS_ah� X�O�su֟����^"]ęr��w)�w̬ќ���\�ˊ��E�a2�R]���%C�^拏.&�1�cK{�~���)�b�͖*Ϧ�,�"�7V�����i�Q.I0�fK/ [�s��E�9�;(V3�S:凜����#�LR��$%�m�w�a��qvF=���Q���-s����]�9�����03�:3��#�Tm&��ojKV�w/��˒�j��;����e����ΰG8���A���Qlt���Pk޶w�g��BxB��y���ʭ��	�[m*�g�|�o���НLת����@�U����?&��y��U�?R��j����#_{��&��-3���m?4_�h�1sk�3����n"~;��c���.�xK�.������pT@C�h��T��V�2/��C���k��o������I���S�� �E����Kro��~+�^����jhHz����{���VKf�C�q�� |X�VNF8�:�%A�3e���mM!�FK��e��ӑP>R^��˒�3��FK�C�>^���NU^��N:�������	F��괴�4M.�]�]��t=$S�҉U�dp%ݛ������Pn���Cm3��rURz�4A��w��خӬ��[�"1{��Ga&�+�iRM;+)�3��m��e�����e;/.	���[=/�y��4l��`Ԉ/LJ#vz����0��w�KU��nP��4O��й�ܵ��9�μG+�=M��{<��vY31�e�������ϕ*�.�~D�Ȓ�Ǽm�����㡅	�s����kr��A��W$����5��Z�@��z����^?�.s�X����G`�'n�7a���g�U������m�g��<#8}�	������y=l#s�w��N���<RI�x�JD�v'��W�bѯ�*\�@��^u����<|z:�!)�u�g���|Yy>T�+R�#�L��zE�"�9���3�:�AKy����e��$fKo.<?k+O���Z�Ŷ����^a�;S��8a�J�]��4�%�&az���Svǽ�#e0���o��4����z�3������1��@pd��<��g�t� j4��&��S}䁮ġy����v��wn�ho�4�����O�>#�"�6�7��1��0u�U� �  ��(����&'�6��G��� �*Wyc/�8W2�1�+d���^S��J+'1�e��W	VR��X&l��;z{��|P��lc�OL2G�rW�
S��DZ)ψƪ~�%�	��Է�(��p��ߡQn��a�����,�]�[uj.�x��Wj�6���pݮwD&}��b�� �R��Te2u��AX�K�?�u*��o]������{G𖠚u��Ml?!� �yG�''�:�T5!��MvJ+E�R��zdt9�M��T�����k�����B�a0������x8��[�Y�j,W�RĘQ��¡�(�:?�#g�.��۽�v��ȧ��8=�V{�&4v H����ެEc�q��g|V��n1��{{���few+��Z!Nc=��v�-�&2�z��]�݁65<��p�a6O�uE�[�x)�A� �곕ǽ]Vư�C�3bW�m��\���^As[=�>]���n�:ի����/eK� ۭ���	�����V��p^)̈^���ݍ���\Y�"��{y��6�,�K�3T��+�|��(��9���5��߄���ݠ��ïLD��e)����g{�|�w����^ ��K��4x*�E�}o��&���n�<�S�����@�g%���)l]Y���momq>o�Ӿ�d.1Ŗ���[�C»K$��~w �울���ƪ��4��R��6���,]~Z�Ҝ��<RƗ�^�O��p`�u�sqi�-�ì�Il����5L���h�����:�N�C���Z�N<g��P��)��doH��Ʊ�kw�z�uI�+��-�������{M�-��w�
�����G�Vak?�x�+�{[��**�(�̭���`-7b�t@�Wu�M����
�]~e"�,�]KP`��4S�o�_�O�_xQ��U�k~��#ZP$l�����C��]n�Dq&��ĉ�>�j��~�V�R}�Y�^�E�F%��
�����/怑p����J���+�<@�[�uV[���F�r����<�oӻ�Q:jb��:E���^٩�c�iy;�M�/��yk�|$ٸDӵ�7�),r!O��
��;�-�U8_ ?���Z)÷��"o����,�9�P&d�5V�t�o�B����;�����s3�l�f���]���~��P�A�D���4r�Q����Z�Ķ_����W��*�&k�q{E�H��Rn*���?]�g�N��'�r��[�5yJi����~.]1���^��2B	�C���I{��kԎV��� O��.��}|�Nz��'��D7S;�Y�b��ٓۏk4���O��Y��c�5�Q�<Ƞ݉ᬲ����O%Wg.�=x�HA�����#Ҿ�^Ӷ�a��F��b���I/<'>�W���R!e�s�/��H�G��b#�.w�yQ�z�%=�|uO�n�'"z�����f�~W�y5'�{`ōg'�3Y>E^����1��AŖd�%m�I���_4���z��n;u�څKH���ʄv�H�H��]�s�5����$ �ϧH&�S�/��	5I�|
���dp{�#,ׅ������sa%�/Q�]����W�������<ŸF%=z��Ui��u����Oli���ˡ�Z�x�Bf_~s��`ds������7��v{�5��B%u�Oɝv{H��:6�A]]��=�M��X���YR���|�6]}�y��8��r��A�r�3"/8���v�ԧ^y˦�R��+�m��7I!F�\�;d�#���f�Dx�5���A��{����S�C�Q��Ǎ��==�E}s����ն|�v���ֲl�!"�u����Ϋ�e�Uv�ְCo���n<��ք�1꿩�����'���gN�	d6� �j3�;��w�ʄ��T���� 	�0���V�f�^�-�J>�%�q���u�r�7�"-�U�'�[��F}�F�/eAn5>e����w�y� Δa�����ى�,71��i�	�R�C0����*�#ZXE�v�6Ӟ�\��W���u�<��8�"g�ٷ٭e�����i'f3�)\��dE��r�#�<rK��u]�D��K7(��/��>��X5x�"�������y��-R��S�L`S�&EV�L��x����Kv*��x��wЂ-�"���F�;�z)<0	q��D8ƾ�^�(���@�K$���b�
�x������&���Z܉�L;�u5�h���UK������n�;��rӦ+�v�vɥ�J�����\
�T���t�pm'k͹��y�8�Z���1���>ԆJu����;������A��O��X��v�����H�\W�Z��N}��^�&N���m{���p����D ��������O�O��^B��6gJ`�9޷�=��vEڰ@⎐i�4���.䯮��� %�4QP�2�_����e=xQ�h�П��V;�'�"��m���@��`*�Oh-��$W��U>�d������HxQ=���?��Q#Uq�0���O�@Q�c2�G�D����h�]���fw���.�%.�g��꼬'ant�3������}��-�����Vmz����/Qf�'��z�Yc,VhwpƉ��7��������ǫɯ|�.:�0y�o
����;走.��w=~0qʫ�H�Fi�Tʎ𔄸5���Y?`���;��.A⵹c����ߪ'�bV��X�\}� ����El�NJ�aI(����Y���H�j��p,.{Y"�ʣP�E�/���_�U"H��S7��ַ��3��_uҒO����h��Ya}g�}	�8��`g��o�$u����9�0�;i��4����T�b���<EΩ�[����Z䦺��p����Ԅ9��|����i�<���S`���w���a�Z$<6��߲�;�9�������H����M?�Ѱ�/�$�*��2i��|��JL�H��y�|��������g2�M�m�c�Vq�I%�~3��?DjӠ�;$�����!F6
'�=ğ<�F����~�_=��$$D��?��Ls�Y����K�Vȏ��zE�Ig��i'6͡O^~J�qvi�����S��~UU�I$g��SA�nc,�s[��k����MAu�U	�� �Ɓ{0KO��	'En�3�>';:CoeFT�{Ҽ� 2r�kH�Tα�x����R=���}�I�^Z�@�o��(	|)���\��pR�� ?S�Qg���x;��|e�`z]��?W�;����3�l��bKwFڃbmaY�KLg�W��8+qЏ��I�VH��i�5�mǱwЗ�>���'3���es�)A �,�����w�k�T6��Dv����`9 �Mpt1n|��4X}�Q�T3R��"����QP�)��w�T��dZ��f��P u�0���s��C��
ƣsqt�/MmXT���{�<���%�Dx�֒k�����0��b?���mE�A����QT�F�HF�d�x���;��k@�H�1O����U��{����1%h�įk���xc��5��p�1D.��gכ�}|f*C������΢�;G�6�(���pw���R���F~�g���z�0ݼm�	?0-�A�:$�����;��1Y[��(qׁ76��_�s&P�̍V��<��;��ݡ��su�]���μ��o����	+�0W�t�\����: ǃ�be��;NL�h�?�^%/����7a�qe:ᛰǹ�VU$��X�U���,�}�"70�s�^���_�p���F�|x������t��ƾ(	}��Dy#��x�~E�8�E������ٿD�Ҭ������8lr����{ 3U�'i})��Ve-�W�K�r�z�`=ұ}��2�}��Oj2$C&J�˒��T�9������9 ��t�ͭ�m�m�� "��0wc ϹM0U��-���#j��������>+W=��\G��A����I�?ʛу��q�,��[�cȀ�e\����������      X   v   x�M�M�0Dϻ?f�~asV�*��K�"�؈���7��qo���Z�m�����yK( ��w<�9���n����u��I4���l1��ҪR���GI�N�݌����D��B 'f      Y   �   x�5��� ߦ��0�^��:n-r�#��rl�h˜�mZ0�?H�����y	$�;f��u�!_�4���ܔ^�����c�._�5T�TX*�S��
�$]��pP�.�~����^�U�U�E���;�Uh\{W�ҿ���K"&,      c   �  x�5�I��8��a:�	�]����L��!Y�((�x�����Y�z��~b��<��7���7����>��z�9������9g�c��z�w�g�w���zG<y�˧����=�y����|�x"hM:�;�s��~��y�fЉ���;���{��c��Ag�����]�Z������Y�U��}�m���������=ϻg��f��`���F��'N��+�Xd0����=߳8�}�3��=����`t?���4#Y���2�V�A��ب���:b>+��D�7���q��f��	����Z#�'��@Qo�'�%'��������4�oƳx��'y��y֬'��~���K��^�6⽜[��^��H�����|����&�{��[,��-�xc;<�@��T�_��������a켬O���U��i4�o<�����mO�~��]}��a<G_>�A~\p�zvҏ�v10����wq�n�Ă׹H��+���3.@=�<0�t"���H��;���y���S�C?�`�)H0��������q�4��KsN�:�ǁaߡ�Y�ޛm��9�g<~Ƣ�u�dy�{�m��v��l,�4|Q�հ�~�E���3�߱s�o`��,=�m���u�y
�X�(�qyj�����*�4,><th%��揂�.Jc�����C�·`y�~�&��6�C���������W�����܎㸪| �>�U�	s����� ��ۀ��Ӄ���8�f9�=x������� wϺ@▮SAK0��n�N��
/X�k?��qy��:]�H��Ǚ #�Vd��~�Q���G;�)4t�@#�"�m�
��[�@C��k/%���i c�?��E�����p�h.����M��~\,���8���F��,�,����d'�ة��:fp�k{wt�O`�t��z C[� ����^�U�Ezfp�M�����n
.��S߿Y|��J\�'�F.pQ<�<:�WǤyv�g���Cpq{<��s��bMCw�~��~!jQ\/+t*(o0��ѭOp��=S\h��V���\�.�����,P������a��y� � �J�Sa��w0��\\P;����;��5Jh����j����Ŗ�*�c��;^@�>�8=N'�:e��pZ�Y�B���J,�GY�"��uRPp�-���r}>.�\��8J��.���Bg�������1���m���F��[�����~��Q����-Y`���"w�!��Yf���'<���q�v����y0X`ȑ�Ek�$,#.x�e��g.p��Y�����G$Ȁ,,�a�\@#�����<��t>��ml����c<�X�#4�g@��w.z � ��z�����W�q@�e@�I�v�,	vE�i��<�����㱤J��7�#1N�2����˘������`c����y �?�Ϩ���6��ɜ�l@��W!��z�azz�������ԥOf�n�@��"t���Q�mD&�h|ޖ�jy�%���5�\����'���o7� c�4�~H��)�O�ٮv7�L �Fo��k۳�ϭ�!U�[�`jی@�0FH�J�pd���μ�O��ZM�J��H��6��rx5I X`��7=����n����a��i߻FN�yY��m�l��"�'�0�l����֐z�đm��epa���{yl#�2�0e8Jp�1�R��.��\��lq�:';�np����bzy����BXA}ۨ��wǂ?���������"�\�mM"���۝���մ|�N�j�T��P��R������`@�9;�Xhs%z��Zb���Z��M�XT��?��M-<�=Й�w`1]����3��ꡭ��5�c�2SQV�t����`��ɤ�{��:sL�Ȥ��TO��)Cu� ��ds�k�	GM��4�y�J��Ӹ<F�F�����x=S��V�޶�ct?����AҀc�l2i����N1��Y�X�J�]G�3s�qN#u@�9�ÇℎȰ�Mn���r��� �d�40�~[��� �ٻtL2<�I�Mns��<-��Ho�hGw��i���~:�>���Q�=EE�ojo?��h����Q^\̦��ha��pL�D�0/�rxf��!�0֜������C%m����gW)�Wf3�c�����>�� GPhfͣ8��K!wǌs��Z��� ����í�dx'̎u$R$y��B���[WT�4EDr�<�;C�8�0������v\Z
V	Aq�����v|�4'����AA��z�U�,�:%o�-�0�����u�T=����g?@��J"-c�4��mvf��r<2���a�Ab&�o��	�����4��U,(a$aE	� ��g�2�E���� VH�:�
3o�%̼�����t_so�ۧa��y^��TR���R�p�=�2�����Fc8�t"L1�m9<j/�m�G���p>и^�)���&�`4��"���&�L�`t���d����)ut�mKv~�v��i�`u�De57� �x۞m�!��2�t��0v�)��F��Q\y���'J��n������ࢴؒ�؎&���L �Q�:3�O�8K�QXl�`�~~�g?�Y��$����vv�J�1{�/=��n�&�<4�io�q��2��r���AB|�������˦�יV�`(i��ACrڭ�*x4�}�}�U�weu���(�k����l+�/�%�`��({��U+,E+ yZk�K�����Oc�b5+ν;�e�(�c(�����ܿT*M.�E)(�̼�5:Z�o����w[�4���$Q���B-�(1<\"i*v�>�"�B:���$�����{4�OIˇ�G�K`�i=
��9:*%�(���(��֗��v�r�����T��_h\t��Z �\��)_VHq���B����4��� �:-Hi!5 Y�/0�83o���9<:����J�ڏ����`|�߯�k��pM/��Y����}2;5�&�e��:2\R���Z�k�?�r�(���w��ƀ��0��W�����tW�,�e��Y�me��]�[@b�ƅ�n��g�߽�(��Z�u��������?M!��(����m�W`t�ڱ�i�g�h���Ӳ�"���e\9Բ;���������յ�0��׬�j������@z�F��C��.�]i�ۜ_%�J�`D��.��Uͯ����5���T�x�]+�ׂ��dR��kv@�Y7)�^���T�.�]��o�?�}�������0�? ~�
E&��u�k��a��֤��r-��tޖQf�G����n(��ʊ��Fg�פ[�Fi�eb���b)G{�2�`�2X�n�U���Y��Fz�Y ��F�oY�����ӀWR(� ��2�H��e;�@e%j!��U�os+e���g��Jŭ��(�["��G��(�Ł�fY5�+R�2(��p��H����&R�Wx+1�)�}�o{��D�&�$�ߕ�p[nOk���۸�8���?$&&FX���X�<L+ȶg���ɺ��_Zeƍ����ߟ�����\��J^��(Be��I��rhɡlJRX&����
3��-���/�h�\iI����X?��"-�$Qa��p�%�R�N�Q�`��`e%J=$Q�k]�)����,gr��%=���XY�RI�jI����R����L.���8�����T]��?�g:p��y��?�2��      T      x������ � �      ]      x�}}ے9��3��k�K��(�.�*��VҔ����ʤ�1I-3Y*�׏w ��ܗ�R0���q�ټ��6��O�MLaL�����������l^��M�h76��ݼ�k����p��q�m>\v�c�_~Қq��:~�O��ϧ�8������TL~�]�z~���������x��ø�cw����|8����m��ۑ�����t���gck~�����͎�������6`m�w��������n��y��p�=�7�.�}��>��q�?����g���z�}:�W��G�ȼM��?�.������9���`�.n3^��z��zo�'�M�ֹ8l�����׍	ޙ�����Nz����W�vw������y�G�`��l����������J�y����ew��?��8���nk�$���tޖo+B���ңr�o�O���t�[���#^.Kqv�i�����A6�zK�p���A>����/�M
ج��HYs4�Lbj�/�����7����������c��H�I������~�?���H'h��؟N�?��N��&�c���iӊI*�*�g��P�M�?�`ǭUG��~���یye�բ�m�Z�{���7��mp0[밂������͟�#c������.�9[������&���&��]r����F~���+mݧ��nc}�$G�zp(f������@��R�IR!J���#$�><���韒�>���Ix'�4_�N����]�	Q���6lm���/�G�|tnr:�&���1li�C����=xM"��
�6�4o~y���\���R�)�S
���^�x$5���R뎣�ؐ��i�����n\�W�-������O�@m���/�Å����j?�n���L����D�fA�$�#��������nc\,v{2"m\L��Q97����Dʅa�U}s�r�t�>�o^��~��8�0n+���鑤)L�^�z"��q���]�2�����Br-}�������ļ�gP�d�ފ��;�	G�}�Z��t މ���&��0�Sʍa��V>���w���,��6ƴ�rhoH8�V�����^��Dl��O�dv.��8�����E1�'q޻�%�r����|r!䞷^���������;r���~���h\���j��(>���iG�/Vs�q��۱q���w�?=�7&���p9oG��/._��w�3/a�C��nGq��36~��T�Br#��+A<�⻜������ӛ�`>�O$i��tB*R�("lG��tEX��Iѧ� �����b���ro���vd[���Bq��O0���/[9�y�1�Z�~�ߋ�%y�6T$�~���]����H�2u�D/��d#>�
W!������[�Ot|?H�L�7}0��6���t��h���P�t����I��u��R��:@�{:�0�v���}�^h/(�����!^Ʋ�m��xw�뎤�v�u09o��Ǖz�q��?�/�5�h����Lۨ�������	��͒GB�چ<?�ꈰ�r�d(.YdS�����~9�L���g�V��j$	�����r"����2�G$�!F+;Yܻ�	�O_� J����QN���o|�;9|u�$�ѧm���)|2�,��v��ȗ�F�Ϸg��v�e�Z7�P�E���{�W�ч&�!���}�L��Ɖ{m���$����b��:?�}��F	輿��Q@���t܉�	څw!�-h�̐�Jʼ��Q�%��S;��&���>~%3A�DQ�Ll;Kʲ>A#S9څ��]Hrt�㞤�X�Ia���J��X�v�6��4	,	_�Ƿ?ސ+���eU�C�j�������9wbD@��r��?_{6+��:�EfH瓜%������qH9������6�'/�cE�	٫m.Ƶ$�7UWtZn�W���:�(��-VƉ$1x��|�?}GTG1nY���P�<Ѓ�I�F�k)I��������a�K�S�}�Ü.�h@�۬�۳䨤\Ӓ� -Q���+����
g�0��~ʼs�L^.���׷���&M_��Mg�6+���4�����6JއN����Z���Dx�S|{��?|A�I�U����>GJ�D՝��,C�=/��wʉ�w���.���~�/ҁ�14_�̈�/����(�x$ӛa�������?/�Vͤb-�GB�M��|�ӓ�x�����\RT/8H��HlP�X�(��d�M$�l�2�p���h׋y[m$-İo|<ӓ��k����6�i���i��L>�Bq�hg��:�P��0�>�xNmO�˥���:�!9w�|�"��k�i�D���S��* ���7�J*Ii��1���������'��`���d�._o'�47��5?j�"��j{O6a�grv
��7θ�@*Xп��$����d�n���?�$전$����HYu�oϴ�{�R�e���  i���9V4��&���;
X��rЩ�P�'�?c9cc_'{��H
0DrF!6i���f��>RBcl��E�GR�)���M���A�=P���UߍZ�%�4���8
A�|M/�������ϟv�M&0H/���@�ܠ4�"�d��T$hwy�ݣÞtB;�9G)�q���!�K�Z�w��F�"�nTi&V$��Ҵ��Ωc�85�]�@����t�@�7�����Exs�u3��{��Kr�c�~ĒJ_�,|5���G��3N\�/GJ1O�c�R'�;��i�pJ1�(����%�����?�7�?��Ϙ�GF2 ^��5�t�jWXU����L���T_^��G�ى_atȋ��<hsׂ,K�.�3[��!w��%f*�'�c�b� �p��|�Ba�h����3��c;
�c��l����4_�*4���0��|Vꄑ�_ �{&ɢ��lv~��'󑣯����]��V��?%�-��W�(�t}��qz��i��Y�Ow_��G�j胵�>Q� ���p�|E�Z2��O��eT�������oŝW���fl�?B��t��J_��t��_�����T%	?�/7�#	q�r�`���8v����\�F�J;a(0�W��Mv`񙁣���;1y
���8�Y-���uO	�#"N;�;�� &��~���D�7B%I�RRϠNS���J�A=e�ɐ���N���M��g�1cq�|FܣA������M�c�T�6��Y������3x�֖-�Θ��x�c��AZ�U���8R�r�?�x���N��\� C�|��s���\�La��ML��)Z���ε H �S�e�#�}I�~�o3�F�2e}�@D?���_�����L�p~�ʃԌOOx%)�8e�Ëc	I(=9A����E� ��l�{>^>]7$3C�@|𴲿����o`[�{��`MH�M*�����˞��N��F#���7�9b :���TJb�ʭR�_���u
�/���(9m���_���Y�T}����5�"�m����Ď����%~�܆b@����8�����*R�eG�I�ZIi��G��X Ga�G*m}�t���"�I���a)7b�[e��l#i�55�@AQ'�>��f�M��v�7�0Y���d��K0v����˺z{>�͔�X����&�A\P����˷vJP���8��OTMKd����br���JŻu[,�TVfx��q�<�J|����r�ݝn^<�o
kb� ��F�)�T�w�KϢ�CUĝq��A,���O��?����¥���Q�d<;��C�rب"Tv���01N�Eϖ������Pc<m��;��a��^�P�%ؤ
*MI6S�"�/�p�ޖjD+
��y�J4�_���;�6}$[	;�X6�;�mXW�ٖ��O�fS������mQS�+/������D;�)���	��WkT���x�ꁬ���H��G
k�`L3��#��O0��`8�O� ���!UȦ��l�h�����9c$'b��?s�1<[�D�Iv4����t�c�>�Y\�
�����vQ|    �
�V�%��?��7�_�|�����a��Vѐ6��ӵ�`S��@3�z,>�Ca��ɾ�����(Ϭ��n�jx��T��l��Yyk��qy�g�13�z�#/i���~�i�9� ��t���^��c�܃B@)��� 9� �Q�|�#�X�Ќ��c�@��SK:Ղ*�L�e�q��0�ogU*V`D�:��g�d�V�&a;*<�1��5�C['�)���֧Zuk�Ȩ�iz�mz��Ub�2���͇�����_��\�,&,H�6���'J��Z�`nVM?S����Rf�I�Cu��(j�&I�n�k��B-ߓ=�7��H�Ɉ�Ɔ���h�*Y�kť�(��{%�`�|w�?~w�n�>���,��Y�0�7/inXX|*�3*�Y2Y�2��5߳9(�Y��Lt��9"� h�ȌC�����x��m��90o�v�V;�b��{_Ҳ��`��ܘC��kY�z�����)�|��/�&�����<���=���߾��(��A�鰢4ٵMNf� M�s�$0�3�@5܋�&ڤBA*8�������e�����p����T�>�����r���$g�\o>OQ���S!/���v�\MJ��|43��bx���F�c���u��u��"e���Xы8l���X�I/����Hz��Zc�%�Ӳ���)b� ��1�y�@�T�Ҝ;�����WR#V�:ϰ2�����_�[�Ϫn�`�Yڠ�zx8�8T
iK;q���Ơ� ɣ���v�<'�[�K�����	�~�F&ǅ/U�[(	7�`Xm/uBn�dˆ�؆DԜyI��p��FUL�����k(������2y�/�, t�N.ނڬK����?�����䂱i�W�Yz{x��g�S���װq���/�2t�CV�Ou�zb���n�mS�2#}z�-��e�U����o�/qL�R�A]�J��Gu��5��b��Hfg�h��\����0��`tKi���L�1��KS�G��~$'��	?Y̚�n���S1�y|U��g��h����Y��� 
N��\r y�e���X�!�ra�e[�J�s��N��kORR ���yrڇ��>�c�a[M����^"��\&�@��&'s#Y|��^�M�p�$Y�19���w?���%
l� -�ޞO��ݦ����������}�'RH��*Nm���-6S��'���V��<nk��Z�+W���������Mqq���Ż���|f�eh�<@��������X�_�\&_`�+cƺg�h�M��9�w����K�"��;���t�4�Nto�)�^�{�0���kw��ؚa.�e$��
ބc�d/l��u��$er¶ּ��|�x^rP���WuϗT&L��RH�:b�𔝣��#?3�:���%��7��'ŧMw��Xl�$�h-�p�&�:�2��>�z���i�32���͢�۔��e��|a.���鸿�帿R$<5��������rv�V�u�OV�j{I9oz�$)Q���	�4��A�[q����+�k?�o��ˎ�_��sW�:��^�g�T�ꌪE!r�#�BN3P�Ʊ�t�G��1��F0EE�Z�+%~�t���O�[4�Xۧ0y��T�����	׭��gzlz����.��ek;�3�� ��Q����?G���܎���EA�ж?]v����sh�NK�A@
�W�!��4e�����fݧ�����#Jfw{�TW�8���Bh�ҋ�3��R�X������6�(L-h�
���9���0

ܭ0嗞ͫM�r�Sd􌩳���ͫFp���;+e�h���POM���>�����r�����!C��Dc5�M�
=��\Z�*ۂ���j��Q~�*}�|���e�&͚o��y����Y���h����ШOf���D�\��e�:`���Rp)�/\��@Dt�-Mܬ@�e�oq�D���]ؗ�2;�8�����j�bO�@���C��Иs��I饍M��F�������Y�Iy?h�Ʌ��d.!-T���L�\m����!�ѣ����WV������k��Ɗ�h�����[٘YD!`u*|��iK/
�f���4
giJ�)����2���c�F9��w�ǧ=�pB��ܺ� )�+�Q��ڪ�pZon�������+�'���ha��'�(;�i��FEY��?_T�C�	��4��Ic���:��͝�5L����'�a� 
D��N�8�/����H��#�bD�l�JG��}>�Dg����}%4h��,8F��`G��P� cܕn:��,=nw��:���;��P��k��Y6LzI"Et�s+�@���=�ˎ�W��F1��L���.��b�ȶ "��g��4��H�LC\�2���xv������SY@�oaӹ9��zH k�Q�(!�*�h���{I,��A¢�:�)��d�k=��(���!L��%a��:���k���0���-�m��s9���E���c�),��c3M��(�a�e�j�C�5b�Q��W;ܗ':��g��?r��6�ݥ�bXw%JG-�r���(�0��N#��"-+�e�P`b?(�I�Pk�n���Ϲ���:I4���%�YTh+ce���z�-�X��T�[0��h]�r�!�=\��\;�qb#��������F噂r����(��8�@�ɓF	l�:c�z�V�J")K����(�C��5p���_��˗��n'���E�黄� C(�e)��pV!L�|e-M�\6o��W�5���@��C�u��$@~��Ko�0��Gb,����J��# j�K�;�Ð���D�)K������-p�,\`�/L�F}]�`6O��U����۷�E(=��]{��@�[�P>��ָ���g��>�����vRe�zn�f,���` J|���@�ŗ>��hm�=L_�ũg��/���vw��a��,���#�8�ɚ���l�L��g>���)?�$V����J��y�F��=T��7���zZ	����A�S�\�i9��[�(���s��"���jP�%g���_v�#C%�oy���$+"�~x�d[{��ݓ�УM'�����@⌕.;��\�^Z�^^H�9�����t2G<<>#�]�&L$���(���̓F<��
і~|J,�t^>��[��h�[��A�rϒ��ua��n�{����3���u�!)����Ky܀�ĵ�ӷ逭Q(���p�E�X%�Z�f&�-J�'�e\Z�6�hߋ�C�g����ui��@���G{gFt���lY�la<��QH/�y}��ߍ�|�mZ��l;�%�4Y!��Y�����A��8�4�j
�(�+(���s!R�*���n@|��{bNP�۟�Y��Ն�wby���0w6��u ��nƷ����&�@�����T�.PϬP��@JHH��4Z�Uټ2U� ���b��Q�<h�o ��÷G.x��Rd�#� Ϯ�����{�cgE�����
���¤$
�p�N�vp��i]��7�/�(�d�]YƝωߜ����C��>LT��vY�Y��� �wWĿ��ږ
a�|�T�s���P�m!=]v�O{t�瞍��"G{>��Ł}Վ�b��[�ڒ<Nl���V?��l�@v��^��R�ͨ2rm�tB��D��}���`�,�e13�
T�aw|�!�6yLu��b�^4x��e��=.����뎷�3:Mu����i�J���aW��A�?6! \v�(���R�]'��n���∟�� ��fL�뢌�]���?�u�3AI>4���k�I
?P]��Ҳ�L��և�_��H�z{�p��P2���k�WX�B@�'0�	o����.h�.[���kB�d(	3)]fc��Y���4�2ϩA�m	wh!q����{�qF?����.[���8*���p��w�w��b
֐�A%M�L����X��<�m�J�,��]H����m��,���0,��$�>?�Y�Cab(������鯏�75I����ĥ}+e��+غ�ib�D!�    W�S2N���:�}���ejZN!��M�Hg��G��R��Zf:�q|鉓@wC���R��P�*t�zHg�>� GtR{
�`�fs֏�/�Q�f�0��]2�#��ya ��9�y�j�0@:) �$f�vlX���L��U�v[��=S�U��5���/3�*��;���	�&�З�t=$Ed�UZ��0������韍���Ls_�:lm�&B�?K��ɾ;|9�#U�qet��X������3[�3����o^�͏����*H��!��$��H��3��;Y��˼��nn�.=�3 ^
3	�|Pu�6L��K'܋�i� L�
��1�0��X�IS3�_g�\n=�S�\nF�#4�釬�(�rt�E���{�C�Dނ<`)e��}��3���q؎C��9-�%%EL��J+���l7j:R3@�D_ki-�&��Sy;Od�Պ��])�y�r~ į��@~����%��w��{����r��Y��2���[��I�z�b���y&1�s�[�8���5�KۡE"���o~�,�/���R_�^��!���8���Dx�F�ڊ	%��K瓯L�ŹeB�h�2*�)v��<��ca*.�m:|�z����vlXK8W+��H��X�7��_HTe l��64N�`�������V�3�3�x�ID���e	}2)hԴ�:��L3;��0,�ZВ�,�%��DL�Ճ�ttt^�mX��<DVӘ�C��}���%��s�j��W��r�=:�FMf*�usظT\0J��ǝt�v��Y�xuw�P����mjѪe]L�3P�>/��"����tC�:�F�X8
�G�(7C�~Y_����э=m3��)�� ��,,�L!�dA��/�OG6��M�j��pg�b ��ƒR�*n(1��c\^<���:���@S��^����q��r-��a�|��J&��Ns���G�F�$c�f��!?�B�K��ܩ�UzdpԬ���΁�j^<H$ϗ���L������`�ؠ2����!�O�>��	Pţ�C��­m-B^J�G�{}���xh�i	��������d�:�� �
BmҜ��Sd�&�;9=����n�d�2�j5m������Tf�B�:]�!}��4[6<�=����(tDr�gX7��֥o`���c�ù۟n��w�)kA��*�4���:��Y�)�Hi5ق`������O���rB��Lh�|��%�1#�z��p ��"IJ]��Az�$pz@����AC��z�Z�j��V�e	ۯ��?�n�4e�щŨ���r U<�P5������ �1�:mDc�[�7dT"ք�J�4ހ���J�抙O\�[k�Eֈ�U�ֻ��ͫ��
8����p+"��V���9�0�5�|q���g��d/�f�ќ9ƶT����tF�3$����'n���NiV�RU5����o
�m�Ѓ.�f�7��Z7�g�e�3���k�;؂(+(��|I�b���M����9`A�V&9M���6�+�N!0uF�{��|���e�@�a����L'8�(orrӌ<�kN�F�@�2Vۆ�fs�4�@Wrf�!��CG��8��麪�.�|Oۤ�9������#{��Y�x K:�:���er��ju��/8��H�:�[	���X3��ӕ��/���D��~���)��ƍ��������� ���zZLQϔl�u�a�O䦯��������PaIM���C���=�V��Y��("N�Sc�
��-a�&u�'��pG�L7��r�I��x��E�X �2r5���X�)Y��wzGDwi�{�Sˌ���ᘕ6��D���F�l!�d=�=vGQ d�6Cj�s�~_�߆�k'�\�RfW7c��"fzV����O�˖;�d�`�a�&y͠\�1�(��̬�:_�!�uK����r����t:٠����WL{�y�4��/|؉I����p���q4Y���|u1�@�l�+���z�Xo�[��\_�mw���7hp)�i��q�G���g��7#�<̈�� ]5�7���h�kٕ��ڷ���I�4Y&��Q����7������?�%V�j�l(��/���#��xą/�U�-�.?�o`�gՙ2���x'�u]V/�"����7�/�A��ZRSL\��,���}���Z�1dE��=�������$H��	A�+���!��i2����o��;\�#4��G*s�W����B�*-�&�gj:�)Nu�ZN2�w9x��Sb{��je����,�LRdk'���sc�<�v�8�� �ԯ�݉R����/D�$.;���P����]V9wYzC��4ݡ�o5����� ��bY��F+��a�]�;�E��]E8{����;���2�������5v.��$��v\��E?C�$�p&[_$����gT��R��[�Bz��\���gx��R���T��4ZBz��+CJU|ϧ�$r<�ϒ��jG����N"'<�;���7^Nq=�S�2'��<�f�ء�5ĵ}�Z4���=����@��q*���
�jŦ���ij:kCi��m�My�ho��r��C��B� ��	�A$��2�Ba�\vU%�j�ж@�D9)bU
֨��� ��f����d�嵠'���랂��cB�'�ъ'[磶��)چ¨�<?�ċJ]�I
��l���왃G���v~�s��=62c;w�G�t���$��M3��Lßֳ19Υ��4�J� ����~�=��h�jjN�a���np��FcV����	��xst"�!��Dr�~�i3%�|���)�5�����ڸԃ�XT�-x�+x���� �~�Z@���5[�3"�-x�4�$=G��ЅP�F�g���FxWY�_\��,�]6?c��cI����o�h�&�D�0�'��sb�=I�4��s�銊��$�C�RMs&m\��?�XjC�,PPbWv�ٖ�6C�R�|�zF�����(bu.�f���-�+9z��� Q�'i���t��i�*5jP�V�A�YZ�۸F��f6��k���A�j7����6�n�ئzk5�k����������\����%LKń��M2�,��*>��Ĥ���L���V$�I����p��=�������3��A�)��ja-��{��>�̶� \��^��C8P�R�NE\걎�0�	�)K^�x�TGG/:�Yk�4����\ĥ�:![��tl�`f5�}R�+���|��=s���^��ͬWȎ$�0|O"pݙ�V�;Ԁ�!K�|M)��9eh�6+F??n���0�3 �u��氤��z�
��iv�rfTU7���>� ,� d,L�	���)�����z렺�:�y�f;܏�n��bV�v�:͐���Ծ3�y��z��F%�������6ut�L��%sy�� �*�zAcݠ2c�myO�4���F^K�v<�ٺw8clE(ΊҠ��{gs��Q���I6s��͗��Y��Xw�IV�EO������:�^���y�[g�5�Iu�5}��")l�Ҙ�37�r�|��Ņ���jnM���j6e�qU �p�L�wO���q��a�`�)i(����/�l���<"|Q�`�����*(t�F͡���0����{=�6���Ӆ(nD,���fUğ)-<��י��X�m0�f�����O$֗��K7��n5��k��X��,��{��	�rA�n� ����ha��ę� _��5��v�`m�����F�VP��Q���̭���o�"�ʷ��[WcWaY^�nI6� ����z�yt��RˍQ��{�A')4M ��^�q~�E������zg��3��*�8�:�9�p�NW`��]��4���e^�<�l�J#����mbR��v�0Xl�3��������#�57����
bNo�4�
�
3�C�w���N$�D�j�ƽ��-�-5M`��XA�@E{p�O����a��ťf���3� ���>l=)x�TB���|T<��������ёI�k��x;�)�.`����@u"��e6�LL���ʝm�y� �  �rݭ��4�}�������ƯJę�oՐ�(��`zqz��c������� �?Q�u90N�S�&�LrQ����ag�u9��*�5ɐ
���Q�Dr��P2���p�@.@�=X�(�I6Sg
&_��ek���S,�rЇ�i�o�]��D#�Q�Ln�@�#C7i~���4�qԔkѥ�����ʺ,�qMZ�s�į�ΰ�~�ª�.�^�٬s�e9�!�2 i��-n�Y�r�2�3�in��^Y�|9?��a�R��i8+����IoΏ�4S���У�i���1���XȜ6�qY�Q#��,���n�.��v�z^2�/���'�F�pg՚9��	"�)�0 ��H�!�y������T��dP�I/�]0�V�#�$/�\*��l�!u;L���G�uZ��0��\���f��7Qz^�Iϒ���E�$U0%}9y6�a��e7`fR�I��sSm�[�vп�@'��d�:�e5���h��2�an���\p���.���Ս>2n�.�i=�X�?��C�Vt�Z�dܴ�f����L�YxLO���O�fE��/	+��p}�Y���4X�+Gz��dʹ���Q���,4P�c	�/��9ʫ̂�b��)���;�6o,m�)��\e����[��l������5�1%�|��`��N��y������d׵�?��M�P�S��
G���v����Ų9@2�mt�;�A�oV4.}Gz\3N'~�����m�?���F�~��Д������g�r������=��u-I����=�<W�lsg�\KD���6չO�6�c�|l�`����
�ng��@�xZ=Uw��8N��j3�~�K���r�\��6�R
���9��2�Y͔����m�I�M_�0�hÌ�5I
x6]cL3Ti�Ȗ<IҔ&!6tF���O�*���i"�&��ܦ"W��:*�dh�A�������ޢ�w���i�H�ʵ���@O��0��C�y�m����Hc�C׾���NI#G3�������(�I>J�z��	��e�SAfI��D�\�Ϙt+���0�r�D���];_10Π`��$����;�O�B\�
�T���N�o%��l��Swl𥕱��w�L���nmW���r��|�,36\�DQ��A���Cʽ�;�z�}$W�&���d��)J1���)��X��Jt�NVS����ԙ�w�L��A/��I���sz�����:p�dvQi�/��.m"�<ɇf/�%�xzy�o
U��t�͉�밌����� '�����@�$L�y�ݤ@M�7���J]~��݅�(�He�x��X�i�`#���9Oe�V[�fv������71�����'��l��F��H����4�y�a�V_����T�e8��dҏŻsg� �~�mQ��CK��a�2?���5�S���I�K�:����q���l-�$��S�+��L���V�`b5�4m��^I���zMd��#���/`&���������!�I��t��6�^1��caqQ�Tk ��-7�&麓<�����2jc���~�B4��r��z�a�Z�	�b�.�e'f�$ۚ��
߻6�Mg��m,����BG�B?�´�$�v�����0�%�VM-NV7ڽ"�Ƴ�L�`&q�^�r�:�dE�ngf��]���_��C��Ѥ	@u5����Ä�"��c֓چ���s��c@Ǵؼf$ߪ�s/h^��/������&�Qd�[�&�Vzf>	��I0%�;ޯ	3�wRe'I�m��?�M���8�CK�ư��zC�sT��&�h���a9|[XR���;��܄�TЩ�d��]�I�whh�C��)��]��G~mA(��_$NCZ+�TF��m�a].��2���@'�b�܉'e��5-I��gR.�ת�0�R��0��W��HC�Q�=�5E�4�|DϏ���L�e�q�#	� H��=F�ʚW=�#V�чҙ�}:ؠ�F�#��p;�G�������ƛ�'�)7WfG�v�TS4*_~q���0i��	b�����@I��%�y����q(�\Z[A������Ō�+?�_'��:��s��r�Cfd���$ڿBH�S�B�ޫ]٥N:�����%h��Dn����"VFn���N�%&u���D��6K+���+2��Y�G:1�&�F�aJ)��C����iO?�#ƍ��C?%�;M�e"J��Ҏ�}T�\�<5s�]�z8PC���q�!��(a^�����+�e�58�`V��L��gQqlm�6h�0��[�T|�o�+����+N"�H��^���X����ZgS4��{mz̘h�FZ1��������yp�Lր��L���E##�d3��b+>3�5��Y�HeM���bO%ۓ��)�/���i�A��]���m��C�D7�>n|�i�m4A�LÊHs#V%t�i���J� Wmwx������AzmfF�%���Z�8��ڻW�Z�BCM�����Lrg�9W�Oc��/���4�:W�0�	��*,�}d��룂c��� �"o1n�3׳w��ǐ��r���3��/�����FU,�ѭIJ��Px�d*���й��ِb�R��Y��ǲk�vbs�(K��rZ���R*[]�?4�� �g�γ-c�zz�JZ�e�����_�k��W�\Zj�Ρ�y��(���F��k�с1�{Փ��#�������HG�Q�w���nwĵ2�g��|�]��z|�jF�̝�x��S&��%AK2%����3/�\�(#m`�(O:h�
�t>f�R�r� x�C	�+�N���x�+��=�QH�u'1dn����eh���1��:�	��NC���)�����6�d�j�lD��\��f�lo�^%e�l��)\����y6lI>��K�Kk���;�u�$!��?of'�<�ZsbIh*(E�Y3�^���oe2~JK�#c�p�c�nw���.�G4Y�^�t�D�\HM�ϟ?�=ک�n(�����ƣNu���h��o67Ԧz�;�\4v�]�Iۘ5��Q��;w4��O�3�p��2������ճ}��m a���h���lV��Bc����Ε{|��H�r+��	�Y���L�p=|.,����!��| a�Ij���pK#@����10ʤ��&vb~|i�5���\�*	��PCN��"n�Y��F!�Y����)b4�W�7�I�ضR6I.����2ɶ�("Zy%5�O�e
UN�a"<�r[�7Q�;���{cV��ҹ�'8M,�a\e����SN�'�&�ŵ��L1��������K^5���u|���Bٌ�n4"�У�у�;y��ƒ�ַ��gҹ�M� �;QT�EJ�hVS)���ۮg������%(G/F1�Sd#65q8��ݢD�GR)�6������7�֮$=
�ak4"5�-�d�v��E�Bk*%�N�&I!�e��n��J|T�Q��Q(��zP�<�4�:A�Fϫi�3�@%w�����=1��\�]&Q��?� ��떪z�c���5����~��rm� HK�M�S&̅i��z0�Ϲ���'$�F���G:�S	o�b�c����]*@U��*U�7��Y7tUB�#6�K_��F~�0�>\�?X�'���݀�kux�{wWל3��k&��+���L�P���1���څJ�fʬ�;a/�ғ�ܜ7d�����n���K      R   �   x�-��j�0Eף��$E�Hi�BI%]tӍqD,�XAJ��UI�wΜ{H�B#����n�b�1	�(4j8�e���_�<�z��a9u���0����B��5�ܽ/#S��R���>��O�I��ۉuZ8�ޗ���ؘ33`��ᤑþ����/a����!kHڦ��r��4��q���?0oC�l�̂S�")E����~�"��bk8��)'8`���fHp�K���!���c�a%S�      a   �   x�-P�!����ȃ;إ��Q*!EI?ԃb�$�x�(<����ց���Bcq����.lF\�H�F���Fn�D�2���w�_�4n�Z�ߩa�j����h�(w�����%jSv#���o�8R�T�t��K_�RV_z�h�^t�S
��+�m��M�([|C�}���,iyN�7�N����s���������C��I6f      [      x�t}I��H��9�+x{�և}�A��$�4Ju�t�@ ���B&��?3��Lif��1% �n����?�v����Ɍ*p��u��ծ���3/��{ᩏ�,��Ǵm�{����DN�&�>Y�����m3�r��ޘ�ћ�f6�ޫЏ�(��(P�i������zQ�^՝.7o��̵
�4�c��c�����q�y����_��v�7���k����	�$�U�Z,Ȇ�������7/��E���cS��'c&�A�xi�����<�k<������l>�nU঱�;~���D�v4�d�I?Qw������qo3N*�?r�0t�4�`,�܎/R��1�8l�b K�:��G����0I��1y{�w���z�L���0��aT��uO��O3���BW����l���Y��U�I$���+tV��.^.�������e�*� �K㙊�H��~:�5�o��U�=o^��i���K\'�}<�@E�s��\�����[���>��Ay���ƘǑH�-]�Ҕ�7T��y>o���C�9�A� ��T�w+h�����z?�?o�mk�ʋ�8�p���[���������_�/�X����]݌s�6ۭQ�㻉�^������0`h;��{�޴Ñ�clt7(��Fn�b���ټ��P�-��f~�꣞Z3ϛ�C?ԃQ��$��!�Ri�&[&���/<G}��A��Fs��~�n�D������`�iX�¼��窯=f���8�E�'���X�@�l:4�2��Ҽ�<�A�[ӛ�=6�����ۧa���bm���sSFcl�	ƣط�Ĕ�8�<?H�u��򦯬		��a�p�X� g��xG�z���x��{�䊟��=��[S�����{�^��m)Аm�)�e��h������Fd�M_j1LU�y㩾X�C6k1!^C���Iϳ����������\���h���'�玲M�5��`Oxl�����a3<�d��`�z��͛�]�FS�i�:�ǵUt�fS��0깱���C=l����U��^�~�*=Zl�0��Й���2_i�a�>4�P6�J#ω#�w���bKv�e��lD������j��Q
W��*k����ܱ��U����|�:�J�a�L�}e�S�a0NFl��*�;�G��0�����GI��Z�{��~?T?�߃��9��� ��(�,�wD�mn��̇m��Ro~L�P#���Y9��.VM����?d�Ma����v\���ia[1m��	`=z�\'�uSZk�'�ϡ��|��fN�l@j�rݬm�F|^����]ƺa�R��:Q��UU����I4�����5:����|�f<d;���M;��i��ڋ8	:��V7y��4�'��V݁�d#��,� �	�;�;��Ԇ�N���!L����bnxkA̆�;��G|�m��WQa�� ��q7�FL���>^��85�N�����'�G�UU��g'�n��b5�A���7����t��ᛣP���	�h5�"���y����L�9��q\�X�Cw���p��b_�jO��̧3��3���K0���
�:���(Q�A{fR �`Z�6�I�*�i�<���4/�-��~})Xӟ���e̱Ƚ c����rK�-��~��X��0W5|��,M����a��SV���iQ���{3���T��xp5Y�1��
��N�:qM6u��/����L ���{�[^�h)]
�§�M�sky@��-l <J���������啩r��?/��Z޴p���?���0�pZ��p���EuA��6͕�kQ���j}�?���1Ҙn%L��`n���o/���q��W��HX@��y���k���KU>l����<x�?0Z�/>/x"�Cu�1H��
��l)k��=��ӛ;s���<,?�|��f���;��#���p�A�Ә/�A�f���s6 R�lv��{S��`^�`~%xAP����8W���,�S��W"/���S���;d0�{��(�+���&op���>��q��y��G� ����I��){��{�ߏS��@���?3=X�����>MX�yx�>SqǬ2�Sx��v,Yo4A��Q�FN���B�NY�L�����C�`�=<�SA18n�$N���b.|�y��>O������P�~�t?J�#1�.��ȸV���@��5��d"c�"�sA���r�Y�CTp���T����9UY����]yN�== ,�w#h�G]�#9�Y��`LL���}��QB��6�{���<�<(?����Bu�.�{�B8MX��[ƞ���;ݶ�^��$�a�n&����h�<��ȀF���"CA��0�����9��/v�|j�C���°C8X�cD<7���j��C�"�kxӡ�� Cí���0u�T\��
z^F�e^��/����|_�d�s<ׁ�#�H������-|�B��Q$��J�< �0�:�xƙC��HG8YK-�D��D�-U ���`*�Z /��96�e  ���VY�%i�ю:�/�e��+��/��O���+h�0��]nO+�A����U?j3���殨���P��qM�ȗ�yI��ID� _�e�bj��޼m��5�Y��¥�Ձb�+�W����a��?� ��1��)���b��-"	'x�b���k�'�S3)L�s"���wy����pɷ��=�m��|"0xЗrk1���/��5{�`�Q�:	�(;fhU.^���-��Հ���w�ҵ����4
���g��/�N&���<�"-`]]�4�����b�6;M;��)X���x�s��w�(�������lИP�HJ�#<�7����-N�*pA���W��C����7�:B:!��^�L�%�Y�y��(mbO'R{?o���iև�u{���A�Q��0v��]V��g�rkMp�75�`���75�+:���Y���~ju��j*�-Lo\�R���Ҁ�v)�z�-EM#L
|���h��q��J_+��Y�l��R ��q�k]��'>x���`����zCv��~9�x㲝'8��IR��Tu�@�!0�Ǖѧ��ی��{����{ !q��7u��
z?/�L/\�ߝ�|I8@��ÜЃm*f u'�$��DQ,	������>5�b,��"�M7$�j�݃ك�cV-��q�2�`e���7_�����_���οY��*��0�����ܚXZ���ѹ~�|�ᤠe����,�G�X�4��:+�� h�n)7�ڦӊ��ò���D�SV������qa�'Rx��)���:c��4L �>�cw~�5-�>���U��=c�>�] ���;�3
��~�p�������]�x��d1�!����>U_�;�T6���(����r�2�u�Sr&A��c�>w՜,�9�������hh��=�A{<Z{)������g!1ף����M ��3��4��t�~����N���ymt7�3|#c5��
�\0?x��r��Tu#�F|߀�@>��qG}x�}(΢!��6X�tzL��3bE�3XVm��g�]� �a":��o���n#�p=�`�NcS�3�/hg���T�N��g��s�V�������o�b��覘4m/��d�����`89�q�<��s(ðLD�4+��#8U?���*�|z�(#	�9��u��?�9` ��"��O��E�Ȃ�ㆨq�l�!-���P�\��sA�1����(?����&K��_�x@f�y)�M��8�k��!�3���~y��`r`�@lgP�1#���*1�m�X[q��o�����|_�����Ӓ�*�g`Z{"�6�i��u���<��X�d�!&��Ƣ~uk���
����(^�-v},﮶�_�:ԋf4�^
�`r����a�$�������lj������j�n���Ն�P�
�؂�.�KI
T���RHȮk��W[Mo�R���Z��g��_�QÈ���+J'�}��o#��f3E;�׸�t I�;r4q��)��    ,�w�������'���A$�	��'	����{�J��/��ǜ�km�;����9,��|���uK;7��ဴ�6��H"���Q�]j$���Iqa�.qC�5�u��Y�G�Vj�����~W���Ml>`>�qVaH;�X�z���,��nH�V�Ca�_�6üsM�䮴�?=��x�w���5����҉g8�2�Gܟ��k0u7�Cm�����kGn��K�����P�^6�<Fb"[+7�`�'�Hw����d�����\�ź��)`IH�4]b���b��Y(���1.e��C�b�c���9ȧ0�g\�L��e�	��TX}��p���O�?����r+��[�ӹe\��E*�`&aF�k"�Cv���?ի�޼3ۙxu�n](m,8YC�����)ys��Y�ʁ<�ڈ9{
���V��
v�ń[s�WD!.� �-x��!<�+�YO���"?��~#�Q����1�`����2,���X>���]�  9�K�������x��.���$�iU1	¬�;B�������ې�4.��Q;��»P*��ɸ���Cqo-�ϷؠY�Ӛ��\o*qb��0*��ɳa;a/�E�	܅�7���"�QBA������f��D'M��1�P�c1��u�:��u���A��<<'���o
�y6-�ќ���2�1}�iFo���0(/��%;w�L�mϺ�^6�KZ��4�ٸ�@���|�SB�_�|ă�	��∅��$ ��D��/s��,��±�1v��ΐ����SP����c������d����$.���B�x�5+T�a�Y/�8�� �X���1YDG$�o�� b�?��ߎ���*|�a�$9�R����oo�e*�y���64x=�dx�3��hU"ǃy��]�`�a�/;'��? �a��$�إ �t��#��l��z�"���o�͟�3lS�q�$�
�]ᠽ�1�;� .\�h��*�+��l:��YyL�;L"n?1h̝���0NSZ,�-o.Lٌ��\��Ϧ[��3܏�|
<�5|��b������֮7v0$�5�n�ß'�z(}:� %K=�nwx�X�!gN�O�j��#����r����
?q��H�j���N.-�ߦ�y���:1�{�?�`0>F���-ˤ�t!~�%��`T��ł)k�jY�zpߏC��X�"��j�	̿�pA�>jF�*�mHD$`Z	�}�]�`�`.@��:�������"1XXesӒra����u����Y��^�j$1���R�@/L	]	N��,N��9p�y0S��Z�`��4������,e�4߼��oP�G�I��Rg���0��%q��/?l>���	܏��+����k2�����g̊�Yt�kN�����0�)P�<F�.�Q|��߼!�,F��DǇq�`���#�ô��ǃ7?�K,����NU�4�����$�+�"��h��X'1�9׶���ͺ��Y0Jꛑ�8 �.���"|!ԂHȮ��|5��7_����ZW.��@<Ǫ.hf�������, ��Z����>�F08���\}���イ}��E]7�`
a���O(������0w���c����]�p��ypRP6g���1���V_�^��z\r	��)�u
5�a��a����MWqS���<��3��w����]m�P�β�	�<c�%�?@ ��@x�r����%�Q\	����e����rR|�4P�Q��x���Ov�yǜ����0�H�X����/�(������K���2��Hչ@����[cx����\Hh1���.AR�����|aTVb��,,�ϯz�[�+� �00Z����Aۍ n����5#�;7L��I#J��XX?��F��X�Sf���VX�ye��w�5��Vouu��3)S��9��q�P�4���e�����V�>p���0���ݩ��V�M���?M�Ϸ�f懡�U��$�]N��m6<!\�u�	�M��A��G2pF/
+;"aw��`��L�����
�9��΂a�����}���$vɴ0�>�>�}�9�p�5� �8�6���q@Ṳ'#Pxx�W�9�������`=�-�h�-���b���
ކ @����o	�����(�D��b�!칝f������}�i��	�=cPx֩����!�\f2���צ0#���M���)�-�pd�Q���\�c�9.@O`iR���j�,B��,��6���06x�#��0Y�!T?eCF��_��<x�f,�Pd{ph��a�i8�y�A���cT��
�h��i"�"�cFGe����P�p�����;�I��`*"�9+����M"X�	$�[��]�O@m�R��
��9un�(-u3m�-��_A/;$�`]��b��a�` ��<ؑ�E�t%AK�O�����r�"��zi�a�(`k�����FR�G^6m+�������h�� ��Q�aU�v(�<�6��C}G���`���K��rk�(�%�pd����&�n� ֈUC��H��_/~�e[�3�lB��"�DQ����_t^�����>�s�F�E</8�(P�$\����s˦Ŵt��ڋ�$P�dS=�u%p�y6��0S�7�ኙ�0�Clm��(�$]��}��f�+<��ʆ�z�v��OW8��	f��!Κa��D��a�.gEzļN��j�s�gC�cA��La	�w�{���v�������FEvj.�e��w��
ڼ&�c1�����(*���r�c��u�"I��'���|ߝ�B��#g��'���ڳ���X�><]m�h{���p}��+ه�w�8���1_��ʶ��J`��ut��a�$�4��-t�!���g(��,�tz�N����0�[J��2��&�Zo"��F6N9z��2�iyuA#x_���8������i�i�
k�].P���-��!�����ۀ�r���-�Oc����am�HU���d��D���-l�827,Y�x���n,���
؋�_}��ץ��o~�|�v?�n��ix�s4<wۘZ�޷�xa���x�U�Z���MU���v����֢�s0h&Q�w'��"P��i�%�d_�����:"
<�cn��+��q}������MI&'F	3�C5�D���-��!x��7�&C����g҅Ţ����������4 Y6�D�#x>��,-��pae�Cޮ�,H7��o��D������>�EGE;�����k8��l8��l!�g!��u�̋��rW�1��?
#�0��j�
�Pt��y�8���?R�n��Aa(K3��1���a���k<��p7v�����M�`�%��i�`�Y^�H����#1ʢ�i����+;ـ%y����i6��a3�Ӹ�A8A��5���LҾ�W��-5�8Q�Z�rZ��Òbvn�r�����a��ޞ�.�]`��T�%���M0�1�@�������'Ls4�@q����<�^ƞ��<MXZ�M�8��0
�HB����.W��� z�U�� ��0Kc��W0��k�"g��+�)'�KXHk��b(�� ߢgl�fLlhY�CɚQ�v�$�-���h�ž�߼��/5��	�@q
C�����"���%	�A��	ܒ+�+"�Φ�\\�Í$Z%��Rb:w�2Զ"����C��^�k�:��VP��5T�/�q�К����d��~"߇.��X���e<�	ud�X�����C���*�]�V��7K`W���LU��$�.(�x��|���e�E��O�Z��\�(�4��;�+W��XN�*�? A;!y3� ��~#x<f53�}��Z��RR!C�w��5{�,��=$oؤpUW8��=c�ͦXo�I^���K܏i��D$�e;|��0�bp6ŐL����[��a�B�#�x��o�	��f�R�r    ��34q���$�o'c.�}�V\5��e����o�,wk�,'<�:��ʶr��'��>�P��b!��9I������5�cg�\�:����.��zrI�C{Igd�a\�'X���5���ER����bx��&_���1�J�ډH��i4���=m�p}	��Ϲ��N�x��e��M����,��F�6�E#�m/h<=:�ăvz�jZlHX�c��
���4T�z���hY��E�H�r�V��{��,/ٙ�:�E>%��62Yf���������:���W?4���(�G�d_�c�x�B�m�\��tS*ȴ�O���:�{f�
%�/O��������.��b�>r��.�+��C���g��^�ˢ��M�6�E��1_$��$���ᒋȀ�
��U�aF�G�rw"�X������:�-�� XJ"d�=
YW4q�)R�А��Ȳ�P�</M�����
&^v�W�+qKxlP��>�P^n�y�,`V0�ʻ��S���e2����Ϻ���v� ������O0a??oXL��ʲ��{R0�{���1������a�|�Q�<I0��MK���z�)q���d=-p��
����
&�� �����А�aB0��>���s IB��s�}�Z��P��I�.:fI�z�$}�s�x�D�e�܌���7o	+�BUh��-���v1��l�6����^9 ��U�
���a
Z;�,|ǅ
4���`�=�F\?H��MRN,).��w�k�{,�)�l�ۃIy,J�e*�a�VV���߃��N���(31`��'�s�m�;���]�M��*a�	�K�l�G�I&�KE�7#��F&nB-`��Q�K�k�3���V��+�n~�OO�4�!Q��.hR?�-`�0=��%��RH��� P�\3����5.�fu�m������-���4�oZ��i󥙥T*Y��*P���n�z#�Kb%~���1F
F�T	��ơ����Ϭ��kç��Y �?�K:��R���V7F_"���.��O�J�|������I��<O��ܓc�y�� -K����_�OÙZ#�����+��99ܤ)BC�0��C�����c����GЙsu����*m�t�F���:�-n�g�e��B�05j�Ѣ�xJP�6=d���=��GL\�(
��A�dʰj��&2�nr�i���qs �7������n���\H��g�m�b�i��!�ae\��[,Y2s�7��X�(��	s��h:��k�P��%���SN�ofz:��
�wX�0Í�j�����p=)�Դ9e�rA�e�(Uf����cm?k����@9��3yy��K�m[���`V�x�p[�d��z
I�Œpu�0��;nKcFQnb��4�o(i܃�J�R�B��)�7��A���Y��Ug�����B�m/�K�$�����'tXc�r��D$����E�'�(x߶�ܜmj$D.�GewAS�jq����i�E
3��^bh�Y,��+ץ�;�mΛ/KU1�r������;��aV����.
��ﺴ}6�zV�P���s?,�'uSM�pB��/-��Y�����e�. ��L�f�q��A�E�W�t���;�K�'�#%����6�%����;�0�{���M�~�VO2+�5�X
�gKXi��>��	�ς��܅�n�����("��l��u�b�Vo��%b��\��	���%���?4s�5o33*��P� sv�,���W��sWv`��!h}�A�I͓
2?`\a�R���ʍӐ��LJ��t9��2k�k@��4�J)Ǵ�x��a'PZeU��k=�x��2��y�b���<���EUI�O�"_(�t�-��5Y���(e�����̏�kқ$�d*H,C�	R�Y������ɻ�JF�Ɯ�?��v�.GwNU�+���`͒�x�8Jz2�?G~D*b����uCa33"��s�I�)#1���t��/�wL�|ok�\��R���y��L��UFg~���X���#p�/s}f�������NC�
��r�3��c.���	��߰J�wL�8�6x�m�!=`)�tv��XJ=��HU2&^&N�_�`��_�)EK� c��a�F��+����:I��I�;� 2�7 �PMi�t����C�3� Iīb��� �B��KǊPJ2:��y�gF�Ȱ��\�T��{�a)��"�<JSi��u3JI�����$ 	,�ow��0�����x��aU7�%\�ʣ�RHWވq��aB�o�\Nk�(��I I*���3��䭋%Y���I5m�1&>M���r�3l;usdjfǴ11��T�3�"4Ͽ����_Le�;�r�d,���I�ڇW���;�\�t�\y��jqUk�f�׏�5�޹�%�Š/+��b���9{x|f�N��qj$�Ձ���'�v���2�`٪^�3EJ�~�K�_{@��'�#0��|������R�vB��M��R ��o|<5�� ��I� ��G���	�S�ʻ�!V��!�����2j1��X��� >�(f�����(�M�Sk+`�?���UMۥ��ن b-��GA�իN��i��Ԇ��bW��t���TC�.@fP�f�X���=�L���|u�,��>n�A��f;Ǌ��ؑ�h&��uV7��cf�l���f�}t�ݱ��Q �?5ϱ��0[�5�.ɑǔ�$���r�t�mM��x&O���9�؈f�8����������2ܘ�٘�l#@I�0
^ m�ja��T����R�#��=jr��D��
���zz?�`��@h�f֊u|J�	��è\P�x�X5}sNH�.�?n	`�{1�=�U�VP׏E�~�����0t�V<��Qz&���8��(�l���[50xQ�2�g��w���3;{S� ��?����ז0�P���$�ȉ����^�5ی;�aMIGB���<[&IS��5RYp��'��Yg��b/M �� �|au��ݓ�?��G��7u�2�&6��NdֲpĢ��4�ď���� 3�D��_`k����d�#|�/�2�����G����K@k`d�QARc?����� ��	��v�O�#,R6�������[��?���L~�PNd&3<ft�k',��WPC����MuSI�1�� �zLKL&A��L���Z�ͨз���~��¼����b,�`��Yr�Oz�$�Q�J���a(9�%�I�щ��S��z�����z�>�+�;�JIt8J��ެ�.�f�ԿX�:ʔ��lp�끕�	�R�FQ���鱐 _���e�Cv{�X��"`��B }Ϥ�~�%T�(q���\<���й]k1}~�S1*�����;t����j���AWf:p����W�� tU���Լk���`�Eѿ�`�<K��%|Y2��yf����ޕ�����Q�͗�Y)��	v|���:J���1/pB�ʽ��m�p��Q_�`i�x�����?���mG�J'�@��#s;�"/eG�D(��a�������S��X§V03�ȥ�������7����P�0�w<�G @z��LM��|)>�e�iD����,*�8�k�'������+-5)![�y[�1 ��y�K�V ���a�DӶV	�����j�4���Y���?,�g�
�l��$d!é(�Y���N�FX�>=ĻanD7IT��*	��KO&`�gL~^_��A�l��6�W�;��ݙʋ�x¬�&����8�6qX_n�o�uX�ך	��������'�{|�`��yY�[O}��԰��g�͈u�e��5u+P�Ͷ����0����{jD!9LAI�ԍ�KV0�~��d��V�|ZZq_Q��ûRH"P^KK���a	��I��`���&Uɛ�y�F����<ʚa�K�0ɼ����d̦����/����1���q�}6��2^Bi,��,����b�I��|v\ḁ��������T��$�zs�A��Ŏ|�y�*�.h�]7G�;܇�6o4������V6?uY\��y�n���    ;����2pw0�#|4��l�|�f��W�e�
��N�h��k��\��ύ��o��4}��lK�l}u(��4,�k�n�X�R|�����q��đnh�����7����{3l�z�ag�I#F��<Y,�n�݌���m�.BƕǼ�4��:��,��^�	+��}�*�Ȇ�+qe+�n\�|a�6v�X;�B
~h8�.u�-�9ç�Z��GƖ��5�*^� �9~�Mlި��)N�%y,M~�G�r��L���������f���ma��{������2������������6^�OZ�7�@��a�)|5�Z,x�OȀ�h��tؙ}]�IE�l�ĳ��';��K<�n�|gX�&;E�Ǣyi$阂��-�c`����3U��.H U3
Tx�}���v�h�`�4�R属8b�;e�#^���P�ؒ�a�$�<��`1Fx�$R�r>)�Yҿ���̤�F6d��n�ExS�Ůo�ƦYF1��$q����i 5�c�E��O�F�4,'���y\3`F�X�WR��J�0�ૅ^�"y��@ܶe��\�de|P6d�|�H3�ڊy�Ş�� �/�7�ѭ�:f��݆pt�i��$}�d�Cv�XD�"�Պq97�����+X�S�bX�^^v�1��O����2�bZ���]c� R�g���?��TEp����-/hQ�T�A����#�K�X�UsA�0��� H�_�c�o��B3S���p�}������R�q�f���cL�w�b��EuS��ET��b݆�X����V��3�g�ИZ�k{?Ȟة�~PȸS��"�bE��}3d�5W�
�4Na�nϭ�bw�&0�R7#8Ti=���8��t�Ŋ}VJڎ��u,��`u�������S�9���|���R��9��ͷ�k�� ��:"��,�'�#�$�h�<���������*����+n^�N��o��:K�'\Z�
̃@����k~[&���L�J7PA�g�c���$Pq�����7��alhxX�'rS��"_���/-DaI ǁ�n�m3Hz��p��V�q�ar�ˮ��Jqs�^I������v�X1=N6��M�7=������9w�۽�_c_�o,����[�7
���Y܇Y�b�V����p]�t']�U������,�Y���DF��VS�2��s��-������-NO�*a��D�^���6 al�m\ ���O��L5a6ۂ���@XAÃz%�����VQ�wc�^o�Z$��油:�����0b뜂�I�<���Ǚ��tnuA�W}/d�l� ?�ùT>wq�ݔ�3���%d�������q0f�R�Bz�����A5}m��o���8�0酇��J?;��z���E��1gv/��������PZ"epSPK��������-hjL����:��0kَz�?�&�� �Җ���c�pS��*�ߦ0���Bw������w"�	YY���M�76Ϲk�#f>5���&P͘�	��,V&��\�_Mow׾��Of5����v�w+X�Ϸ_8G�&*&ܷV�%�g�cnFy��+X��N�����q�phJ��=���3�����L$���+��:1�	_kڂeqM�a�i�%_�b�m��R������&�p/��|Y;x���r^;��&�Z]��������d��3��g�O�EaӞ'+.	mS�Ò��̆�b�[��e���Q�k�Dz��Hb�[ُ��6�X	��=�%����K��5��\3�6�,�D�&7��3���$���n��L7'LXX���@��O��D����NĀ9�?,��F��д�5�.H����e�r�R�b��ׂe{�S���+�z�2.�E��)&~+�_�*l�{}�ְW�O�1I4�������u��Z��v��_+�z\�ڮ���p-�c��W$a��X:x��}ޝt�A?\��ia�V��4s�|bz�-�e.���!���+\���%��z���s�Qn&6��=���^Z�y�X� �k��p`z$�k�p+c��)�9���E�z�C,c��)�Ի\�r~��	KĶß�6�^�׆as/Y�V����3��U{��GB�r��!'R�Z�2i�0mOTɤ*ٵ�m5�*$��,O�Ӗ?���h6o"���˓\���Xy��Pb���S�2�ִl�8��r(h�-Ͽ����<V�'C:�: ͡/Y?�����^rYK>e'�g!�ˆzBƹْ�a9���s�D��x^�3~Kw�q����N�>5�a;)��0V~��tE)���3��X�T�0�l}͝��B����X����T}h�+���%iΕ��ߪ�L^���9�pm�:��x)�rA�x�:�
����ˊ~4[�9�\hk�c������O+h�'�Pb�k��h8uCf@D���K����!C.�=Ȣ�p;����v��I.�ܑ��S�צf�9`�Q���� �m�c�=�^:�L��G6�a¬���.V��'��}��!aX�º�(��@A�2��z� ]���#�f
l�m
�)n{w�m�gY�_
H^�;)�ъ��a�ˎ�W���k�>��ß��.��<e2�}����\�N�,�^��a)K��>��"�v�m�׭W�k�~����T2[�k�,��
��i(-��c�ޖ^FX��hܔ�fcwAM��<����Q����ۓ7x<�5!��7���co�D���`tS�&'ڶ��ݳ֭��X�����w��T3V�������T�I��_��*�T��^UDL��0^��}������.��aWĊ�F�a�����z�����?��ܳa�W@.w��X�������Xo���S;m13<it�������GK&1�Ů��9\#|x\�.4�曖�C�FI�K��� �����GE��'c��� �|���OO�`&|!_ČY�*��!�+M���ޑ̐ �	�~���bfb��������2�<'\ˡ�+�̜=��X#���y#�����ya�ډ�@��8Th���(G6�Ao��(���HM��Y���q|�	b�����46���xCi�+�9�R���ʷf^�n:�X�e���9�d�����c��N)B���̏��JeK�Y sƄd~ӕ@2c�J�O3>���95��o{ܰ�ĺ���k8'�������i���e�� `�<?H������Q�`�!�mq�t��[��7ڡ�P��m�������q".g����z��*B��db�<�I��������O!���/(��Ǆ�f�D`"��N�mp�]�ىw�4H��e��/�Q\<���m�-�R�g��7�bPw��k�5+��FO�IQ�ix(Ys���t�"���e+���
{�����4����v�mb���4�K�l�|v)cSu����U�	�M%b&Ϳ��\6=�l�W�\ɨQ��Ŷ��0�`�F\����WFc�݀}0���V�m��[��eF������ΔlM��[�Oj���n��o:z��c:s��]"���VYl[>c>a(�d�������(����^v[_ЭY'��a��R�m����w�4�rh���e�4	���b�7/�Y�[w+����zyA�/���L�gf$<S��E�@���ف!�(��ew�rW�Dv�-�D*������_�i��{0p�j���:��n+�v��Ɖ}-���~j��">�m���b��E��9L*=Y��<=a���V�m��&0iƂ�2����z.;����>tm�KJc1����O���I&�z�ܮ඿=�2�ة���f�e��u�8 ����h;��p��d�Qd��Ġ7-ϧL��.�l7�%��u���o�a�+X�Ʈ%��b۟OKC��WK.��Òn����1V َ�GE������{0F%$Ľ��N�A����a(�,˱m\�V��
B6�*M��|����7=��7��l�^.{���\��
o�g���1�i�ڼjKi���Gj��#�=^�7�>ʟ��Y��j1r��J=���������    	�|�l�ͻ��'�x���$`��b��gQ��AJ-.V]����Iec��N�����/�~ara��ZQi$���֊nn:�p��Sk�_ֱ�J9fV����v�
c�R�?0�6q�5e��$f��1�X����×��"ݞ����8��5JW�`���c�8�����SYQª�X���*�7�r�>�n�8���~�,��L����l�������'cW�\m�D���PGBqb��bX%�Nyl����ߜ�3��ҳ-��ޔ��Y���1����
V���xq|e����Fӱp�Y�0 �y����י����a<kS�e����@FB�=T��;��(?�d4@�l��<`�ag�C!P�o��؅�s�Η1o#��l��Qz�5��)ʟ�Iz\V/X����#�g���W�*��a���0������	��8�G���WZ�r[s7��;#˅�y�ɔ��NU�>'�DJ.̆��~����nK���c�Y���k;�L�6��	��p����s�O��ugE\?�&Lw��f�IBUMG2]^:TwL(��h�"G鸔�$�0�+Z5�m���5��P�ԭxծ�7\!y��0��h���JeW�c7����=�'����(P�Ϥs�eZ]7,ЏAz�|�`8F;e�v�x�+X�����4eqÎ�G���v�����{z�D��o{����ఋ�ǒo U�$��H'$�H����'�c'�_�K�a�绌&�[b�/Ž�PM�U��	��d���f�M+M�Y��N��Ū�7g����R, k�U��&0�Uc6�^�g�e��{��!CpC���<�j���`�w���b������)lr�l_V�[��&̜�����]�x�Q�}5�x�T�����F��gAL���	�]2.rw����9�C�v�@���$A���C=��t���o�s�@��R��΍�ˀN�x�~�@���W��
LF����V�@$1�Et!Pu~v(:�龓��[�3�`�E�v�����	��!��sX�L�^���_�L�(����Ʉj��������o�iɍ}�б参$#T��nqmM�sd i<X�Bz�����_ҹ"�����P�vڶ܀Ձ>=�Dj��mE�_��i7�vfv�g�Kr"�2�3�ካ�'z��O;"o`�<fW�'�>n��
T����2z�I��bz$����.��?8�����[֑�f���Ƹ\�q�l���c��u|C/#�cO2�纃9��3���tb{ u��y5����Y���ȳ��!����R�ۻ������<���O]�^��)�W �~l,y������3��{lz���F�:g����n<ʹ�42Zv�B���[���c�k�b���2��B�m�����N0��p����%"����Ė��H���a!8���]Q
X��S"��������֡�eQʹ��>���,�7�.�P$}�6�1�:[��F��ճ.�<W���A-L����q|.:��`]��GR�-���m�yfLDrPI�n��u(#�P=1�ΰڛݯXY�2�g�z'ed��_q�K���a�Y����uR{��@���>����m����cn�X%�g������n7W�$Ƀg�)�-~o����ۭp�#8���6��s�����y����ho���u�T?�o����_�p��!�:�����Z�zȊ�L�'՘?@��V��a�0��%����R��휮7�xb+�v~�ʷ-��g��嗬��!�yb!����AH!������c�z��J��~S#0�tr���������W����=��}"��i7Z����D�/���m�"(z�Q̸$���l���^���=w�R��7Qp$�Ã A< �Ǭk���C�v`�[m���ބ�6bך���inۀ�h��]�?څJ��ť�.���R�6����Q�������yJ��. ���"}�D�B@*���Py�L�����&����#���̂v|��I�L��d�ƹ9*9tC4bH���ӏ�(89�vP\�ƽ=q8�U���>K�?���O+P�����(``���@�d�1�Xfϫ].P��$f�r�Wgv�"���k�9s9y�� p+����m)J���>^l�ڢ4�u��H^{���i�7�Z�F���]f_��趙7c�])&xX�F�b���a2�h�&����Ѫk��Z��bvDqX�ēvV�I�1�0��e�h���R|��̰�+��4��zbB�@�y�^&r���/�[�F?�\E�&ϖf��F���,�Lԡ+�&��m�Rj�[���L����֘xF���+Dl,���G��N<��)	Om�&6�����>�d|	x8ܚHi������ꀭ١��d/(� ܃�i��j�פ�&�� $�XV��\F�n����
7[N�Ð6�?�c���3L��\���(e�S�7uvfnӽ}7ɜ�&�6�Q l��ś����m���y���5�O�M�H�G0k��[��ݶ��d�6�톔]K�_6ׅD�ҝ���o"����TI�2�&��p�G��ץ@M{�|c{B+�*w3�<kV��F%l�;�.h�]�>��'0��Pԛ��Ijy
Wʐ��J���׀V��`��������6���&���b)2izc�19����e����}R����Yxqp7�VL�����&	Q�V����� ������j���r�@����SA�����4.��9l�7h���y�B�H$�[<�Z�[?�ɱ]�fΠ͑��^^/e4�M>>��:���acr�Vl�k�_��{f�d�h�	M2��G���m��đ�M��Z����a֤�jI��Ҟnu$����ͧ��W<j��!��[����W�F��|͘�bzLhv^�gLZ���,ڜ/�%��<���󏾳9��_a:��l&�<d���<"s�1:z�W��(����d�d�ӌ��[�b�g��U�Nn�ab�a0�Zٹ��nfIK���/#�N�G��� v�3�U�z8����LLe�H�S�����8�.��D�X�q��0(X�T��v�o&s�����~�'��!��`�H��1Wx>Ka��[�צhho}��eZA�[le[.��ӤR�ϳ���!0( ��- �A�λ�i̯��f;n�b-�Lc�é �KI+��;<.��38ϩ)X�Ų��MMsAw�M$4�����`Ox>�J�-�Y��	d�W��|�F��ᝧ��yM=FL0���٣m�KH��揇 H���:1��6hW<�B����;V�<t1�y ��u+�+�IK�)�4,&o�3/�=�l�nIdgK�c|�d�.Y:Uc9��u���V�,��^��O����i�= z����nR{B��i;}���y�����3�x&�:����;de�m�W�W�.��b�T>m�qX�]���R�Ʈd��Jx�M���Kr�fд�����/�:vx&t+�;�&�X��˼��]����aǘ�M?1��n夘: �L��Z�]�X-�Yţ� ���\�%�9�HY�>OWx�=���c�����N�)�mT����7�L��R�ni��'�&��$\��'�n��$�y��`㡟�a��^	L	TӮ���?gÙ/�_�i�m8j6��go��@d�3��%���*iy��{x�9(�A!�#kS{T���,,֮�7,JN���{���\����³Z�Y-����>�ߕB�Zl7_[j�C�y�s�K{��3��yL^�[�͕yp�׉�`4'�O�e��[1��7���G^�[p�a�s:av0@�c��^���Z�K�v_2�sװ�Ι�1��c�j'���P��}�~�Z/eӋeqZ)�N�6�»�Cp�9"G�%f��+��8.�B��~��ߟ�x�"�A:��y�O���;��D�ɔ��ͻ�jeK�=��6��[����x���K�S�zaG/L�� ��{T���:i���Aց�NdB�+���V��_��t>��a.A
�F���=Hf��ǎX\��'!� �J��1�sZ����C��4�mV��P�o�熜A�3-��蛙�^o���    BO>#-�yۙ$r��}�,��#]��	��',�1?�9���+��u��X���"��ʘ�ێ�>}V��Bݵ�\ҿ���3&[1v�@{��ܰ�d�ԇ�H�������l���&� ���0�{{�ӵ��پ�Ԯ��r���S�N�-�����MF �P�\]�X��P��þ�=�"f��i����HAP49P��#k;F����*�K���Y��6�!kFQi;Iʽ�sqA�ۧ�g��$�r�za{��.f�("��&'?��ٻa�]r��@^�1'�~^�}���*��_v����K�D���.O��o�7`�d�y���^�R�1drI��h��fa�}�����6��m�5��z.�y��CGp��cxԻ��bb=I3�4%�V��!�o��rŁ�&���(w���b��n���/�zM������aTn��&Ǩ��b�>���}u�&�Rn���Y[!3ߓ������Xȵ��@_�o��e$!�Z������������P�l�JY hw"�x������r��Ώ��U�,���$Iy*�bR9���$�<lG�v�YS2�e�a$�qs���mT0�������?$���-�m������>�ߛY���Z�?�s�l��rc���X�>��K�N&T�M����ĂY���ǒ0��d��Z_}2����&�Q��Q�B���1>�d��7�J�;�=%q��7�dX�~GR~�|`���=6���ܟ�ka��������im#� ���{{�����I2q���G���Z�~�{�!l����CM̠�f����=��dB�2*�r�iE[xצ�<dj��dtJ��<H�3w�?�����h=�9�C�M�_<��gb�.a^x�����EK(`�C)�A�u5��<�Mlߌg��v�<b��k�k�0ϐ�$Y��;3������z��in-��qp`��a�#�|�%A���p�X]��]���k�zY�(�.|��nk�6���ad��b�	~�,=p)S[�M��<����|�%O�-+C&X+8zBm�a��ׯ�\����R�ȂLD�N+���\��a� sf,j��FO{�,��7���k��]O�c�S��&x�O�$�P��Vmq쨯�̳��rJ�:��`,֖7�J�&v�`��A1s�gf%<�`[�1��_l0Y��=�m
V��M9���p��X�������V9�F��ҘaQQ�L�����q����eK/l��zl��]!P[���~l�lj�S�`5��"�k/˶�ZmH�wf?0�қ�[9Lэ��r��[��=��d���4�G�N��
&����ۏ��G7�8�o�HaIK��Y7�`�>2�8�"����*I�M];σ��nz8��=�g��Y4�����E5�ky<��j��)S��(3�\��A0���~�X;<VƉ�6������C	�~���+��Óޏq��J�˴��]3N�т�s�5�,�R�>�G����E<�7�v��(n�g����lǛd[.��g�F�`'� �>a�K�
���ђ%�mz��3KqYh䳲��g[k�[�[c
'�]��QЍ%�K�m���e�D��YV<��-d4m;.1�Ī� �oۘ�Rv}ϐO=�N�˰`�~z��jOY.2N�U*�ߞ*���:�%���	_�O��8�;��w���v�c"�T�,����� ʎ���Hw�8h���2)�F���>B��s��}��
����C��������P^Ru`v~�d)��a�*=fB�$*E5�$��'���-X�]C���^3u�W
ێx) �o�}��Vt�(��h�һ����~�RrH�h����>�0sH3�a����=�ش�HU�����+�L��FN��q]J�����"e�C�������7��(NW4��v��v�$�o�Ϧ�0�5������y0?�ht�k��{RdX�N�̌}��fV�̧�E~�VM����n�g_f_�;,��T������p��r�.S��?�aI������Ve(=���4( $����e��Q߹8��iT��>7������Y���ay��m]:[!Iӕ�>.p!�+6��Vw<_��{}�qD�~��@Gp:�Y=ıaQu`��/��,����H[�P���ũn<e샷��a!�j��gv��&��6d�&�cYb�O��i@�d~ȕGv�]X+�u1��K8d:˪��0$����_h\1����<�WJ�L_g�piGg��7})m]�J�`�S�q+5�]�3���ɮp��sC,��E����n�$ΰ��m�T�i��W��	
��K������'�zy{E��[S�\'��n�i�r�>J^	�w�G��#|�e�uc|n][�7��9���Yn����?�J].��G�v�=�ل��n�jwұ���99�7)�VحЙM�H�ct������lm��s�)���D!BS4������P������ez9	#��Ԭʫ[�j����b��/�7��)�@y}N:Q�k�V�$(8������y���o���1��1���=��Dz]�����<//C��Q�8�=�<��D����7^u`���)T�<f�(q�O�U��|�J�'m�h�++Һ@�a��0�U�;�}�u>*���J_���Y@~���g�:D����O�gׂ�9����HteT���U���cs�j�-6(�ٻ�B��3��������ՠ��eX~~Ȃ��xR����w�9��F��)E����|yFap�O���t��^7Ez႘B���X� �_ )m�b�8���?=pgd4���-���o<dٙ�1�ȰtF��m*F�"�o��Un.���]���0�B�@w�"1��I$���L�"д�/J�t��J�e�;���ȹ�1�^�JU͏$v����8���Ê��p�D��3\:u�r��fCl'��F�`e`1��ð���9��V�x�nW�{�ZU��д>��S8Z>�/X2�]�+B��j4e�}B����Z��]IB�T_m0��E��lR���~��p��c�M�t`ϓ�����v?���5���0|�+���k�b񂩯(�J�IO�f�ݏ{�?�?�ZN�b�+)��#{��婰B�j����b��!���y�:M놎f�a�
Q�1��"���!����+\����4��"	��b=WP�~$@��<��K+�@������xu�lפ����kU�S,cc����:��>�w��{Tͦ<���{d:!��_�"՝��iF����m��o�ءC���W�)�o%M����|(�m�;B�~��}�_ qA��,fߔ�3����!״Xd7c�vd\��\?b8��C��P!px�1.�|^�[�5(�r-���H�E!$m�S�^��Eq��aB�����>f
���ee߀!�n��4�Q�4��%O�a4�@��h���/i�ץ�<��1�W����Qf�oq�7Q�큃4CK�W�,����2w�>�����Ǫ�p�Լ�/�h���� �>��^⩒X��H��0������m+Eql�3r�>e�!f���-�6KW��{.�)���Z!��2����e���;f �q�n�x���ﴪLV|c�]Cfg3|�̰�[ㄬɭ��J�b�n ���DJo&����?�=0H����tt)3��@"'R�ct)B޹���$��oܪ\.����d;��?_��T\�x�����Z��
p� ��b��X:���nEz��Zl��^��Ra� �gP9|1yu�~[�P�ҏe��K ��v�*G�j�Ω8�5�tXB�.R���M��T��%���1w��D�k�me�������`�lG��o�{���X%�+Zsl��?�6�f�%�K��Pr�qWс
��+�+�s��i���)Fp�{�P��[�������٣�&s`��ejT��gp��a�1A+×NVL�;��$�ت�Rf�T}�ʠ2����3,S}k���sQP�	���+c����S��S�ɼ-��UZ��U^�9֣�rq]YiGƪ!O��f8�إ5��0�\�̓u9~5}k�X�2U���A��_��� �  ��K��������J{��%�@GYe�2y!����S��ڨ�$�n_(-�0dL��=x�+�W�O��rrj>���9N���ޚ
���c�N�6��Rj��"X����K���'=B�S���<��C������Y:�	���w��p��4r�������2�>`=�yj���k�6�ӡW,V�~���S����4%: ��@���ae���1��k��BE��ԁN�/��M���ϜB���I�ϟ�2Ϻ4=D��4��2۫��K��	����ŝa�;��}z�Q�A�i8U:��]aPY޶��ȧ�M�͂;. C%}�s�T�:���ۃ��A��c錜�OH4T���K�{B�G3�u�����.a�rо�,!)��.�b��X��ΣU�}"�z)�l��X��H?��)aL���}�p|]i����=2���)��e�ct܈��<7�<ܦ{!�K'���>��8t�=�dR����@�^�}i�̶fSXa�QT��Q����Y���$k�J�1/��X�y��vp���Q�8�2W1��)ؒ�^��)JΰbZ�{������g���7��-�(M�����˜9	�W����^{��2�Ƀ�	v;��{i?R:?H������m���ꨆ7_K���&:W�![��D��3)5�� y2���D��B�(�<�oɪ� #4�����veS��
�����4ƑE՝��I_b5�6K⿱���E��<��k	��y��m,�w�9�g\�v�����O=��0�v`5�����6m�:?��J������(�_��=r3"���#�X1�LhʐD���uX��DN�6�t]�$���}=�FY���r{4T$P�fm�t������j+��%�r.���EFzDa}}�9H��*9��A���&�iO���aD8ۮ:�Z�ZdG�䩉؊Їm:i�������V/���r[�z �b̱hb{��Ӽlwǫ�������C|ڹ3R�+u��G��j}�"S�\�&W���!��U�A��g�R�[���t��u�����W��X��j{�H�T��D�ް�� ��X��tqE���,�y�ݳF��E,ܩf2!�U�<�[,����6�}>ĳU�t�Պ���Πj�S��F#�{�4��]e������êl~Y]�X��ۣK4`���_�!v[IR巂'B�c���-�;ĐeZt��ê�Q���������E
P�;=Ƒ��lPUΟ���-L�������s#h���AU���F3sp�%*��`�/Q��8���t��k�Yt�� "G>���`&�+��sHv�u�}8Ǭ�]1�s���*�vفU{���1�$���"��2#d��uX���Qݣ�HEט1��l�؀�ޛ� Xu�1>��H���n(��kɐQ�"7�:��"��6Ͱ���k���Ux�2+��ީ���t'�F��ߧݭ��͡=�;���n'��Mށ�����Hw���Y���%.��f\�^�4�:��!<>������큛�'F�V�y��*�����0^��p����8P�*���4{��_��ܲ��]6�k�N.�i]t`=�[��}w��M����t�/�3�[�*���mI%&�-��7����	օ�G�z<���xE[��C�ZלO٩!���\O~!�D�b�e��f�O>6���16�����
?���
;�È'Z�����U��8Zszߔ��T2�L�Pό��}���1��0G�{ן���,�VX�d�8̨��r!����'���(]P�\)���R�bP��e}HY	N[�2��a�����^�I@@�#e�t<�h�c.�ڋ�|�4�L)ޟBI+0��\/~i"F,�"E�6���y�p��T"��>_�z��7V<�X�Z�u��t��V�03�� vh}3�K���(���֋ʮ�v�x(!���>��g|���ݯO΂�A��<����F�d��rIx83eŬqT�%p�uX����r��}$
L�-���$l���ጰ2�6��[$�+�/l8~�U���_�`�)��)Hڟ���9��+�_��"Y.i?q ��N�f� U�pQ���/�Usڦ���[Sxn����Э���9�\��';y�����uA!�ʠ|�5��~�.)�b��r�&���g�D��o�����M���߇��}x��Yq5�.5�Y�~}İ]�Y����Ԟ`��TR�N�~V�T7�r�CQy(���Au2���{�*c��!��U)��3h�Y[�:��o6־�.]p�d��)�e��J�HdP;�n���$��s���C�B�1Z�Iсu�P_�6{����C����g�Z����J=0mm2P�_��T�4�=H}��נ��(pb���:zH6g������q%b� c\o�ͨ��Bd�~����G��sh�ց6O����Ql�0��������#��_��a>�U�P�+)6�>?iѩ��CatĞ�C��C=o1t�}}��FƃT��2�e5c���l��boP��{Gь�Չ ��,_�T�!b٫ܠf��4�N~�<�[9���x�|�*�7����#�L����ע̃�0d��jTSQԌ���OQoC�Zwe� ��Yw�eĠfr�g �.7���l�:�H�B�ij���H�����)"���N_�jkP3�u����'\�����H�a3x9��f�o�GƂT����n�ϣ ����q�t`����@�!�:/�uԒUO�!圷7��~۟�`G��s�S�Z�:��N�!֑6��_����) A*jvhOh����a��%�[ҍ�I}@�|�=��`�8�Y���|x���0̷���1f3kV�4d���:
YG��ሣu�9�I�q�ڽ�#!-�*����p6"��5e�i^:���7�]�2(�_�ȇ��\>�lnbƺ��l����5I�k��Sd�p(ήh��u��۾B =ɳy�A�d�5�[Q)�[8�I{�_ȁ�ln϶��Vԑ�U�1R���h�����۾�2#|cQπB2��`��hz�r�`�ό��$P
k���r	�d�c��:��\���]�:Zb6��f�ir.����߄$��:�̙-KF�Ȯ�� PS<nPDl�����[^^px�~���6��_&j�+�=�sԵ7R�2��6U���q����,LT+��4q*�@Mݣ!Bg�;{}[6gv�Fc�uܲ5���z����^�z�?I��^      V      x������ � �      _      x�M�I��8�dǗ����I	�{�����Q���H��K'��535�_����������R~�]O����7N���zg/�7�zگ�߿V�y�>������k��_-�k-��_���U����Ϩ����j�����ح��?�����+|r�j�K��Og�fY��5&8���������?�7�m�]��9�x��N�0�jo[�U��qY����^k_�ǔ��c�:ï2Z��)���5�e4����>,���e��-�����Ǐ��7^�Zwݽ���q�l~�nMY{��^=�����V�},��և��y���b���y��m�uV��&/l��;���ѿ{��{��f�O-��9��g��Z}j���Ο�:�z�ϱ��Uq���:f2��3���-�Վ�ԑ];��4N��2D�����q�΢�~������9��l6�tN�#9���~���R��.{��*�A���w�U�;gw_��GO����{0~�����2�wMDi�?L~�O�v{��Ch���uօ|n�!��>�Q�ٶw���2�)<��o���^g<�ǈ*�n��Q��0�ߑ����3���S����^�S~��}.�ϜM���|�/ֵ�J�~�|m�ψ��V�r����t>�8�8����p���5Ν��=�>����;��9�E_��GV�������YZ&����'��<k���?���.~/Â2���xcHV_j;|XW��Pڑ[��Ne(�K��|��r8~��x�LU{U����ӿ��3#�ڎ�uد�y��u�Y�d#�}��z=������w�1�֕���G�����3�ޑ���N�0bR޺��i<S{�Qzc���מY2���me���&�朜�ᯱ?{L	�(��ε��yQ�:�yey�������~�j�Ϳ�Y�ǣ�C��a=�u�{�Y��Q���d����G��39Y-ë澻aK���$#	cNw�ωe��?l4:�F0�xWǄ������_Ǎ���q�F/�}<�-C��d�NN7�-/���,�S���<�-��Y#;��3�\�esg�;�{�כX��A�?�a�@�q��(��v�sk1/y ������6\�Ā��A5g�pX��7E�������;���}�Ԝ��0�v��z����pO���0 ���N��Ϩ��8,�_�±���k,����|�ǵpN]��!D��n�̳M샊��c1�=���r>m>�f|�祀�̇�k��ѩ/��u=�\G�� ��M|�B)-b�: 	����j8�BI��=Ț��G�f����x�Y���1�H���S��v��!�r�O��j7k逝�m;;p��8���]@��w���>�]VA7x�EG�x6��A�%��kiP6������ESq�K����	wz!r�x[ ��"��/B���O8�F& 7�O{�wݡ�EPw���l�=�����ca�Z�x<ؙUPf��qr^��\����a>�
lUA�Ș. -�i� zƎ�ĕRc(��񨓣W��� OE��0�т���U�t$���#�1b]guA:�u�8�+���
X��v�W��p��@����D��n�r�'��fὯ�$�"N�~\8�4��VAr�b��Ϛ ��t�q�3������pMãf�]/��~{͟��P=�8+����hKA�"�M<�$����:���^8{�3b��� =�hq�V��(*����,���Qq�p�w��_5���.o	)�.H ��Bլ�m�`ƃ+�i�ޡ���8<h���h���W������G@{�<�X{\_��P9 ��Q>���������=���Q�	cAj_@���������Ĵw}}���㇋����'H,��/�n������[,�;2\�mb�p*�Ѣ=�e����~[���t+���L��.S���W�+V�-��Tqa�+�V
�X�Ș�:L-[f���b�8U����1�]�ˆh�먮�G���7�Br�ZXcX�z�1�B�Ǣ�v_`_��]��)�o���u �/*�U��+�`Kd��a��0����sN8��X\�qE��3���J�����>HYh�pャa�z�6c���~/Q=�qԛA��c`Wcm�1GOķ�B��������5�������A�S4��7���4�K��˼ t�7�n��X8;#�o"���%�u�D��V��\��6���1��LLR�N�����=��V:���[\�����(�.{(g�CŞj��l]�ǁ������w�®]nF�l����k�	��*�Y@����&���nD�c�����|��Y�Z�P�
[��0@��'�e=tM���Op_���Pr	���u`:Й��∷�Qe�֑�d�c�qp��M|�@�k�?�qc)8sVs�/2]3���7��o�\���#>�LjK�1�����2��:w�c���;`Z�8�q;k��R3OMP�b}���稀�+��5�s#�D؄�EW�<���� u�F,��ex!���:����W�w4B9�i� {9=Z�@��0`��sϼh>w��aY�~�!�ޯ�h^��7q�'��+�^L6�.�&�_��3�bwM��:�n�>�2P�7�c��Ė�x0��N� �DFp�WF)��W��i]��Ms� <�7-�&}Alg��V�8k4��a�����;>��*Zb~���Ƹͫ��""]� ��a��~��d��
C�+R;ݻ1��05�������5�V59��\�c�p�5��42c���]GM,��il�˃��5���~�Y���� W�S�~��l��1b�)�;�_������sp���5"L�:�qj���T�����8��X�6��>���En��մ-(B�Wg5&K���P����V�t������T�8Y�t��(��SڎD%�`�7������Ü�{�n&t�.��7����S�^s�Λ�p�s�u&q8ѥ �m���A1Guy�b�g�*���Mk��h���E��aWig��8����/�2�4������Q��f��@m�G�d���>�L"��9$�=m�cX8b�n���- 3 ���I�$ X���{R_���{o�Y���S��E��y�1�N� D̝�qE{�Y�"��_�����3P�� kZ�[2��<�ʞ7�R1�I���3:�~���k�8�^'�i3��2�č�nPKp[M�y~��lA�C�������Z�X�[�x_�ٙ*Ӹ8��1�7�NwŕN�o��z8Ҏ�Kb�kv��e��g�M�~MU|�״]o�z�,�"7]��;QqAG�t����ZN�U��� ���k�6*���sb� 7�yN�O+9��������&��}�DĳL��
!��ϥ�sJ8x��߸�b�d!�7~��Enj�LVo��y&5�ܛ��y�l���,�3eS�@��'w1��&�R��U�9qm:`�]��N�b,0��v,7�\���*3� �e^g��s��
4��ͤ��uң9"�̲��';�5������c���H�\ڊ#k���J����p��I^�Hoz($(ֻ���;�p-������
%�;�80�u�=-�G�х�qJ~�Ff'	#۴��LSI=)-O������_1xA)�&�с}�N�:��ޏ8���YC�
���n�Ț�!��<��Ϩ(�)~��'�6a��R��?�UU�2>j�CB��$R�'r�A�ɩW�[`����#��ꛙ�Ȕ����g';�g�Ѕ�V5
�^%���p�X��!�������9sf�ܒ85
��n>�Md��;;�=�[��{歩�-59��=Ƹ+W+֬�,�1�O�`���4�%R�rw���$�ɣ�0�)Z�m���U:Ծ(������άN���GoM`�?xp���2W	ThB�#I����z�7��6���7jr[|�|E#@�(:�,0[�[�����r,��������ZV��O8f�"4l7�&����d�.�,	����0}���E�f���Ǔ��/Ӏt��pBoZ�5�*d=��L����-    �ڝ" K��V��S��o��:P�~�%�2��<��L�&)3��|���~�n<��&ّc��8'3��o쫚���y8�(���>+	���&��������aB3���اjDo5���[<4��:'j���oUA���j��z�+���D�F��%+�˛DF��[�+fw'�i������3P�E��yp�]PE��fJ�w�0�Ho��~�x�C�+�Zb\G���\���iN]?'�Gy�>�G��Ԁ�7zt����@�}�n����`�>3R� 0�7X�V��,;��)�3f\`ק`n�%����v"*BE#wP�c̜XY�(���ZVₘ��?�S�f�2�CCj��n�?�2j��@X ���e&��5�& ����������~����xc���H�F�=ip�1;�v4y��9˙�>h4F!<ΝݽU��A���4�t���<�).����
W˃��+	��p��q�����ߩ5lLʜG
5�O|��v�Լy��bɫoB�6[8oN��'v
�~��E��;���v��f`z����r~�S�×Z��v��@���h3���m��om�`� �8�`��.O%������U�Ęh&֢�"��s��9u��iM���M�L��6��s�2J�X)\pz<X��t3��)��8ԍ�fbIPD7>8Il��=�Ǻ�Pr���?1ʳ�)�GЮ�%���H�K�OR�o��},z-�(�+�ܶ�^��T��S8ԃ�0C���J� {���ߞ�
�#m���7<�U.O�o��{>�N!��By(�	�E�m��~���b�rU�Y������Pl��*�zM�,�q��S��&G�jC�M�=��P��\;�F����Ú ���P�'�C��eR��Dj��a� r�F4qNZ  ���1V�܂B  X��9��T<�Pv�~*��M���#x��a`����Y7��Mv����(�D�KW.q���Y��b �2�����4F{,IED���l{B@�խ���f�#��jp�����Y��tO2h	L1q�ӝ��Fb��6Q�H��؉�.9 +� �s��]�Xt�~b}x�R��I#M��پqY�p�L9��Hֻ�OqM9�<'��|9t��t$@	\?�R~g���}��X*�������%F;* >ɲ��X5��&�	u��t��jȁ���XRs�|�X����h��׊(VP�S�����Z�4�.Qk�u�dFF���4��9l�&����D���h�+J��R���4
�Ą!��sA�i>a�c�)���*���9��<(q�k_������U��������s��L�����D$Kǉ������#�XuPU�s�Y͏�W������`]NK��`�Ջ��I��"J@�Q���v̰0���	e7>����P֟�H�鷄�<n763QͦK���0��1� �*x���x�������Y�I߸����W�	�z�%��plh=w?�.^֪���b���x<y=�� v�����ٌ>x]���e�t����$��u��]_��w�e�Qe|r���p����M�sQ�q��=L�.E����M�I�`��Y��]�GYr_��� 7��Nf[<`qXّ�6>1��C�%"ǃ�{�������ď�vS��E=N
����Tkh	��)���_T�N�<Z�)֜1SG]r%�Տ`P��5��)��W�<�3�9H7Q��W���B'u��r�<�d��<l8(��nii�v�>Q�{X��� ��_��X��B�xP���u⣚�߸��p,���b"x���f�L�!��qPJ�u_����.|�Ǵ��['=YS�.�3�n^=��ni��k.B�B�	ͬ�C��&�Rs�Om�������p���=������������i�.�-�~��+{\����1x-���lrj���h��\q��][�t����&�>��`�	}�Dhq�V��T����;�b�y!����Aw
|�|�՘� V&�������Pb1^�d��0&N�e�_v%ը����c%��_%��dE_�a?w�5燵�o�I��џG����H���P�D�5�,�d�v*�YB��$Ԩ����C����z�=�9q����[���`�,�ˋ}�ǥiI氯'Iz��e���p�4��H��+��r%�"�ռ}S�e�\J^hX��#$�;���y+�S��� "�M���Pc
��c&6Չd/�<+�x<��D�!�0	��A��v`�
Y��%{�dʛ�yn̔�I$tc}4�C�U>�S5�m�8��11G������������G� ��K/
F�
�,\g{��Þ�s�+إ�yN�z��<�Z.��2�W2�f�G�c�:��`��O� �|؛���a�1�|��������U@�e�#�<����T���E>�C�V?F[ϡ������i�m��$��'�I�{��i)�A{c��PeiyҰ٫v+��Y�{��MY��!u�D�k
tX�c�.��kG�v��Pb�lb�c�<�B�;�i?�*���ypC� ]�Y4m�������45�3�>d�!g��WE3i�7[K��Md�~�)�9p��,8b���m�$��k2po�#OZc9��m�Z�X��'����Rz���q��?B���e^A��fF�tҷ�I�[GZ���2�:Do&yU���M����tz6Ě��7l6��e�/�z�|cܐ|�
�ݤlM'�d,Ģ�F��豫��Oc�6@������	�Xgu�c��"tf��ԁO���Ps�Ƽ��^��֘�"��Do�>�KqC�B�ƥ�I�3�L���y������ .R���n��$�;ͺ�o|�U/4�$�aWҘ׬�[lZ��"yҶ��HE�z�=�F
 I�;o�<	���[ŗ5+Tz����Y�� �"<C���`�t~5�RޓT-q��}�x8cx��duI���.e�^M񺥔���	g�~�u��/\�-˘]�]ב�'������*��˳.�� +q�kE(�S�M˙y�2��6c2��[2�9���W�k�qk�+�m��0���,�ү�vL�f��o��k�S@5��L��O�%ȮM���c���͂E�f��̗����s�̱@Of�B�	�}Hk��2Q�۪Ƽ�.�ξ��9=X�_�n�m}����Jg�n��/A!���p���
X�����$�n�!�\%se6v�r{O7�dR�<t�����+v[�<��űWb�{}0Rm���#��L�9
�i�fKh~b]��� ��ȹ|���K��h��YMIh?�� X+����^QO3�a1�̓�ՂS�|-h\�By�X��������K�r�`d�9���� >���55Y°tv��Y`��8��G�ȴ���幒������Q���v���i=h�P�2�xf���8�jx��7���$aO1�kir�K�NX��*r���� ���Kq���|�CE�����a^�1�=�˳?��,`��l��P�k��ZE�\y¿X_��,dM6�k�k}k���:���ʥ!�aw��a���Pϛ:�[/�q�1�2`��>~�
��j&L%M��������|�5ޒ���yc&b�:a.�<W��3���DDj|6-�Ϳ�@c�Փr��74q f��������Zc�<������q�֦g����YP{�W�ig�zR�X �HE��C`�����KPpI�fʉD�$vѡ�Z��I��.y㚷�R�mox��̺�>卧Ɂ�
<��F�mC�\����Ʉ�8H|�p�u��`z����"Jx�����4mvv[�B�x�S�n"��X�G�끩����uj}0o�_Ҡ]������ao�����P��C���� �x�,=���P�&�o:S����c0�be���|�.�=�eH�����(�L��P�����T��6ǭ�'�N��R�ds�K��;<��|��j�K~���o����?�"� �����L(��}��	�$p�~�f\Zg���H��8<�%��d`;^bW�y    Y�%�w�l����M}�`��'�Z	aB\�-2�R?��N5}��k�-&&�MdGC9Y��Z>�K`*���4���Ix�����*u\�(�~����,����0��u�1��&<ΐ�GŃ��S��;��������`k������!��`y0�bַz~�q�����\�צ��u����3u��.<�)D����x��a���cŜ�N���I��&{f�4�=��j!c�������+��)�р���aL�8�]
�6�mЀ�^X~oH���6텵Q�V��?��=Ph�~k��Lr0�!U�V��<�)��*��cӌ������۾ LcN��`3ik��.c�&mje��l�G�~�j�&j���<t�#�,H��!w�o����k:=�H#�C�N�P��@]%�Wm#*�pǂ)�6�|qiO�$���մ[�q��x�-c��:��T��%)X�z.+�$��cr�T~��H6�E-�Q4a�����%���+.�7G���{1a��n7��2t��g�דǾ��*�.����9�1o��Hfqs��~wW���޾0sN!]�+��͌�8��h 9�����X�Ӟ�7bB��=Ҏ�_-o��`�@�Z�AOFZ�K�p�F��B� w���G�2��S��J=�@A����:�z�
9%@�,!⿏�ΜR�k�G����ۥ"�*h�!Nyy���ҩNK�)z�����`pg�6�ma:(;����W���_�c$�����-��D��d����k��M�R���?�V���������ҕ�����[��o��-�N1��6��eE6�L�Ű^ QY�iF��cg�G��a��kʀ���.3�e>�9�F{?��&�
ր,�MM6Јnط���4�<��- �!�7�˥	oyM�ϩ}�u�$������v%��I���'�[�!?����o�p�[8;��-U���:��>��)o+�l���)l�\-�FK�f��2��#�������,�fR<O�ʽ�CZ��8��י]������c�����T���Qb�8��r�]�P�U�p�姙tS�'��}��w[>�E}��S���9m���.��R��|�����kz��m��x��ދ�.C [oIh�����	Z�W�y�xMyw�ַ��~����K�l��z�s7 �X�E�[Oy簍f��r>.	��*9F��:�}Mޥ%�j;/�y҄�?�/�@���Yݒ�����-��w�GhA�s)b"vj��XJ�6��k�ؓ�=�������o�0��;�(Tk�����\�;��!C���<��Q()l��/)��$��M�����̝h�%C�X�,;O|�NrO��<X�� �eΪ|�%\�IQ]I�����c�-x��/�+�Ǜ}���u;�V��8���'~|����$�MEBk�T�=�u.�P���t��sN��Քd�f5�k�c�z�	��`��w]������'��Aa��W�X}7�6�`��5���g�$��i\r��0M����G�=��n�璎���h�ų�ݍI��6|0/G3)�C`��g�țd �ZFMQ�n�C������\���� j�n��螂Ip����]s[1�w��oᡏ`��t�{�J���^g��E�>�jg�	���g���s�Y�5\�6u���ǃ��K'8wĺ��
w�9�\)�}��vA-���x�s��v��c���[!O�\��]���4�>r����#}���������t1���%�j����hx�L��J��I���m��|9,֞���F%e�e��&������J��O-�u�3҉kg�t���$A���/)(������^��|-�ݔ��(I�bZ��k���C���o#1w���l�	���s�\���;�E`{!�ɷ�	Ǒ���]f�Aw
#���t��c�!���|E����_%��mҭ�ŷ��X����,_gk1� �m�Y��Yꆷ�`��\7����Q1Od�ag��}j,�<#�8�]/&�2�w(��L��J����/K^���θ�`�/�P��u������tw�2�$.���-(��-�-���T��*�+�j����]^����WxځD┕�{b��,��[j9�W��U@��F�[�^�f��R���,�-��磺}͑#�R7�ݢa)�xe[m�}��i��U�|�޷7Wx�����CWrS#��Y9|���m��Gr���VJx��ʬ�$=��)�e�S���b�4�_�r�v�i������[/��hr�r}�&v�mS�U�r���5k�8�_FD����t�5sxa��ᤄf��bi��{ߙxnx�Ե�Q��->V�\޸:^��m�&�
-�M���%i69[�����E��zM�t���!�.ِ����ĀRsoSէ�6�.�u�=âo_���M=�U�$=�7�Ѣ��$� �B��P�&�� -^cf���ė�}�gC��
Ϭ��;���Ѷ-`寓z�6K��ߝ�v�~AT얶���3�`^[e<�e�`�C}�w]�`�O����B��D;��i�Ub���{�Z��b�u��ծ��t����u���49��-������wy���5��(-%"�����W֣��Vx������m���q�{|��)���(�N5���g5�N�5=\i?�`��MdG�n��`�*�Y?^�2��WD�G��@�e�dR65�dYّ4�}��fWܑ7���M�v��X�ڍ4!�v/^��ަ�l K��][qV�4��5��家$VD{v��t����n)���8mT��r'Jn��~�$-=>��$��s�٤��MhZ��=u֢��t�ml��d��n˥�MP���Y�m�����ty]��o1e߯#U��Uq��~��R�����p��#.���մ��^N������q.d��;k}<��?'�	����kW�;lwx�i��g��yn���5�\��6��h�m�7 ��#��X������_��}l/.&���	�w�N���(�6FZ�?��M��ܧ��ꏱ<罢^z������#v�}u����n�f`�ˡ�wv���r�T]ɡ5#7�1,�|v=��ezY{+����U�C���\'J(i�P�1��
������ܛ�Һ�t֖����ޣ*[ɚR����I��+���x�ݢ��,>`Cʃ��j�zؒf"��U��a�<��ps�e9T������GLʉ�K���ߕ>mǶ#N�C��I����\��7f���3U��y!R����_��MKz�So��Ge�\������R�
��������gzS���}x�e�^[EmL�=l�v6�K@G���%��`��eQ�kL��w�fϏ��^Ɋ`]F�L���A���z��oΣݛ"r�E� ��ъ��^�s��٤.wܪa�1���Nզ���RU���,�q�Wm�Q����)�E���tk{���F~��֔�fq�Œ��b�~o�LH���^O�$�_?$=V�?էO��a;��e��%�K������|�,Mxb��3����ۊ��3v�m��w��K=��^�Y�m.�TY����#�?ҁb��߰��A�R\�eh��K孡��~d�	tϸ��t�zŃ.<5���e�
ݴ�"�eW����`��d��4�F�)_�􌛌(P�km��1���$�*oJ"�ȼ�Z�U�M5L��eنr�Z�󾃕k nHq̾q{L�y^�`�3>��ۇ��h�tӛ��\>�5�n����^�/*��T7w~-���]�q��H̴��m��c�t~�gm�>5�����F��WkkG�P�|y���r��-�aG���*a���)Xl�ι��X�T�C/��3;{����hyx�pK�a?�t;�R�5��M*ISTQ�����-y�u�}�7�i럖lI{��3l���9�РP�[�v������n��~`ڄ�Y����:ֽx��&96��5	�\3o��y�ߑ�	:5}�ލt��̍��7� vs��(���I�n!i�tH���9寛�_4V�D<(��&�}�sۨN��Z�&�n��蔟�Y���}by�m����;�+�g�)���ݡ$��J�����C��^@�d4�קp�WB�������H��0��C��(�F��    �AU�o�/\O1Np�Q���?���?�t�     