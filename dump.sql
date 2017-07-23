--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: aboutus_webpage; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE aboutus_webpage (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    header character varying(200) NOT NULL,
    in_menu boolean NOT NULL,
    menu_order integer NOT NULL,
    menu_title character varying(200) NOT NULL,
    content text NOT NULL
);


ALTER TABLE aboutus_webpage OWNER TO hrabrov_u;

--
-- Name: aboutus_webpage_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE aboutus_webpage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aboutus_webpage_id_seq OWNER TO hrabrov_u;

--
-- Name: aboutus_webpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE aboutus_webpage_id_seq OWNED BY aboutus_webpage.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO hrabrov_u;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO hrabrov_u;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO hrabrov_u;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO hrabrov_u;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO hrabrov_u;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO hrabrov_u;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO hrabrov_u;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO hrabrov_u;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO hrabrov_u;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO hrabrov_u;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO hrabrov_u;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO hrabrov_u;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: book_webpage; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE book_webpage (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    header character varying(200) NOT NULL,
    in_menu boolean NOT NULL,
    menu_order integer NOT NULL,
    menu_title character varying(200) NOT NULL
);


ALTER TABLE book_webpage OWNER TO hrabrov_u;

--
-- Name: book_webpage_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE book_webpage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE book_webpage_id_seq OWNER TO hrabrov_u;

--
-- Name: book_webpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE book_webpage_id_seq OWNED BY book_webpage.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO hrabrov_u;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO hrabrov_u;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO hrabrov_u;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO hrabrov_u;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO hrabrov_u;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO hrabrov_u;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO hrabrov_u;

--
-- Name: donate_webpage; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE donate_webpage (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    header character varying(200) NOT NULL,
    in_menu boolean NOT NULL,
    menu_order integer NOT NULL,
    menu_title character varying(200) NOT NULL,
    content text NOT NULL
);


ALTER TABLE donate_webpage OWNER TO hrabrov_u;

--
-- Name: donate_webpage_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE donate_webpage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE donate_webpage_id_seq OWNER TO hrabrov_u;

--
-- Name: donate_webpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE donate_webpage_id_seq OWNED BY donate_webpage.id;


--
-- Name: general_message; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE general_message (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(200) NOT NULL,
    value text NOT NULL
);


ALTER TABLE general_message OWNER TO hrabrov_u;

--
-- Name: general_message_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE general_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE general_message_id_seq OWNER TO hrabrov_u;

--
-- Name: general_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE general_message_id_seq OWNED BY general_message.id;


--
-- Name: texts_category; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE texts_category (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    header character varying(200) NOT NULL,
    in_menu boolean NOT NULL,
    menu_order integer NOT NULL,
    menu_title character varying(200) NOT NULL,
    hardcoded boolean NOT NULL,
    description text NOT NULL
);


ALTER TABLE texts_category OWNER TO hrabrov_u;

--
-- Name: texts_category_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE texts_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE texts_category_id_seq OWNER TO hrabrov_u;

--
-- Name: texts_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE texts_category_id_seq OWNED BY texts_category.id;


--
-- Name: texts_text; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE texts_text (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    published_at date NOT NULL,
    abstract text NOT NULL,
    quote text NOT NULL,
    file character varying(100) NOT NULL,
    category_id integer NOT NULL,
    short_description text NOT NULL
);


ALTER TABLE texts_text OWNER TO hrabrov_u;

--
-- Name: texts_text_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE texts_text_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE texts_text_id_seq OWNER TO hrabrov_u;

--
-- Name: texts_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE texts_text_id_seq OWNED BY texts_text.id;


--
-- Name: videos_category; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE videos_category (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    header character varying(200) NOT NULL,
    hardcoded boolean NOT NULL,
    description text NOT NULL,
    in_menu boolean NOT NULL,
    menu_order integer NOT NULL,
    menu_title character varying(200) NOT NULL
);


ALTER TABLE videos_category OWNER TO hrabrov_u;

--
-- Name: videos_category_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE videos_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videos_category_id_seq OWNER TO hrabrov_u;

--
-- Name: videos_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE videos_category_id_seq OWNED BY videos_category.id;


--
-- Name: videos_video; Type: TABLE; Schema: public; Owner: hrabrov_u
--

