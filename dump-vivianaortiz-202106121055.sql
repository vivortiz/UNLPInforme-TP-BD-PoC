PGDMP          7    
            y            vivianaortiz    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    vivianaortiz    DATABASE     a   CREATE DATABASE vivianaortiz WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE vivianaortiz;
                vivianaortiz    false                        2615    16386    tplp    SCHEMA        CREATE SCHEMA tplp;
    DROP SCHEMA tplp;
                vivianaortiz    false            �            1259    24678    estados    TABLE     �   CREATE TABLE tplp.estados (
    id uuid NOT NULL,
    fecha timestamp(0) without time zone NOT NULL,
    id_tipo_estado uuid,
    id_item uuid,
    version integer
);
    DROP TABLE tplp.estados;
       tplp         heap    vivianaortiz    false    4            �            1259    24683    items    TABLE     �   CREATE TABLE tplp.items (
    id uuid NOT NULL,
    nombre character varying NOT NULL,
    prioridad smallint NOT NULL,
    id_tipo_item uuid,
    id_proyecto uuid,
    version integer
);
    DROP TABLE tplp.items;
       tplp         heap    vivianaortiz    false    4            �            1259    24689 	   proyectos    TABLE     �   CREATE TABLE tplp.proyectos (
    id uuid NOT NULL,
    nombre character varying NOT NULL,
    fecha_inicio date NOT NULL,
    version integer
);
    DROP TABLE tplp.proyectos;
       tplp         heap    vivianaortiz    false    4            �            1259    24658    tipoestados    TABLE     �   CREATE TABLE tplp.tipoestados (
    id uuid NOT NULL,
    nombre text NOT NULL,
    es_inicial boolean NOT NULL,
    es_final boolean NOT NULL,
    version integer
);
    DROP TABLE tplp.tipoestados;
       tplp         heap    vivianaortiz    false    4            �            1259    24666 	   tipoitems    TABLE     r   CREATE TABLE tplp.tipoitems (
    id uuid NOT NULL,
    nombre character varying NOT NULL,
    version integer
);
    DROP TABLE tplp.tipoitems;
       tplp         heap    vivianaortiz    false    4            �          0    24678    estados 
   TABLE DATA           L   COPY tplp.estados (id, fecha, id_tipo_estado, id_item, version) FROM stdin;
    tplp          vivianaortiz    false    204            �          0    24683    items 
   TABLE DATA           X   COPY tplp.items (id, nombre, prioridad, id_tipo_item, id_proyecto, version) FROM stdin;
    tplp          vivianaortiz    false    205            �          0    24689 	   proyectos 
   TABLE DATA           D   COPY tplp.proyectos (id, nombre, fecha_inicio, version) FROM stdin;
    tplp          vivianaortiz    false    206            �          0    24658    tipoestados 
   TABLE DATA           N   COPY tplp.tipoestados (id, nombre, es_inicial, es_final, version) FROM stdin;
    tplp          vivianaortiz    false    202            �          0    24666 	   tipoitems 
   TABLE DATA           6   COPY tplp.tipoitems (id, nombre, version) FROM stdin;
    tplp          vivianaortiz    false    203            I           2606    24682    estados estados_pk 
   CONSTRAINT     N   ALTER TABLE ONLY tplp.estados
    ADD CONSTRAINT estados_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY tplp.estados DROP CONSTRAINT estados_pk;
       tplp            vivianaortiz    false    204            K           2606    24703    items items_pk 
   CONSTRAINT     J   ALTER TABLE ONLY tplp.items
    ADD CONSTRAINT items_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY tplp.items DROP CONSTRAINT items_pk;
       tplp            vivianaortiz    false    205            M           2606    24696    proyectos proyectos_pk 
   CONSTRAINT     R   ALTER TABLE ONLY tplp.proyectos
    ADD CONSTRAINT proyectos_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY tplp.proyectos DROP CONSTRAINT proyectos_pk;
       tplp            vivianaortiz    false    206            E           2606    24705    tipoestados tipoestados_pk 
   CONSTRAINT     V   ALTER TABLE ONLY tplp.tipoestados
    ADD CONSTRAINT tipoestados_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY tplp.tipoestados DROP CONSTRAINT tipoestados_pk;
       tplp            vivianaortiz    false    202            G           2606    24677    tipoitems tipoitems_pk 
   CONSTRAINT     R   ALTER TABLE ONLY tplp.tipoitems
    ADD CONSTRAINT tipoitems_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY tplp.tipoitems DROP CONSTRAINT tipoitems_pk;
       tplp            vivianaortiz    false    203            N           2606    24706    estados estados_fk    FK CONSTRAINT     z   ALTER TABLE ONLY tplp.estados
    ADD CONSTRAINT estados_fk FOREIGN KEY (id_tipo_estado) REFERENCES tplp.tipoestados(id);
 :   ALTER TABLE ONLY tplp.estados DROP CONSTRAINT estados_fk;
       tplp          vivianaortiz    false    202    204    3141            O           2606    24716    estados estados_item_fk    FK CONSTRAINT     r   ALTER TABLE ONLY tplp.estados
    ADD CONSTRAINT estados_item_fk FOREIGN KEY (id_item) REFERENCES tplp.items(id);
 ?   ALTER TABLE ONLY tplp.estados DROP CONSTRAINT estados_item_fk;
       tplp          vivianaortiz    false    3147    204    205            P           2606    24697    items items_fk    FK CONSTRAINT     r   ALTER TABLE ONLY tplp.items
    ADD CONSTRAINT items_fk FOREIGN KEY (id_tipo_item) REFERENCES tplp.tipoitems(id);
 6   ALTER TABLE ONLY tplp.items DROP CONSTRAINT items_fk;
       tplp          vivianaortiz    false    205    203    3143            Q           2606    24711    items items_proyfk    FK CONSTRAINT     u   ALTER TABLE ONLY tplp.items
    ADD CONSTRAINT items_proyfk FOREIGN KEY (id_proyecto) REFERENCES tplp.proyectos(id);
 :   ALTER TABLE ONLY tplp.items DROP CONSTRAINT items_proyfk;
       tplp          vivianaortiz    false    3149    205    206            �   �  x��VK�$7[�;Ż�ɖd�Β����Lf0�M���%�Iy;�^T��փ"O����a����pb%���n�[�%�dx;tfuҲ�r��`��sL�r�Z�9�t��J�ɋV̒��Z�^�5�����G��A��Ҙ�\�u�������k�U��ŭ��ޤu1ei�zq��W��+uΖG��] ��x��X���Q�>Z�N��_C�b�B�j%��< &�*��C�j�I:�f*�)wk��߂8e�Ej�*@`YkP+�Y�m�'��]bǙ}������U+��\���[��禭�&>��$�����j�	���o����N-t�Yǣ�\�� ��s�)i Q��Z��;�	��΍�����^���o�����0M��Pg��Y�P�iiܚ��Sk��X�6�nx�`��� ����KcT#��x9A'ZYS�={	�̱i�}�����n�7���?Aح��	_g��j��2��;����e.��-<��S ̌�<0�:��y�'�K\v�q(��e��64��dY�l�7}b��cѨ)L��j�v���Z>A��ە�V�x������ Sq_�c�~�DO�s�D��2�&j�0	kw�TYn��G#�=�a�ud�2�I�KMG�߁1yCɛi�̶�y����7� C�ijG $���PșG;��<�M����݌;��Ok��N���%�r ʷ<qys	�lFG�N�Q�<h�ԛI�2B��s����"��2���F�?L�)������z>1��Օ�8eu~�ʹ�Q~����6=��\�<� 7�'���YI�&_=�m�D
