PGDMP     7        	            |            Northwind_DB    15.3    15.3 C    G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            J           1262    50942    Northwind_DB    DATABASE     �   CREATE DATABASE "Northwind_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Australia.1252';
    DROP DATABASE "Northwind_DB";
                postgres    false            �            1259    50944 
   categories    TABLE     �   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(25),
    description character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    50943    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public          postgres    false    215            K           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public          postgres    false    214            �            1259    50951 	   customers    TABLE       CREATE TABLE public.customers (
    customerid integer NOT NULL,
    customername character varying(50),
    contactname character varying(50),
    address character varying(50),
    city character varying(20),
    postalcode character varying(10),
    country character varying(15)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    50950    customers_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customers_customerid_seq;
       public          postgres    false    217            L           0    0    customers_customerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;
          public          postgres    false    216            �            1259    50958 	   employees    TABLE     �   CREATE TABLE public.employees (
    employeeid integer NOT NULL,
    lastname character varying(15),
    firstname character varying(15),
    birthdate timestamp without time zone,
    photo character varying(25),
    notes character varying(1024)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    50957    employees_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employees_employeeid_seq;
       public          postgres    false    219            M           0    0    employees_employeeid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employees_employeeid_seq OWNED BY public.employees.employeeid;
          public          postgres    false    218            �            1259    51022    orderdetails    TABLE     �   CREATE TABLE public.orderdetails (
    orderdetailid integer NOT NULL,
    orderid integer,
    productid integer,
    quantity integer
);
     DROP TABLE public.orderdetails;
       public         heap    postgres    false            �            1259    51021    orderdetails_orderdetailid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderdetails_orderdetailid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.orderdetails_orderdetailid_seq;
       public          postgres    false    229            N           0    0    orderdetails_orderdetailid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.orderdetails_orderdetailid_seq OWNED BY public.orderdetails.orderdetailid;
          public          postgres    false    228            �            1259    51000    orders    TABLE     �   CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customerid integer,
    employeeid integer,
    orderdate timestamp without time zone,
    shipperid integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    50999    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public          postgres    false    227            O           0    0    orders_orderid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;
          public          postgres    false    226            �            1259    50981    products    TABLE     �   CREATE TABLE public.products (
    productid integer NOT NULL,
    productname character varying(50),
    supplierid integer,
    categoryid integer,
    unit character varying(25),
    price numeric
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    50980    products_productid_seq    SEQUENCE     �   CREATE SEQUENCE public.products_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_productid_seq;
       public          postgres    false    225            P           0    0    products_productid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_productid_seq OWNED BY public.products.productid;
          public          postgres    false    224            �            1259    50967    shippers    TABLE     �   CREATE TABLE public.shippers (
    shipperid integer NOT NULL,
    shippername character varying(25),
    phone character varying(15)
);
    DROP TABLE public.shippers;
       public         heap    postgres    false            �            1259    50966    shippers_shipperid_seq    SEQUENCE     �   CREATE SEQUENCE public.shippers_shipperid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.shippers_shipperid_seq;
       public          postgres    false    221            Q           0    0    shippers_shipperid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.shippers_shipperid_seq OWNED BY public.shippers.shipperid;
          public          postgres    false    220            �            1259    50974 	   suppliers    TABLE     ?  CREATE TABLE public.suppliers (
    supplierid integer NOT NULL,
    suppliername character varying(50),
    contactname character varying(50),
    address character varying(50),
    city character varying(20),
    postalcode character varying(10),
    country character varying(15),
    phone character varying(15)
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    50973    suppliers_supplierid_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_supplierid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.suppliers_supplierid_seq;
       public          postgres    false    223            R           0    0    suppliers_supplierid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.suppliers_supplierid_seq OWNED BY public.suppliers.supplierid;
          public          postgres    false    222            �           2604    50947    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    50954    customers customerid    DEFAULT     |   ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);
 C   ALTER TABLE public.customers ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    50961    employees employeeid    DEFAULT     |   ALTER TABLE ONLY public.employees ALTER COLUMN employeeid SET DEFAULT nextval('public.employees_employeeid_seq'::regclass);
 C   ALTER TABLE public.employees ALTER COLUMN employeeid DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    51025    orderdetails orderdetailid    DEFAULT     �   ALTER TABLE ONLY public.orderdetails ALTER COLUMN orderdetailid SET DEFAULT nextval('public.orderdetails_orderdetailid_seq'::regclass);
 I   ALTER TABLE public.orderdetails ALTER COLUMN orderdetailid DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    51003    orders orderid    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN orderid DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    50984    products productid    DEFAULT     x   ALTER TABLE ONLY public.products ALTER COLUMN productid SET DEFAULT nextval('public.products_productid_seq'::regclass);
 A   ALTER TABLE public.products ALTER COLUMN productid DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    50970    shippers shipperid    DEFAULT     x   ALTER TABLE ONLY public.shippers ALTER COLUMN shipperid SET DEFAULT nextval('public.shippers_shipperid_seq'::regclass);
 A   ALTER TABLE public.shippers ALTER COLUMN shipperid DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    50977    suppliers supplierid    DEFAULT     |   ALTER TABLE ONLY public.suppliers ALTER COLUMN supplierid SET DEFAULT nextval('public.suppliers_supplierid_seq'::regclass);
 C   ALTER TABLE public.suppliers ALTER COLUMN supplierid DROP DEFAULT;
       public          postgres    false    222    223    223            6          0    50944 
   categories 
   TABLE DATA           K   COPY public.categories (categoryid, categoryname, description) FROM stdin;
    public          postgres    false    215   �O       8          0    50951 	   customers 
   TABLE DATA           n   COPY public.customers (customerid, customername, contactname, address, city, postalcode, country) FROM stdin;
    public          postgres    false    217   �P       :          0    50958 	   employees 
   TABLE DATA           ]   COPY public.employees (employeeid, lastname, firstname, birthdate, photo, notes) FROM stdin;
    public          postgres    false    219   �a       D          0    51022    orderdetails 
   TABLE DATA           S   COPY public.orderdetails (orderdetailid, orderid, productid, quantity) FROM stdin;
    public          postgres    false    229   }f       B          0    51000    orders 
   TABLE DATA           W   COPY public.orders (orderid, customerid, employeeid, orderdate, shipperid) FROM stdin;
    public          postgres    false    227   r       @          0    50981    products 
   TABLE DATA           _   COPY public.products (productid, productname, supplierid, categoryid, unit, price) FROM stdin;
    public          postgres    false    225   �w       <          0    50967    shippers 
   TABLE DATA           A   COPY public.shippers (shipperid, shippername, phone) FROM stdin;
    public          postgres    false    221          >          0    50974 	   suppliers 
   TABLE DATA           u   COPY public.suppliers (supplierid, suppliername, contactname, address, city, postalcode, country, phone) FROM stdin;
    public          postgres    false    223   r       S           0    0    categories_categoryid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_categoryid_seq', 1, false);
          public          postgres    false    214            T           0    0    customers_customerid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customerid_seq', 1, false);
          public          postgres    false    216            U           0    0    employees_employeeid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employees_employeeid_seq', 1, false);
          public          postgres    false    218            V           0    0    orderdetails_orderdetailid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.orderdetails_orderdetailid_seq', 1, false);
          public          postgres    false    228            W           0    0    orders_orderid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_orderid_seq', 1, false);
          public          postgres    false    226            X           0    0    products_productid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_productid_seq', 1, false);
          public          postgres    false    224            Y           0    0    shippers_shipperid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.shippers_shipperid_seq', 1, false);
          public          postgres    false    220            Z           0    0    suppliers_supplierid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.suppliers_supplierid_seq', 1, false);
          public          postgres    false    222            �           2606    50949    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            �           2606    50956    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    217            �           2606    50965    employees employees_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeeid);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    219            �           2606    51027    orderdetails orderdetails_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (orderdetailid);
 H   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_pkey;
       public            postgres    false    229            �           2606    51005    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    227            �           2606    50988    products products_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    225            �           2606    50972    shippers shippers_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (shipperid);
 @   ALTER TABLE ONLY public.shippers DROP CONSTRAINT shippers_pkey;
       public            postgres    false    221            �           2606    50979    suppliers suppliers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplierid);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    223            �           2606    51028 &   orderdetails orderdetails_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 P   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_orderid_fkey;
       public          postgres    false    3229    227    229            �           2606    51033 (   orderdetails orderdetails_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);
 R   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_productid_fkey;
       public          postgres    false    225    229    3227            �           2606    51011    orders orders_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customerid_fkey;
       public          postgres    false    3219    217    227            �           2606    51006    orders orders_employeeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employees(employeeid);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_employeeid_fkey;
       public          postgres    false    219    3221    227            �           2606    51016    orders orders_shipperid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_shipperid_fkey FOREIGN KEY (shipperid) REFERENCES public.shippers(shipperid);
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_shipperid_fkey;
       public          postgres    false    3223    227    221            �           2606    50989 !   products products_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid);
 K   ALTER TABLE ONLY public.products DROP CONSTRAINT products_categoryid_fkey;
       public          postgres    false    215    3217    225            �           2606    50994 !   products products_supplierid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_supplierid_fkey FOREIGN KEY (supplierid) REFERENCES public.suppliers(supplierid);
 K   ALTER TABLE ONLY public.products DROP CONSTRAINT products_supplierid_fkey;
       public          postgres    false    223    3225    225            6   �   x�5O�n�0�������T�@�.�tJ�8�A�)����t�����D{\!|�ҡ��I���/1�T��Ρ�ꞩ-9�r��_��;�k����[����t:	8��$KN���eщ�5���AR{�%��W�aUp��q2�^J����'�i���K8eݵ0樴�[za^�O��7M���;}��/�X�F�`bAh.6U�A���d�(s�����Ip,%,hAú����yt��)�y      8      x�}Y]�"ɕ}~EH��_�2�I��#P�]T��n��/DAA�I5����Zn��#��j$˲������H(�{,����Ȍ�{��D�����{~Y�t+���S���\:���I>)�O3֗N+â8nuٕtkav��������Aim��z#���[�w|)5��������K�X�U�3U�lx���]����Y~~vy��V�;I4,SX�,��N�ŏ�t������?�'�/WL�+�Y����y����:��v-<�n�C�-�2v+��xƆ�̭az��G��FJ9Yh,�7b:]U۰��!�
1���[��>-��9�ZVf�f7�6�<˹4��kQ����R��(���0���Y$��:
��ᛥTk�ɓV�.(��~���(�,��Ҹ�U���g��;>P��G���3�ou�Eg���S[��d�V�	3��������[�n�����I�\�%a���>��5����j��[ޡ�Ν��8�
L6B�F����b�y�E��aC9UKa<���;�r.=��r�$H�^G�EI�����TQ�u��j-�u+Yx�.�ڋ�,�|���j��?z�,(�����3��=Ɨ<�k��0��E����/�����W���g�%��)4�CBݬ�G�\b��?R Á��?�I�c+�© <Q�ǝ�*,O���K`��rxz�B�=�Q�KM�,�Y�|��Hf�ܗkQ�Fy@��.�DaY<�w�B|���&�h��� 򰴛�/%b[*#����@�]�rS�]��aI+"0�b�fވR���7��(g�Hα����� d����G+#3o9����#Q�/Zi;���62��^�F�a�0D{�ѹz��¿*u��gC[ZI��_����<��|�n��̿�xgX�(c�N ef�������Xy(
��}�K�,����4nuN����kj@N�B7��󡘺�Ht�	�e~,�)$�0vOo<k�_u^�e��k9+��3;��U��[d�_Ix��Kx����؅�����R����n���z�#$��j%�D�^��҄{���
=G���ܳq)���~F���7�k�zI�X=���f2��KdB��A���D��R͖���w�Ε\X>����.�^�� ��Wd��d�\����� kJ������3�r0�Qz_}���G\k�b��)i�U��6-��v��O�'~�?��D]Z�~^��@�ڈ��4[I�z�n�H=NÂ+i@!��1?|x�U|0Ң��6��?M U��[�Ij;��q0A��	Nf˵*
��k`��N ��8�_-R��d���x�f3�ő��
������i%�i��Bh��[R>�b&4��%�*43��BR��Z�r�ps���~g�m�x�*(�`Q'K�(0����I�9��Y _Ʈ-���X	l)�T"�X�����TC�����"}�f2(�IRـ@����D�����;L�.��9I��ڷ`b6�[�D�v�,���yRF���n�'�,�MI,M�{RB�J���ў��y�if ��;��+'���/����]�gD�'fo��,��"w���� Y7k��ݤ��������� c��3%:��S�]�?��V��!R2�8P� Y�,�N��X}�Eh � uȶ3u���G6 ��`N�_����;T�������%�]�{�����u��Ѵ�k�]�GlfO�8H0����[>\5��TKxX�����&h�y��g�T�h���aץY8(��Y�t�� u��p��{��C�V�0��e���s/xuP�S �zC��rtTHyv\��Y���{�XH���y9�<�kv+����Kp2�
Hs�[1v�dP�$g7>��#�"Ʌ����f��j]� ���4F�A�wX��=$�F���.���f�B�d�E0;�%}�;{'ʩ�Aϻ���w3%���$n��������7b
�!^a�8 �^ܨ�p�OD��7o.Jg7� �z��X�Ѳk�@��n�+I�
;�p������Wm-����A
X�^/&O�X�(��fK��ĔI�J�H�zcȟ?�U(�{"����'�<�����<��巘
Ժ/%�
6�j��^�s!90���7����1�6�%�
wB};E
1����	�Y�U9���WO%+���X����_j�b��+v���|��������ghU�� �;��-�.�t�Æ�����0�玽ye;��~՚���[]}�����n·��%�\X�eX�=�.�ԝ�O�h�����/�z�>��.��w�R�՝���l��77g�ge�g0u7o�^;'[$=(���+x�ŐU�C���]2�5d��J�D��f���Bn�u]PH"S)�UiT�J�-�0Aj]�개�-ymEF���h8���}�ִ��C'�ï���6��~?F@��f�쓳M!}W~�����(B�}	~*׍3tG�w����(�����Y��z+9 ��:zǣAr��yLS��+�1⮬/XOˏ�07c,��0�"ʡT��Z@=���A��{��~
�$��ǚ"c���a��)%
�8?�ɇ�G�߅i��`�g�BC6
J����3���<3�@X��8�W�bk��<�S�£(�f���]i��� ����D��\��
�z�4ۧ�-���"�	
 ����`��s��>y:3��_����`}È'��^��t�c�M[Y�*�������L3�*�ϵLK�MA���N��O�W��+0":�Q}+�R�T���P.-O������UIl�ְM����s��aR�0{ѷ�f�r�v�H��ҙ���0̠&��J*��1�bX�e�����N������*<&A��+��޳���q1<$�3�������/`F�ьf(ˋ�DأBW_��0�ڇO �j�#�_F=)"I��}�}�$�6;��(�FVA#K���?��Q���`:��m�_��o8-�Xy7�f�ʳ&��n�~����I* ���[M�x�A
���Kr�z�q��\8Q�^@�i�qp�|� �[ ���P��jFwdu�� E������I�*�h�+��C���h�(qd�8�2~�tA$��;zZҁ�@���C�`���s
�Q/)����S��Dn$gQ}��PG r�l�N:��������:5��1'��9&�9D�u��v�<3b��n7T<�*���K2�����;|��k��4 �=�*�G	��T�J:�L�:^�
����W���9Bњf6���=)@����2�d-�P?�2�2N��e����.hD��Ċƒ��,GZa�	���52,�O���mq<����Lc�u��3���D>dh�X�*ط<�⺪YL��b"��ڠ{L��ے��ۂ��/K6��A~��}�'9@�=�|�B˿�6��b5L���F7L4��ߧ�5�}�?��J���x�����\��#�&��贎f���IA�H��ĥ�ٽ�!w��Z|1F����}�Յ�HJ�g�g�Xpt�@N�#O!8à�,��c�:r�Ok�d^}�
��~F��d���#�?�%`�ň���R�+t�4�B���%�(�����{���E���҇�Ĕq���W��
���:-faF��P	�����x���R�M��o,�a;�߅�_��n����E��Î���lI6*oG�&dI�#?��cM���1��$0����jj����޾�������I�0������:���s�F��<���1�O��@oy���5�w��듲<�G(Mn�Z���=k�
VS&­,��{�ر��xO,w8�UnU'�Qr��
�@���GA�o����Xx]�}�a��~�08u�ȱ'�v8/�)��M�ي0���p������H׳$���sBJm���	�g�jO���Q;QZx�A� 2ǥ4I��S���o��,��W�Ot������+t�z[.A�F���RX�~c��eЫI�ab(XF58'���
H�C�V%�	����
K�ft*�E�1�?�� �   /^*�9����fA"V�X0�=������P�$�;K$'Y3�X���>,��:�2udXt���L5o�X�JyV	:LK�㰗�A�A��(�=(�	������|z������9@�I�*}� �2xF=K��翛��^�X���%~^p_=���&Y�Q8~n��Y���\o]~      :   �  x��VMS�8=;��o�*�J```o�cv�%[Ԅ���E؝X;��d������ڪ��$���ׯ�4ˮՓ3�e)[�d������x2=������n���z�7��nʶPQ;K��-9���9�Q^���~��w5]�٫��2�����'�AǗ���2�Q���p����Gr+�x�꒮�1�9%d�e���G�4~p*�od�[���)3�G�ٗ���ܖ��Q�)j:��.��:NeuQ�`�,��f�K�W�/�2�l����:�j���V�'Gm�]�R��^A{�JT���:V�e%�϶�R�ۨ�V6={Ve����ʦE�8m�Kgʾ�>�2h���s@J�y�#z��8a6�>
�����d����&ɡK�iIN=1{��eʹH9kY�͵���� @
`�A'+5����D�`��{U�.蛮�n�Oݜ��@����N�;��f_��(=�@''ӽf��f� �?�K*y홅��Z��{�^�!d(��;Y�e��TT��St^�^Ւo圴**-�z~���:�r����6K���o[���|�)�gU��g�P~�|"��|2�x��O��!�0��vHo���P�� Z���0��p��j��ӻ��|+�9�,�-D[� MmQ����Б����N����]�����̻�Jt��+ �z+D"��`�$�V�N	�^R��4�l�
|�l�+t�N��ŧ=:N]�-,[%���q�zx5�G�,\4`#�c��t�*��j��L���d"*4R����*HY��rP��;sԳ�O����H�zKWG3��M��/�BN�7� lg�+����e[ª5���7�7N��;^��'��`>:˖틪U�� ����0�u��:w:*�\�!��|��κZ�p�?�.��FC�c ���ȮY�,.�`S�a*b�Q�DCv8Z�&�	fMؘ-C���։=_y�w+��eo��� 2h*��i�â�����<�{�i�n����0���s��x�7WNf:�LO'��>�9q�E����^Gݕ*�$�oBG�WO�$������g��$�n-y�^����u$&Ϳ3m���zշ����i��l�kx|4p۰b�?�|t��EDa.�;�v��;���qv�8KA���G���P�J�J�uu�!�cp+a����:l��st�]�2<C�;����N�E'�<���wZ�1�;�,[�ptt8>������l����y�j@9~�0�M{,$���j�|�w>��Hi��      D   {  x�=�I�� D�߇�0Hb�K����ܛ���6�A(���<�1~c>�)�㉦=����F��S5~�>�T�/��M�����G깢���6��5*���>CZj�7���9��JP�/��]^��3v#�fk��L�{��g��;�V�Klx�&􀗛���f6��n���C��g�ƽ5����gO#$�gަ��	k:Q���T�'fSpLÊ�O����@;OH��D��Ո~��n\S}���rB��`��|C����x��j���g|�0HOJ�
��Ո����Ո7��݈����%�N~�&t�,+B{��_��򁖄�'�5m�_��#��ո_�,
���ڍX��5]�%�m܊�%Q�����5SA�$j�t>K�� freSx�U#��^i�|B�h�|RqS���F�^ĳ-
����C��lk*����l,F�&Ja�{}�ք�>j�4.���&��d,�����11&�9�ik؎5]�4��S���<�b1G��<�i£�p���\)B���&.��Ju������l��#No5r.�k=�eτ�S��ƥ���C�&�%��_Gc:������ղ����7d�S��ls-�W3��軛S�`�V�IbC�یx�o��R�H�s�c�s�����9p^'�l��jV����~~7s�|��.@I�ZK2i�D�pZ��;lމ��C�N�@DF҉����N�D�3;8ü��R�pnwk�VL�P��θ��w�r�p�/��S��S�z6;�g�K��o���$;���&5���N�É�������D:����,O�^||=�LZY%|2�?�ē�G=J�d�	�r>�a8���/ʕ��Kz(���%I�g�R38���,��+��1K��ݜ�����iV���q2���9�0k�,�;�[`4b�����hqQS������/���^ �4�_���%�$D&@�1����dD:P���+ �|k���ed] K�`VҔ�
+>��6��a}�6C��X\1/�wf3���[��t�lf	B�>���cyG�y7C7��X���xn#W1:�o��4����L��9�u���R^�r�����8i:C�@d�
�4���L" G��d䔘)� �*���f�(�␆Xd��4���3cϷY� W�n���O	x���+���fV�}X��iN����˳9d�sD�cbkSڂ�Q��$f��)lq�b�ӌ��~x\ֿͥ�����|^������q)m!�"�����!��HM9�؃#�f�����}�"�[��T�	�?��c4�ۆ�q��A�*�g��\�3���76fm��A�4�S�����<�m���Ǭ��������V���P�8�w���!��6y53�y�c��9�CzO���=�Jlʷ=�jl<nw :�lL�z7{C��.�́��X5���怞��&6������}Ĵ7��S!no �����8�\��0��r{G�3�L��6;�ɽ������(����A���e�8�nw *O=�����׾��{~ϩ��~���O����z�6�R1��6P��	�Ab� ��q� 8{�ࣗ�A��7^���$;m�=�v⫹zgnu�Q�Td�྾��m��R�B�������o� /�"7�~9�^s}왵E0�����jn(p�ܠ�
{KQeҰG,U����Ѭ���=b���h.m��.��?��	����~�u�X�>�2Cv6�5;x�F�����Q,��ްS,�"��%���c�X*�н���3Լ��a�.�ƽ��-�Q�'��R6��Wa�X:��O�'X��o��0��6v$�m���6��Q�mbنлm��ѝ�F>��o��2�됥� ��y�.�]�L*�[gh���4x�/uXۈ���y˲�N�����Sl�q�k��*'�v
�
�Sl�+�g��`v���%�����zv
�����Q u�􄍂\~Z��+�����Ek�(OHغ��]c���f�[`�O�)�
�����)�ݫ٧DN�-�;�T���N�a� +�����֤��������s�,�>V��p��g��h�+xp���W ~��ǇCe�8:=c��-��ak�@�L�!��T�݂,�����f�n�~~7�~�4�T�-��ch��d�v�-x԰x�v����Z�-|��H�] k/Yg�/xv�Em����ƶ���)�nA\Zev��t�ȱ[0�kv���c�L j9ն��S�g� C/[���-���=v���������n.�u�݂��n�݂������]��lm��~(m����ǛK#e�9p�w3;�������]P��q�.���'ѣy���l� ����g��y�H\��-W�՜��[_r>�g��Զ(���z���e<9-o�4�9g��h���a�ٌ�q��Ky�ڴ��ӻ�GE9O�WbNk;����m.�f�����8}��~D�f�c��O+�jVq��1��>ի85T2���_h�dg)��|qY����˔]��x]�(UEgf6�G>�N�b5��<���f�dޏ��ɲ��5f�hN}��ȃ�EE3�cQV�S:}�F�(^^�K�j�v�V
β:yz�~l�2�^�h�� g�f�r��Bv�He}�rbG����Z)� ��6e�쩑�[0�^hn��em��t��o>�㣨�ѼT�涺R"W�^n�����Y!-��G��h����:fzE��,Pq��Bg�<RfA�*�RfA.��B�OK)��J۾7�KT�.���K_h0���ry�.�2K�����)qs�q���ky<)Pk��>��]ͻ�[������i���o��z�f}0[��H���N�-����Po6��p��w�Վ�>�N���O�Ӹ[��1Ur��N�:E`��"�<Pk��7����(u�]���S0�a�fL�!��O�e���T���G������<� y��      B   �  x�}Y�q%9���z���ز�۱	�T@%_+B�Q�p&.v��fYWi����\��e�\����W`�YK@@u@Њ`@6��iE?n	RF�KPW�� �ؒ�2��O �f�eά���Q�%#kg	�
�`7�^��I:�R�HBG"�_ ��.��2���]�Ȉ�(���t��G���t��H��S�ϳ�rx�<hrB/� J��m�$a\n�O*�� �2����9v @��� 42rX�/	�m@V6����������[�((	�b�,-	����e�`zk��D����'���2Q=��(+��,���Q�G��0��K��b�2�j�zO6䪹m@"A� ��5�B8�k�v��^,�>���6��� ̆e���B9P�9eҽNү����8�� ��n, �=� �ky*, �P���I6.`��'ҟ �i��a���z���a���H����j��ÆJ]V��e�$t 3�Y������GZ@e�.�d#����u&�ڰV�H���,a��0lF&���L��C�$a��;���L�;�U|ǡ^�(к<�# �T��i�lKu��U�lI��P�i�����٘i+ ��%� ,V�E���዁��0�%�pb��M �6�.f�hd�����c��j|�ȩ:�k��a6`ԑR%\�
Ff�U�y�q �	\i/@c�r7#<
����9׆Y��� oyT�i��`6�^��gYYK���l����`d�*����g� ��mF� p�නg*p���3
pK�����m�� l8fn���u�ɒlllB�0$ �����`:@?���pu$h��]�	ް�wM&e��f�0�١��&C�oY7�M���ɂ,�pT�2)�\����«I�|�Q!��8lj�Z�I�!`ϖH���6�)9��A#�r���Rq �h�r�pX��K��	���ULF�E���M�)g]b��H�>�˶e/N�x6#P�C��M�������9"
�4��+�����n\YS�͐&����N["D!ɧ�:WFr�_�M[Ɇc��.�<�a��W@�d$�>ɡ>�H6�J���MqٌL8~�P\6S�Z����50._��g�= u6#g �}إeo��
{��p���ن΀��e`0 �W�*�����d	X�_o ���X�����i��
����6�È�C^�*��)���7���l�,a�g� ���\�o}& W�9�f2R�r��-�/ pr�8��~0o�W����F_�x�6�T_8�'wr�� �� ��� �l`NJ��7�F���.=�CM��i�-A|�
�P�Q? 9�[���g�-��?�<�SB���Ȝ��?��XYBg	����Nl�mF}�$ǡj������6� H7=���8������ICU
      @   ;  x�uWMo�6=�����,H�(uo��g��,��[�մ�d�><��3As��#������ꯙ�00v�UŪW�^�$�b�LG���{�{e?�
��Q�-l,x��X�˾o4,�T�sk:�K�ض����1)c�n��1ML?�s�;�]�.��`�B��Y�78��<3�ĳj;�9�_;]�c��5��lJ��$�f�U�\+~ﶝ�Kݶ[�شZ�D�S��4'?٢�pX�����5�[kP҃�F��_%��U��sm���\�b���15���Xx,��ܚneص[jvgꁤ$��8f�.�<�IL>�C�`0�"�8 B��&	�qН��Vy�%lV�  �	ߙ�*[�t�؍b�������Ō&�\;��׌p��&)ytO��9*��q�D�+m5��r�֛�ij�7� #g�A�4�E!� �R�Z��Q
���7���v�10E��Ϭ7X�i2#���}q�=�J����ȸsN���Z���+\�z4�t�`��� }ct�T��<&Ӳ���z�A�U�Z5���M o���R�%�'_�/
g��	��t���9��^=��ڎ_�Z/��$s�*�x�(t��8X{4��D���)�*���+�T��zS(��)�텔�5��) ��wÅbw���ٝ*՟]�z�	FNL�ᕪQ]�O)�@��K�)�6�'���|���S�"���s�(V����k�<�؍؄Q*"4#Ƿ�aA4�֭zT�vs驍�]52�(G�W�-F�vt=���.xeDNb�f���:\�yΡm��xyv���w������82����S ��fpKȕk+g?� ��c0�|�_������Vu�j7tii\c&��<���T�����9���@)Y��?��;o�d��l�TH��n�@��c��񌊌|�����i�L�顣A��*Ƚ����5�u�J��s�Q����x%�ר-���1��8�τ/k�P۷z�4{�m����zQ�;y�\Ә|l���%�ݑ�>��WT#�E)M�U�`ܝ��~��-�E��^>���|O�<��<�$M9(n+�q�.���յ��]��q�5�R
��	 `�
�a�V��==Mf�W�=P!�4���.�2S�����&U+z�E2� ����iJ��Ϲ��oӌ,6��ǿ�%1�iN��P�f��5�MӜ��H�5D@�pPvo�+�G9��ԫiV�J��81�1�Y5�3~etC�(5ٞ�df+��E&i��z�����f�$���R�L�Trri�ݹ�z���Rr*y�D��Z4S�̟!;�<�Q�W���f�_�r�_ٙ�@����a�o?�Ɗ�n��%N�ɚ�TB(�+`�Jì�V���0�{�?�pld����ūΠJ7���wF��^L*�w�aH�r�E�m�+'�l9Gl�?=�x����@g�a{JW1v�Z�q������q;�D�o�`K���,,@�a�w�o`"�	-��Mvr��8y�5S��h��ص��G�f���+�Ϻ�����_ς�OW�_YJ�i�k��s��-V�n��K���DH2In�`:�КK��Q��x��λp|N�CI�?;�����[�{�� 8ޠIN��ܨ���T�f�?C�p�U^��W�l����)ٍ��ң�C�0�a�ds�J��rW��;,x��-2���~��4�}���x��<!���G��ۯ�}{�����}��Z�@���+���w^
���/��]��=�?���A�x�Y8U�.��C(W㛿���A��]2ߗG��˽��訪k՘z|�Z�e*!������5�����+[?A-0,U;����p�/�?�O�;o�wD)�?���1      <   [   x�3�.HMM�Tp�((J-.��050�T055յ�06�2���,IMQHL�NLOE�76���2�tKMI-J�Q��,(��KG6�hB� �yQ      >      x�eV�n�8]�_q�& 6D=,ii')�+�c��*La6���,Ѥ���8?S�L-��j5;�����4���.�=��s���jAS�k�v�N�$�[����5M��KhljMc�`��������K~JEQ�S|z)��Ot��ӹ����Z-W���Jj-w4�\+���n@c�LeUg���X�p^�_f#�O�c��B��M�0�Z�5B�N<]ٵ�A��=ȥ2�n:�Y�����G�zhld��ܢ��'�1vƳc�̊^�>�vg��t������[�^��_�L�j-N�[���}|�!M�^l�a?%����^��P����I뤷�N�"�3w �`�����Q #�	�����p7��rv�U��,˒�d��P8��PH]Q9�"�ٍ�uku�_���XV�(!���t��l��؝�`E^������˪,{%�[m�⌦ �,b3�Z�%+󘐌����%݃8Q�휑,K���:��J���fy֫��\(�����S��s/�t�IioKk��y��'�C9f���v��4����W"|ի������ۢ�s����h̦�y:D�Q����AkJ�`��G�`ǒ��Y^��>�F� ��*iX �O@�G'�-��Sa��釋Z�x�P⅍�jğ��頪6���ҽ��y��N�(��%P>̓��
�������O�IC�����
a�z1r�V�J��pA��������C�@̲*�D��0;�CNu]��))��]x�S9��k�륳����7��F��24�7�Ki"%qg� ���s��<��3��1iY=�{��|�C�Wt	K��C�X��P�mQ�G@�Wk'��8O!��yU�e^Vo���U%G�r��b}�T��[����K���^�����a�<��`1,|-zC�~Bǰh�)�,E�"��[I7X��
��Qi	�A˭6@~��
��Y���Dw���"K"�C6V�Gk��|��<�W����w.��IB}�Fȭ�РI)8��au�~��"y����x�q�-;�<��"��Fg���}t���b���N3�f�.ڕ�kh���~�@�� ]�x��3}�;�r����^	0BPƤ������[�D��$;��.Z��ȗ���Ki���8|�EK>lJᔒlPe�$�����,5p��	 ��:�`����h�Cu&�;�r��B��f	�����Zr�=�KN�Xoa4c�C����!/�Hf)*E���-����).����)/a~4�ǟ���/y���$+�������RΦ;�����U����c����h[t	�?O/�Yײ<��'U/M�g��	�+7��.J��B����b$�(]�\�A}1OrI��4b�j|��g�@��G3`��)��c�g�M׶'�8P%]Iն� cL��Q:�
��l�4 '`�d@�S&FĤ*@V��Ű��lr҈��@J�h��O��yQ��=s
���ؠ�q4�Uݺ8���l�k�"	����I_G{��^Z��ZE��W�>hJSѽ&�0904�2��l��&��w��O�<��L���jK����A��&�5�����'�k��`9� ��h�Ɲgċ^��l���S�=�E^�E/-٥_���CT�V��9z2&.ެ( Y���C	W�h�CU��nepED~WU�2
+a�x����:'�2�8����Sv��;��;v}��+���1�jPu5H��:���?H�9�wb����ib;-�yu�e�e��<��e�<�>�Q9����4�Ǡ�����CC     