CREATE TABLE videos_video (
    id integer NOT NULL,
    video_id character varying(200) NOT NULL,
    title character varying(200) NOT NULL,
    thumbnail_medium character varying(200) NOT NULL,
    published_at timestamp with time zone NOT NULL,
    description text NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE videos_video OWNER TO hrabrov_u;

--
-- Name: videos_video_id_seq; Type: SEQUENCE; Schema: public; Owner: hrabrov_u
--

CREATE SEQUENCE videos_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videos_video_id_seq OWNER TO hrabrov_u;

--
-- Name: videos_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hrabrov_u
--

ALTER SEQUENCE videos_video_id_seq OWNED BY videos_video.id;


--
-- Name: aboutus_webpage id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY aboutus_webpage ALTER COLUMN id SET DEFAULT nextval('aboutus_webpage_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: book_webpage id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY book_webpage ALTER COLUMN id SET DEFAULT nextval('book_webpage_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: donate_webpage id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY donate_webpage ALTER COLUMN id SET DEFAULT nextval('donate_webpage_id_seq'::regclass);


--
-- Name: general_message id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY general_message ALTER COLUMN id SET DEFAULT nextval('general_message_id_seq'::regclass);


--
-- Name: texts_category id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY texts_category ALTER COLUMN id SET DEFAULT nextval('texts_category_id_seq'::regclass);


--
-- Name: texts_text id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY texts_text ALTER COLUMN id SET DEFAULT nextval('texts_text_id_seq'::regclass);


--
-- Name: videos_category id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY videos_category ALTER COLUMN id SET DEFAULT nextval('videos_category_id_seq'::regclass);


--
-- Name: videos_video id; Type: DEFAULT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY videos_video ALTER COLUMN id SET DEFAULT nextval('videos_video_id_seq'::regclass);


--
-- Data for Name: aboutus_webpage; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY aboutus_webpage (id, url, title, header, in_menu, menu_order, menu_title, content) FROM stdin;
1	index	О Проекте	О Проекте	f	0	Unknown	<p>Сюда можно расписать всё о проекте. Ещё можно разбить информацию о проекте на разные страницы и включить их в боковую панель, как это сделано на странице "Книга".</p>
\.


--
-- Name: aboutus_webpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('aboutus_webpage_id_seq', 1, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add user	2	add_user
5	Can change user	2	change_user
6	Can delete user	2	delete_user
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add webpage	7	add_webpage
20	Can change webpage	7	change_webpage
21	Can delete webpage	7	delete_webpage
22	Can add webpage	8	add_webpage
23	Can change webpage	8	change_webpage
24	Can delete webpage	8	delete_webpage
25	Can add webpage	9	add_webpage
26	Can change webpage	9	change_webpage
27	Can delete webpage	9	delete_webpage
28	Can add message	10	add_message
29	Can change message	10	change_message
30	Can delete message	10	delete_message
31	Can add category	11	add_category
32	Can change category	11	change_category
33	Can delete category	11	delete_category
34	Can add video	12	add_video
35	Can change video	12	change_video
36	Can delete video	12	delete_video
37	Can add category	13	add_category
38	Can change category	13	change_category
39	Can delete category	13	delete_category
40	Can add text	14	add_text
41	Can change text	14	change_text
42	Can delete text	14	delete_text
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$t7ZCka5RmGRq$BH5WRwtV/l7Jy6OSUpGdNL/UeAKdv2ndGXQ1E1LnkvY=	2017-07-19 05:21:38.280716+00	t	hrabrov			dev@hrabrov.ru	t	t	2017-07-05 05:14:54.590522+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: book_webpage; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY book_webpage (id, url, title, content, header, in_menu, menu_order, menu_title) FROM stdin;
3	history	История написания	<p>Здесь должна описываться история написания этой великой книги.</p>	История написания	t	10	История написания
4	presentation	Презентация	<p>Я не уверен в том, что знаю, что это означает.</p>	Презентация	t	30	Прецентация
5	references	Библиография	<p>Список книг и прочих материалов исползьванных в книге "Преображение Постмодернизма в России"</p>	Библиография	t	40	Библиоргафия
2	index	Книга "Преображение Постмодернизма в России"	<p class="separator">Книга "Преображение Постмодернизма в России" очень важна</p>\r\n<hr class="separator" />\r\n<h5>Подраздел 1</h5>\r\n<p>Текст подраздела</p>\r\n<hr class="separator" />\r\n<h5>Подраздел 2</h5>\r\n<p>Текст подраздела</p>	Книга	t	0	Основная информация
\.


--
-- Name: book_webpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('book_webpage_id_seq', 5, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-07-05 06:26:07.804755+00	1	test : A Test Title	2	[{"changed": {"fields": ["content"]}}]	7	1
2	2017-07-12 06:57:42.021608+00	2	index : Index Page	2	[{"changed": {"fields": ["content"]}}]	7	1
3	2017-07-12 06:58:30.916232+00	1	test : A Test Title	2	[{"changed": {"fields": ["content"]}}]	7	1
4	2017-07-12 06:59:07.83253+00	1	test : A Test Title	2	[]	7	1
5	2017-07-12 07:10:02.51751+00	2	index : Index Page	2	[{"changed": {"fields": ["header"]}}]	7	1
6	2017-07-12 07:12:00.527983+00	2	index : Index Page	2	[{"changed": {"fields": ["header", "content"]}}]	7	1
7	2017-07-12 07:18:20.054566+00	2	index : Книга	2	[{"changed": {"fields": ["title"]}}]	7	1
8	2017-07-12 07:18:24.794292+00	1	test : A Test Title	3		7	1
9	2017-07-12 07:29:53.486433+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
10	2017-07-12 07:30:17.019279+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
11	2017-07-12 07:30:47.711376+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
12	2017-07-12 07:31:12.415039+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
13	2017-07-12 07:31:23.306904+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
14	2017-07-12 07:31:53.298994+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
15	2017-07-12 07:32:02.438486+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
16	2017-07-12 16:36:57.199733+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
17	2017-07-12 16:37:11.692515+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
18	2017-07-12 16:37:25.174861+00	2	index : Книга	2	[{"changed": {"fields": ["content"]}}]	7	1
19	2017-07-12 16:48:58.224943+00	2	index : Книга	2	[]	7	1
20	2017-07-12 16:49:02.591262+00	2	index : Книга	2	[]	7	1
21	2017-07-12 16:51:34.061985+00	2	index : Книга	2	[{"changed": {"fields": ["in_menu"]}}]	7	1
22	2017-07-12 16:54:58.473916+00	2	index : Книга	2	[{"changed": {"fields": ["in_menu"]}}]	7	1
23	2017-07-12 16:58:48.843092+00	2	index : Книга "Преображение Постмодернизма в России"	2	[{"changed": {"fields": ["title", "menu_title"]}}]	7	1
24	2017-07-12 16:59:44.177831+00	3	history : История написания	1	[{"added": {}}]	7	1
25	2017-07-12 17:00:27.54434+00	4	presentation : Презентация	1	[{"added": {}}]	7	1
26	2017-07-12 17:00:30.4949+00	4	presentation : Презентация	2	[]	7	1
27	2017-07-12 17:01:25.074264+00	5	references : Библиография	1	[{"added": {}}]	7	1
28	2017-07-12 17:42:00.472096+00	1	index : О Проекте	1	[{"added": {}}]	8	1
29	2017-07-12 17:52:39.485098+00	1	index : Поддержать	1	[{"added": {}}]	9	1
30	2017-07-14 01:57:36.941281+00	1	index_welcome : Приветствие на главной странице	1	[{"added": {}}]	10	1
31	2017-07-14 02:05:35.137873+00	2	footer_aboutus : Описание "О Нас" в подвале сайта	1	[{"added": {}}]	10	1
32	2017-07-14 02:06:48.583048+00	2	footer_aboutus : Описание "О Нас" в подвале сайта	2	[]	10	1
33	2017-07-14 02:08:21.806464+00	2	footer_aboutus : Описание "О Нас" в подвале сайта	2	[{"changed": {"fields": ["value"]}}]	10	1
34	2017-07-14 02:08:38.746097+00	2	footer_aboutus : Описание "О Нас" в подвале сайта	2	[{"changed": {"fields": ["value"]}}]	10	1
35	2017-07-14 02:09:20.835342+00	2	footer_aboutus : Описание "О Нас" в подвале сайта	2	[]	10	1
36	2017-07-14 02:11:57.869972+00	3	footer_firstcolumn : Первая колонка ссылок в подвале	1	[{"added": {}}]	10	1
37	2017-07-14 02:13:29.836765+00	4	footer_2column : Вторая колонка ссылок в подвале	1	[{"added": {}}]	10	1
38	2017-07-14 02:13:37.338818+00	3	footer_1column : Первая колонка ссылок в подвале	2	[{"changed": {"fields": ["name"]}}]	10	1
39	2017-07-14 02:16:30.798667+00	4	footer_2column : Вторая колонка ссылок в подвале	2	[{"changed": {"fields": ["value"]}}]	10	1
40	2017-07-14 02:18:46.858039+00	1	index_welcome : Приветствие на главной странице	2	[{"changed": {"fields": ["value"]}}]	10	1
41	2017-07-14 02:19:02.05274+00	1	index_welcome : Приветствие на главной странице	2	[{"changed": {"fields": ["value"]}}]	10	1
42	2017-07-16 03:12:59.38713+00	1	last_videos : Видеоматериалы	1	[{"added": {}}]	11	1
43	2017-07-16 03:30:10.554219+00	1	last_videos : Видеоматериалы	2	[{"changed": {"fields": ["menu_title"]}}]	11	1
44	2017-07-16 03:31:32.223795+00	2	madfm : Эфиры на MadFM	1	[{"added": {}}]	11	1
45	2017-07-16 03:32:06.370949+00	3	mc_hrabrov : MC hraBROv	1	[{"added": {}}]	11	1
46	2017-07-16 03:33:36.22696+00	4	speeches : Доклады, выступления, мероприятия	1	[{"added": {}}]	11	1
47	2017-07-16 03:34:11.501201+00	5	arthouse : Артхаус, философский action	1	[{"added": {}}]	11	1
48	2017-07-16 03:34:41.47617+00	6	discussions : Актуальные дискуссии	1	[{"added": {}}]	11	1
49	2017-07-16 03:35:12.824378+00	7	lifeinfo : Лайфинфо, подкасты, интервью	1	[{"added": {}}]	11	1
50	2017-07-16 03:36:25.585749+00	4	speeches : Доклады, выступления, мероприятия	2	[{"changed": {"fields": ["menu_title"]}}]	11	1
51	2017-07-16 03:36:39.042168+00	5	arthouse : Артхаус, философский action	2	[{"changed": {"fields": ["menu_title"]}}]	11	1
52	2017-07-16 03:36:53.553824+00	7	lifeinfo : Лайфинфо, подкасты, интервью	2	[{"changed": {"fields": ["menu_title"]}}]	11	1
53	2017-07-16 03:37:27.143399+00	6	discussions : Актуальные дискуссии	2	[{"changed": {"fields": ["menu_order"]}}]	11	1
54	2017-07-16 03:37:33.871847+00	3	mc_hrabrov : MC hraBROv	2	[{"changed": {"fields": ["menu_order"]}}]	11	1
55	2017-07-16 03:38:08.344906+00	5	arthouse : Артхаус, философский action	2	[{"changed": {"fields": ["menu_order"]}}]	11	1
56	2017-07-16 03:38:23.413732+00	7	lifeinfo : Лайфинфо, подкасты, интервью	2	[{"changed": {"fields": ["menu_order"]}}]	11	1
57	2017-07-16 03:38:28.285027+00	3	mc_hrabrov : MC hraBROv	2	[{"changed": {"fields": ["menu_order"]}}]	11	1
58	2017-07-16 03:39:48.669727+00	4	speeches : Доклады, выступления, мероприятия	2	[{"changed": {"fields": ["header"]}}]	11	1
59	2017-07-16 22:53:12.420088+00	1	last_videos : Видеоматериалы	2	[{"changed": {"fields": ["description"]}}]	11	1
60	2017-07-16 22:53:49.938036+00	1	last_videos : Видеоматериалы	2	[{"changed": {"fields": ["description"]}}]	11	1
61	2017-07-16 22:56:58.065352+00	1	test : Тестовое название	1	[{"added": {}}]	12	1
62	2017-07-16 22:57:19.3592+00	2	test : Длинное тестовое название чтоб проверить элипссис	1	[{"added": {}}]	12	1
63	2017-07-16 22:57:48.690135+00	3	z85lqV47-ss : Просто название	1	[{"added": {}}]	12	1
64	2017-07-16 22:58:17.193117+00	4	z85lqV47-ss : Ещё одно название, немного длинное	1	[{"added": {}}]	12	1
65	2017-07-16 23:04:26.85061+00	5	z85lqV47-ss : Ещё на всякий случай	1	[{"added": {}}]	12	1
66	2017-07-16 23:04:58.56439+00	6	z85lqV47-ss : И ещё одно видео чтоб проверить переход на новую полосу	1	[{"added": {}}]	12	1
67	2017-07-16 23:05:22.186583+00	7	z85lqV47-ss : Вроде последнее, после этого пагинация нужна	1	[{"added": {}}]	12	1
68	2017-07-17 00:32:34.885347+00	6	z85lqV47-ss : И ещё одно видео чтоб проверить переход на новую полосу	3		12	1
69	2017-07-17 00:32:34.887232+00	5	z85lqV47-ss : Ещё на всякий случай	3		12	1
70	2017-07-17 00:32:34.888623+00	4	z85lqV47-ss : Ещё одно название, немного длинное	3		12	1
71	2017-07-17 00:32:34.89002+00	3	z85lqV47-ss : Просто название	3		12	1
72	2017-07-17 00:32:34.891908+00	2	test : Длинное тестовое название чтоб проверить элипссис	3		12	1
73	2017-07-17 01:16:59.505919+00	8	Q9RaOZU4LPY : MadFM, Русская идентичность в контексте Гайдаровского Форума 2016 года	3		12	1
74	2017-07-17 01:16:59.508724+00	7	z85lqV47-ss : Вроде последнее, после этого пагинация нужна	3		12	1
75	2017-07-17 01:16:59.510281+00	1	test : Тестовое название	3		12	1
76	2017-07-17 01:26:53.503187+00	98	yc8aqsRFR28 : MadFM, Преодоление ницшеанства	3		12	1
77	2017-07-17 01:26:53.505821+00	97	z85lqV47-ss : MadFM, Разоблачение Изиды Блаватской	3		12	1
78	2017-07-17 01:26:53.50748+00	96	Vb6xy1XKW7w : Неофеминистская страгегия «мягкой стервозности». Дискуссия с Кристиной Соул.	3		12	1
79	2017-07-17 01:26:53.509136+00	95	l0jUwKmoWJo : Язычество: ложный свет и (или) истинная тьма(?)	3		12	1
80	2017-07-17 01:26:53.510798+00	94	GidNnstbPVg : Ф. Ницше: гений или быдло? Евгений Световидов vs Илья Храбров	3		12	1
81	2017-07-17 01:26:53.512388+00	93	Eml7Uw0nuMg : Евгений Вольнов vs Илья Храбров: Р. Докинз - учёный или псевдофилософ?	3		12	1
82	2017-07-17 01:26:53.513838+00	92	wQJCO9JIkGg : Православие против либертарианства  [Илья Храбров vs Алексей Шерстнев]	3		12	1
83	2017-07-17 01:26:53.51508+00	91	1tc_6tqx8ks : «Роза Мира» (реинкарнация) vs Православие. По мотивам BADROOM №54.	3		12	1
84	2017-07-17 01:26:53.516449+00	90	QQkMgnZFMDI : Радио «Реструкт» дебаты: «Гомофобы vs педерасты» 25.12.2013.	3		12	1
85	2017-07-17 01:26:53.517868+00	89	vhhsMzmhTtg : Вован-Japan & Илья Храбров. Беседа о Японии.	3		12	1
86	2017-07-17 01:26:53.519949+00	88	E2VGivEF6a8 : Ник Черников vs Илья Храбров: Атеизм — философия или наука?	3		12	1
87	2017-07-17 01:26:53.521556+00	87	12J94Jp92CQ : Евгений Вольнов vs Илья Храбров [Пранк-дискуссия]	3		12	1
88	2017-07-17 01:26:53.522888+00	86	C04yau8O5rA : Валерия Новодворская vs Илья Храбров: дискуссия о русской демократии.	3		12	1
89	2017-07-17 01:26:53.524134+00	85	ZlK_71QqG9M : Вопрос Лёше Закону в программе «ДЕПРСНА»	3		12	1
90	2017-07-17 01:26:53.525248+00	84	6HBTAqgSQb8 : Дискуссия с красивой феминисткой	3		12	1
91	2017-07-17 01:26:53.526652+00	83	oDKXeTAISMk : Острая дискуссия с Жекой о покемонах и типах совка (18+)	3		12	1
92	2017-07-17 01:26:53.527947+00	82	x_8S7Cn5vqM : Анатолий Вассерман vs Илья Храбров: диспут об атеизме и «нейроне бесконечности».	3		12	1
93	2017-07-17 01:26:53.52918+00	81	z85lqV47-ss : MadFM, Разоблачение Изиды Блаватской	3		12	1
94	2017-07-17 01:26:53.530331+00	80	yc8aqsRFR28 : MadFM, Преодоление ницшеанства	3		12	1
95	2017-07-17 01:26:53.531428+00	79	8M5fBrQb4sU : MadFM, Дискуссия с философом Вячеславом Мерцаловым	3		12	1
96	2017-07-17 01:26:53.53254+00	78	YzU3GNbR230 : MadFM, Поэсофия Лунной Сонаты	3		12	1
97	2017-07-17 01:26:53.533731+00	77	vLdJL_a5zLU : MadFM, Диалектика эволюции мозга	3		12	1
98	2017-07-17 01:26:53.536555+00	76	U6nunhJ_D3A : MadFM, Грамматология краснобелого синтеза	3		12	1
99	2017-07-17 01:26:53.538334+00	75	0VUdYHV4LRI : MadFM, Метод однозначности гиперконтекста	3		12	1
100	2017-07-17 01:26:53.540077+00	74	iXqPXUp4yc8 : MadFM, Виртуозная простота гениальности	3		12	1
101	2017-07-17 01:26:53.541754+00	73	zBu3PASZqA0 : MadFM, Понятие в системе Г. В. Ф. Гегеля	3		12	1
102	2017-07-17 01:26:53.54343+00	72	jTz5-0hNDCY : MadFM, Преображение Абсолютной Идеи в 20-м веке	3		12	1
103	2017-07-17 01:26:53.544714+00	71	IIQoEazKMQM : MadFM, Число «е» — предел беспредела	3		12	1
104	2017-07-17 01:26:53.545844+00	70	BoS4Xp9pQ8A : MadFM, Сущность математического анализа	3		12	1
105	2017-07-17 01:26:53.54705+00	69	lZpwwS0lJgE : MadFM, Функция — синтез формальной и диалектической логики	3		12	1
106	2017-07-17 01:26:53.548182+00	68	Bfoob9Jw7k0 : MadFM, Контрмарксизм нетократического посткапитализма	3		12	1
107	2017-07-17 01:26:53.549454+00	67	G1CWOaWZrCg : MadFM, Алиса в стране Витгенштейна	3		12	1
108	2017-07-17 01:26:53.550802+00	66	kx9zW0x6Xn4 : MadFM, Дифференциальная энтропия представления	3		12	1
109	2017-07-17 01:26:53.552382+00	65	E2-4CCDKBy8 : MadFM, Звёздные Войны Апокалипсиса	3		12	1
110	2017-07-17 01:26:53.553861+00	64	5POIRueyhzI : MadFM, Темпоральная контрамоция S.N.U.F.F'ов	3		12	1
111	2017-07-17 01:26:53.555239+00	63	DZeVVpSC8GI : MadFM, Программирование схем понимания	3		12	1
112	2017-07-17 01:26:53.556622+00	62	J4noBEP7TEI : MadFM, Греко-римская борьба цивилизаций	3		12	1
113	2017-07-17 01:26:53.55806+00	61	UR7Kt9w2xO8 : MadFM, Шахматы как структура истины	3		12	1
114	2017-07-17 01:26:53.55955+00	60	9O6541GDi3E : MadFM, Утопия, антиутопия, априорный синтез	3		12	1
115	2017-07-17 01:26:53.561169+00	59	p6MCEwXm4u0 : MadFM, Теория вероятности революций	3		12	1
116	2017-07-17 01:26:53.562372+00	58	ZBUbZqkoJIk : MadFM, Гендер вавилонской блудницы	3		12	1
117	2017-07-17 01:26:53.563559+00	57	LyR5ccbjXlA : MadFM, Почему Р. Соколовский убежал от дискуссии?	3		12	1
118	2017-07-17 01:26:53.564709+00	56	TzT-T5FgKt8 : MadFM, Презентация диссертации о развитии постмодернизма в русской нации (Ёу!)	3		12	1
119	2017-07-17 01:26:53.565781+00	55	dIfz9G1L1l4 : MadFM, «Разум в “Феноменологии духа”»	3		12	1
120	2017-07-17 01:26:53.56714+00	54	rrYPjTlKamw : MadFM, Экспликация постмодернистского метанарратива	3		12	1
121	2017-07-17 01:26:53.569403+00	53	LwQT1YiqNb8 : MadFM, Слово о числе Пи	3		12	1
122	2017-07-17 01:26:53.570714+00	52	Wri7qV_DtKE : MadFM, Красота в современном искусстве	3		12	1
123	2017-07-17 01:26:53.571869+00	51	TNYi_dkf9oQ : MadFM, Логическая атомарность света	3		12	1
124	2017-07-17 01:26:53.572991+00	50	eImIdZ7v26g : MadFM, Тоталитаризм и либертарианский совок	3		12	1
125	2017-07-17 01:26:53.574072+00	49	rXzsA0h1mUM : MadFM, Развитие метафизики развития	3		12	1
126	2017-07-17 01:26:53.576079+00	48	LWBSMvPsM40 : MadFM, Роза Мира и Серебряный век	3		12	1
127	2017-07-17 01:26:53.577438+00	47	d22Xg3hZTvg : MadFM, Различие реальности и действительности	3		12	1
128	2017-07-17 01:26:53.5787+00	46	bi-uKbdLaiQ : MadFM, Конфликт интерпретаций истории	3		12	1
129	2017-07-17 01:26:53.579973+00	45	kBKv7tdxHLY : MadFM, Самосознание, память, самопознание	3		12	1
130	2017-07-17 01:26:53.58123+00	44	myE6DYth8Ho : MadFM, Причины развала СССР	3		12	1
131	2017-07-17 01:26:53.582451+00	43	4EH7VXixd5Y : MadFM, Сказания Зенона Косидовского	3		12	1
132	2017-07-17 01:26:53.583743+00	42	HrVL6QIxAHI : MadFM, Кантианское опровержение солипсизма	3		12	1
133	2017-07-17 01:26:53.585329+00	41	vQoUYduXqwY : MadFM, Человеческая многоножка теософии	3		12	1
134	2017-07-17 01:26:53.58652+00	40	fBZbfkTnYvs : MadFM, Всемирный русский европоцентризм	3		12	1
135	2017-07-17 01:26:53.587666+00	39	yzKVBlrK66Q : MadFM, Собственность. Организации. Лица	3		12	1
136	2017-07-17 01:26:53.588766+00	38	XVC5tn-_SjU : MadFM, Либерализм — теория относительности свободы	3		12	1
137	2017-07-17 01:26:53.589894+00	37	ZnANQvFursk : MadFM, Система Г.В.Ф. Гегеля — точка перехода из модерна в постмодерн	3		12	1
138	2017-07-17 01:26:53.591033+00	36	jQfbIvUahas : MadFM, Фундаментальная аксиома триалектики	3		12	1
139	2017-07-17 01:26:53.593051+00	35	GcOhQ2-9T8E : MadFM, Теистический эволюционизм Ч. Дарвина	3		12	1
140	2017-07-17 01:26:53.594465+00	34	Qlp7R7uP33E : MadFM, Нищета анорексической философии	3		12	1
141	2017-07-17 01:26:53.595891+00	33	S6azDAk6CAk : MadFM, Онтология мироздания в фильме «Куб»	3		12	1
142	2017-07-17 01:26:53.597215+00	32	v2rtWnahWDk : «Сборник стихов Народного Собора "Преображение России"»	3		12	1
143	2017-07-17 01:26:53.598433+00	31	EaA9z3j49gQ : MadFM, Обзор основных течений индуизма	3		12	1
144	2017-07-17 01:26:53.599583+00	30	DT-M2Cjyj3s : MadFM, Вольнодумство Ф.М. Аруэ vs теодицея Г. В. Лейбница	3		12	1
145	2017-07-17 01:26:53.600854+00	29	h85QIuyGv34 : MadFM, «Лакейская азиатчина в трейлере фильма “Матильда”».	3		12	1
146	2017-07-17 01:26:53.602992+00	28	6hEWW2MLelo : MadFM, Концептология научной фантастики	3		12	1
147	2017-07-17 01:26:53.604211+00	27	XuzaSLSdfrY : MadFM, Глюки Карлоса Кастанеды	3		12	1
148	2017-07-17 01:26:53.605436+00	26	jF-rDAlkAys : MadFM, Философия нестабильности универсума	3		12	1
149	2017-07-17 01:26:53.606573+00	25	hyOv0hzklzM : MadFM, Земельный вопрос в 21-м веке	3		12	1
150	2017-07-17 01:26:53.607666+00	24	_hqcwm5U6aE : MadFM, Нелибидозный психосинтез фрейдизма	3		12	1
151	2017-07-17 01:26:53.608706+00	23	suis6jjrWpw : MadFM, «Mad is not Bad»	3		12	1
152	2017-07-17 01:26:53.609785+00	22	RnawBrWQmrE : MadFM, Экзистенциальное поражение постгегельянства	3		12	1
153	2017-07-17 01:26:53.610897+00	21	X__Bowb3E7g : MadFM, Русский народ и российская нация	3		12	1
154	2017-07-17 01:26:53.612199+00	20	5ZIPAO6b_ZY : MadFM, Ноосфера инфракрасного логоса	3		12	1
155	2017-07-17 01:26:53.613724+00	19	0nAHPXh8W44 : Mad.FM, Rap & Vlog and Rock & Roll	3		12	1
156	2017-07-17 01:26:53.615234+00	18	7D22NyfScds : MadFM, Религиозный культ отрицания Великой Победы	3		12	1
157	2017-07-17 01:26:53.616935+00	17	MX1ePtM9j8A : Николай II: «Коля-Ананас» или великий русский Царь?	3		12	1
158	2017-07-17 01:26:53.618604+00	16	2W3Pwdbd6Lk : MadFM, Гностическая ПсевдоСофия валентиниан	3		12	1
159	2017-07-17 01:26:53.620639+00	15	Wtk22BCl7Ms : MadFM, «Государство и эволюция» Е.Т. Гайдара	3		12	1
160	2017-07-17 01:26:53.62235+00	14	hyOv0hzklzM : MadFM, Земельный вопрос в 21-м веке	3		12	1
161	2017-07-17 01:26:53.624059+00	13	DDgpf0ISqNg : MadFM, Тождество и различие лженауки и лжефилософии	3		12	1
162	2017-07-17 01:26:53.625493+00	12	JqDb_E0GScg : MadFM, Этногенез древних тюрок	3		12	1
163	2017-07-17 01:26:53.626678+00	11	Q2US36ZEIAs : MadFM, C. Хантингтон и радиальный Икстлан	3		12	1
164	2017-07-17 01:26:53.627966+00	10	rZsfwFx5nk8 : MadFM, Двухсмысленные идентичности акторов метаризомы	3		12	1
165	2017-07-17 01:26:53.629134+00	9	Q9RaOZU4LPY : MadFM, Русская идентичность в контексте Гайдаровского Форума 2016 года	3		12	1
166	2017-07-17 01:27:00.923377+00	120	7qRzzmE96ZY : MC hraBROv «Гимн добротроллинга»	3		12	1
167	2017-07-17 01:27:00.926793+00	119	kTCiW4qHkzY : MC hraBROv «Философский камень Майдана»	3		12	1
168	2017-07-17 01:27:01.058625+00	118	g94gZFSZVVA : MC hraBROv «Глухонемая любовь»	3		12	1
169	2017-07-17 01:27:01.108069+00	117	WSQAJhSfnb0 : MC hraBROv «Русский Мир vs Американская Мечта»	3		12	1
170	2017-07-17 01:27:01.110475+00	116	XUrWAFCdMp0 : MC hraBROv «Прекрасный ужас Оксюмирона»	3		12	1
171	2017-07-17 01:27:01.1126+00	115	q1VvdQpMCLM : MC hraBROv «Боже Царя Храни ft Queen»	3		12	1
172	2017-07-17 01:27:01.114864+00	114	SGxjz6WTwd8 : MC hraBROv «Жидовка из Большого Театра»	3		12	1
173	2017-07-17 01:27:01.116558+00	113	O7yt5OGeObE : MC hraBROv «Революция 2017»	3		12	1
174	2017-07-17 01:27:01.118058+00	112	hdE27GFcw_Y : MC hraBROv «Ланфрен Ланфра и разум»	3		12	1
175	2017-07-17 01:27:01.119665+00	111	98XhUB-lTIU : MC hraBROv ft Наташа Ростова «Апокалипсис от Воланда»	3		12	1
176	2017-07-17 01:27:01.121583+00	110	6f6LNg5iCa4 : Презентация системы триалектики. Часть 1. [Доклад]	3		12	1
177	2017-07-17 01:27:01.123083+00	109	0DZm7sU8LAY : Презентация системы триалектики. Часть 3. [Дискуссия]	3		12	1
178	2017-07-17 01:27:01.124456+00	108	tbxedpQwz_I : Презентация системы триалектики. Часть 2. [Дискуссия]	3		12	1
179	2017-07-17 01:27:01.125607+00	107	mP0kZ0PA318 : Гармонизация права и управления в России	3		12	1
180	2017-07-17 01:27:01.12735+00	106	mlAgbfJewrA : Воздвижение Поклонного Креста в селе Еремеево. 15.06.2013.	3		12	1
181	2017-07-17 01:27:01.128759+00	105	hwCH0oNEZ3A : Выступление команды МРО НС на викторине к 400-летию Дома Романовых	3		12	1
182	2017-07-17 01:27:01.130013+00	104	uRF-1xlwti0 : Разум возопиёт: Милосердный! Сожги меня!	3		12	1
183	2017-07-17 01:27:01.131533+00	103	o3XEdCknep8 : Теополитика борьбы правды и пропаганды	3		12	1
184	2017-07-17 01:27:01.133065+00	102	24r4AEGQyUo : Кантианская меритократия — четвёртая политическая теория	3		12	1
185	2017-07-17 01:27:01.135173+00	101	gqJQPHGVbEE : Лига Трудового Действия	3		12	1
186	2017-07-17 01:27:01.137048+00	100	hB3rZqCuTVU : Критика чистого солипсизма	3		12	1
187	2017-07-17 01:27:01.138517+00	99	M6SS-1XYkQU : Феноменология духа русской культуры в контексте государственной культурной политики	3		12	1
188	2017-07-19 04:42:33.901219+00	1	last_texts : Текстовые Материалы	1	[{"added": {}}]	13	1
189	2017-07-19 04:48:20.842927+00	2	summaries : Конспекты	1	[{"added": {}}]	13	1
190	2017-07-19 04:48:39.316151+00	3	articles : Статьи	1	[{"added": {}}]	13	1
191	2017-07-19 04:49:16.169388+00	4	essay : Эссе и исследования	1	[{"added": {}}]	13	1
192	2017-07-19 05:24:02.726969+00	5	thesis : Диссертация	1	[{"added": {}}]	13	1
193	2017-07-19 05:25:20.500269+00	1	thesis : Развитие постмодернизма в России:   философия, наука и искусство в культуре постмодерна	1	[{"added": {}}]	14	1
194	2017-07-19 05:36:07.727696+00	5	t/thesis : Диссертация	2	[{"changed": {"fields": ["url"]}}]	13	1
195	2017-07-20 23:06:06.436253+00	2	tarkovskiy_o_rezhissure : Книга А.А. Тарковского «О режиссуре»	1	[{"added": {}}]	14	1
196	2017-07-20 23:07:44.755796+00	2	tarkovskiy_o_rezhissure : Книга А.А. Тарковского «О режиссуре»	2	[{"changed": {"fields": ["quote"]}}]	14	1
197	2017-07-20 23:21:09.290716+00	2	index : Книга "Преображение Постмодернизма в России"	2	[{"changed": {"fields": ["content"]}}]	7	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 197, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	user
3	auth	permission
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	book	webpage
8	aboutus	webpage
9	donate	webpage
10	general	message
11	videos	category
12	videos	video
13	texts	category
14	texts	text
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-07-05 05:02:48.20983+00
2	auth	0001_initial	2017-07-05 05:02:48.286433+00
3	admin	0001_initial	2017-07-05 05:02:48.316998+00
4	admin	0002_logentry_remove_auto_add	2017-07-05 05:02:48.331194+00
5	contenttypes	0002_remove_content_type_name	2017-07-05 05:02:48.351513+00
6	auth	0002_alter_permission_name_max_length	2017-07-05 05:02:48.360521+00
7	auth	0003_alter_user_email_max_length	2017-07-05 05:02:48.372066+00
8	auth	0004_alter_user_username_opts	2017-07-05 05:02:48.384129+00
9	auth	0005_alter_user_last_login_null	2017-07-05 05:02:48.410559+00
10	auth	0006_require_contenttypes_0002	2017-07-05 05:02:48.413079+00
11	auth	0007_alter_validators_add_error_messages	2017-07-05 05:02:48.424022+00
12	auth	0008_alter_user_username_max_length	2017-07-05 05:02:48.438278+00
13	sessions	0001_initial	2017-07-05 05:02:48.451398+00
14	book	0001_initial	2017-07-05 05:09:37.360379+00
15	book	0002_auto_20170705_0537	2017-07-05 05:38:19.777931+00
16	book	0003_webpage_header	2017-07-12 07:09:27.031684+00
17	book	0004_auto_20170712_1640	2017-07-12 16:40:54.05771+00
18	book	0005_webpage_menu_title	2017-07-12 16:57:28.775742+00
19	aboutus	0001_initial	2017-07-12 17:38:26.164853+00
20	donate	0001_initial	2017-07-12 17:50:32.061974+00
21	general	0001_initial	2017-07-14 01:55:00.20274+00
22	videos	0001_initial	2017-07-16 03:05:03.678284+00
23	videos	0002_auto_20170716_0309	2017-07-16 03:10:20.416509+00
24	videos	0003_auto_20170716_0310	2017-07-16 03:11:11.356696+00
25	videos	0004_auto_20170716_0312	2017-07-16 03:29:42.341364+00
26	videos	0005_auto_20170716_0329	2017-07-16 03:29:42.555205+00
27	videos	0006_auto_20170716_2256	2017-07-16 22:56:54.292076+00
28	texts	0001_initial	2017-07-19 04:38:01.763303+00
29	texts	0002_text_short_description	2017-07-19 04:55:34.897255+00
30	texts	0003_auto_20170720_2302	2017-07-20 23:02:55.142449+00
31	texts	0004_auto_20170720_2305	2017-07-20 23:05:47.943584+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('django_migrations_id_seq', 31, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
utwjz9pe85tasq2ia8m1dd0j4peztzmg	ZmYxY2Y5YzAzM2Y0MjE5YjMwNWEyODEzMGEwNmZhNjg0NmQwYTJmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNhYTRmNzYxZjJhMjQ3NTUxMjNmMTRhMzc0MDMxN2Y1NTY0Zjg0ZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-07-19 05:15:56.332536+00
synm58zbjszw727mp2lhtmpthehtkp0n	ZmYxY2Y5YzAzM2Y0MjE5YjMwNWEyODEzMGEwNmZhNjg0NmQwYTJmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNhYTRmNzYxZjJhMjQ3NTUxMjNmMTRhMzc0MDMxN2Y1NTY0Zjg0ZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-02 05:21:38.388158+00
\.


--
-- Data for Name: donate_webpage; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY donate_webpage (id, url, title, header, in_menu, menu_order, menu_title, content) FROM stdin;
1	index	Поддержать	Поддержать	f	0	Unknown	<p>Сюда можно вставить платёжную информацию и прочее. Можно добавить странички в боковую панель как на странице "Книга".</p>
\.


--
-- Name: donate_webpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('donate_webpage_id_seq', 1, true);


--
-- Data for Name: general_message; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY general_message (id, name, description, value) FROM stdin;
2	footer_aboutus	Описание "О Нас" в подвале сайта	<h5 class="white-text">О Нас</h5>\r\n<p class="grey-text text-lighten-4">Описание проекта и прочее прочее. Много текста.</p>\r\n<p class="grey-text text-lighten-4">Тест</p>
3	footer_1column	Первая колонка ссылок в подвале	<h5 class="white-text">Партнёры</h5>\r\n<ul>\r\n<li><a class="white-text" href="#!">Басилевс</a></li>\r\n<li><a class="white-text" href="#!">Ещё</a></li>\r\n<li><a class="white-text" href="#!">Ещё партнёр</a></li>\r\n<li><a class="white-text" href="#!">И ещё партнёр</a></li>\r\n</ul>
4	footer_2column	Вторая колонка ссылок в подвале	<h5 class="white-text">Ресурсы</h5>\r\n<ul>\r\n<li><a class="white-text" href="#!">Вконтач</a></li>\r\n<li><a class="white-text" href="#!">Ютуб</a></li>\r\n<li><a class="white-text" href="#!">Твич</a></li>\r\n<li><a class="white-text" href="#!">Фейсбук</a></li>\r\n</ul>
1	index_welcome	Приветствие на главной странице	<h3>Добро Пожаловать!</h3>\r\n<p>Проект Преображения Постмодернизма в России это очень важное и трудно дело. Но оно очень нужно, ведь постмодернизм это плохо. Очень плохо. Неописуемо плохо. Вы даже не представляете как это плохо. ОЧ-ЕНЬ! Православие это ответ всему, включая и постмодернизму. Бить поклоны надо. Бить постмодернистов тоже надо. Но сначала поклоны. Да.</p>\r\n<p>Добро пожаловать, в общем. Надеюсь вы проникнитесь нашей идеей и задонатите. А вообще это всё шутка, просто поток сознания.</p>
\.


--
-- Name: general_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('general_message_id_seq', 4, true);


--
-- Data for Name: texts_category; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY texts_category (id, url, title, header, in_menu, menu_order, menu_title, hardcoded, description) FROM stdin;
1	last_texts	Текстовые Материалы	Текстовые Материалы	t	0	Последнее	t	
2	summaries	Конспекты	Конспекты	t	10	Конспекты	f	
3	articles	Статьи	Статьи	t	20	Статьи	f	
4	essay	Эссе и исследования	Эссе и исследования	t	30	Эссе и исследования	f	
5	t/thesis	Диссертация	Диссертация	f	0	Unknown	t	
\.


--
-- Name: texts_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('texts_category_id_seq', 5, true);


--
-- Data for Name: texts_text; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY texts_text (id, url, title, published_at, abstract, quote, file, category_id, short_description) FROM stdin;
1	thesis	Развитие постмодернизма в России:   философия, наука и искусство в культуре постмодерна	2017-07-19	<p>фывафываыфва Абстракт</p>	<p>Цитата фдылвоа длфывоадл офывдлао длфывоа длфыволалфыв</p>\r\n<p>д оа</p>\r\n<p>фывоал фывоа дыфова длоыфвда офыв</p>\r\n<p>а л</p>\r\n<p>фывоа дфыво алыфв а</p>	texts/Khrabrov_I_N_Dissertatsia_RAZVITIE_POSTMODERNIZMA_V_ROSSII_17_12_2015.pdf	5	Краткое описание дфылвоадлфыводл аоылвфдоа длыфовлад офывла \r\nфывоа фывао \r\nфывоа\r\n фывоа \r\nыфвоа дфывоа лыфвоадлофыдлвоа
2	tarkovskiy_o_rezhissure	Книга А.А. Тарковского «О режиссуре»	2014-10-24		<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify">&nbsp;<span style="font-size: small;"><em>Стр. 2. &laquo;Цель искусства всегда &mdash; правда, истина&raquo;.</em></span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify">&nbsp;<span style="font-size: small;"><em>Стр. 6. &laquo;</em></span><span style="font-size: small;"><em>Для меня кино&mdash;занятие нравственное, а не профессиональное&raquo;.</em></span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify"><span style="font-size: small;"><em>Стр. 7. </em></span><span style="font-size: small;">≪Очищение путем сострадания и страха≫ &mdash; так определено понятие катарсис у Аристотеля&raquo;. Интересно и важно.</span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify"><span style="font-size: small;">Стр. 10. </span><span style="font-size: small;"><em>В ≪Сталкере≫ все должнобыть договорено до конца: человеческая любовь и есть точудо, которое способно противостоять любому сухому теоретизированию о безнадежности мира.</em></span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify"><span style="font-size: small;"><em>Стр. 12. &laquo;Я считаю, что психоаналитические истолкования искусства слишком упрощенны, даже примитивны&raquo;. </em></span><span style="font-size: small;">Абсолютно правильно считаете Андрей Арсеньевич!</span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify"><span style="font-size: small;">Стр. 12. </span><span style="font-size: small;"><em>&laquo;Красота &mdash; символ правды. Красивее чем красота это символ добра!&raquo;</em></span><span style="font-family: Wingdings;"><span style="font-size: small;"></span></span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify"><span style="font-size: small;"><em>Стр. 14. &laquo;Мне кажется, что свобода не существует в качестве выбора: свобода'&mdash;это душевное состояние&raquo;.</em></span></p>\r\n<p class="western" style="margin-bottom: 0in; line-height: 100%;" lang="ru-RU" align="justify"><span style="font-size: small;"><em>Стр. 16. &laquo;Принято считать, что сценарий является одним из жанровлитературы. Это не так. Никакого отношения к литературе он не имеет и иметь не может&raquo;.</em></span></p>	texts/Konspekt_knigi_A_A_Tarkovskogo_O_REZhISSURE_25_10_2014.doc	2	
\.


--
-- Name: texts_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('texts_text_id_seq', 2, true);


--
-- Data for Name: videos_category; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY videos_category (id, url, title, header, hardcoded, description, in_menu, menu_order, menu_title) FROM stdin;
2	madfm	Эфиры на MadFM	Эфиры на MadFM	f		t	10	Эфиры на MadFM
6	discussions	Актуальные дискуссии	Актуальные дискуссии	f		t	20	Актуальные дискуссии
5	arthouse	Артхаус, философский action	Артхаус, философский action	f		t	60	Артхаус
7	lifeinfo	Лайфинфо, подкасты, интервью	Лайфинфо, подкасты, интервью	f		t	50	Лайфинфо
3	mc_hrabrov	MC hraBROv	MC hraBROv	f		t	40	MC hraBROv
4	speeches	Доклады, выступления, мероприятия	Мероприятия и выступления	f		t	30	Мероприятия
1	last_videos	Видеоматериалы	Видематериалы	t		t	0	Последнее
\.


--
-- Name: videos_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('videos_category_id_seq', 7, true);


--
-- Data for Name: videos_video; Type: TABLE DATA; Schema: public; Owner: hrabrov_u
--

COPY videos_video (id, video_id, title, thumbnail_medium, published_at, description, category_id) FROM stdin;
121	98XhUB-lTIU	MC hraBROv ft Наташа Ростова «Апокалипсис от Воланда»	https://i.ytimg.com/vi/98XhUB-lTIU/mqdefault.jpg	2017-05-19 22:49:33+00	Преображение постмодернизма в России<br>Выпуск 58. «Апокалипсис от Воланда»<br><br>Дорогие братья и сестры! <br><br>Не успел, к сожалению, к Дню Рождения Государя Николая II залить это видео. <br>Хотел только гитару записать, а потом так сложилось, что одна дама под псевдонимом «Наташа Ростова» захотела записать со мной коллаборацию. Я написал текст и Наташа сначала согласилась, а потом отказалась, вот мне и пришлось клип этот сделать, прервав монтаж видео «Понятие сущности познания».<br><br>Мадам Е.П. Блаватская в «Тайной Доктрине» пишет, что Апокалипсис Иоанна Богослова это плагиат книги Еноха. Мне кажется, что эта страшная ложь во многом конституирует суперересь и суперрасскол Вселенской Церкви, а также Святой Руси. Конечно, я могу ошибаться, но это как танец Марины Цвигун на престоле Храма Святой Софии в Киеве, в 1993 году. <br><br>Именно этот танец и есть страшное поругание Русской Правды, жестокая насмешка над Божьим Промыслом, также и это измышление Блаватской поругание Священного Писания в самом великом и важном! Если в «Мастере и Маргарите», согласно диакону Андрею Кураеву М.А. Булгаков в пилатовских главах изложил «Евангелие от Воланда», то подтасовка Е.П. Блаватской может вполне оказаться «Апокалипсисом от Воланда». Не знаю я авторов книги Еноха и страшно от этого, но всё же изложу логику, которой руководствовался, когда называл клип… Енох был праведен, но есть мнение, что от его имени гностики и разного рода протокаббалисты сложили ядерные мегаереси. Да и откуда эта книга может быть известна человечеству? Из папирусов, которая была найдена в Эфиопии в 18-м веке? Без устного предания? Отец Олег Щербанюк склоняется к мнению, что автором этой книги были гностики в начале христианской эры.<br><br>Конечно, я привык к малым просмотрам, да и сделал кое-где достаточно кустарно и рвано, потому что боюсь Суда Божия и сомневаюсь в правильности содеянного. В то же время, не могу не сделать хоть что-то, чтобы не то, чтобы бороться за чистоту православия, (куда мне грешному и убогому), но хотя бы вывести на чистую воду наиболее правдоподобные симулякры, копии православия, которые как раз из учения о том, что ангелы воплотились и спали с дочерьми человеческими, и формируются. Нифилимская блудня смущает многие умы, путает современное богословие очень серьёзно, на мой взгляд, может быть я не прав. Всё же если Господь дал мне дар по не совсем кривому монтажу видео, то я должен делать всё, чтобы исполнить Его волю. Об одном Его молю, чтобы успеть покаяться, если я иду не туда. Именно на основе этой гностической блудни создается тончайший симулякр православия, может быть в виде культа отрока Вячеслава. Не отрицаю до конца я святость отрока, но плоская земля была и у любимых Е.П. Блаватской египтян.<br><br>Лидер русских националистов (как он себя сам называет) Станислав Белковский в одном из последних выпусков программы «Паноптикум» на телеканале «Дождь», что если произойдёт отделение Чечни из состава РФ, то наше государство возглавит педераст и ознаменует переход к женскому правлению. Мирный же ислам, на мой взгляд, ближе к православию гораздо, чем к гедонизму. Не так важно, стоит ли человечество на развилке и может ли оно выбрать разные сценарии своей истории? Цель врага рода человеческого в любом случае погубить как можно больше душ представителей всех конфессий, культур, рас, классов.<br><br>Данное видео, как и вся моя деятельность, имеет контрэкстремистский характер. В любом случае прошу прощения у тех, чьи чувства могли быть задеты при просмотре клипа. Я не хотел этого.<br><br>Благодарю всех, кто помог мне в этом проекте. Страшно оказаться самому симулякром и предстать пред Богом нераскаянным…<br><br>Минуса были взяты отсюда: https://vk.com/freeteam<br><br>Господи, Иисусе Христе, сыне Божий, помилуй мя грешного! <br>Христос Воскресе!	3
122	hdE27GFcw_Y	MC hraBROv «Ланфрен Ланфра и разум»	https://i.ytimg.com/vi/hdE27GFcw_Y/mqdefault.jpg	2016-07-20 04:19:30+00	Преображение постмодернизма в России.<br>Выпуск 52. «Ланфрен Ланфра и разум»<br><br><br>1. Обращение к милым дамам; <br>2. MC hraBROv «Ланфрен Ланфра»;<br>3. Фрагмент фильма «Понятие сущности разума».<br><br>В этом клипе я хочу донести свою субъективную позицию по поводу современности с учётом не только экономических, но и мистических факторов. Сложно сказать, сделал я это в связи с кризисом среднего возраста, или в силу других тривиальных причин. Однако мне необходимо презентовать свои «Поэсы», пусть даже в таком необычном, клиповом формате. Пробить стены агрессивного игнорирования со стороны экспертного сообщества. Да, личные неудачи по жизни мотивировали меня сделать этот фильм, потратить множество времени на его съёмку и монтаж, и меня не удивит, если и эта работа будет проигнорирована. Однако уныние – смертный грех.<br><br>Господь сказал: «Только веруй и не бойся» (Марк 5:36). <br>«Верую, Господи помоги моему неверию» (Марк 9:24) . <br><br>Слава Отцу, и Сыну, и Святому Духу. Аминь.	3
123	O7yt5OGeObE	MC hraBROv «Революция 2017»	https://i.ytimg.com/vi/O7yt5OGeObE/mqdefault.jpg	2015-11-30 04:59:08+00	Данный ролик не призывает ни к какой Революции.<br><br>Преображение постмодернизма в России<br>Transformation of postmodernism in Russia<br>Выпуск 40. «Революция 2017» (16+)<br><br>======================<br><br>Дорогие братья и сёстры!<br><br>Наконец-то я сделал видео, которое мечтал сделать очень давно! Этот клип о самых страшных и глубоких противоречиях современного мира во всем их гипернапряжении и нарастающей остроте. Нашему обществу нужен консенсус, основанный на классической кантианской морали.<br><br>Этот клип на пределе сил и возможностей я делал три месяца, весьма поиздержался, поэтому прошу вас поддержать проект «Преображение постмодернизма в России»:<br><br>QIWI - кошелёк: +79060590227<br>Яндекс Деньги: 410012229500241<br>WebMoney: R351244579677<br>Сбербанк: 5469 4000 1885 3361<br><br>кто сколько сможет...<br><br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
124	SGxjz6WTwd8	MC hraBROv «Жидовка из Большого Театра»	https://i.ytimg.com/vi/SGxjz6WTwd8/mqdefault.jpg	2015-07-07 15:55:14+00	Преображение постмодернизма в России. <br>Transformation of postmodernism in Russia<br>Выпуск 39. «Жидовка с Большого Театра» <br><br>=====================================<br><br>Трек «Жидовка из Большого Театра» был создан <br>Владимиром [Dj Socialist] из Саратова  из случайных фраз, <br>которые были виртуозно положены на композицию <br>«Your murmuring Chasms» группы «Spor».  <br><br>Яркие образы вызывают мутные чувства, метающихся <br>в темноте греха и страстей души, которую засасывает <br>в воронку отчаяния Антихрист. «Жидовка из Большого Театра» это образ людей предавших Христа ради хлеба и зрелищ. <br><br>Этот трек смонтирован из треков MC HraBROv<br>«Молитва в подвале» и «Битва с Калмыками». <br>Конечно, никакую порнуху,  с жидовками в подвале, <br>я, Илья Храбров, не смотрел.<br><br>Как и любой нормальный человек, я осуждаю антисемитизм, расизм, троцкизм и другие радикальные формы заблуждений.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
125	q1VvdQpMCLM	MC hraBROv «Боже Царя Храни ft Queen»	https://i.ytimg.com/vi/q1VvdQpMCLM/mqdefault.jpg	2014-05-04 04:10:52+00	Преображение постмодернизма в России. Выпуск 21.<br><br>Гимн «Боже Царя Храни»<br>(бард-версия с использованием<br>пассажа из песни «Show must go on»)<br><br>Сегодня, 03.05.2014, мне пришла идея <br>записать этот ролик в связи со вчерашними <br>трагическими событиями в Одессе. <br><br>Без православного Царя,<br>на мой взгляд, не будет порядка<br>в России и на постсоветском <br>пространстве. <br><br>Быть может Господь смилуется<br>и дарует нам его.<br><br>Светлая память погибшим героям<br>Одессы, Славянска и Краматорска.<br><br>Упокой Господи души<br>усопших рабов твоих и сотвори <br>им вечную память!\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
132	rZsfwFx5nk8	MadFM, Двухсмысленные идентичности акторов метаризомы	https://i.ytimg.com/vi/rZsfwFx5nk8/mqdefault.jpg	2017-07-10 09:10:10+00	Деконструкция постмодерна. Выпуск 69.<br>«Двусмысленные идентичности акторов метаризомы»	2
133	Q2US36ZEIAs	MadFM, C. Хантингтон и радиальный Икстлан	https://i.ytimg.com/vi/Q2US36ZEIAs/mqdefault.jpg	2017-07-02 19:22:23+00	Деконструкция постмодерна.<br>Выпуск 68. «С. Хантингтон и радикальный Икстлан»	2
134	JqDb_E0GScg	MadFM, Этногенез древних тюрок	https://i.ytimg.com/vi/JqDb_E0GScg/mqdefault.jpg	2017-06-25 19:19:02+00	Деконструкция постмодерна<br>Выпуск 67. «Этногенез древних тюрок»	2
135	DDgpf0ISqNg	MadFM, Тождество и различие лженауки и лжефилософии	https://i.ytimg.com/vi/DDgpf0ISqNg/mqdefault.jpg	2017-06-19 04:30:20+00	Деконструкция постмодерна. Выпуск 66.<br>«Тождество и различие лженауки и лжефилософии»	2
126	XUrWAFCdMp0	MC hraBROv «Прекрасный ужас Оксюмирона»	https://i.ytimg.com/vi/XUrWAFCdMp0/mqdefault.jpg	2014-07-01 00:33:37+00	Преображение постмодернизма в России. Выпуск 27.<br><br>1. Рэп-блюз «Прекрасный ужас Оксюмирона»;<br>2. Лайфинфо.<br><br>Примерно в середине апреля 2014-года в одной илитной скайп-конференции меня заставили принять участие в рэп-баттле с Константином Дрейком http://www.youtube.com/watch?v=QiFoucwhGPQ. я прочитал свои лучшие стихи, однако, мне присудили поражение. Меня, как поэта, это задело и я написал реп-блюз «Прекрасный ужас Оксюмирона», где рассказываю всё, что думаю о некоторых современных, так называемых поэтах. Костя попал под раздачу, но в репчике он выступает как образ - я ничего не имею против него лично.<br><br>Для подчёркивания своей изысканной ватниковости я одел китель своего деда Александра Дмитриевича Зеленцова (1923-1989), который служил в разведке и дошёл до Вены - гнездилища постмодернизма, города который сам мерзавец<br>А. Гитлер называл Вавилоном.<br><br>Ещё Н.Я. Данилевский говорил об Австрии как о мёртворождённом государственном образовании, изначально эклектичным, единственным смыслом которого быть противовесом России в центральной Европе. Рваный Феникс - Кончита Вюрст, психоанализ З.Фрейда, отмороженный быдлорасизм А. Гитлера, а также идея незалежности у наших украинских братьев, равно как изнасилованная мова - всё это сказки именно венского леса.<br><br>Такая человеконеновистническая концепция как психоанализ родом отсюда. Что тут говорить... Надеюсь, что в сельских условиях, мне удалось нанести достойный ответ серой массе любителей покурить американскую мечту, которые почему-то называют себя пророками русского слова, то есть поэтами.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
127	WSQAJhSfnb0	MC hraBROv «Русский Мир vs Американская Мечта»	https://i.ytimg.com/vi/WSQAJhSfnb0/mqdefault.jpg	2014-10-14 12:07:46+00	Преображение постмодернизма в России<br>Transformation of postmodernism in Russia.<br>Выпуск 33. «Русский Мир vs Американская Мечта»<br><br>Я родился в Москве, в 26-м роддоме, недалеко от станции Покровское-Стрешнево и был в дальнейшем крещён в Храме Покрова Пресвятой Богородицы.  Ровно 7 лет назад, на Покров, я признался в любви девушке первый раз в жизни и был отвергнут, тогда же я и начал писать стихи. <br><br>Рождение, Крещение, первое признание в любви – наиболее значимые события в моей жизни были связаны для меня с праздником Покрова. Теперь, в возрасте Господа нашего Иисуса Христа я выкладываю этот клип на суд общественности, тоже в этот великий праздник. <br><br>Рэп-опера выполнена в православно-постмодернистском стиле и показывает<br>столкновение двух основных мировоззрений в критический, на мой взгляд, момент истории. Надеюсь моё творчество нужно Богу и людям.<br><br>Пресвятая Богородица, спаси нас.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
128	g94gZFSZVVA	MC hraBROv «Глухонемая любовь»	https://i.ytimg.com/vi/g94gZFSZVVA/mqdefault.jpg	2015-09-25 06:07:00+00	JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
129	kTCiW4qHkzY	MC hraBROv «Философский камень Майдана»	https://i.ytimg.com/vi/kTCiW4qHkzY/mqdefault.jpg	2014-02-05 10:01:05+00	Преображение постмодернизма в России. Выпуск 15.<br><br>По давней настоятельной просьбе админов богомерзкого <br>паблика ВКонтактеЕврейская Мудрость: <br>http://vk.com/jewishwisdom, сделал это видео.<br><br>Стихотворение против жидов и антисемитизма.<br><br><br>В антисемитизме вывод главный,<br>Каждый второй жид ведь коммунист.<br>А я националист православный,<br>Леволиберальный сионист.<br><br>В целом я евреев уважаю,<br>Иудеев нескольких ценю.<br>Но жидомасоны воображають,<br>Что нагнули русских в позу ню...<br><br>Говорят раскаянья не будет,<br>Русский оскотинился совсем,<br>Гойский скот раскатывает Путин,<br>Меж тектоническими плитами систем.<br><br>Систем разврата, подлости и смерти,<br>Но не причём здесь президент страны,<br>В гламурной и кровавой круговерти,<br>Услышишь красный хохот сатаны.<br><br>Свободу ищет русский на майдане,<br>Но полно, этот философский камень,<br>Сам Бог решил не поднимать:<br>Свобода воли выбирать,<br><br>Между добром и злом посредством совести,<br>Нам Господом Христом дана,<br>Мы подражаем Евангельской повести,<br>Испив страданий чашу русскую до дна.<br><br>По лбу получи фаллосом,<br>Докртина Алена Даллеса.<br>Продолжим дело дедов и отцов,<br>Воцерковим сионских мудрецов.<br><br>Святая Русь могучим Крёстным Ходом,<br>К великой правде Господа идёт,<br>И в этой правде покаяния свобода,<br>Весь мир к причастию зовёт.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
130	7qRzzmE96ZY	MC hraBROv «Гимн добротроллинга»	https://i.ytimg.com/vi/7qRzzmE96ZY/mqdefault.jpg	2014-02-15 11:11:31+00	Преображение постмодернизма в России. Выпуск 16.<br>«Гимн добротроллинга» сетевого движения <br>«G-12 - антитроллинг в интернете». <br>Учитывая доставший многих беспредел<br>хозяйничающего в интернете на правах<br>«элиты» интеллигентствующего быдла, <br>мы с соратниками сетевого движения, <br>«G-12 - антитроллинг в интернете»,<br>решили дать отмороженным деградантам<br>асимметричный, но адекватный отпор<br>в рамках действующего законодательства <br>России, СНГ и международного права.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	3
131	Q9RaOZU4LPY	MadFM, Русская идентичность в контексте Гайдаровского Форума 2016 года	https://i.ytimg.com/vi/Q9RaOZU4LPY/mqdefault.jpg	2016-02-03 04:58:34+00	Первый эфир в качестве эрджея на народном интернет-радио MADDYSONFM. В связи с определённым волнением я допустил простейшую ошибку сказав, что интервал между 2045 и 2099 годами, равен 44 вместо 54-м годам. Где-то был косноязычным, где-то сфальшивил в песне «Владимирский Централ», но в целом эфир получился хорошим. Надеюсь, если Бог даст, буду вещать по воскресеньям в 21 час. Эфиры, скорее всего будут заливаться на мой YouTube-канал и публиковаться в группе «Преображение постмодернизма в России» https://vk.com/transformation_of_postmodernism. До встречи во Всемирном Третьем Риме!	2
136	hyOv0hzklzM	MadFM, Земельный вопрос в 21-м веке	https://i.ytimg.com/vi/hyOv0hzklzM/mqdefault.jpg	2017-06-12 04:21:18+00	Деконструкция постмодерна. Выпуск 65.<br> «Земельный вопрос в 21-м веке»	2
137	Wtk22BCl7Ms	MadFM, «Государство и эволюция» Е.Т. Гайдара	https://i.ytimg.com/vi/Wtk22BCl7Ms/mqdefault.jpg	2017-06-05 05:05:03+00	Деконструкция постмодерна. Выпуск 64.<br>«"Государство и эволюция" Е.Т. Гайдара»	2
138	2W3Pwdbd6Lk	MadFM, Гностическая ПсевдоСофия валентиниан	https://i.ytimg.com/vi/2W3Pwdbd6Lk/mqdefault.jpg	2017-05-28 19:38:02+00	Деконструкция постмодерна. Выпуск 63.<br> «Гностическая ПсевдоСофия валентиниан».	2
139	MX1ePtM9j8A	Николай II: «Коля-Ананас» или великий русский Царь?	https://i.ytimg.com/vi/MX1ePtM9j8A/mqdefault.jpg	2017-05-15 05:35:06+00	Деконструкция постмодерна. Выпуск 61.<br>«Николай II: «Коля Ананас» или великий русский Царь?»<br><br>Сегодня, в 21-00 на радио MAD.FM || http://mad.pub, <br>в программе «Деконструкция постмодерна» состоится дискуссия Ильи Храброва с Ильдаром Набережным. Тема : «Николай II: "Коля-Ананас" или великий русский Царь?» <br><br>Фотографию Царя Николая II я взял на акцию «Бессмертный полк», вдохновлённый авторитетом одного из ярких лидеров подлинного патриотизма, депутата Государственной Думы РФ Н.В. Поклонской. Надеюсь, что соседство фотографии Царя Страстотерпца не диссонирует с фотографией моего деда, Зеленцова Александра Дмитриевича, который прошёл войну, служил в разведке и был ранен. Прошу прощения, если задеваю чьи-либо чувства. Может быть мой дорогой дедушка внёс свой посильный вклад в Великую Победу не только над А.А. Гитлером, но и над кайзером Вильгельмом! Дорогие братья и сестры, не судите строго, надеюсь дискуссия будет интересной	2
140	7D22NyfScds	MadFM, Религиозный культ отрицания Великой Победы	https://i.ytimg.com/vi/7D22NyfScds/mqdefault.jpg	2017-05-08 04:05:08+00	Деконструкция постмодерна. Выпуск 60.<br>«Религиозный культ отрицания Великой Победы»	2
141	0nAHPXh8W44	Mad.FM, Rap & Vlog and Rock & Roll	https://i.ytimg.com/vi/0nAHPXh8W44/mqdefault.jpg	2017-05-01 09:46:29+00	Деконструкция постмодерна. <br>Выпуск 59. «Rap & Vlog and Rock & Roll»	2
142	5ZIPAO6b_ZY	MadFM, Ноосфера инфракрасного логоса	https://i.ytimg.com/vi/5ZIPAO6b_ZY/mqdefault.jpg	2017-04-23 19:31:41+00	Деконструкция постмодерна. Выпуск 58.<br>«Ноосфера инфракрасного логоса»	2
143	X__Bowb3E7g	MadFM, Русский народ и российская нация	https://i.ytimg.com/vi/X__Bowb3E7g/mqdefault.jpg	2017-04-16 19:36:04+00	Деконструкция постмодерна. Выпуск 57.<br>Тема эфира: «Русский народ и российская нация»	2
144	RnawBrWQmrE	MadFM, Экзистенциальное поражение постгегельянства	https://i.ytimg.com/vi/RnawBrWQmrE/mqdefault.jpg	2017-04-09 19:39:29+00	Деконструкция постмодерна. Выпуск 56<br>«Экзистенциальное поражение постгегельянства»	2
145	suis6jjrWpw	MadFM, «Mad is not Bad»	https://i.ytimg.com/vi/suis6jjrWpw/mqdefault.jpg	2017-04-02 20:11:37+00	Деконструкция постмодерна.<br>Выпуск 55. «Mad is not Bad»	2
146	_hqcwm5U6aE	MadFM, Нелибидозный психосинтез фрейдизма	https://i.ytimg.com/vi/_hqcwm5U6aE/mqdefault.jpg	2017-03-26 19:47:46+00	Деконструкция постмодерна. Выпуск 54. <br>«Нелибидозный психосинтез фрейдизма»	2
147	hyOv0hzklzM	MadFM, Земельный вопрос в 21-м веке	https://i.ytimg.com/vi/hyOv0hzklzM/mqdefault.jpg	2017-06-12 04:21:18+00	Деконструкция постмодерна. Выпуск 65.<br> «Земельный вопрос в 21-м веке»	2
148	jF-rDAlkAys	MadFM, Философия нестабильности универсума	https://i.ytimg.com/vi/jF-rDAlkAys/mqdefault.jpg	2017-03-19 19:26:58+00	Деконструкция постмодерна. Выпуск 53. <br>Тема эфира: «Философия нестабильности универсума»	2
149	XuzaSLSdfrY	MadFM, Глюки Карлоса Кастанеды	https://i.ytimg.com/vi/XuzaSLSdfrY/mqdefault.jpg	2017-03-12 19:36:29+00	Деконструкция постмодерна. Выпуск 52.<br> «Глюки Карлоса Кастанеды»	2
150	6hEWW2MLelo	MadFM, Концептология научной фантастики	https://i.ytimg.com/vi/6hEWW2MLelo/mqdefault.jpg	2017-03-05 19:33:41+00	Деконструкция постмодерна. Выпуск 51.<br> «Концептология научной фантастики»	2
151	h85QIuyGv34	MadFM, «Лакейская азиатчина в трейлере фильма “Матильда”».	https://i.ytimg.com/vi/h85QIuyGv34/mqdefault.jpg	2017-02-26 19:38:21+00	Деконструкция постмодерна. Выпуск 50.<br>«Лакейская азиатчина в трейлере фильма “Матильда”».	2
152	DT-M2Cjyj3s	MadFM, Вольнодумство Ф.М. Аруэ vs теодицея Г. В. Лейбница	https://i.ytimg.com/vi/DT-M2Cjyj3s/mqdefault.jpg	2017-02-20 11:13:38+00	Деконструкция постмодерна. Выпуск 49.<br>«Вольнодумство Ф.М. Аруэ vs теодицея Г. В. Лейбница»	2
153	EaA9z3j49gQ	MadFM, Обзор основных течений индуизма	https://i.ytimg.com/vi/EaA9z3j49gQ/mqdefault.jpg	2017-02-12 19:49:42+00	Деконструкция постмодерна. Выпуск 48. <br>«Обзор основных течений индуизма»	2
154	v2rtWnahWDk	«Сборник стихов Народного Собора "Преображение России"»	https://i.ytimg.com/vi/v2rtWnahWDk/mqdefault.jpg	2017-02-05 20:00:55+00	Деконструкция постмодерна. Выпуск 47. <br>«Сборник стихов Народного Собора "Преображение России"»	2
155	S6azDAk6CAk	MadFM, Онтология мироздания в фильме «Куб»	https://i.ytimg.com/vi/S6azDAk6CAk/mqdefault.jpg	2017-01-29 19:41:16+00	Деконструкция постмодерна. Выпуск 46.<br>«Онтология мироздания в фильме «Куб»	2
156	Qlp7R7uP33E	MadFM, Нищета анорексической философии	https://i.ytimg.com/vi/Qlp7R7uP33E/mqdefault.jpg	2017-01-23 06:26:05+00	Деконструкция постмодерна. Выпуск 45.<br>«Нищета анорексической философии»	2
157	GcOhQ2-9T8E	MadFM, Теистический эволюционизм Ч. Дарвина	https://i.ytimg.com/vi/GcOhQ2-9T8E/mqdefault.jpg	2017-01-15 19:42:48+00	Деконструкция постмодерна. Выпуск 44.<br> «Теистический эволюционизм Ч. Дарвина»	2
158	jQfbIvUahas	MadFM, Фундаментальная аксиома триалектики	https://i.ytimg.com/vi/jQfbIvUahas/mqdefault.jpg	2017-01-08 19:31:32+00	Деконструкция постмодерна. Выпуск 43.<br>«Фундаментальная аксиома триалектики»	2
159	ZnANQvFursk	MadFM, Система Г.В.Ф. Гегеля — точка перехода из модерна в постмодерн	https://i.ytimg.com/vi/ZnANQvFursk/mqdefault.jpg	2017-01-01 20:01:35+00	Деконструкция постмодерна. Выпуск 42.<br>«Система Г.В.Ф. Гегеля — точка перехода из модерна в постмодерн»	2
160	XVC5tn-_SjU	MadFM, Либерализм — теория относительности свободы	https://i.ytimg.com/vi/XVC5tn-_SjU/mqdefault.jpg	2016-12-25 19:40:18+00	Деконструкция постмодерна. Выпуск 41.<br>«Либерализм — теория относительности свободы»	2
161	yzKVBlrK66Q	MadFM, Собственность. Организации. Лица	https://i.ytimg.com/vi/yzKVBlrK66Q/mqdefault.jpg	2016-12-18 19:56:21+00	Деконструкция постмодерна. Выпуск 40.<br>«Собственность. Организации. Лица».	2
162	fBZbfkTnYvs	MadFM, Всемирный русский европоцентризм	https://i.ytimg.com/vi/fBZbfkTnYvs/mqdefault.jpg	2016-12-11 20:13:14+00	Деконструкция постмодерна. Выпуск 39.<br>«Всемирный русский европоцентризм»	2
163	vQoUYduXqwY	MadFM, Человеческая многоножка теософии	https://i.ytimg.com/vi/vQoUYduXqwY/mqdefault.jpg	2016-11-28 06:19:18+00	Деконструкция постмодерна. Выпуск 38.<br>«Человеческая многоножка теософии».	2
164	HrVL6QIxAHI	MadFM, Кантианское опровержение солипсизма	https://i.ytimg.com/vi/HrVL6QIxAHI/mqdefault.jpg	2016-11-20 19:48:58+00	Деконструкция постмодерна. Выпуск 37.<br>«Кантианское опровержение солипсизма»	2
165	4EH7VXixd5Y	MadFM, Сказания Зенона Косидовского	https://i.ytimg.com/vi/4EH7VXixd5Y/mqdefault.jpg	2016-11-14 12:51:56+00	Деконструкция постмодерна. Выпуск 36.<br>«Сказания Зенона Косидовского»	2
166	myE6DYth8Ho	MadFM, Причины развала СССР	https://i.ytimg.com/vi/myE6DYth8Ho/mqdefault.jpg	2016-11-06 19:47:01+00	Деконструкция постмодерна. Выпуск 35.<br>«Причины развала СССР»	2
167	kBKv7tdxHLY	MadFM, Самосознание, память, самопознание	https://i.ytimg.com/vi/kBKv7tdxHLY/mqdefault.jpg	2016-10-30 19:42:04+00	Деконструкция постмодерна. Выпуск 34.<br>«Самосознание, память, самопознание».	2
168	bi-uKbdLaiQ	MadFM, Конфликт интерпретаций истории	https://i.ytimg.com/vi/bi-uKbdLaiQ/mqdefault.jpg	2016-10-23 19:45:21+00	Деконструкция постмодерна. Выпуск 33.<br>«Конфликт интерпретаций истории».	2
169	d22Xg3hZTvg	MadFM, Различие реальности и действительности	https://i.ytimg.com/vi/d22Xg3hZTvg/mqdefault.jpg	2016-10-16 19:47:21+00	Деконструкция постмодерна. Выпуск 32.<br> «Различие реальности и действительности»	2
170	LWBSMvPsM40	MadFM, Роза Мира и Серебряный век	https://i.ytimg.com/vi/LWBSMvPsM40/mqdefault.jpg	2016-10-09 19:53:38+00	Деконструкция постмодерна. Выпуск 31.<br>«Роза Мира и Серебряный век»	2
171	rXzsA0h1mUM	MadFM, Развитие метафизики развития	https://i.ytimg.com/vi/rXzsA0h1mUM/mqdefault.jpg	2016-10-03 04:26:06+00	Деконструкция постмодерна. Выпуск 30.<br>«Развитие метафизики развития»	2
172	eImIdZ7v26g	MadFM, Тоталитаризм и либертарианский совок	https://i.ytimg.com/vi/eImIdZ7v26g/mqdefault.jpg	2016-09-26 04:36:11+00	Деконструкция постмодерна. Выпуск 29. <br>«Тоталитаризм и либертарианский совок»	2
173	TNYi_dkf9oQ	MadFM, Логическая атомарность света	https://i.ytimg.com/vi/TNYi_dkf9oQ/mqdefault.jpg	2016-09-21 04:30:34+00	Деконструкция постмодерна. Выпуск 28.<br>«Логическая атомарность света»	2
174	Wri7qV_DtKE	MadFM, Красота в современном искусстве	https://i.ytimg.com/vi/Wri7qV_DtKE/mqdefault.jpg	2016-09-12 06:25:06+00	Деконструкция постмодерна. Выпуск 27.<br>«Красота в современном искусстве»	2
175	LwQT1YiqNb8	MadFM, Слово о числе Пи	https://i.ytimg.com/vi/LwQT1YiqNb8/mqdefault.jpg	2016-09-05 05:08:02+00	Деконструкция постмодерна.<br>Выпуск 26. «Слово о числе π»	2
176	rrYPjTlKamw	MadFM, Экспликация постмодернистского метанарратива	https://i.ytimg.com/vi/rrYPjTlKamw/mqdefault.jpg	2016-08-28 20:45:04+00	Деконструкция постмодерна. Выпуск 25.<br>«Экспликация постмодернистского метанарратива»	2
177	dIfz9G1L1l4	MadFM, «Разум в “Феноменологии духа”»	https://i.ytimg.com/vi/dIfz9G1L1l4/mqdefault.jpg	2016-08-07 20:21:55+00	Деконструкция постмодерна. <br>Выпуск 23. «Разум в “Феноменологии духа”».<br>Эфир памяти Вячеслава Мерцалова.	2
178	TzT-T5FgKt8	MadFM, Презентация диссертации о развитии постмодернизма в русской нации (Ёу!)	https://i.ytimg.com/vi/TzT-T5FgKt8/mqdefault.jpg	2016-07-31 20:11:33+00	Деконструкция постмодерна. Выпуск 22.<br>«Презентация диссертации о развитии постмодернизма в русской нации (Ёу)»	2
179	LyR5ccbjXlA	MadFM, Почему Р. Соколовский убежал от дискуссии?	https://i.ytimg.com/vi/LyR5ccbjXlA/mqdefault.jpg	2016-07-18 06:40:16+00	Деконструкция постмодерна. Выпуск 21.<br>«Почему Р. Соколовский убежал от дискуссии?»	2
180	ZBUbZqkoJIk	MadFM, Гендер вавилонской блудницы	https://i.ytimg.com/vi/ZBUbZqkoJIk/mqdefault.jpg	2016-07-11 06:51:49+00	Деконструкция постмодерна. Выпуск 20.<br>«Гендер вавилонской блудницы».	2
181	p6MCEwXm4u0	MadFM, Теория вероятности революций	https://i.ytimg.com/vi/p6MCEwXm4u0/mqdefault.jpg	2016-07-04 04:31:18+00	Деконструкция постмодерна. Выпуск 19.<br>«Теория вероятности революций»	2
182	9O6541GDi3E	MadFM, Утопия, антиутопия, априорный синтез	https://i.ytimg.com/vi/9O6541GDi3E/mqdefault.jpg	2016-06-27 12:07:29+00	Деконструкция постмодерна. Выпуск 19.<br>«Утопия, антиутопия, априорный синтез».	2
183	UR7Kt9w2xO8	MadFM, Шахматы как структура истины	https://i.ytimg.com/vi/UR7Kt9w2xO8/mqdefault.jpg	2016-06-21 04:37:37+00	Деконструкция постмодерна. Выпуск 18.<br>«Шахматы как структура истины»	2
184	J4noBEP7TEI	MadFM, Греко-римская борьба цивилизаций	https://i.ytimg.com/vi/J4noBEP7TEI/mqdefault.jpg	2016-06-13 06:37:24+00	Деконструкция постмодерна. Выпуск 17.<br>«Греко-римская борьба цивилизаций»	2
185	DZeVVpSC8GI	MadFM, Программирование схем понимания	https://i.ytimg.com/vi/DZeVVpSC8GI/mqdefault.jpg	2016-06-06 09:46:10+00	Деконструкция постмодерна. Выпуск 16.<br>«Программирование схем понимания».	2
186	5POIRueyhzI	MadFM, Темпоральная контрамоция S.N.U.F.F'ов	https://i.ytimg.com/vi/5POIRueyhzI/mqdefault.jpg	2016-05-30 09:30:02+00	Деконструкция постмодерна.<br>Выпуск 15. «Темпоральная контрамоция S.N.U.F.F’ов»	2
187	E2-4CCDKBy8	MadFM, Звёздные Войны Апокалипсиса	https://i.ytimg.com/vi/E2-4CCDKBy8/mqdefault.jpg	2016-05-23 10:11:09+00	Деконструкция постмодерна. Выпуск 14.<br>«Звёздные Войны Апокалипсиса»	2
188	kx9zW0x6Xn4	MadFM, Дифференциальная энтропия представления	https://i.ytimg.com/vi/kx9zW0x6Xn4/mqdefault.jpg	2016-05-16 07:28:41+00	Деконструкция постмодерна. Выпуск 13. <br>«Дифференциальная энтропия представления»	2
189	G1CWOaWZrCg	MadFM, Алиса в стране Витгенштейна	https://i.ytimg.com/vi/G1CWOaWZrCg/mqdefault.jpg	2016-05-10 07:33:45+00	Деконструкция постмодерна. Выпуск 12.<br>«Алиса в стране Витгенштейна»	2
190	Bfoob9Jw7k0	MadFM, Контрмарксизм нетократического посткапитализма	https://i.ytimg.com/vi/Bfoob9Jw7k0/mqdefault.jpg	2016-03-07 17:22:29+00	Деконструкция постмодерна. Выпуск 6.<br>«Контрмарксизм нетократического посткапитализма»	2
191	lZpwwS0lJgE	MadFM, Функция — синтез формальной и диалектической логики	https://i.ytimg.com/vi/lZpwwS0lJgE/mqdefault.jpg	2016-04-25 16:23:01+00	Деконструкция постмодерна. Выпуск 11.<br>«Функция — синтез формальной и диалектической логики».	2
192	BoS4Xp9pQ8A	MadFM, Сущность математического анализа	https://i.ytimg.com/vi/BoS4Xp9pQ8A/mqdefault.jpg	2016-04-11 18:21:42+00	Деконструкция постмодерна. Выпуск 10.<br> «Сущность математического анализа».	2
193	IIQoEazKMQM	MadFM, Число «е» — предел беспредела	https://i.ytimg.com/vi/IIQoEazKMQM/mqdefault.jpg	2016-04-04 11:44:15+00	Деконструкция постмодерна. Выпуск 9.<br>«Число «е» — предел беспредела».	2
194	jTz5-0hNDCY	MadFM, Преображение Абсолютной Идеи в 20-м веке	https://i.ytimg.com/vi/jTz5-0hNDCY/mqdefault.jpg	2016-03-28 13:33:48+00	Деконструкция постмодерна. Выпуск 8.<br>«Преображение Абсолютной Идеи в 20-м веке».	2
195	zBu3PASZqA0	MadFM, Понятие в системе Г. В. Ф. Гегеля	https://i.ytimg.com/vi/zBu3PASZqA0/mqdefault.jpg	2016-03-21 06:32:35+00	Деконструкция постмодерна. Выпуск 7.<br>«Понятие системы Г.В.Ф. Гегеля».	2
196	iXqPXUp4yc8	MadFM, Виртуозная простота гениальности	https://i.ytimg.com/vi/iXqPXUp4yc8/mqdefault.jpg	2016-03-01 16:33:37+00	Деконструкция постмодерна. Выпуск 5.<br>«Виртуозная простота гениальности».<br>В гостях: Иннокентий Сургучёв.	2
197	0VUdYHV4LRI	MadFM, Метод однозначности гиперконтекста	https://i.ytimg.com/vi/0VUdYHV4LRI/mqdefault.jpg	2016-02-22 13:24:53+00	Деконструкция постмодерна. Выпуск 4.<br>«Метод однозначности контекста»	2
198	U6nunhJ_D3A	MadFM, Грамматология краснобелого синтеза	https://i.ytimg.com/vi/U6nunhJ_D3A/mqdefault.jpg	2016-02-16 06:20:04+00	Деконструкция постмодерна. Выпуск 3.<br>«Грамматология краснобелого синтеза»	2
199	vLdJL_a5zLU	MadFM, Диалектика эволюции мозга	https://i.ytimg.com/vi/vLdJL_a5zLU/mqdefault.jpg	2016-02-08 10:25:20+00	Деконструкция постмодерна. Выпуск 2.<br>«Диалектика эволюции мозга»	2
200	YzU3GNbR230	MadFM, Поэсофия Лунной Сонаты	https://i.ytimg.com/vi/YzU3GNbR230/mqdefault.jpg	2015-08-09 12:25:37+00	Преображение постмодернизма в России. Выпуск 41.<br>Поэсофия Лунной Сонаты\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	2
206	6HBTAqgSQb8	Дискуссия с красивой феминисткой	https://i.ytimg.com/vi/6HBTAqgSQb8/mqdefault.jpg	2016-06-19 04:58:12+00	Преображение постмодернизма в России. <br>Выпуск 51. «Дискуссия с красивой феминисткой»	6
207	ZlK_71QqG9M	Вопрос Лёше Закону в программе «ДЕПРСНА»	https://i.ytimg.com/vi/ZlK_71QqG9M/mqdefault.jpg	2016-05-30 13:57:16+00	Преображение постмодернизма в России. Выпуск 49.<br>«Вопрос Алексею Глухову (Лёше Закону) в программе "ДЕПРСНА"»	6
228	mlAgbfJewrA	Воздвижение Поклонного Креста в селе Еремеево. 15.06.2013.	https://i.ytimg.com/vi/mlAgbfJewrA/mqdefault.jpg	2013-06-21 09:11:27+00	Воздвижение и освящение Памятного Знака (Поклонного Креста) в селе Еремеево, Истринского района, Московской области на месте древнего деревянного храма Вознесения Господня подворья Вознесенского монастыря в Московском Кремле у Фроловских ворот. <br><br><br>15 июня 2013 года в селе Еремеево, Истринского района, Московской области по инициативе жителей г. Истры, братьев Храбровых Кирилла Николаевича и Ильи Николаевича, при поддержке атамана Истринских казаков Лазебного Леонида Петровича, совместно с активистами Военно-Патриотического Клуба «Воины» и прихожанами храма Вознесения Господня был установлен Памятный Знак (Поклонный Крест) на месте древнего деревянного храма Вознесения Господня подворья Вознесенского Монастыря, основанного вдовой Дмитрия Донского преподобной Ефросинией Московской в Московском Кремле у Фроловских ворот. <br><br>Отец братьев Храбровых, Храбров Николай Иванович (12.09.1946 -- 05.07.2011), при жизни дал обет установить шестиметровый Поклонный Крест на углу пересечения федеральной трассы А-107 и поворота в деревню Ивановское, в память бойца Красной Армии Алексея, погибшего во время Великой Отечественной Войны, останки которого были найдены на территории рынка строительных материалов и бондарных изделий, расположенного на въезде в деревню Ивановское. <br><br>Крест Николай Иванович изготовил своими руками примерно в 2007 году. <br>С того времени Крест лежал во дворе дома семьи Храбровых, в Истре, сохраняя мир и любовь живущих в нём людей. Пролежав много зим Крест обветшал и его пришлось существенно обновить. Скоропостижная смерть помешала Николаю Ивановичу реализовать задуманное. <br><br>В дальнейшем, в связи со сложившейся тяжелой хозяйственной ситуацией вокруг рынка, сыновья решили отложить установку Креста в том месте где хотел установить отец, на более поздний срок. Это решение было вызвано также некоторыми трудностями, которые возникли на этапе согласования установки Поклонного Креста с федеральными органами государственной власти и органами местного самоуправления. Понимая, что далее оттягивать установку уже невозможно, было принято решение изменить место установки Креста, которое по промыслу Божию оказалось ещё более благодатным, чем того желал Николай Иванович.<br><br>Слава тебе Господи за то, что помог детям завершить дело, начатое отцом.<br><br>Упокой Господи душу усопшего раба Твоего Николая и душу супруги его, рабы Твоей Ирины и сотвори им вечную память. <br><br>Слава Отцу и Сыну и Святому Духу! И ныне и присно и во веку веков. Аминь!\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
201	8M5fBrQb4sU	MadFM, Дискуссия с философом Вячеславом Мерцаловым	https://i.ytimg.com/vi/8M5fBrQb4sU/mqdefault.jpg	2014-11-30 05:51:34+00	Преображение постмодернизма в России<br>Transformation of postmodernism in Russia.<br>Выпуск 34. «Сущность псевдоинтеллектуальности на примере Иннокентия Сургучёва»<br><br>===============================<br><br>Сразу оговорюсь, я очень уважаю Иннокентия Сургучёва именно как настоящего интеллектуала. Мне нравятся многие его тексты, но в этом эфире у Маргинала на MAD.FM он себя повёл предельно неадекватно и как следствие псевдоинтеллектуально, когда неоправданно начал переходить на личности и публично давить на самые чувствительные болевые точки оппонента, то есть меня.<br><br>Вначале эфира был содержательный диалог о хипстерах и о скатывании интеллектуальной культуры во ВКонтакте на примере паблика Дистопия. Понятно, что одни посредственности воспевают посредственностей предыдущих поколений и находятся у себя в сточной яме культуры, называя это протестом. Да, крикливая, виртуозная посредственность подчас затмевает могучую поступь вечной классики, но это только на первый взгляд. В ролике чётко зафиксировано, что Сургучёв первый перебил меня.<br><br>Далее Иннокентий Сургучев почему-то заинтересовался кто мне готовит борщ, а потом когда речь зашла о Гегеле, он не смог выдержать содержательной дискуссии, перешёл в режим параллельного монолога, но и там его постиг окончательный содержательный разгром. Конечно, он как человек умный сумел сохранить лицо, посредством относительно тонких провокаций.<br><br>Надеюсь что мы будем общаться также конструктивно как и раньше, но в этом эфире Иннокентий повёл себя как псевдоинтеллектуал.<br><br>Сегодня 30-го ноября 5 лет как не стало моей мамы, Ирины Александровны Храбровы. Для меня это был самый дорогой человек и мне очень его не хватает. Дорогие братья и сёстры, помолитесь за её душу, если Вам нетрудно.<br><br>Упокой Господи душу усопшей рабы твоей Ирины и сотвори ей вечную память.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	2
202	yc8aqsRFR28	MadFM, Преодоление ницшеанства	https://i.ytimg.com/vi/yc8aqsRFR28/mqdefault.jpg	2015-05-14 07:22:53+00	На 4-минуте Влад Ротор быканул на меня, и я задаюсь вопросом, пидор он или быдло, а может быть талантливый администратор паблика "Юбермемс"...<br><br><br><br><br><br>Преображение постмодернизма в России. Выпуск 38.<br>Trans(form-, image-)iliumination of postmodernism in Russia<br>«Вечное возвращение блудного Ницше в лоно Истины»<br><br>====================================<br><br>В ночь с 12-го на 13-е апреля 2015 года, в первой день Пасхи Господней, на радио MAD.FM состоялась финальная дискуссия по поводу творческого, литературного и философского наследия Фридриха Ницше между мной и Евгением Световидовым - научным сотрудником Института Философии РАН.<br><br>В дискуссии были сформулированы основные черты софистики Ф. Ницше, отрефлексирована стихийная диалектика его фантазий в отношении категорического императива И. Канта.<br><br>==================================<br><br>Нейрология - точка конфликта науки и философии<br><br>==================================<br><br>Также удалось пройтись по главным концепциям современной нейрологии и по профанации генетики со стороны представителя ницшеанского феминофашизма, а именно Анастасии Казанцевой - научный журналист, популяризатор науки - так её определяет Wikipedia.<br><br>Для того, чтобы замаскировать несуществующие гены педерастов, Анастасия придумала, что гены педерастии формируются на стадии беременности и только при внешних условиях, а не присущи родительским клеткам.<br><br>==================================<br><br>Это была финальная точка по развенчанию изощренной софистики философии Ф. Ницше.<br><br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	2
203	z85lqV47-ss	MadFM, Разоблачение Изиды Блаватской	https://i.ytimg.com/vi/z85lqV47-ss/mqdefault.jpg	2015-02-12 11:01:51+00	Преображение постмодернизма в России<br>Transformation of postmodernism in Russia<br>Выпуск 34. «Разоблачение Изиды Блаватской»<br><br>==================================<br><br>Прошу прощения за мат вначале ролика (18+). Это стиль ведения эфира Анатолия Маргинала на MAD.FM.<br><br>В этот раз говорили о расстреле редакции французского журнала «Charlie Hebdo», о блестящем разоблачении обмана Древнего Египта и косвенно всей «Тайной Доктрины» Е.П. Блаватской профессором И.В. Давиденко.<br><br>Далее мы отвечали на вопросы слушателей. Прошлись по темам о необходимости смертной казни, состоянии правовой системы в России и моих творческих планах. Завершили ответом на вопрос о «Розе Мира» Д.Л. Андреева.<br><br>Очень сжатый и в то же время содержательный эфир.<br><br>==================================<br><br>Мага Гаджиев придумал картинку к видео. Сразу скажу что к терроризму и экстремизму сия пикча не призывает. Для смягчение поэтому я и приставил розу в дуло автомата.<br><br>Упокой Господи душу усопших рабов твоих, погибших при обстреле Донецка с 18 по 19-е января 2015 года, и сотвори им Вечную Память.<br><br>Всех с праздником Крещения Господня!\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	2
204	x_8S7Cn5vqM	Анатолий Вассерман vs Илья Храбров: диспут об атеизме и «нейроне бесконечности».	https://i.ytimg.com/vi/x_8S7Cn5vqM/mqdefault.jpg	2013-11-07 23:13:22+00	Преображение постмодернизма в России. Выпуск 10.<br><br>«Диспут с Анатолием Вассерманом».<br><br>Тема:<br><br>«Возможно ли равноудаление науки<br>относительно атеизма, оккультизма и <br>религии в современном политическом <br>и культурном контексте?»<br><br>===================================<br><br>30.10.2013, в рамках проекта «Преображение <br>постмодернизма в России» мы (Яна Левченко, <br>Александр Панченков, Виталий Украинцев, <br>Илья Храбров) организовали диспут в скайпе<br>с политическим консультантом, многократным <br>победителем интеллектуальных игр, <br>Анатолием Вассерманом. <br><br>В диспуте я сделал попытку критиковать<br>доказательство небытия Бога, которое <br>Анатолий Вассерман сфорулировал, основываясь<br>на теореме Курта Гёделя, в видеоэссе <br>на канале Russia.ru, под названием <br>«Бога нет, если есть природа».<br><br>Ролик с видеоэссе был опубликован <br>на сайте YOUTUBE, 21 апреля 2009 года. <br>http://www.youtube.com/watch?v=hGwtfj7Xh5w<br><br>В критике доказательства Вассермана,<br>я попытался атаковать наиболее спорный,<br>на мой взгляд, тезис Анатолия Александровича <br>о том, что в природе не существует противоречий, <br>приведя в качестве примера явление <br>корпускулярно-волнового дуализма <br>фотонов (света).<br><br>Далее, в целях обоснования возможности<br>равноудаления науки относительно атеизма,<br>оккультизма и религии, мною был зачитан <br>краткий доклад «О строгой связи онтологического <br>доказательства бытия Бога Ансельма <br>Кентерберийского и растождествления <br>атеизма и материализма, через введение <br>в проблемное поле теории эволюции <br>парадокса нейрона бесконечности».<br><br>После второго выступления участники <br>конференции получили уникальную возможность<br>услышать «реакцию Вассермана» по этому <br>труднопостигаемому, но весьма актуальному <br>вопросу современности.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
205	oDKXeTAISMk	Острая дискуссия с Жекой о покемонах и типах совка (18+)	https://i.ytimg.com/vi/oDKXeTAISMk/mqdefault.jpg	2016-08-21 06:17:31+00	Преображение постмодернизма в России. Выпуск 53.<br>«Острая дискуссия с Жекой о покемонах и типах совка»<br><br>Друзья, дискуссия очень острая, и предельно актуальная. Нейтралитет не получится сделать. Ни с кем не хочу бодаться и кому-то что-то доказывать. Мы же культурные интеллигентные люди, вы поймите, что между молотом Российской фемиды и наковальней тех кто по тем или иным причинам недоволен моей позицией очень трудно лавировать. Поэтому простите, но закрываю камменты.	6
208	C04yau8O5rA	Валерия Новодворская vs Илья Храбров: дискуссия о русской демократии.	https://i.ytimg.com/vi/C04yau8O5rA/mqdefault.jpg	2013-10-03 13:49:04+00	Преображение постмодернизма в России. Выпуск 7.<br><br>Диспут с Валерией Ильиничной Новодворской.<br><br>Тема диспута:<br><br>«Возможно ли построить подлинную демократию <br>в России, ориентируясь на Запад, но без вмешательства Запада?»<br><br>27.09.2013 я позвонил Валерии Ильиничне Новодворской <br>с целью переговорить о возможности проведения диспута в скайпкасте.<br><br>Представившись активистом движения «Народный Собор» <br>и предложив провести диспут, я озвучил тему диспута. <br>Эта тема произвела негативное впечатление на Валерию Ильиничну <br>и вначале разговора она отвергла саму возможность проведения диспута. <br> <br>Однако, видимо благодаря бренду «Народный Собор», мне удалось заинтересовать председателя партии «Демократический Союз»<br>и желаемое обсуждение проблемных моментов <br>либерализма состоялось на этапе предполагаемого согласования места и времени их обсуждения!<br><br>И, как уже было не раз со мной в интернете, пришлось импровизировать :))) <br>(Мы звонили через скайп).<br><br>Мне не удалось основательно подготовиться поскольку мой друг, <br>Александр Оджа, торопил меня с этим звонком. <br><br>Это он добыл номер телефона Валерии Ильиничны по своим каналам,<br>за что ему большое спасибо.<br><br>Задёрганный звонками из скайпа, бытовыми моментами, <br>и частично в связи с собственной расхлябанностью, <br>я не сразу включил на запись рекордер, и, поэтому, не записалось примерно две минуты начала разговора.<br><br>Не удалось записать только то, как я представился и предложил <br>предполагаемую тему диспута, а также первичную реакцию Валерии Ильиничны.<br>Надеюсь, что несмотря на некую сумбурность и импровизационный характер, эта запись будет иметь ценность для аудитории.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
209	12J94Jp92CQ	Евгений Вольнов vs Илья Храбров [Пранк-дискуссия]	https://i.ytimg.com/vi/12J94Jp92CQ/mqdefault.jpg	2013-04-12 21:10:53+00	Преображение постмодернизма в России. Выпуск 6.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
210	E2VGivEF6a8	Ник Черников vs Илья Храбров: Атеизм — философия или наука?	https://i.ytimg.com/vi/E2VGivEF6a8/mqdefault.jpg	2014-04-11 14:46:22+00	Преображение постмодернизма в России. Выпуск 20.<br>Дискуссия (беседа) с Ником Черниковым,<br>Артёмом Щегловым (Dj Arti-Fix'om), Марией Беккер<br>и Александрой на тему: «Атеизм это наука или философия?»<br>в рамках дискуссионного клуба организации <br>«G-12 - антитроллинг в интернете» движения Народный Собор.<br><br>=============================================<br><br>10 апреля 2014 моя коллега Мария Беккер организовала <br>дебаты с участием музыканта Ника Черникова, который помимо успешной творческой деятельности, он известен выражаемой публично антипатией к религиозным устоям.<br>Получилась интересная дискуссия (беседа) в которой удалось озвучить совершенно новые вопросы критикующие  гегемонию атеистического мировоззрения в отношении логики, здравого смысла и науки в целом.<br><br>К сожалению не удалось полностью следовать выработанному регламенту из-за врождённой интеллигентской склонности к хаотизму со стороны некоторых участников дискуссии. Многие думают что регламент сковывает, но нет! Продуманный регламент даёт множество преимуществ, и становится даже приятно следовать изысканным процедурам.<br><br>Мои текстовые комментарии, которые я вставил на стадии монтажа сгладили шероховатости с регламентом, и с аргументацией. В этих комментариях удалось разбить мифы по поводу Ветхого Завета, о его якобы сплошной кровавости. <br><br>Большое спасибо всем участником дискуссии за проявленное доверие и потраченное время. Надеюсь не зря.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
211	vhhsMzmhTtg	Вован-Japan & Илья Храбров. Беседа о Японии.	https://i.ytimg.com/vi/vhhsMzmhTtg/mqdefault.jpg	2014-01-02 17:12:26+00	Выпуск 12.<br><br>«Красный смех восходящего солнца»<br><br>Мой друг и промоутер Александр Панченков <br>договорился о проведении беседы <br>с известный видеоблогером Вованом-Japan'ом. <br>Мне удалось задать несколько интересных<br>вопросов Владимиру на тему Курильских <br>Островов, и отношения японцев к России. <br><br>В скайп-конференции также случайно <br>поучаствовал Алексей Слободенюк <br>(«Жоана Мадсештеш»), а также мой друг <br>Андрей Коношенко, который пришёл <br>ко мне в гости, как раз в то время, <br>когда мы начали записывать конференцию.<br><br><br>В начале 20-го века  писатель Леонид Андреев<br>написал повесть «Красный смех», которая <br>посвящена русско-японской войне.<br><br>Покушение на последнего в будущем<br>русского православногоцаря Николая II <br>на мой взгляд, ознаменовало восхождение красного солнца    <br>соделанного человеками и попущенного <br>Богом апокалипсиса 20-го века.<br><br>Красный смех коллективного, чистого <br>диалектического разума определил<br>линию троцкисткой оппозиции к единственно <br>верной политике И.В. Сталина критических условиях,<br>и правый уклон КПСС закончившийся <br>развалом СССР в 1991 году.<br><br>Красный смех сатаны взрывался хохотом сирен о срочной <br>эвакуации, визгом пикирующих фашистких истребителей<br>атакующих мирное население.<br><br>С красным смехом пьяные комиссары приказывали сбивать <br>кресты с православных храмов, а начальники<br>лагерей истязали мучеников архипелага ГУЛАГ.<br><br>Инфракрасным смехом хихикает доктор Хейтер<br>из «Человеческой многоножки», <br>давясь красным смехом водит народ <br>зелёный слоник интеллигенции по русскому полю <br>экспериментов, причащая обывателей<br>сладким хлебом протеста против истины.<br><br>Суровый сибирский рок выстрадал осмысленный крик<br>русской правды в душах художников слова конца 20-го века. <br>Интуитивно проникая в глубинную суть вещей, вновь ударили <br>русские колокольчики в набат в наших сердцах.<br><br>Роман Неумоев, лидер тюменской рок-группы <br>«Инструкция по выживанию», автор песни «Красный смех», <br>которую пронзительно блестяще исполнил <br>молодой Егор Летов, сумел замкнуть  в этой песне<br>кольцо исторического безумия постмодернизма в себе и для себя. <br><br>«Армаггедон позади» - так называется картинка <br>к новому альбому группы. <br><br>С высоты нашей эпохи можно ли предположить <br>что Господь дал возможность человечеству <br>осуществить самоуправление на земле, использовав<br>все мыслимые формы управления, при этом самую <br>совершенную - православную монархию?<br><br>В этом смысле мировая репетиция армагеддона <br>может быть действительно позади: человечество <br>стало настолько совершенно насколько смогло <br>в образе Святой Руси уподобился подвигу <br>искупления Царь, а за ним сквозь горнило испытаний - народ. <br><br>Согласно многим пророчествам Господь может <br>попустить возрождение России после <br>тех испытаний, которые претерпел и быть <br>может ещё претерпит русский народ.	6
212	QQkMgnZFMDI	Радио «Реструкт» дебаты: «Гомофобы vs педерасты» 25.12.2013.	https://i.ytimg.com/vi/QQkMgnZFMDI/mqdefault.jpg	2013-12-26 12:20:59+00	(Сами дебаты начинаются с 7-минуты).<br><br>Преображение постмодернизма в России. Выпуск 11.<br>«Участие в дебатах на радио «Реструкт» против ЛГБТ-педерастов».<br><br>Национал-социализм без расизма = социализм в отдельно взятой стране.<br><br>=========================================<br><br>По приглашению ребят из движения «Реструкт» принимаю участие в дебатах с защитниками педерастов, на стороне гомофобов, которые состоятся сегодня, 25.12.2013, на радио «Реструкт». Буду отстаивать традиционные ценности в качестве активиста движения «Народный Собор».\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
213	1tc_6tqx8ks	«Роза Мира» (реинкарнация) vs Православие. По мотивам BADROOM №54.	https://i.ytimg.com/vi/1tc_6tqx8ks/mqdefault.jpg	2013-10-24 10:21:15+00	Преображение постмодернизма в России. Выпуск 9. <br><br>«Абсолютная несовместимость православно-христианского <br>учения(1) о спасении, с учением о переселении душ (реинкарнации)».<br><br><br>1. В ролике автор выражает свою субъективную <br>точку зрения, которая может быть неверной.<br><br><br>По непостижимому Божьему промыслу нам удалось сделать запись по скайпу одновременно с двумя известными интернет-личностями - Мариной (Коброй) Лоренсо и педерастом (трансгендером) Алексеем Николаевичем Слободенюком (Жоанной Мадзестеш).<br><br>19 октября 2013 года, около 20 часов вечера, по предварительной договорённости ко мне в скайп позвонил мой интернет-товарищ Александр Панченков. <br><br>Ранее Александр познакомился с эксцентричной жертвой пранкера Евгения Вольнова Мариной (Коброй) Лоренсо для того, чтобы исследовать её утончённое мировоззрение и миросозерцание.<br><br>Мы решили присоединить в конференцию Марину для того, чтобы выразить ей сострадание, учитывая её жизненные обстоятельства и тот стресс, который она получила в результате общения с Евгением Вольновым. В своих пранках в погоне за лулзлами Евгений чрезмерно нажимает на болевые точки собеседника, следуя прямолинейному закону юмора «раз есть кто смеётся, то должны быть и те над кем смеются».<br><br><br>После того как Марина Лоренсо присоединилась к конференции и я представился активистом движения «Народный Собор», наш, все-таки несколько импровизированный разговор, перешёл в сферу обсуждения целей и задач движения «Народный Собор» и прервался на 9-й минуте разговора. Когда мы начали говорить о книге Даниила Андреева «Роза мира» - Марину отвлёк параллельный звонок! <br><br>Далее события разворачивались весьма неожиданным образом, однако, в финале всё удалось вернуть в конструктивное русло к взаимному удовлетворению всех участников конференции.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
214	wQJCO9JIkGg	Православие против либертарианства  [Илья Храбров vs Алексей Шерстнев]	https://i.ytimg.com/vi/wQJCO9JIkGg/mqdefault.jpg	2014-02-24 07:30:52+00	Преображение постмодернизма в России. Выпуск 17.<br>«Православие против либертарианства».\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
215	Eml7Uw0nuMg	Евгений Вольнов vs Илья Храбров: Р. Докинз - учёный или псевдофилософ?	https://i.ytimg.com/vi/Eml7Uw0nuMg/mqdefault.jpg	2014-05-24 05:37:06+00	Храбров И.Н. Конспект книги Р. Докинза «Бог как иллюзия»: <br>http://yadi.sk/d/UTmTzIDAR9DYF<br><br><br>Преображение постмодернизма в России. Выпуск 22.<br>«Р. Докинз: учёный или псевдофилософ?»<br>(в рамках цикла дискуссий об атеизме)<br><br>=====================================<br><br>Примерно вначале апреля Евгений Вольнов<br>попросил меня прочитать книгу Ричарда Докинза<br>«Бог как иллюзия» для того чтобы в дальнейшем<br>провести дискуссию по актуальным проблемным<br>вопросам отношения религии и атеизма.<br><br>Читая книгу, я также писал конспект, который и прилагаю <br>к этому видео. С ним целесообразно ознакомиться, для <br>того чтобы вникнуть в контекст обсуждаемых вопросов. <br><br>В цивилизованной дискуссии Евгений Вольнов <br>продемонстрировал бессмысленную  жестокость <br>атеистической контрморали - следствия фарисейской <br>идеологии либерального фундаментализма. <br>Однако, несмотря на то, что Вольнов зацепился <br>до первых же слов моего конспекта, проявил <br>некомпетентность в теории эволюции, матерился, <br>переходил на личности, проявлял жестокость <br>и неадекватность дискуссия получилась <br>на мой взгляд очень содержательной и интересной. <br><br>Надо признать что мой оппонент зацепился <br>за важнейший и можно сказать принципиальнейший <br>вопрос,о том являются ли дети от природы атеистами <br>и могут ли они от природы быть христианами <br>(мусульманами, буддистами и т.д.).<br><br>Надеюсь Евгений вникнет в мою критику атеизма <br>Р. Докинза более основательно и мы продолжим <br>дискуссию по другим вопросам, которые <br>входят в проблемное поле отношений религии, <br>атеизма и науки. Мне кажется очень важным<br>публичное содержательное обсуждение <br>подобных вопросов, поэтому я публикую <br>эту дискуссию несмотря на глумление<br>моим оппонентом над памятью близких<br>мне людей. <br><br>====================================<br><br>Очень желательно вникать в текстовые <br>комментарии в видео, для того чтобы<br>наиболее полно ознакомиться с <br>моей контраругментации по важнейшим<br>вопросам, где всё решают нюансы.<br>\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
216	GidNnstbPVg	Ф. Ницше: гений или быдло? Евгений Световидов vs Илья Храбров	https://i.ytimg.com/vi/GidNnstbPVg/mqdefault.jpg	2014-06-09 07:21:41+00	Преображение постмодернизма в России. Выпуск. 24.<br>«Ф. Ницше гений или быдло? Дискуссия с Евгением<br>Световидовым».<br><br>В феврале 2014 года Виктор Ад...льфович <br>Ф...ворский организовал дискуссию между <br>мной (представителем Движения «Народный Собор», <br>а также дискуссионного  клуба G-12) и ницшеведом <br>Евгением Световидовым на тему, которая <br>могла бы быть сформулирована <br>примерно так: «Проблема несовместимости <br>христианского и ницшеанского взглядов <br>на природу морали (свободы)».<br><br>Однако, мы с коллегами не успели<br>сформулировать тему в силу достаточно<br>импровизированного характера дискуссии.<br><br>Обсуждение получилась весьма<br>интересным и содержательным, несмотря<br>на моё местами слегка некорректное поведение.<br>(приношу свои извинения перед участниками<br>полемики и зрителями).\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
217	l0jUwKmoWJo	Язычество: ложный свет и (или) истинная тьма(?)	https://i.ytimg.com/vi/l0jUwKmoWJo/mqdefault.jpg	2014-06-21 15:08:58+00	Преображение постмодернизма в России. Выпуск 26.<br><br>«Язычество: ложный свет и(или) истинная тьма?<br>Дискуссия с Павлом Бурлаком».<br><br>В конце января 2014-го года ко мне в скайп позвонил Павел Бурлак для того, чтобы обсудить деанонизацию Евгения Вольнова (Никиты Кувикова). Во время обсуждения Павел предложил мне устроить дискуссию на тему: «Христианство - друг или враг?»<br><br>Через несколько дней мы организовали дискуссию<br>в которой также поучаствовали: Виктор Адольфович Фаворский в качестве координатора, эксперты: Dj-Arti-Fix, Мага Гаджиев, Мария Беккер и Александра «Всё Пока!» из клана «G-11 почти 12». <br><br>Дискуссия, на мой взгляд, показала истинность цитаты Ф.М. Достоевского: «Если я не верю в Бога, то я верю во всё остальное.»\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
218	Vb6xy1XKW7w	Неофеминистская страгегия «мягкой стервозности». Дискуссия с Кристиной Соул.	https://i.ytimg.com/vi/Vb6xy1XKW7w/mqdefault.jpg	2014-07-05 07:19:25+00	Преображение постмодернизма в России. Выпуск 28.<br>Неофеминистская страгетия «мягкой стервозности». Дискуссия с Кристиной Соул. <br><br>В середине июня 2014 года мы с соратниками движения «G-12 антитроллинг в интернете» организовали дискуссию с Кристиной Соул в рамках дискуссионного клуба G-12 (Народного Собора). Темой дискуссии была выбрана: «Возможно ли построить любовь (отношения) между мужчиной и женщиной на основе ПОДЛИННОГО равенства?». <br><br>Жестокосердие, подлость, прямая ложь и полуправда - вот главные методы борьбы стервофеминисток: красивых женщин в возрасте от 18 до 35 лет. Они манипулируют <br>и унижают совершенно бесцельно и беспощадно. Феминизм обратная сторона монстра, который развязал беспредел коллективного Смердякова на Украине. Однако Игорь Иванович Стрелков прорвал окружение, так же и мы попытались не поддаться лстивому очарованию, не запутаться в аргументах и не потерять мысль, хотя оппонент этого очень хотела.<br><br>Дискуссия получилась очень содержательной и интересной. Ещё раз прошу прощения за звук. В ближайшее время постараюсь заняться вплотную решением этой проблемы.<br>\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
227	hwCH0oNEZ3A	Выступление команды МРО НС на викторине к 400-летию Дома Романовых	https://i.ytimg.com/vi/hwCH0oNEZ3A/mqdefault.jpg	2014-06-15 06:46:28+00	Преображение постмодернизма в России.Выпуск 25.<br>«Выступление команды Московского регионального<br>отделения движения «Народный Собор»<br>на викторине в честь 400-летия Дома Романовых.<br><br>Москва, февраль 2013-го года.»<br><br><br>Несмотря на тяжёлый психологический фон<br>команда МРО НС сумела завоевать 2-е место<br>из 12-ти команд.<br><br>Очень надеюсь что усилия МРО НС, направленные<br>на возрождение России были сделаны не зря и<br>Московское отделение Народного Собора<br>с Божьей помощью возродится.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
219	z85lqV47-ss	MadFM, Разоблачение Изиды Блаватской	https://i.ytimg.com/vi/z85lqV47-ss/mqdefault.jpg	2015-02-12 11:01:51+00	Преображение постмодернизма в России<br>Transformation of postmodernism in Russia<br>Выпуск 34. «Разоблачение Изиды Блаватской»<br><br>==================================<br><br>Прошу прощения за мат вначале ролика (18+). Это стиль ведения эфира Анатолия Маргинала на MAD.FM.<br><br>В этот раз говорили о расстреле редакции французского журнала «Charlie Hebdo», о блестящем разоблачении обмана Древнего Египта и косвенно всей «Тайной Доктрины» Е.П. Блаватской профессором И.В. Давиденко.<br><br>Далее мы отвечали на вопросы слушателей. Прошлись по темам о необходимости смертной казни, состоянии правовой системы в России и моих творческих планах. Завершили ответом на вопрос о «Розе Мира» Д.Л. Андреева.<br><br>Очень сжатый и в то же время содержательный эфир.<br><br>==================================<br><br>Мага Гаджиев придумал картинку к видео. Сразу скажу что к терроризму и экстремизму сия пикча не призывает. Для смягчение поэтому я и приставил розу в дуло автомата.<br><br>Упокой Господи душу усопших рабов твоих, погибших при обстреле Донецка с 18 по 19-е января 2015 года, и сотвори им Вечную Память.<br><br>Всех с праздником Крещения Господня!\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
220	yc8aqsRFR28	MadFM, Преодоление ницшеанства	https://i.ytimg.com/vi/yc8aqsRFR28/mqdefault.jpg	2015-05-14 07:22:53+00	На 4-минуте Влад Ротор быканул на меня, и я задаюсь вопросом, пидор он или быдло, а может быть талантливый администратор паблика "Юбермемс"...<br><br><br><br><br><br>Преображение постмодернизма в России. Выпуск 38.<br>Trans(form-, image-)iliumination of postmodernism in Russia<br>«Вечное возвращение блудного Ницше в лоно Истины»<br><br>====================================<br><br>В ночь с 12-го на 13-е апреля 2015 года, в первой день Пасхи Господней, на радио MAD.FM состоялась финальная дискуссия по поводу творческого, литературного и философского наследия Фридриха Ницше между мной и Евгением Световидовым - научным сотрудником Института Философии РАН.<br><br>В дискуссии были сформулированы основные черты софистики Ф. Ницше, отрефлексирована стихийная диалектика его фантазий в отношении категорического императива И. Канта.<br><br>==================================<br><br>Нейрология - точка конфликта науки и философии<br><br>==================================<br><br>Также удалось пройтись по главным концепциям современной нейрологии и по профанации генетики со стороны представителя ницшеанского феминофашизма, а именно Анастасии Казанцевой - научный журналист, популяризатор науки - так её определяет Wikipedia.<br><br>Для того, чтобы замаскировать несуществующие гены педерастов, Анастасия придумала, что гены педерастии формируются на стадии беременности и только при внешних условиях, а не присущи родительским клеткам.<br><br>==================================<br><br>Это была финальная точка по развенчанию изощренной софистики философии Ф. Ницше.<br><br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	6
221	M6SS-1XYkQU	Феноменология духа русской культуры в контексте государственной культурной политики	https://i.ytimg.com/vi/M6SS-1XYkQU/mqdefault.jpg	2015-06-14 07:00:15+00	Преображение постмодернизма в России.<br>Transformation of postmodernism in Russia<br><br>Выпуск 38. «Доклад в Академии по переподготовке работников искусства, культуры и туризма при Министерстве Культуры РФ».<br><br>Тема доклада: «Феноменология духа русской культуры в контексте реализации российской государственной культурной политики». Москва, 26.05.2015.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
222	hB3rZqCuTVU	Критика чистого солипсизма	https://i.ytimg.com/vi/hB3rZqCuTVU/mqdefault.jpg	2017-03-05 07:53:28+00	Преображение постмодернизма в России. <br>Выпуск 55. «Критика чистого солипсизма».<br><br>25-го февраля 2017-го я выступил в философском клубе «Антисфен» при Библиотеки им. А.Ф. Лосева с докладом «Критика чистого солипсизма» в котором он попытается раскрыть софиологическое совершенство истории в меру своего разумения. Посредством конкретно-спекулятиного анализа солипсизма докладчик покажет структуру фундаментальной борьбы классического кантианского и постмодернистско-ницшеанского типов интеллектуально-волевого лидерства во всемирной философии, науке, искусстве, политэкономии и истории. Сквозь оптику наиболее удачных историсофских систем докладчик попытается дать краткий анализ современной политэкономической, культурологической и философской повестки. <br><br>Доклад Храброва И.Н. «Критика чистого солипсизма» посвящается памяти Вячеслава Мерцалова, основателю философского клуба «Антисфен». Докладчик, следуя наставлению В.П. Троицкого, старшего научного сотрудника Библиотеки им. А.Ф. Лосева, производит исследование, направленное на различение духовной прелести солипсизма от духа ученого незнания.<br><br>Основные тезисы доклада:<br><br>1. Свернувшийся до самоотрицающей своё существование мысли разум, может быть освобождён посредством феноменологической редукции категорического императива;<br>2. Совесть – разум любви;<br>3. Фридрих Ницше растёкся непониманием по Древу Истины.<br><br><br>Прилагаю текст самого доклада «Критика чистого солипсизма», статью «Феноменология «ничто» в «философии» Ф. Ницше». Также, для софистов, занимающихся мудрованием на тему, что постмодернизм это не универсальность высшего порядка, не симулякр Бога, а всего лишь философское направление, которое уже давно сменилось другими направлениями, прилагаю статью: «Логико-математическая экспликация постмодернистского метанарратива в современной культуре». Надеюсь, этот текст поможет понять, что никакая анорексическая «философия» не может опровергнуть тот факт, что постмодернизм содержит в себе своё отрицание, а также включает себя все существующие и потенциально могущие существовать философские системы и антисистемы, научные теории, гипотезы и заблуждения, религиозные практики и ереси, весь корпус методов, методологий, техник и технологий частично или полностью рефлексируемый коллективным человеческим и техногенным разумом. Паразитирование постмодернизма на классике очевидно, ведь идёт именно борьба классики и виртуозного злобного абсурда. Что ж встать по ту сторону добра и зла для оправдания зла посредством предельно правдоподобной лжи – вот главная этическая максима постмодерна, которую никто не отменил и не преодолел. Релятивисты и софисты как паразитировали на морали, так и продолжают это делать. <br><br>Состояние постмодерна, несмотря на все неврозовские изящные метафоры и гениальный порожняковый умняк апологетов гейропки имеет следующие главные фундаментальный тезис и антитезис:<br><br>1. Истина в Православии<br><br>2.1. Истины нет;<br>2.2. Истин много;<br>2.3. Истина вне православия.<br><br>Борьба тезиса 1 и тезиса 2 определяет всё многообразие современной геополитической межидеологической, межклассовой, межрасовой, межкультурной, межэтнической борьбы. <br><br>Конвергенция лучших черт монархии, аристократии и демократии с одной стороны, а также лучших элементов национализма, коммунизма и либерализма с другой, возможны, на мой взгляд, может быть я не прав, только посредством, в конечном счёте самоконтроля. Только если нравственное начало будет положено в основу софиологического созидания соборности посредством синергии премудрого промысла Божия и коллективной свободной воли, на фоне бушевания социальной энтропии. <br><br>Другого пути нет: софистики у врагов русского народа и человечества в целом осталось «на донышке», вот они и бесятся, кормят пипл симулякрами высшей степени правдоподобия!<br><br>В конце записи имеет место разсинхронизация двух видео, на устранение которой пришлось бы затратить двое суток. Этого времени у меня сейчас нет – люди ждут доклад, поэтому пусть будет такой слегка постмодернистский разсинхрон, непродолжительное время. <br><br>Слава Отцу, и Сыну, и Святому Духу! Аминь.	4
223	gqJQPHGVbEE	Лига Трудового Действия	https://i.ytimg.com/vi/gqJQPHGVbEE/mqdefault.jpg	2016-06-07 11:09:57+00	Преображение постмодернизма в России. <br>Выпуск 50. «Лига трудового действия»<br><br>05.06.2016 я, Илья Храбров, принял участие в ликвидации последствий пожара дома в деревне Кресты, Тарусского района, Калужской области. <br><br>Нам пришлось перекрыть металлическими  листами центральные комнаты для того, чтобы хоть как-то уберечь подвал от воды. Эти листы по 6 метров в длину, которыми был покрыт сгоревший второй этаж, приходилось вытаскивать из центральных комнат,  где они замурованы под осколками провалившихся бетонных плит, а также стен второго этажа.<br><br>Неважно, несчастье Светланы Михайловны, одинокой женщины с пятью внуками, постигло в результате чьей-либо зависти, или же было вызвано стихией. Главное что мы, по мере наших скромных сил, выполнили работы, направленные  на предотвращение дальнейшего разрушения строения.<br> <br>Господь укрепляет нас в скорбях, объединяет в беде и помогает пройти испытания!<br><br>Лига Трудового Действия, одно из направлений деятельности движения «Народный Собор»,  функционирует с 2010 года. За последние 6 лет добровольцы помогли многим нуждающимся, однако на системной основе работать пока не удаётся в связи с определённым кризисом движения.<br><br>Тем не менее, мы вместе! Будь с нами!	4
224	24r4AEGQyUo	Кантианская меритократия — четвёртая политическая теория	https://i.ytimg.com/vi/24r4AEGQyUo/mqdefault.jpg	2016-02-25 15:21:16+00	Преображение постмодернизма в России. Выпуск 46.<br>«Преодоление диалектики кантианства и ницшеанства в светской культуре».<br>Доклад в Храме Воскресения Христово в Кадашах, Москва, 21.12.2015.	4
225	o3XEdCknep8	Теополитика борьбы правды и пропаганды	https://i.ytimg.com/vi/o3XEdCknep8/mqdefault.jpg	2015-11-29 06:45:26+00	Преображение постмодернизма в России<br>Transformation of postmodernism in Russia<br><br>Выпуск 42. Доклад в Хлыновском Этногенестическом Русском Народном Институте движения «Народный Собор» на тему: «Теополитика борьбы правды и пропаганды»\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
226	uRF-1xlwti0	Разум возопиёт: Милосердный! Сожги меня!	https://i.ytimg.com/vi/uRF-1xlwti0/mqdefault.jpg	2013-06-04 08:03:41+00	Преображение постмодернизма в России. Выпуск 5.<br><br>Доклад на открытой научно-теоретической конференции <br>«Футурологический аспект культурных стратегий: <br>российская цивилизация в XXI веке» <br>(к 150-летию В.И. Вернадского).<br><br>Храбров И.Н. <br>«Постнаука - кривое зеркало посткультуры»<br><br>Академия по переподготовке работников<br>культуры, искусства и туризма при <br>Министерстве Культуры РФ.<br><br>Москва, 30.05.2013\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
229	mP0kZ0PA318	Гармонизация права и управления в России	https://i.ytimg.com/vi/mP0kZ0PA318/mqdefault.jpg	2013-06-03 11:54:24+00	Доклад, который, к сожалению не был озвучен на Всероссийской Конференции «Проблемы управления» в Государственном Университете Управления и Права, в г. Москве, 22.04.2013. Доклад, на мой взгляд, содержит в себе свежий, незамыленный академизмом или публицистикой, взгляд на законотворчество и может послужить поводом для развёртывания содержательной дискуссии по принципиальным вопросам гармонизации права, управления и нравственности на территории постсоветского пространства, в условиях нарастания идеологических, этноконфессиональных и экономических противоречий.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
230	tbxedpQwz_I	Презентация системы триалектики. Часть 2. [Дискуссия]	https://i.ytimg.com/vi/tbxedpQwz_I/mqdefault.jpg	2013-02-06 18:22:19+00	JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
231	0DZm7sU8LAY	Презентация системы триалектики. Часть 3. [Дискуссия]	https://i.ytimg.com/vi/0DZm7sU8LAY/mqdefault.jpg	2013-02-07 02:03:06+00	JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
232	6f6LNg5iCa4	Презентация системы триалектики. Часть 1. [Доклад]	https://i.ytimg.com/vi/6f6LNg5iCa4/mqdefault.jpg	2013-02-06 12:12:08+00	JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	4
233	mlAgbfJewrA	Воздвижение Поклонного Креста в селе Еремеево. 15.06.2013.	https://i.ytimg.com/vi/mlAgbfJewrA/mqdefault.jpg	2013-06-21 09:11:27+00	Воздвижение и освящение Памятного Знака (Поклонного Креста) в селе Еремеево, Истринского района, Московской области на месте древнего деревянного храма Вознесения Господня подворья Вознесенского монастыря в Московском Кремле у Фроловских ворот. <br><br><br>15 июня 2013 года в селе Еремеево, Истринского района, Московской области по инициативе жителей г. Истры, братьев Храбровых Кирилла Николаевича и Ильи Николаевича, при поддержке атамана Истринских казаков Лазебного Леонида Петровича, совместно с активистами Военно-Патриотического Клуба «Воины» и прихожанами храма Вознесения Господня был установлен Памятный Знак (Поклонный Крест) на месте древнего деревянного храма Вознесения Господня подворья Вознесенского Монастыря, основанного вдовой Дмитрия Донского преподобной Ефросинией Московской в Московском Кремле у Фроловских ворот. <br><br>Отец братьев Храбровых, Храбров Николай Иванович (12.09.1946 -- 05.07.2011), при жизни дал обет установить шестиметровый Поклонный Крест на углу пересечения федеральной трассы А-107 и поворота в деревню Ивановское, в память бойца Красной Армии Алексея, погибшего во время Великой Отечественной Войны, останки которого были найдены на территории рынка строительных материалов и бондарных изделий, расположенного на въезде в деревню Ивановское. <br><br>Крест Николай Иванович изготовил своими руками примерно в 2007 году. <br>С того времени Крест лежал во дворе дома семьи Храбровых, в Истре, сохраняя мир и любовь живущих в нём людей. Пролежав много зим Крест обветшал и его пришлось существенно обновить. Скоропостижная смерть помешала Николаю Ивановичу реализовать задуманное. <br><br>В дальнейшем, в связи со сложившейся тяжелой хозяйственной ситуацией вокруг рынка, сыновья решили отложить установку Креста в том месте где хотел установить отец, на более поздний срок. Это решение было вызвано также некоторыми трудностями, которые возникли на этапе согласования установки Поклонного Креста с федеральными органами государственной власти и органами местного самоуправления. Понимая, что далее оттягивать установку уже невозможно, было принято решение изменить место установки Креста, которое по промыслу Божию оказалось ещё более благодатным, чем того желал Николай Иванович.<br><br>Слава тебе Господи за то, что помог детям завершить дело, начатое отцом.<br><br>Упокой Господи душу усопшего раба Твоего Николая и душу супруги его, рабы Твоей Ирины и сотвори им вечную память. <br><br>Слава Отцу и Сыну и Святому Духу! И ныне и присно и во веку веков. Аминь!\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	7
234	jnKFz-BhrJU	А. Блог и Е. Просвирнин — передовые мыслители своего поколения	https://i.ytimg.com/vi/jnKFz-BhrJU/mqdefault.jpg	2016-05-23 18:31:18+00		7
235	bfbtvVDndXE	Интервью на Шоссе Филателистов	https://i.ytimg.com/vi/bfbtvVDndXE/mqdefault.jpg	2016-05-26 12:02:57+00	Преображение постмодернизма в России<br>Выпуск 47. «Интервью на Шоссе Филателистов».<br>Москва, 18.05.2016	7
236	cbnoggnJaLE	Мои извинения перед участниками конференции парашного петуха Евгения Вольнова	https://i.ytimg.com/vi/cbnoggnJaLE/mqdefault.jpg	2013-12-22 17:29:21+00	Преображение постмодернизма в России. Выпуск 36.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	7
237	kt0CCW8FYoo	Логика Зелёного Слоника	https://i.ytimg.com/vi/kt0CCW8FYoo/mqdefault.jpg	2013-05-23 07:20:07+00	JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	7
238	v7XJWhQQi3U	Технология подделки диалогов ВКонтакте	https://i.ytimg.com/vi/v7XJWhQQi3U/mqdefault.jpg	2015-01-10 12:28:23+00	Группа ВКонтакте: https://vk.com/club84592105<br><br>Невозможность пересылки сообщения в подделанном виде в диалогах ВКонтакте как способ доказательства подлинности текста сообщения.<br><br>На прилагаемом видео я объясняю как подделываются диалоги ВКонтакте не при помощи фотошопа, а посредством внесения изменений в HTML-код страницы диалога.<br><br>Тот факт, что диалог технически невозможно переслать в подделанным виде другому собеседнику ВКонтакте юридически означает факт подлинности текста диалога. \r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	7
239	9-jgbAKMNLI	Компромат на Игоря Вострикова	https://i.ytimg.com/vi/9-jgbAKMNLI/mqdefault.jpg	2015-02-10 06:31:03+00	Вдохновлённый легионом бесов Игорь Востриков<br>=============================<br><br>В этом посте выкладывается ряд видеофактов совершения противоправных действий Игоря Вострикова в отношении Ильи Храброва.<br><br>Беспредел аномимных пользователей зашкаливает и анонимы очень рады тому, что могут творить зло безнаказанно. Надеемся этот ролик хоть как-то поможет людям методы фиксации злодеяний моральных уродов.<br><br>Ведь то, что дозволено для них в Сети они хотят перенести в реальность.<br><br>С 18+ в ролике получилась дежурная ирония - конечно, нужно было писать «цензура», а не 18+, но на наш взгляд, целесообразно сторонник тотального запретить всё то, что рекламируются посредством запретного плода.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	7
240	YBpDP5FM8AE	Видеофакт подлинности справки психиатра для Храброва И.Н.	https://i.ytimg.com/vi/YBpDP5FM8AE/mqdefault.jpg	2015-01-11 14:37:50+00	Игорь Востриков - https://vk.com/id279694698 <br>писал в своих липовых скриншотах: <br>https://vk.com/club84592105?z=photo-84592105_352512004%2Fwall-84592105_10 <br>о том, что Илья Храбров - https://vk.com/ilya_hrabrov <br>состоит на учёте у психиатра. <br>Данное видео обличает эту клевету.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	7
241	P-zVaz_P0rk	Наука логики беспредела	https://i.ytimg.com/vi/P-zVaz_P0rk/mqdefault.jpg	2015-02-24 08:15:00+00	Моя страница ВК: https://vk.com/ilya_hrabrov;<br><br>Группа «Преображение постмодернизма в России»:<br>https://vk.com/transformation_of_postmodernism;<br><br>Поддержи проект «Преображение постмодернизма в России», преобрази постмодернизм!<br><br>Яндекс Деньги: 410012229500241<br>QIWI - кошелёк: +79060590227<br>WebMoney: R351244579677<br>Карта Сбербанка: 5469 4000 1885 3361<br><br><br>Группа ВКонтакте «Противодействие клевете в интернете»<br>https://vk.com/club84592105<br><br>Transformation of postmodernism in Russia<br>Выпуск 35. «Наука логики беспредела»<br><br>================================<br><br>Софист – враг России и всего человечества в информационной войне. «Логика» беспредела в софистике<br><br>================================<br><br>Платоно-аристотелевское определение софистики классично и любомудрствовать на эту тему излишне в этом посте.<br><br>У меня вопрос к Ксении Собчак: «Где инверсионный след от ракеты, которая была запущена ракетным комплексом «Бук» и которой якобы был сбит малазийский «Боинг» над территорией Украины?» Этот след должны были заснять спутники и любительские камеры. Ответа на этот вопрос в либеральном интернете нет и не будет.<br><br>В современной информационной войне любимый приём софистов сводить всё к слову «пропаганда».<br>Однако есть чёткие логические и одновременно нравственные категории «правда» и «ложь». И сейчас, эти простые, понятные русскому сердцу слова подменяются понятием «пропаганда».<br>Право на эту подмену и есть право на торжество ницшеанско-софистического беспредела в информационном пространстве.<br>Ублюдок этой фейковой полуправды, маскирующей беспредел, называется «свободой слова».<br>Достаточно обозвать правду пропагандой, чтобы она обесценилась до уровня лжи, то есть до ничто.<br><br>Достаточно обозвать правду пропагандой и можно бомбить города с мирными жителями, оклеветывать целые народы с видом праведного судии. Достаточно снабдить ложь фейковыми фактами, для достижения предельного правдоподобия и отождествить правду и ложь в слове «пропаганда». Но русское, российское и адекватное украинское сердце чувствует правду!<br><br><br>================================<br><br>Политическое преодоление ницшеанской невзоровщины<br><br>================================<br><br>Для преодоления глобального беспредела невзоровщины, который может быть вызван развитием глобального цугцванга В.В. Путина, в случае глобальной турбулентности, нужно созвать Учредительное Конституционное Собрание, распущенное либерал-троцкистами в 1918-м году. После Крыма поддерживаю курс В.В. Путина, который находится в цугцванге, но он делает лучшие ходы из ухудшающих положение России, выбирает самые меньшие из созданных для России зол и параллельно преодолевает деструктивные процессы. Пока он за Россию, я поддерживаю его.<br><br>Поддержите проект. Спасибо за внимание.<br><br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
242	f0_fN-iEQt8	Супрематическое разоблачение Хованского	https://i.ytimg.com/vi/f0_fN-iEQt8/mqdefault.jpg	2016-11-11 13:31:48+00	Преображение постмодернизма в России. Выпуск 54.<br>«Супрематическое разоблачение Хованского».<br><br>Дорогие братья и сестры! Соотечественники!<br>Сердечно поздравляю вас со 195-летием со Дня Рождения великого русского писателя Фёдора Михайловича Достоевского! Данный выпуск видеоблога «Преображение постмодернизма в России» посвящается этой знаменательной дате.<br><br>Не могу посметь назвать этого гения, на котором, по сути, закончилась всемирная подлинная философия, своим учителем, поскольку недостоин мнить себя его учеником. <br>(Так как Господь помогает мне осваивать математический анализ, а также я знаком с трудами философов 20-го века достаточно детально, то прошу соответствующих интеллектуалов» (поставлю одну кавычку) воздержаться от истеричной усмешки по поводу высказанною мною мысли).<br><br>Сам я начал читать этого писателя в том возрасте, когда обычно начинают читать Ф. Ницше. Это единственный писатель, произведения которого я прочитал полностью и которым не перестаю восхищаться. Универсальность русского духа началась с великой по своей глубине цитате: «Между Христом и истиной, я выбираю Христа». <br><br>Видео «Супрематическое разоблачение Хованского» мне пришлось смонтировать и выложить потому, что я был рад, что Юрий Хованский пропиарил меня на своих стримах. Однако на них были высказаны некоторые суждения обо мне со стороны участников, да и со стороны самого Юрия, которые я бы хотел скорректировать, для того чтобы избежать накопления недопонимания.<br><br>Творчество Хованского становится мэйнстримом, Юрий сумел научиться делать великие видео, его криптопатриотический дискурс становится всё более умным, в то же время налёт либерастии не так сильно доминирует как раньше.<br><br>Что касается сценария православной криминальной драмы, о котором говорил Хованский, то он написан и, надеюсь, Юрию он понравится. Лично я готов принять самое деятельное участие в экранизации сценария, вплоть до того, чтобы сыграть одну из ролей.<br><br><br>Дорогие братья и сестры, сердечно выражаю благодарность<br>всем донаторам проекта «Преображение постмодернизма в России»: Владиславу Григоренко, Алексу Току, Егору Лободе, и другим.<br><br>Однако проект находится в забытьи, мою страницу мало посещают народа, и я думаю, что до публикации видео «Понятие сущности познания», где я постараюсь выложиться по полной, в отличие от этого относительно проходного пиар-видео, вряд ли проект будет развиваться так динамично, как этого хотелось бы. Поэтому прошу помочь проекту:<br><br>Яндекс Деньги: 410012229500241<br>QIWI - кошелёк: +79060590227<br>WebMoney: R351244579677<br>Карта Сбербанка: 5469 4000 1885 3361<br><br>очень трудно монтировать видео, на компьютере, который сильно лагает, а проект приходится загружать большим количеством видеоматериалов и процессор не вытягивает нужную скорость работы.<br><br>Прошу также всех тех, кто так или иначе присутствует видео извинить, если я как-то в неправильном контексте, что-то показал в видео. Пожалуйста, простите меня. Если вы хотите, чтобы я вырезал видео именно с вами, напишите мне в личку и я вырежу соответствующий фрагмент. <br><br>Видео содержит в себе антиэкстремистский арт-месседж и может толковаться только исходя из духа и буквы соответствующего законодательства РФ.<br><br>Прошу прощения за ненормативную лексику в чате американского стримера. Не успел вырезать, нужно ехать в столицу.	5
243	iXVF8TzkYHM	Д. Пучков, И. Мэддисон, А. Маргинал о «Науке логики беспредела» (16+)	https://i.ytimg.com/vi/iXVF8TzkYHM/mqdefault.jpg	2016-05-27 09:29:05+00	Преображение постмодернизма в России.<br>Выпуск 48. «Д. Пучков, И. Мэдиссон, <br>А. Маргинал о «Науке логики беспредела».	5
244	xGg4-NwO-pU	Артхаус «Меланхолия толерантности»	https://i.ytimg.com/vi/xGg4-NwO-pU/mqdefault.jpg	2014-08-04 05:35:30+00	Преображение постмодернизма в России. Выпуск 30.<br>Артхаус «Меланхолия толерантности».<br><br>Около года назад я познакомился с Иваном Касимовым, который в последствии предложил мне снять любительский артхаус. Очень долго у нас буксовала работа в этом направлении, так как делал клип гимна Народного Собора. Однако мы всё же встретились с Иваном на Митинге в поддержку Новороссии 11 июня 2014 года и отсняли несколько кадров к фильму, которые потом в фильм не вошли, однако меня захватила идея снять на тему толерантности актуальный артхаус о русской истории, используя философские концепты из культовых голливудских фантастических фильмов.<br><br>Через месяц мы поехали с моим другом и соратником Евгением Дацуном в Сергиев Посад на празднование 700-летие Сергия Радонежского и отсняли там много материала для фильма, однако основные съёмки я осуществил самостоятельно у себя в деревне, смастерив хромокей из подручных материлов, что позволило мне поместить себя любимого на фоне самых ярких сцен из великих фильмов.<br><br>Релиз фильма планировался к моему 33-летию, 26-го июля 2014-го года, но к сожалению, в нём было слишком много недостатков чисто технического свойства, которые необходимо было устранить и дата публикация была перенесена на именины, 2 августа 2014 года. Однако представитель фонда «Омофор» пригласили меня поучаствовать в восстановлении Храма Василия Великого в селе Кистыш суздальского района владимирской области, который построил сам Александр Васильевич Суворов и мне пришлось снова отложить релиз.<br><br>И вот сбывается моя мечта, я заканчиваю эту работу и вступаю в возраст Господа нашего Иисуса Христа с верой в то, что выполняю Его волю, а не нахожусь в сатанинской прелести.<br><br>Надеюсь, Господь наш Иисус Христос не будет меня строго судить за столь дерзкий, но быть может необходимый сейчас фильм, надеюсь строго не осудит и зритель.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
245	QahnwVdOwZI	Стендап «Русские рублики в Тель-Авиве»	https://i.ytimg.com/vi/QahnwVdOwZI/mqdefault.jpg	2014-09-18 03:43:18+00	Преображение постмодернизма в России. Выпуск 32.<br>Transformation of postmodernism in Russia<br>Стендап «Реквием по газу или русские рублики в Тель-Авиве»<br><br>============================================<br><br>У меня отключили и газ в деревне. :((( Мы покрыли 30000р. из 50000р. и динамика оплаты долга была положительной, однако на фоне украинских событий произошла моя собственная «фенита ля камедия» на тему газа. Понятно, что сотрудники горгаза действовали по инерции и по разнарядке, но ситуация мне показалось интересной для того, чтобы обыграть и в чём-то высмеять, ватниковский вульгарный антисемитизм, который используется ЗОГом, если он существует, для борьбы с так называемыми гоями. <br><br>После увертюры - собственно стендап. К сожалению, смонтировано местами рвано, за что прошу прощения у зрителя - это связано со спешкой во время съёмок. <br><br>В стендапе я попытался донести свою позицию по поводу  сущности адекватного, умеренного юмора, а также провести чёткую границу в позиционировании своего образа в интернете, между умеренной эксцентрикой и фриковой клоунадой. Трагикомичность, радостопечалие, на мой взгляд и есть подлинная соль стоящей шутки, которая основана не на грубой двусмысленности, либо на отсылке к области грязного бессознательного.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
246	ic-Wss6k2F0	Что такое Россия? Кто такие русские?	https://i.ytimg.com/vi/ic-Wss6k2F0/mqdefault.jpg	2012-08-04 16:11:09+00	Преображение постмодернизма в России. Выпуск 1.<br><br><br>Дорогие братья и сёстры, соотечественники!<br><br>Пришло время создать сообщество по сбору средств на издание Сборника стихов Народного Собора «Преображение России» для нанесения решительного ответного удара по гидре либерально-постмодернистского псевдоискусства.<br><br>Необходимо собрать 500 000 рублей.<br><br>Такая большая сумма необходима для печати на мелованной бумаге, в твёрдом переплёте с использованием цветной полиграфии.<br><br>В Сборнике участвуют известные и не очень представители патриотической мысли, художники слова, 33 автора -- с разных уголков России. Вот некоторые из них:<br><br>- Виталий Аверьянов, директор Института Динамического Консерватизма, основной автор «Русской Доктрины»<br>- писатель, историк Валерий Шамбаров.<br>- поэт, исполнитель казачьих песен Сергей Матвеев<br>- писатель Юрий Сергеев, автор книги «Княжий Остров»<br>- создатель культурного проекта «Отзвуки небес» Евгений Капустин.<br>- православный поэт Михаил Русичев (Цикл «Преображение России. Переход». Публикуется впервые)<br>- замечательная поэтесса-бард Людмила Щербакова.<br>- Солист группы «Русский Стяг» Евгений Долганов.<br>- Председатель Союза русских художников Юрий Герасимов и другие замечательные авторы.<br><br>Ведутся переговоры с популярной рэп-группой 25/17 о публикации в Сборнике стихотворения на песню «Просыпайтесь» и с представителями галереи И.С. Глазунова по вопросу получения разрешения иллюстрировать некоторые стихи Сборника репродукциями картин Ильи Сергеевича.<br>В Сборнике также используются иллюстрации репродукций картин художника Дмитрия Шмарина.<br><br>Пожертвования можно передать одному из авторов Сборника, координатору МРО движения «Народный Собор» Храброву И.Н., связавшись с ним по телефону: 8(906)059-0227 или через личку: http://vk.com/id17267508<br><br>QIWI - кошелёк: 9060590227\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
247	JY5YtaNlb0w	Постмодернизм — теория всего и ничто	https://i.ytimg.com/vi/JY5YtaNlb0w/mqdefault.jpg	2012-08-08 19:49:35+00	Преображение постмодернизма в России. Выпуск 2.<br><br><br><br>Дорогие братья и сёстры, соотечественники!<br><br>Пришло время создать сообщество по сбору средств на издание Сборника стихов Народного Собора «Преображение России» для нанесения решительного ответного удара по гидре либерально-постмодернистского псевдоискусства.<br><br>Необходимо собрать 500 000 рублей.<br><br>Такая большая сумма необходима для печати на мелованной бумаге, в твёрдом переплёте с использованием цветной полиграфии.<br><br>В Сборнике участвуют известные и не очень представители патриотической мысли, художники слова, 33 автора -- с разных уголков России. Вот некоторые из них:<br><br>- Виталий Аверьянов, директор Института Динамического Консерватизма, основной автор «Русской Доктрины»<br>- писатель, историк Валерий Шамбаров.<br>- поэт, исполнитель казачьих песен Сергей Матвеев<br>- писатель Юрий Сергеев, автор книги «Княжий Остров»<br>- создатель культурного проекта «Отзвуки небес» Евгений Капустин.<br>- православный поэт Михаил Русичев (Цикл «Преображение России. Переход». Публикуется впервые)<br>- замечательная поэтесса-бард Людмила Щербакова.<br>- Солист группы «Русский Стяг» Евгений Долганов.<br>- Председатель Союза русских художников Юрий Герасимов и другие замечательные авторы.<br><br>Ведутся переговоры с популярной рэп-группой 25/17 о публикации в Сборнике стихотворения на песню «Просыпайтесь» и с представителями галереи И.С. Глазунова по вопросу получения разрешения иллюстрировать некоторые стихи Сборника репродукциями картин Ильи Сергеевича.<br>В Сборнике также используются иллюстрации репродукций картин художника Дмитрия Шмарина.<br><br>Пожертвования можно передать одному из авторов Сборника, координатору МРО движения «Народный Собор» Храброву И.Н., связавшись с ним по телефону: 8(906)059-0227 или через личку: http://vk.com/id17267508<br><br>QIWI - кошелёк: 9060590227\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
248	OsT7h83uT5U	Санкт-Петербург — культурная матрица революции 1917 года	https://i.ytimg.com/vi/OsT7h83uT5U/mqdefault.jpg	2013-02-03 01:00:02+00	Посвящается 70-летию Сталинградской Битвы.<br><br><br><br><br><br><br>Преображение постмодернизма в России. Выпуск 4<br><br><br>.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
249	FEI1Aefg9v0	Православный вайн: Иисусова молитва	https://i.ytimg.com/vi/FEI1Aefg9v0/mqdefault.jpg	2014-08-12 16:11:20+00	Преображение постмодернизма в России.<br>Transformation of postmodernism in Russia.<br><br>Выпуск 31.<br>Православный вайн: Иисусова молитва.<br><br>Многие молодые и не очень люди начали заливать в YouTube ролики длиной в шесть секунд, в течении которых они хотят показать зрителю что-то оригинальное и смешное.<br>Иногда это получается, но зачастую сюжет вайна сводится к фриковому кривлянию.<br><br>В своём видео мне хотелось показать, на что лучше потратить 6 секунд жизни.<br><br>Показная молитва - грех перед Богом, я это понимаю и надеюсь Господь простит меня грешного. Нет мне оправдания в этом, но быть может хоть кому-то мой вайн покажется душеполезным.<br><br>Когда я говорю «православный» вайн, я выражаю свою собственную точку зрения, которая может быть неверной. Может быть мои действия не от Бога, к моему глубокому стыду и сожалению.\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
250	rpwA8G3l3Fw	Закат Запада на Ближнем Востоке	https://i.ytimg.com/vi/rpwA8G3l3Fw/mqdefault.jpg	2012-10-14 05:07:32+00	Преображение постмодернизма в России. Выпуск 3.<br><br>Дорогие братья и сёстры, соотечественники!<br><br>Пришло время создать сообщество по сбору средств на издание Сборника стихов Народного Собора «Преображение России» для нанесения решительного ответного удара по гидре либерально-постмодернистского псевдоискусства.<br><br>Необходимо собрать 500 000 рублей.<br><br>Такая большая сумма необходима для печати на мелованной бумаге, в твёрдом переплёте с использованием цветной полиграфии.<br><br>В Сборнике участвуют известные и не очень представители патриотической мысли, художники слова, 33 автора -- с разных уголков России. Вот некоторые из них:<br><br>- Виталий Аверьянов, директор Института Динамического Консерватизма, основной автор «Русской Доктрины»<br>- писатель, историк Валерий Шамбаров.<br>- поэт, исполнитель казачьих песен Сергей Матвеев<br>- писатель Юрий Сергеев, автор книги «Княжий Остров»<br>- создатель культурного проекта «Отзвуки небес» Евгений Капустин.<br>- православный поэт Михаил Русичев (Цикл «Преображение России. Переход». Публикуется впервые)<br>- замечательная поэтесса-бард Людмила Щербакова.<br>- Солист группы «Русский Стяг» Евгений Долганов.<br>- Председатель Союза русских художников Юрий Герасимов и другие замечательные авторы.<br><br>Ведутся переговоры с популярной рэп-группой 25/17 о публикации в Сборнике стихотворения на песню «Просыпайтесь» и с представителями галереи И.С. Глазунова по вопросу получения разрешения иллюстрировать некоторые стихи Сборника репродукциями картин Ильи Сергеевича.<br>В Сборнике также используются иллюстрации репродукций картин художника Дмитрия Шмарина.<br><br>Пожертвования можно передать одному из авторов Сборника, координатору МРО движения «Народный Собор» Храброву И.Н., связавшись с ним по телефону: 8(906)059-0227 или через личку: http://vk.com/id17267508<br><br>QIWI - кошелёк: 9060590227\r<br>\r<br>JOIN VSP GROUP PARTNER PROGRAM: https://youpartnerwsp.com/ru/join?92067	5
\.


--
-- Name: videos_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hrabrov_u
--

SELECT pg_catalog.setval('videos_video_id_seq', 250, true);


--
-- Name: aboutus_webpage aboutus_webpage_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY aboutus_webpage
    ADD CONSTRAINT aboutus_webpage_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: book_webpage book_webpage_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY book_webpage
    ADD CONSTRAINT book_webpage_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: donate_webpage donate_webpage_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY donate_webpage
    ADD CONSTRAINT donate_webpage_pkey PRIMARY KEY (id);


--
-- Name: general_message general_message_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY general_message
    ADD CONSTRAINT general_message_pkey PRIMARY KEY (id);


--
-- Name: texts_category texts_category_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY texts_category
    ADD CONSTRAINT texts_category_pkey PRIMARY KEY (id);


--
-- Name: texts_text texts_text_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY texts_text
    ADD CONSTRAINT texts_text_pkey PRIMARY KEY (id);


--
-- Name: videos_category videos_category_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY videos_category
    ADD CONSTRAINT videos_category_pkey PRIMARY KEY (id);


--
-- Name: videos_video videos_video_pkey; Type: CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY videos_video
    ADD CONSTRAINT videos_video_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: texts_text_category_id_033d1a66; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX texts_text_category_id_033d1a66 ON texts_text USING btree (category_id);


--
-- Name: videos_video_category_id_192e505b; Type: INDEX; Schema: public; Owner: hrabrov_u
--

CREATE INDEX videos_video_category_id_192e505b ON videos_video USING btree (category_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: texts_text texts_text_category_id_033d1a66_fk_texts_category_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY texts_text
    ADD CONSTRAINT texts_text_category_id_033d1a66_fk_texts_category_id FOREIGN KEY (category_id) REFERENCES texts_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videos_video videos_video_category_id_192e505b_fk_videos_category_id; Type: FK CONSTRAINT; Schema: public; Owner: hrabrov_u
--

ALTER TABLE ONLY videos_video
    ADD CONSTRAINT videos_video_category_id_192e505b_fk_videos_category_id FOREIGN KEY (category_id) REFERENCES videos_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