7;�V�� �ق���P��raY	d�Ж�Oz[}9;ށ8V|T��v�����>�,S?5w�w9�R9k��0r	�i��U[-�ߺ��d�=� Ğl��p�k�h��W
n"��������n@���Ϡ,�z�ѭ��DE�E�����`��Ԋ;HTl ����____� `g`�      �   X  x���M��F���)|UE��r�,s�lX$���;����z� �΢F6�$�į�{d��2`��P��{�j/6̒���ʗ��>�j��j��_^������e[��SI:C�\��M�2Lc�1Sg�E�GK��cK@(�� �T��,x��a��N"(u�>��(9��Zi=-��^e�v0e=��So�c*G�P�k$ߐ3A�U� 
*.�0�ĵ Ղ�F	�J,�R氄�M� \�o
zp.*5'v�1�G��d
�0�ؽv�Љ,e׌j�?R<[�I-�HX�k�8��M��)yZj��|����|?�.���\����РZsxU_8��$r0���E&��3B��b�ba(q�'��I�/%b<��%}N�QZ0Us18AWTH�:C��/�z��`�]�칧:K���c��z>�w0�,qo����<=MH
,V���%�f�s(x�i�{�E �m��`hj�k�5������W�s;��W���W���Y�e&N0d�ԗ6��Ro���<qɑ�'c�$��9��j��q�C�5������ִ͕����5I֏!M��䘪L8*���&�O�S��{J��\�ly&�����3 yVap��Q} �����a�g��C�0jQ����f>��Y��������|�����ܷ��]��?cr�yb6��ņa_K��'� }j+�X[M��b=���o����G�����R����6OF��;(��@�	P}��#���Zo>�����ߏ�#:�'�&I��ctH���'Z�<�:����z��q���o��g�����m�I����=ݤ>M}�y�~F�s3�Zq�v�o��P�뛳��s�����������\ B7      �   �   x�M�AjE1���*��Q�.��NL4�B餻o~��$H��渝{�v�cv�6y�n*��z�������B!U�3t1�����WM����oP���m!����W�4B�x܈qApi	sF]�BhӍ��vY��9(��`�X�c,��X7�O,,�c���M���@[�mg�q�K׫�V}�i	ۗ��n0-&�D�~�����큹4��4l�bK��2��I��&���w�����ZJ�2�m'      �   Y  x�mRIn�@]���(T�Cu�2
d�Pر���ŏ�l����#�b��!�7~�ބ��]-{��J��W��D��E<�mۧ�n����&)�b��Î�s*PJr�Jc�fx;m���2^˶lcm��q!��-�n #%pb	�5��u��m]�.
���:�b��R� #SŒ�K4\͏?��6m�����+XJ\��Z�š*-���~]�V��2-�E�O_�PKF��h&!��>`��F�g9����e�<�ܑ�[ jM�U1�3�ƩFr�E�ҍ�}��y�R/&��H��.kUb���0���s������j�ق-Cd���F�(���n����2��>�p�Y��Gr��9�)�
`�UMt��X�0��BM����0��K��Ba���X��J�zH�������h�|i��sm�͸�bV�X��9�P��<�Z�y���v�������`�澬�����49���$S���Q��Bvi���(��J�}������%�F��0�̱�F�ͤΧ�/(��5�1���&���guE�｛�C���}]�~l�����o��x�@����;C&)G�TOV�=l�������t:���M      �   �  x�]�;v1E�U����J��M����qz�M����1J@D�H�s_��*i�!�%p���0Ū���V;=�N۶��:�K*::�
�oV��\�L�k�0}�u;�Z��x�DUJ0��ͫ.+D�Ct��`J�Ԧ4�t���k/}d[Քep�ˣ���Ą�5T1�u���׍�w���y��Q2����c�bS��/��z?�^Hb��Tg�#Պg�d�SP%Q�����s�{�W�r���^���2&�G�e���̥�E�&:t�h�t��z����[�w^�ATU	Bd�mj5@�<x��%Ů8==ϔs��̝o�hP������_�`0��49`�ɰA2��19��$�nz���_����
9Ƅ�}��
h�PY�U�!���\��܆>���ʕ�u�����r�"��a     