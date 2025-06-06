PGDMP  0                    }            rede_social    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                        1262    16387    rede_social    DATABASE     q   CREATE DATABASE rede_social WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE rede_social;
                     postgres    false                        2615    16409    rede_social    SCHEMA        CREATE SCHEMA rede_social;
    DROP SCHEMA rede_social;
                     postgres    false            �            1259    16398    posts    TABLE     }   CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    description character varying(200)
);
    DROP TABLE public.posts;
       public         heap r       postgres    false            �            1259    16397    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public               postgres    false    221                       0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public               postgres    false    220            �            1259    16389    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16388    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    219                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    218            ^           2604    16401    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    221    221            ]           2604    16392    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    218    219            �          0    16398    posts 
   TABLE DATA           9   COPY public.posts (id, user_id, description) FROM stdin;
    public               postgres    false    221   �       �          0    16389    users 
   TABLE DATA           0   COPY public.users (id, name, email) FROM stdin;
    public               postgres    false    219   d                  0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 4, true);
          public               postgres    false    220                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 52, true);
          public               postgres    false    218            d           2606    16403    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public                 postgres    false    221            `           2606    16396    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    219            b           2606    16394    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    219            e           2606    16404    posts posts_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_user_id_fkey;
       public               postgres    false    4706    219    221            �   \   x�ɱ� ��n���Dp{;-m0P\�|s#���I��H#͐���,5�#G['�%���bR�'O+��D-z$+���^��t�>0���c      �     x�m�Kr7���S�(R|�,ɢ��D�R�ʦ9Ӝ�0�����ʇ�J:D.���'IC���l8�5~̠h�v�N-ѵ�,��|��Յozgp�P]blɢ^�EB4�_��T�����3�СP�`a�ِ����ҁZ!�����y�1T��wz��ջj
��[j��h��vGO>_��|sx��*B[���;ߟ��qyx)x)Bc���-D�>��|*���0�z�{����A�Ň��|��ysH����r^ԇ�Z����nw
*)�|�>@sd�f��\c�`P�
U&��$�c��Ƥx�+B>(��M��W�|H�)2�6�Na�7�"Uhg*�I_��8��Kn�q�����9��:��ᣡʧZ�Ë+ier�j:L,��NN0E�UQg`}tpŲC���g�hJ��cS�)%�J���4rh���z�%'���(�C����-�
G��Y[\Y��\��-����4Ց�e��1�a8�r��һ��_|�P7�U����=�ʅ)���-�z~ȥ|"�[��h��978�y�����_9C�3qv���$+�\÷4m.�,)8��i��7Z̔#;i��0	9nʄ�#q�C�Szȥ�O<�ƜD4�du�Q��̳r��??<<e�qɌ'�vS�*� ���w���Y�gܛ�e=�dg��9,}���ѐ���}h�?���C.�)��n�f;G�c���~�z�����V]�܉<�]u e#X���޳��9��Rj�d�-tJ�R6��R-k"�@���)%S��E��r�|#6'Ǟ���֐��<�V�4e��9�s{��uH�0��2	�a��Έ�J��ސэӈ��:uahE��A"��$�~���d)}�7<�b]%���{�޿7"�_     