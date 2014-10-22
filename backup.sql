--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alergies; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE alergies (
    id integer NOT NULL,
    usuario_id integer,
    alimentos boolean,
    detalle_alimento text,
    picaduras boolean,
    detalle_picaduras text,
    medicinas boolean,
    detalle_medicinas text,
    otras text
);


ALTER TABLE public.alergies OWNER TO manuel;

--
-- Name: alergias_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE alergias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alergias_id_seq OWNER TO manuel;

--
-- Name: alergias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE alergias_id_seq OWNED BY alergies.id;


--
-- Name: datos_registros; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE datos_registros (
    id integer NOT NULL,
    usuario_id integer,
    nombre text,
    ci integer,
    credencial integer,
    "fechaNac" date,
    nivel_id integer,
    region_id integer,
    distrito_id integer,
    grupo_id integer,
    rama_id integer,
    unidad_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.datos_registros OWNER TO manuel;

--
-- Name: datos_registros_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE datos_registros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_registros_id_seq OWNER TO manuel;

--
-- Name: datos_registros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE datos_registros_id_seq OWNED BY datos_registros.id;


--
-- Name: datos_usuarios; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE datos_usuarios (
    id integer NOT NULL,
    usuario_id integer,
    tel1 character varying(255),
    tel2 character varying(255),
    correo character varying(255),
    direccion1 text,
    direccion2 text,
    contacto1 character varying(255),
    contacto2 character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    tipo_sangre_id integer
);


ALTER TABLE public.datos_usuarios OWNER TO manuel;

--
-- Name: datos_usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE datos_usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_usuarios_id_seq OWNER TO manuel;

--
-- Name: datos_usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE datos_usuarios_id_seq OWNED BY datos_usuarios.id;


--
-- Name: distritos; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE distritos (
    id integer NOT NULL,
    region_id integer,
    distrito character varying(64)
);


ALTER TABLE public.distritos OWNER TO manuel;

--
-- Name: distritos_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE distritos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distritos_id_seq OWNER TO manuel;

--
-- Name: distritos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE distritos_id_seq OWNED BY distritos.id;


--
-- Name: enfermedades; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE enfermedades (
    id integer NOT NULL,
    usuario_id integer,
    diabetes boolean,
    cancer boolean,
    cardiopatias boolean,
    hemofilia boolean,
    asma boolean,
    amigdalitis boolean,
    hipotension boolean,
    hipertension boolean,
    epilepsia boolean,
    sinusitis boolean,
    otras text
);


ALTER TABLE public.enfermedades OWNER TO manuel;

--
-- Name: enfermedads_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE enfermedads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enfermedads_id_seq OWNER TO manuel;

--
-- Name: enfermedads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE enfermedads_id_seq OWNED BY enfermedades.id;


--
-- Name: eses; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE eses (
    id integer NOT NULL,
    usuario_id integer
);


ALTER TABLE public.eses OWNER TO manuel;

--
-- Name: eses_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE eses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eses_id_seq OWNER TO manuel;

--
-- Name: eses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE eses_id_seq OWNED BY eses.id;


--
-- Name: fichas_medicas; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE fichas_medicas (
    id integer NOT NULL,
    usuario_id integer,
    vacuna_id integer,
    enfermedade_id integer,
    alergia_id integer,
    padecimiento_id integer,
    tiposangre_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.fichas_medicas OWNER TO manuel;

--
-- Name: fichas_medicas_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE fichas_medicas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fichas_medicas_id_seq OWNER TO manuel;

--
-- Name: fichas_medicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE fichas_medicas_id_seq OWNED BY fichas_medicas.id;


--
-- Name: grupos; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE grupos (
    id integer NOT NULL,
    region_id integer,
    distrito_id integer,
    grupo character varying(128)
);


ALTER TABLE public.grupos OWNER TO manuel;

--
-- Name: grupos_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE grupos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupos_id_seq OWNER TO manuel;

--
-- Name: grupos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE grupos_id_seq OWNED BY grupos.id;


--
-- Name: nivels; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE nivels (
    id integer NOT NULL,
    nivel character varying(32)
);


ALTER TABLE public.nivels OWNER TO manuel;

--
-- Name: nivels_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE nivels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nivels_id_seq OWNER TO manuel;

--
-- Name: nivels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE nivels_id_seq OWNED BY nivels.id;


--
-- Name: padecimientos; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE padecimientos (
    id integer NOT NULL,
    usuario_id integer,
    lechina boolean,
    hepatitis boolean,
    rubeola boolean,
    apendicitis boolean,
    sarampion boolean,
    insomnio boolean,
    paperas boolean,
    sonambulismo boolean,
    estrenimiento boolean,
    acidez boolean,
    ulcera boolean,
    asma boolean,
    reflujo boolean,
    bulimia boolean,
    hiv boolean,
    otras text
);


ALTER TABLE public.padecimientos OWNER TO manuel;

--
-- Name: padecimientos_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE padecimientos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.padecimientos_id_seq OWNER TO manuel;

--
-- Name: padecimientos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE padecimientos_id_seq OWNED BY padecimientos.id;


--
-- Name: ramas; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE ramas (
    id integer NOT NULL,
    rama character(12)
);


ALTER TABLE public.ramas OWNER TO manuel;

--
-- Name: ramas_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE ramas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ramas_id_seq OWNER TO manuel;

--
-- Name: ramas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE ramas_id_seq OWNED BY ramas.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE regions (
    id integer NOT NULL,
    region character varying(32)
);


ALTER TABLE public.regions OWNER TO manuel;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO manuel;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE regions_id_seq OWNED BY regions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO manuel;

--
-- Name: tipo_sangres; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE tipo_sangres (
    id integer NOT NULL,
    tipo character varying(6)
);


ALTER TABLE public.tipo_sangres OWNER TO manuel;

--
-- Name: tiposangres_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE tiposangres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiposangres_id_seq OWNER TO manuel;

--
-- Name: tiposangres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE tiposangres_id_seq OWNED BY tipo_sangres.id;


--
-- Name: unidads; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE unidads (
    id integer NOT NULL,
    rama_id integer,
    unidad character varying(16)
);


ALTER TABLE public.unidads OWNER TO manuel;

--
-- Name: unidads_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE unidads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidads_id_seq OWNER TO manuel;

--
-- Name: unidads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE unidads_id_seq OWNED BY unidads.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE usuarios (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.usuarios OWNER TO manuel;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO manuel;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;


--
-- Name: usuarios_rutas; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE usuarios_rutas (
    id integer NOT NULL,
    usuario_id integer,
    ruta_id integer
);


ALTER TABLE public.usuarios_rutas OWNER TO manuel;

--
-- Name: usuarios_rutas_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE usuarios_rutas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_rutas_id_seq OWNER TO manuel;

--
-- Name: usuarios_rutas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE usuarios_rutas_id_seq OWNED BY usuarios_rutas.id;


--
-- Name: vacunas; Type: TABLE; Schema: public; Owner: manuel; Tablespace: 
--

CREATE TABLE vacunas (
    id integer NOT NULL,
    usuario_id integer,
    tetanos boolean,
    sarampion boolean,
    rubeola boolean,
    tiroidea boolean,
    hepatitis boolean,
    gripe boolean,
    otras text
);


ALTER TABLE public.vacunas OWNER TO manuel;

--
-- Name: vacunas_id_seq; Type: SEQUENCE; Schema: public; Owner: manuel
--

CREATE SEQUENCE vacunas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacunas_id_seq OWNER TO manuel;

--
-- Name: vacunas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manuel
--

ALTER SEQUENCE vacunas_id_seq OWNED BY vacunas.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY alergies ALTER COLUMN id SET DEFAULT nextval('alergias_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY datos_registros ALTER COLUMN id SET DEFAULT nextval('datos_registros_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY datos_usuarios ALTER COLUMN id SET DEFAULT nextval('datos_usuarios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY distritos ALTER COLUMN id SET DEFAULT nextval('distritos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY enfermedades ALTER COLUMN id SET DEFAULT nextval('enfermedads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY eses ALTER COLUMN id SET DEFAULT nextval('eses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY fichas_medicas ALTER COLUMN id SET DEFAULT nextval('fichas_medicas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY grupos ALTER COLUMN id SET DEFAULT nextval('grupos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY nivels ALTER COLUMN id SET DEFAULT nextval('nivels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY padecimientos ALTER COLUMN id SET DEFAULT nextval('padecimientos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY ramas ALTER COLUMN id SET DEFAULT nextval('ramas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY regions ALTER COLUMN id SET DEFAULT nextval('regions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY tipo_sangres ALTER COLUMN id SET DEFAULT nextval('tiposangres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY unidads ALTER COLUMN id SET DEFAULT nextval('unidads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY usuarios_rutas ALTER COLUMN id SET DEFAULT nextval('usuarios_rutas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: manuel
--

ALTER TABLE ONLY vacunas ALTER COLUMN id SET DEFAULT nextval('vacunas_id_seq'::regclass);


--
-- Name: alergias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('alergias_id_seq', 3, true);


--
-- Data for Name: alergies; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY alergies (id, usuario_id, alimentos, detalle_alimento, picaduras, detalle_picaduras, medicinas, detalle_medicinas, otras) FROM stdin;
2	4	\N		t	Abeja	\N		polvo
3	5	t		\N		t		
\.


--
-- Data for Name: datos_registros; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY datos_registros (id, usuario_id, nombre, ci, credencial, "fechaNac", nivel_id, region_id, distrito_id, grupo_id, rama_id, unidad_id, created_at, updated_at) FROM stdin;
7	4	Manuel Lucena	15778807	20006627	2000-10-10	\N	20	76	307	5	7	2014-03-16 17:27:01.981419	2014-03-16 17:27:01.981419
8	5	perol	123456	123456	2000-10-10	\N	14	1	1	1	1	2014-03-16 18:01:32.844416	2014-03-16 18:01:32.844416
\.


--
-- Name: datos_registros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('datos_registros_id_seq', 8, true);


--
-- Data for Name: datos_usuarios; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY datos_usuarios (id, usuario_id, tel1, tel2, correo, direccion1, direccion2, contacto1, contacto2, created_at, updated_at, tipo_sangre_id) FROM stdin;
6	4	04125156029		mlucenap@gmail.com	Calle 32		Elvia Pérez		2014-03-16 17:27:18.590105	2014-03-16 17:27:18.590105	7
7	5	123	132	perol@perol.com	123	133	13	123	2014-03-16 18:01:42.451652	2014-03-16 18:01:42.451652	1
\.


--
-- Name: datos_usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('datos_usuarios_id_seq', 7, true);


--
-- Data for Name: distritos; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY distritos (id, region_id, distrito) FROM stdin;
1	14	Anzoátegui I
2	14	Anzoátegui II
3	14	Anzoátegui III
4	15	Antonio José de Sucre
5	15	Atanasio Girardot
6	15	José Félix Ribas
7	15	Mario Briceño Iragorri
8	15	Santiago Mariño
9	16	Caroní
10	16	Gran Sabana
11	16	Orinoco
12	17	Apure
13	17	Barinas
14	17	CSSN
15	17	Colonia Tovar
16	17	Guarapiche
17	17	Insular
18	17	La Paz
19	17	Moromoy
20	17	Siete Colinas
21	17	Sucre
22	18	Guacara
23	18	Naguanagua
24	18	Puerto Cabello
25	18	San Diego
26	18	Valencia Norte
27	18	Valencia Sur
28	18	Valles Altos
29	19	Acarigua
30	19	Cojedes
31	19	Guanare
32	19	Guárico
33	19	Yaracuy
34	20	Manaure
35	20	Paraguaná
36	21	Andrés Eloy Blanco
37	21	Catedral
38	21	Crepuscular
39	21	Palavecino
40	21	Torres
41	22	Alberto Adriani
42	22	Andrés Bello
43	22	Carí
44	22	Mocotíes
45	22	Tulio Febres Cordero
46	23	23 de Enero
47	23	Ávila
48	23	Baruta
49	23	Caricuao
50	23	Chacao
51	23	José Antonio Páez
52	23	Los Próceres
53	23	Mariscal Sucre
54	23	Santiago de León
55	23	Sucre Norte
56	23	Sucre Sur
57	23	Vargas
58	24	Cristóbal Rojas Urdaneta
59	24	Guaicaipuro
60	24	Independencia Paz Castillo
61	24	Lander
62	24	Los Salias
63	24	Plaza
64	24	Zamora
65	25	Luis Amigó
66	25	Parque Chorro El Indio
67	25	Parque Nacional El Tamá
68	25	Río Torbes
69	25	Trasandino
70	26	Coquivacoa
71	26	Pedro Henríquez Amado
72	26	Samuel Martínez
73	26	San Francisco
74	26	Sur Zulia
75	26	Zulia Oriental
76	27	NO APLICA
\.


--
-- Name: distritos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('distritos_id_seq', 76, true);


--
-- Data for Name: enfermedades; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY enfermedades (id, usuario_id, diabetes, cancer, cardiopatias, hemofilia, asma, amigdalitis, hipotension, hipertension, epilepsia, sinusitis, otras) FROM stdin;
5	4	\N	\N	\N	\N	\N	t	\N	t	\N	t	
6	5	t	\N	\N	\N	t	\N	\N	\N	\N	\N	
\.


--
-- Name: enfermedads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('enfermedads_id_seq', 6, true);


--
-- Data for Name: eses; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY eses (id, usuario_id) FROM stdin;
\.


--
-- Name: eses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('eses_id_seq', 1, false);


--
-- Data for Name: fichas_medicas; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY fichas_medicas (id, usuario_id, vacuna_id, enfermedade_id, alergia_id, padecimiento_id, tiposangre_id, created_at, updated_at) FROM stdin;
5	4	\N	\N	\N	\N	\N	2014-03-16 17:27:39.437306	2014-03-16 17:27:39.437306
6	5	\N	\N	\N	\N	\N	2014-03-16 18:01:45.829559	2014-03-16 18:01:45.829559
\.


--
-- Name: fichas_medicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('fichas_medicas_id_seq', 6, true);


--
-- Data for Name: grupos; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY grupos (id, region_id, distrito_id, grupo) FROM stdin;
1	14	1	PADRE JOSE MARIA VELAZ
2	14	1	DON BOSCO VII
3	14	1	CACIQUE TORONOYMA
4	14	1	ANDRES ELOY BLANCO 
5	14	2	ORION
6	14	2	FRANCISCO DE MIRANDA
7	14	2	Sra. del ROSARIO DE POMPEY
8	14	2	CRISTO DE JOSE
9	14	2	JOSE ANTONIO ANZOATEGUI
10	14	3	GRUPO NUEVO
11	15	4	NEFI
12	15	4	ANTONIO JOSE DE SUCRE
13	15	4	AGUSTIN CODAZZI
14	15	5	HUMBOLDT
15	15	5	SAN BENITO
16	15	5	WEY-TEPUY
17	15	5	SAN ANDRES
18	15	5	LEVI
19	15	5	ALMA
20	15	5	HUGO DE PAYNS
21	15	5	DON BOSCO XII
22	15	5	JOSE SMITH
23	15	5	GRAN MARISCAL DE AYACUCHO
24	15	6	MORONI
25	15	6	A.L.A.S
26	15	6	JOSE FELIX RIBAS
27	15	6	TOTOUBTAR
28	15	6	ROMULO GALLEGOS
29	15	7	LIBERTADOR
30	15	7	CHURUNMERU ELITE
31	15	7	LA AVANZADA
32	15	8	ORION
33	15	8	GENERAL SANTIAGO MARIÑO
34	15	8	INDEPENDENCIA
35	15	8	FENIX
36	15	8	BENJAMIN
37	16	9	SOROCAIMA
38	16	9	SAN JAVIER
39	16	9	MORONI
40	16	9	SAN JORGE DE GUAYANA
41	16	9	APONWAO
42	16	9	SIERRA PARIMA
43	16	9	MANUEL PIAR
44	16	9	KENYA
45	16	9	SAN JUAN BAUTISTA L.S
46	16	10	CACIQUES DEL YOCOIMA
47	16	11	SIMON BOLIVAR
48	16	11	PIJIGUAOS
49	16	11	SAN FRANCISCO DE ASIS
50	16	11	DON BOSCO
51	16	11	VILLA DEL SEÑOR
52	17	12	CENTAUROS DE APURE
53	17	13	VILLA KRISTAL
54	17	13	LOS HIJOS DE HELAMAN
55	17	13	RENACER
56	17	13	Plaza
57	17	14	C.S.N.
58	17	15	CSSN
59	17	16	MORICHE
60	17	16	DINIZULU
61	17	16	CAPAYACUAR
62	17	16	HORIZONTES
63	17	17	JESUS DE LA MISERICORDIA
64	17	17	GUAIQUERI
65	17	17	MAFEKING
66	17	17	SAN JOSE DE PARAGUACHI
67	17	17	GUAYAMURI
68	17	17	SAN JUAN DE LA SALLE
69	17	17	AQUILINO JOSE MATA
70	17	17	JUAN PABLO II
71	17	17	CHARAIMA
72	17	17	MAMPATARE
73	17	17	ALEJANDRO DE HUMBOLDT
74	17	18	BADEN POWELL
75	17	18	CRISTOBAL MENDOZA
76	17	19	HACEDORES DE ALAS
77	17	20	SANTA TERESITA
78	17	20	FENIX
79	17	20	ICAQUE
80	17	21	ANTONIO JOSE DE SUCRE
81	18	22	GRUPO NUEVO
82	18	23	BATALLA DE CARABOBO
83	18	23	INAGUANAGOA
84	18	23	LA SALLE GUAPARO
85	18	23	EXPLORADORES DE BROWNSEA
86	18	24	SAN JORGE
87	18	24	LA SALLE SAN JOSE
88	18	25	LIBERTADOR
89	18	25	RORAIMA
90	18	25	SAN DIEGO DE ALCALA
91	18	25	PROTINAL VALENCIA
92	18	26	ACUARIUS
93	18	26	IMPESSA
94	18	26	PEDRO GRAMCKO
95	18	26	Conquistadores de Carabobo
96	18	26	PIONEROS DE CARABOBO
97	18	26	CASUPO
98	18	27	HERMANO HIGINIO PEDRO
99	18	27	PADRE JORGE DEVOS
100	18	27	ALI PRIMERA
101	18	27	MONSEÑOR AROCHA
102	18	27	CRUX
103	18	28	JEAN CARLOS GUEVARA
104	18	28	CAPITAN ANTONIO RICAURTE
105	18	28	MONSEÑOR GRANADILLOS
106	19	29	TRIBU LOS BORAURES
107	19	29	MIJAGUITO
108	19	29	CENTENARIO
109	19	29	Mitar Nakichenovitch
110	19	29	NUEVA VENEZUELA
111	19	29	SAN RAFAEL ARCANGEL
112	19	29	KYODAY
113	19	29	TAMANACO
114	19	29	JHON STELZER
115	19	29	NUEVA JERUSALEN
116	19	30	ACECHADORES DE MAFEKING
117	19	30	S. DOMINGO DE GUZMAN
118	19	30	JUAN PABLO II
119	19	31	GUANAGUANARE
120	19	31	LANCEROS DE PAEZ
121	19	32	MAFEKING
122	19	32	GENERAL PEDRO ZARAZA
123	19	32	TEANCUM
124	19	32	LOS MORROS
125	19	32	JESUS ES SEÑOR
126	19	32	INDEPENDENCIA
127	19	32	DON JOSE DE VEGVARI
128	19	33	ELIGIO VARGAS OCHOA
129	19	33	ROLAND PHILLIPS
130	19	33	SIMON RODRIGUEZ
131	19	33	LEON TRUJILLO
132	20	34	CAPITAN MORONI
133	20	34	SAN JORGE
134	20	34	Francisco de Miranda
135	20	34	DOMINGO SAVIO
136	20	35	PARAGUANA
137	20	35	JOSEFA CAMEJO
138	20	35	MATACAN
139	20	35	CA JOSE PRUDENCIO PADILLA
140	20	35	NAZARETH
141	20	35	PITAHAYA
142	21	36	GUERREROS DE YACAMBU
143	21	37	SIMON BOLIVAR
144	21	37	GENERAL JACINTO LARA
145	21	37	LA SALLE
146	21	37	Dr. JUAN MANUEL CARMONA
147	21	38	HERMANO JUAN
148	21	38	NUESTRA SRA DEL CARMEN
149	21	38	CARLOS LAURER
150	21	38	CLARET
151	21	38	MARCOS BRITO
152	21	39	PEGASO
153	21	39	TEREPAIMA
154	21	39	EZEQUIEL ZAMORA
155	21	40	CARLOS JOSE GONZALEZ
156	22	42	SANTA BARBARA
157	22	42	BADEN POWELL
158	22	42	UGO ANZIL
159	22	42	SANTIAGO DE LOS CABALLEROS
160	22	42	JOSE FELIX RIBAS
161	22	42	LA SALLE
162	22	42	ORION LXXII
163	22	43	GUAKES
164	22	43	MISTAJA
165	22	44	CINCO AGUILAS BLANCAS
166	22	44	INACHU
167	22	45	TIBINTUCH
168	22	45	GASTONE-TONI
169	22	45	ZUHE
170	22	45	CONDOR DE LOS ANDES
171	22	45	LIBERTADOR
172	23	46	LUIS CAÑIZALES VERDE
173	23	46	ROLAND PHILIPPS
174	23	46	ASUNCION
175	23	46	ORION
176	23	46	FENIX
177	23	46	GENERALISIMO FRANCISCO DE MIRANDA
178	23	47	BICENTENARIO
179	23	47	LA SALLE
180	23	47	ARISTIDES ROJAS
181	23	47	PARAMACAY
182	23	47	HENRI PITTIER
183	23	47	DON BOSCO
184	23	47	NEPTUNO
185	23	48	AUTANA
186	23	48	ACONCAGUA
187	23	48	SEONEE
188	23	48	ANDRES ELOY BLANCO
189	23	48	DIPAHO
190	23	48	KURENAN
191	23	49	CLAUDIO FELICIANO
192	23	49	SAN BENITO XIV
193	23	49	Caricuao
194	23	49	SAN BENITO 20
195	23	49	SAN AGUSTIN
196	23	50	DON BOSCO ALTAMIRA
197	23	50	PLEYADES
198	23	50	Chacao
199	23	50	SANTO TOMAS DE AQUINO
200	23	51	LAS AMERICAS
201	23	51	DON BOSCO
202	23	52	KAKO PARU
203	23	52	RORAIMA
204	23	53	COMETA
205	23	53	ALDEBARAN
206	23	53	SAN JOSE DE CALASANZ 40
207	23	53	SAN JOSE DE CALASANZ
208	23	53	JAEZULU
209	23	54	Orinoco
210	23	54	Catatumbo
211	23	54	ORION XC
212	23	54	SAN BENITO
213	23	54	LA SALLE TIENDA HONDA
214	23	54	SIMON BOLIVAR
215	23	55	MACONDO
216	23	55	SAN CAYETANO
217	23	55	DOMINGO SAVIO
218	23	55	CLARET
219	23	55	DON BOSCO
220	23	56	SIGUANOI
221	23	56	MAFEKING
222	23	56	AMAZONIA
223	23	56	EMIRO BORDEN
224	23	56	CACIQUE TAMANACO
225	23	57	SAN JUAN BOSCO
226	23	57	NIQUITAO
227	24	58	CACIQUE CUE
228	24	58	Grupo Nuevo
229	24	59	DON BOSCO
230	24	59	DIVINO MAESTRO
231	24	59	SAN FELIPE NERI
232	24	59	PARAMACONI
233	24	59	LOS NUEVOS TEQUES
234	24	60	ROBINSON CRUSOE
235	24	61	RAMON OCANDO PEREZ
236	24	62	CAYAURIMA
237	24	62	CLARET
238	24	62	PARIACARE
239	24	63	ALFA
240	24	63	ALIANZA
241	24	63	SAN NICOLAS DE BARI
242	24	64	EPSILON
243	24	64	AMBIENTALISTA SAN JORGE
244	25	65	BROWNSEA
245	25	65	FUNTHA SIND
246	25	65	ASOGATA
247	25	65	COTATUR
248	25	65	RAMON VELASQUEZ
249	25	66	MAFEKING
250	25	66	SAN JORGE
251	25	66	COMUNEROS DEL TACHIRA
252	25	66	FRANKLIN VILLAMIZAR
253	25	66	CAPITAN MORONI
254	25	67	ROBERTO RAMIREZ G.
255	25	67	CARUA
256	25	67	LOS CHINATOS
257	25	67	CRUZ DEL SUR
258	25	67	CIPRIANO CASTRO
259	25	67	GISA
260	25	68	BADEN POWELL G.S. DON BOSCO
261	25	68	AMENODORO RANGEL LAMUS
262	25	68	BADEN POWELL XVIII
263	25	68	ANDRES BELLO
264	25	68	GUASIMOS
265	25	68	CONQUISTADORES ANDINOS
266	25	69	SANTO CRISTO DE LA GRITA
267	25	69	MEDARDA PIÑERO
268	26	70	LA TRINIDAD
269	26	70	SAN RAFAEL
270	26	70	SAN MARTIN DE PORRES
271	26	70	PAOLA PRINCE
272	26	70	BRAVOS DE PAEZ
273	26	70	LUCILA PALACIOS
274	26	71	SAN SIMON DE BELLAS ARTES
275	26	71	SAN JORGE
276	26	71	LOS APAMATES
277	26	71	SAN SEBASTIAN
278	26	72	RAFAEL URDANETA
279	26	72	GALLO VERDE
280	26	72	CAPITAN MORONI
281	26	72	EL PINAR
282	26	72	ANA MARIA CAMPOS
283	26	72	SHEBAO CONVOYAR
284	26	72	BADEN POWELL
285	26	72	LUZ
286	26	72	LA VICTORIA
287	26	72	SAN PABLO
288	26	72	LOS OLIVOS
289	26	72	MARIA AUXILIADORA
290	26	73	CRISTO REY
291	26	73	ADRIEL ENRIQUE
292	26	73	LA MERCED
293	26	73	Mariscal Sucre
294	26	73	Manaure
295	26	74	MARANATHA
296	26	74	RELAMPAGO DEL CATATUMBO
297	26	74	CELESTINO RINCON
298	26	74	PADRE ALFONZO COBOS
299	26	75	LAGUNILLAS PARAMACONI
300	26	75	GENESIS
301	26	75	ALONSO DE OJEDA
302	26	75	ORION
303	26	75	SAN JOSE
304	26	75	SANTA RITA
305	26	75	OMEGA
306	26	75	COPAIBA
307	27	76	NO APLICA
\.


--
-- Name: grupos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('grupos_id_seq', 307, true);


--
-- Data for Name: nivels; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY nivels (id, nivel) FROM stdin;
1	Nacional
2	Distrital
3	Grupo
\.


--
-- Name: nivels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('nivels_id_seq', 3, true);


--
-- Data for Name: padecimientos; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY padecimientos (id, usuario_id, lechina, hepatitis, rubeola, apendicitis, sarampion, insomnio, paperas, sonambulismo, estrenimiento, acidez, ulcera, asma, reflujo, bulimia, hiv, otras) FROM stdin;
2	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: padecimientos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('padecimientos_id_seq', 3, true);


--
-- Data for Name: ramas; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY ramas (id, rama) FROM stdin;
1	Manada      
2	Tropa       
3	Clan        
4	Adultos     
5	NO APLICA   
\.


--
-- Name: ramas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('ramas_id_seq', 5, true);


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY regions (id, region) FROM stdin;
14	Anzoátegui
15	Aragua
16	Bolívar
17	CSSN
18	Carabobo
19	Centro-Llanos
20	Falcón
21	Lara
22	Mérida
23	Metropolitana
24	Miranda
25	Táchira
26	Zulia
27	NO APLICA
\.


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('regions_id_seq', 27, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY schema_migrations (version) FROM stdin;
20131114150802
20131114150952
20131114151458
20131114152011
20131114152240
20140101191123
20140206212109
20140210133629
20140212191052
20140212210722
\.


--
-- Data for Name: tipo_sangres; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY tipo_sangres (id, tipo) FROM stdin;
1	A Rh +
2	A Rh -
3	B Rh +
4	B Rh -
5	AB Rh+
6	AB Rh-
7	O Rh +
8	O Rh -
\.


--
-- Name: tiposangres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('tiposangres_id_seq', 8, true);


--
-- Data for Name: unidads; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY unidads (id, rama_id, unidad) FROM stdin;
1	1	Manada Masculina
2	1	Manada Femenina
3	2	Tropa Masculina
4	2	Tropa Femenina
5	3	Clan Masculino
6	3	Clan Femenino
7	5	NO APLICA
\.


--
-- Name: unidads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('unidads_id_seq', 7, true);


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY usuarios (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
5	perol@perol.com	$2a$10$JI35v.qGZVmERLU66tBgaugrRcV9FJF95X237Uji5Uk0d99I6qjcW	\N	\N	\N	1	2014-03-16 18:01:12.954514	2014-03-16 18:01:12.954514	127.0.0.1	127.0.0.1	2014-03-16 18:01:12.911995	2014-03-16 18:01:12.95662
4	mlucenap@gmail.com	$2a$10$AFv.eK78uJ/m36MGA3EEWOF4CIuQaHFhImPqJP0L2yVjw.QcWqowS	\N	\N	\N	9	2014-03-22 14:58:09.948695	2014-03-22 14:51:16.60119	127.0.0.1	127.0.0.1	2014-03-14 15:14:22.181949	2014-03-22 14:58:09.949847
\.


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('usuarios_id_seq', 5, true);


--
-- Data for Name: usuarios_rutas; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY usuarios_rutas (id, usuario_id, ruta_id) FROM stdin;
\.


--
-- Name: usuarios_rutas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('usuarios_rutas_id_seq', 1, false);


--
-- Data for Name: vacunas; Type: TABLE DATA; Schema: public; Owner: manuel
--

COPY vacunas (id, usuario_id, tetanos, sarampion, rubeola, tiroidea, hepatitis, gripe, otras) FROM stdin;
4	4	\N	\N	\N	\N	\N	\N	\N
5	5	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: vacunas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manuel
--

SELECT pg_catalog.setval('vacunas_id_seq', 5, true);


--
-- Name: alergias_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY alergies
    ADD CONSTRAINT alergias_pkey PRIMARY KEY (id);


--
-- Name: datos_registros_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY datos_registros
    ADD CONSTRAINT datos_registros_pkey PRIMARY KEY (id);


--
-- Name: datos_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY datos_usuarios
    ADD CONSTRAINT datos_usuarios_pkey PRIMARY KEY (id);


--
-- Name: distritos_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY distritos
    ADD CONSTRAINT distritos_pkey PRIMARY KEY (id);


--
-- Name: enfermedads_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY enfermedades
    ADD CONSTRAINT enfermedads_pkey PRIMARY KEY (id);


--
-- Name: eses_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY eses
    ADD CONSTRAINT eses_pkey PRIMARY KEY (id);


--
-- Name: fichas_medicas_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY fichas_medicas
    ADD CONSTRAINT fichas_medicas_pkey PRIMARY KEY (id);


--
-- Name: grupos_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (id);


--
-- Name: nivels_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY nivels
    ADD CONSTRAINT nivels_pkey PRIMARY KEY (id);


--
-- Name: padecimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY padecimientos
    ADD CONSTRAINT padecimientos_pkey PRIMARY KEY (id);


--
-- Name: ramas_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY ramas
    ADD CONSTRAINT ramas_pkey PRIMARY KEY (id);


--
-- Name: regions_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: tiposangres_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY tipo_sangres
    ADD CONSTRAINT tiposangres_pkey PRIMARY KEY (id);


--
-- Name: unidads_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY unidads
    ADD CONSTRAINT unidads_pkey PRIMARY KEY (id);


--
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: usuarios_rutas_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY usuarios_rutas
    ADD CONSTRAINT usuarios_rutas_pkey PRIMARY KEY (id);


--
-- Name: vacunas_pkey; Type: CONSTRAINT; Schema: public; Owner: manuel; Tablespace: 
--

ALTER TABLE ONLY vacunas
    ADD CONSTRAINT vacunas_pkey PRIMARY KEY (id);


--
-- Name: index_usuarios_on_email; Type: INDEX; Schema: public; Owner: manuel; Tablespace: 
--

CREATE UNIQUE INDEX index_usuarios_on_email ON usuarios USING btree (email);


--
-- Name: index_usuarios_on_reset_password_token; Type: INDEX; Schema: public; Owner: manuel; Tablespace: 
--

CREATE UNIQUE INDEX index_usuarios_on_reset_password_token ON usuarios USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: manuel; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

