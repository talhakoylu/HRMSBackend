--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-06-05 21:16:08

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
-- TOC entry 224 (class 1259 OID 17010)
-- Name: candidate_foreign_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_foreign_language (
    id integer NOT NULL,
    language_level character varying(255),
    candidate_id integer,
    foreign_language_id integer
);


ALTER TABLE public.candidate_foreign_language OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17008)
-- Name: candidate_foreign_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_foreign_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.candidate_foreign_language_id_seq OWNER TO postgres;

--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 223
-- Name: candidate_foreign_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_foreign_language_id_seq OWNED BY public.candidate_foreign_language.id;


--
-- TOC entry 228 (class 1259 OID 17059)
-- Name: candidate_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_links (
    id integer NOT NULL,
    github_url character varying(255),
    linkedin_url character varying(255),
    candidate_id integer
);


ALTER TABLE public.candidate_links OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17057)
-- Name: candidate_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.candidate_links_id_seq OWNER TO postgres;

--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 227
-- Name: candidate_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_links_id_seq OWNED BY public.candidate_links.id;


--
-- TOC entry 229 (class 1259 OID 17068)
-- Name: candidate_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_users (
    birth_year integer,
    first_name character varying(255),
    identity_number character varying(255),
    last_name character varying(255),
    mernis_verification boolean,
    user_id integer NOT NULL
);


ALTER TABLE public.candidate_users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16832)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16830)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 16928)
-- Name: educations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.educations (
    id integer NOT NULL,
    graduated_date date,
    is_graduated boolean,
    started_date date,
    school_id integer,
    candidate_id integer
);


ALTER TABLE public.educations OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16926)
-- Name: educations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.educations_id_seq OWNER TO postgres;

--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 213
-- Name: educations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.educations_id_seq OWNED BY public.educations.id;


--
-- TOC entry 202 (class 1259 OID 16782)
-- Name: employer_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employer_users (
    user_id integer NOT NULL,
    company_name character varying(255) NOT NULL,
    website character varying(255) NOT NULL,
    phone_number character varying(30) NOT NULL
);


ALTER TABLE public.employer_users OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17018)
-- Name: foreign_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.foreign_languages (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.foreign_languages OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17016)
-- Name: foreign_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.foreign_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.foreign_languages_id_seq OWNER TO postgres;

--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 225
-- Name: foreign_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.foreign_languages_id_seq OWNED BY public.foreign_languages.id;


--
-- TOC entry 231 (class 1259 OID 17108)
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    image_id character varying(255),
    url_path character varying(255),
    user_id integer
);


ALTER TABLE public.images OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17106)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 230
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 220 (class 1259 OID 16972)
-- Name: job_experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_experiences (
    id integer NOT NULL,
    finished_date date,
    job_position character varying(255),
    started_date date,
    workplace_name character varying(255),
    candidate_id integer
);


ALTER TABLE public.job_experiences OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16970)
-- Name: job_experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_experiences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_experiences_id_seq OWNER TO postgres;

--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 219
-- Name: job_experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.job_experiences_id_seq OWNED BY public.job_experiences.id;


--
-- TOC entry 205 (class 1259 OID 16807)
-- Name: job_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_positions (
    id integer NOT NULL,
    title character varying(60) NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.job_positions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16805)
-- Name: job_positions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.job_positions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 16827)
-- Name: job_postings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_postings (
    id integer NOT NULL,
    city_id integer NOT NULL,
    job_position_id integer NOT NULL,
    employer_id integer NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(2500) NOT NULL,
    open_positions integer NOT NULL,
    application_deadline date NOT NULL,
    created_at date NOT NULL,
    is_active boolean NOT NULL,
    min_salary integer,
    max_salary integer
);


ALTER TABLE public.job_postings OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16837)
-- Name: job_postings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.job_postings ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_postings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16983)
-- Name: resumes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resumes (
    id integer NOT NULL,
    cover_letter character varying(1500),
    education_id integer,
    job_experience_id integer,
    known_technologies character varying(255),
    candidate_foreign_language_id integer,
    candidate_link_id integer,
    image_id integer
);


ALTER TABLE public.resumes OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16981)
-- Name: resumes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resumes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resumes_id_seq OWNER TO postgres;

--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 221
-- Name: resumes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resumes_id_seq OWNED BY public.resumes.id;


--
-- TOC entry 216 (class 1259 OID 16936)
-- Name: school_departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school_departments (
    id integer NOT NULL,
    name character varying(255),
    schoold_id integer
);


ALTER TABLE public.school_departments OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16934)
-- Name: school_departments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.school_departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.school_departments_id_seq OWNER TO postgres;

--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 215
-- Name: school_departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.school_departments_id_seq OWNED BY public.school_departments.id;


--
-- TOC entry 218 (class 1259 OID 16944)
-- Name: schools; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.schools OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16942)
-- Name: schools_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_id_seq OWNER TO postgres;

--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 217
-- Name: schools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_id_seq OWNED BY public.schools.id;


--
-- TOC entry 203 (class 1259 OID 16790)
-- Name: staff_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff_users (
    user_id integer NOT NULL,
    first_name character varying(35) NOT NULL,
    last_name character varying(35) NOT NULL,
    birth_year integer NOT NULL
);


ALTER TABLE public.staff_users OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16812)
-- Name: staff_verifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff_verifications (
    user_id integer NOT NULL,
    staff_id integer NOT NULL,
    verified_at date NOT NULL,
    is_verified boolean NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.staff_verifications OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16764)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(500) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16762)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16886)
-- Name: verification_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verification_codes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    verification_code character varying(500) NOT NULL,
    created_at date NOT NULL,
    is_verified boolean NOT NULL
);


ALTER TABLE public.verification_codes OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16884)
-- Name: verification_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.verification_codes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.verification_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2958 (class 2604 OID 17013)
-- Name: candidate_foreign_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_foreign_language ALTER COLUMN id SET DEFAULT nextval('public.candidate_foreign_language_id_seq'::regclass);


--
-- TOC entry 2960 (class 2604 OID 17062)
-- Name: candidate_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_links ALTER COLUMN id SET DEFAULT nextval('public.candidate_links_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 16931)
-- Name: educations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educations ALTER COLUMN id SET DEFAULT nextval('public.educations_id_seq'::regclass);


--
-- TOC entry 2959 (class 2604 OID 17021)
-- Name: foreign_languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foreign_languages ALTER COLUMN id SET DEFAULT nextval('public.foreign_languages_id_seq'::regclass);


--
-- TOC entry 2961 (class 2604 OID 17111)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 2956 (class 2604 OID 16975)
-- Name: job_experiences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_experiences ALTER COLUMN id SET DEFAULT nextval('public.job_experiences_id_seq'::regclass);


--
-- TOC entry 2957 (class 2604 OID 16986)
-- Name: resumes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes ALTER COLUMN id SET DEFAULT nextval('public.resumes_id_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 16939)
-- Name: school_departments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_departments ALTER COLUMN id SET DEFAULT nextval('public.school_departments_id_seq'::regclass);


--
-- TOC entry 2955 (class 2604 OID 16947)
-- Name: schools id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools ALTER COLUMN id SET DEFAULT nextval('public.schools_id_seq'::regclass);


--
-- TOC entry 3172 (class 0 OID 17010)
-- Dependencies: 224
-- Data for Name: candidate_foreign_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.candidate_foreign_language (id, language_level, candidate_id, foreign_language_id) FROM stdin;
1	3	11	1
2	4	18	1
\.


--
-- TOC entry 3176 (class 0 OID 17059)
-- Dependencies: 228
-- Data for Name: candidate_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.candidate_links (id, github_url, linkedin_url, candidate_id) FROM stdin;
1	github 1	linkedin 1	18
\.


--
-- TOC entry 3177 (class 0 OID 17068)
-- Dependencies: 229
-- Data for Name: candidate_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.candidate_users (birth_year, first_name, identity_number, last_name, mernis_verification, user_id) FROM stdin;
1999	Ahmet Talha	12345678910	Köylü	t	18
\.


--
-- TOC entry 3157 (class 0 OID 16832)
-- Dependencies: 209
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, name) FROM stdin;
1	City 1
2	City 2
\.


--
-- TOC entry 3162 (class 0 OID 16928)
-- Dependencies: 214
-- Data for Name: educations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.educations (id, graduated_date, is_graduated, started_date, school_id, candidate_id) FROM stdin;
1	2022-03-04	f	2017-09-16	1	11
2	2020-06-16	t	2015-09-12	1	11
3	2023-06-16	t	2019-09-12	1	11
4	2020-06-16	t	2017-09-04	1	18
\.


--
-- TOC entry 3150 (class 0 OID 16782)
-- Dependencies: 202
-- Data for Name: employer_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employer_users (user_id, company_name, website, phone_number) FROM stdin;
14	string	ahmettalha.net	string
\.


--
-- TOC entry 3174 (class 0 OID 17018)
-- Dependencies: 226
-- Data for Name: foreign_languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.foreign_languages (id, name) FROM stdin;
1	Language 1
\.


--
-- TOC entry 3179 (class 0 OID 17108)
-- Dependencies: 231
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, image_id, url_path, user_id) FROM stdin;
1	rubjjgihqklrtg0sqyim	http://res.cloudinary.com/djg9hgyas/image/upload/v1622912572/rubjjgihqklrtg0sqyim.png	\N
2	i6piricb3gpsd3zuvefs	http://res.cloudinary.com/djg9hgyas/image/upload/v1622913290/i6piricb3gpsd3zuvefs.png	18
\.


--
-- TOC entry 3168 (class 0 OID 16972)
-- Dependencies: 220
-- Data for Name: job_experiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_experiences (id, finished_date, job_position, started_date, workplace_name, candidate_id) FROM stdin;
1	2021-06-04	Job Position 1	2019-02-02	Deneme Yer	\N
2	\N	Job Position 2	2012-02-02	Deneme Yer 2	11
3	\N	Job Position 2	2012-02-02	Deneme Yer 2	11
4	\N	Job Position 18	2020-04-06	Workplace 18	18
\.


--
-- TOC entry 3153 (class 0 OID 16807)
-- Dependencies: 205
-- Data for Name: job_positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_positions (id, title, description) FROM stdin;
1	title 1	desc1
\.


--
-- TOC entry 3155 (class 0 OID 16827)
-- Dependencies: 207
-- Data for Name: job_postings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_postings (id, city_id, job_position_id, employer_id, title, description, open_positions, application_deadline, created_at, is_active, min_salary, max_salary) FROM stdin;
2	2	1	14	Job Post 2	Desc 2	2	2021-07-31	2021-05-31	t	10000	50000
1	1	1	14	Job Post 1	string	2	2021-07-31	2021-05-31	f	10000	50000
\.


--
-- TOC entry 3170 (class 0 OID 16983)
-- Dependencies: 222
-- Data for Name: resumes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resumes (id, cover_letter, education_id, job_experience_id, known_technologies, candidate_foreign_language_id, candidate_link_id, image_id) FROM stdin;
1	Cover letter 1	4	4	known technologies 18	2	1	\N
\.


--
-- TOC entry 3164 (class 0 OID 16936)
-- Dependencies: 216
-- Data for Name: school_departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.school_departments (id, name, schoold_id) FROM stdin;
1	Department 1	1
\.


--
-- TOC entry 3166 (class 0 OID 16944)
-- Dependencies: 218
-- Data for Name: schools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools (id, name) FROM stdin;
1	School 1
\.


--
-- TOC entry 3151 (class 0 OID 16790)
-- Dependencies: 203
-- Data for Name: staff_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff_users (user_id, first_name, last_name, birth_year) FROM stdin;
17	Ahmet	Talha	1998
\.


--
-- TOC entry 3154 (class 0 OID 16812)
-- Dependencies: 206
-- Data for Name: staff_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff_verifications (user_id, staff_id, verified_at, is_verified, id) FROM stdin;
\.


--
-- TOC entry 3149 (class 0 OID 16764)
-- Dependencies: 201
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password) FROM stdin;
11	abc@abc.com	string
12	talhakoylu0@gmail.com	123
13	abc@abc2.com	string
14	email@ahmettalha.net	string
17	staff@ahmettalha.net	123
18	abc@abc.com	12345678
\.


--
-- TOC entry 3160 (class 0 OID 16886)
-- Dependencies: 212
-- Data for Name: verification_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verification_codes (id, user_id, verification_code, created_at, is_verified) FROM stdin;
1	13	ebd4de6d-4f5c-478c-ac9d-944eb3747e0d	2021-05-30	f
2	14	15d549dc-9686-4213-bf69-d54df453f6f1	2021-05-30	f
3	18	2d0e7984-626f-4c82-8c5b-41395d566cde	2021-06-05	f
\.


--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 223
-- Name: candidate_foreign_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.candidate_foreign_language_id_seq', 2, true);


--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 227
-- Name: candidate_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.candidate_links_id_seq', 1, true);


--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 208
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 2, true);


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 213
-- Name: educations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.educations_id_seq', 4, true);


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 225
-- Name: foreign_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.foreign_languages_id_seq', 1, true);


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 230
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 2, true);


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 219
-- Name: job_experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_experiences_id_seq', 4, true);


--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 204
-- Name: job_positions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_positions_id_seq', 1, true);


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 210
-- Name: job_postings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_postings_id_seq', 2, true);


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 221
-- Name: resumes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resumes_id_seq', 1, true);


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 215
-- Name: school_departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.school_departments_id_seq', 1, true);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 217
-- Name: schools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_id_seq', 1, true);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 200
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 211
-- Name: verification_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verification_codes_id_seq', 3, true);


--
-- TOC entry 2967 (class 2606 OID 16794)
-- Name: staff_users PK_Employers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT "PK_Employers" PRIMARY KEY (user_id);


--
-- TOC entry 2965 (class 2606 OID 16789)
-- Name: employer_users PK_StaffUser; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employer_users
    ADD CONSTRAINT "PK_StaffUser" PRIMARY KEY (user_id);


--
-- TOC entry 2971 (class 2606 OID 16816)
-- Name: staff_verifications PK_StaffVerifications; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff_verifications
    ADD CONSTRAINT "PK_StaffVerifications" PRIMARY KEY (user_id);


--
-- TOC entry 2989 (class 2606 OID 17015)
-- Name: candidate_foreign_language candidate_foreign_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_foreign_language
    ADD CONSTRAINT candidate_foreign_language_pkey PRIMARY KEY (id);


--
-- TOC entry 2993 (class 2606 OID 17067)
-- Name: candidate_links candidate_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_links
    ADD CONSTRAINT candidate_links_pkey PRIMARY KEY (id);


--
-- TOC entry 2995 (class 2606 OID 17075)
-- Name: candidate_users candidate_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_users
    ADD CONSTRAINT candidate_users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2975 (class 2606 OID 16836)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 2979 (class 2606 OID 16933)
-- Name: educations educations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educations
    ADD CONSTRAINT educations_pkey PRIMARY KEY (id);


--
-- TOC entry 2991 (class 2606 OID 17023)
-- Name: foreign_languages foreign_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foreign_languages
    ADD CONSTRAINT foreign_languages_pkey PRIMARY KEY (id);


--
-- TOC entry 2997 (class 2606 OID 17116)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- TOC entry 2985 (class 2606 OID 16980)
-- Name: job_experiences job_experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_experiences
    ADD CONSTRAINT job_experiences_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 16811)
-- Name: job_positions job_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);


--
-- TOC entry 2973 (class 2606 OID 16846)
-- Name: job_postings job_postings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_postings
    ADD CONSTRAINT job_postings_pkey PRIMARY KEY (id);


--
-- TOC entry 2987 (class 2606 OID 16991)
-- Name: resumes resumes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes
    ADD CONSTRAINT resumes_pkey PRIMARY KEY (id);


--
-- TOC entry 2981 (class 2606 OID 16941)
-- Name: school_departments school_departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_departments
    ADD CONSTRAINT school_departments_pkey PRIMARY KEY (id);


--
-- TOC entry 2983 (class 2606 OID 16949)
-- Name: schools schools_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);


--
-- TOC entry 2963 (class 2606 OID 16771)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2977 (class 2606 OID 16893)
-- Name: verification_codes verification_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verification_codes
    ADD CONSTRAINT verification_codes_pkey PRIMARY KEY (id);


--
-- TOC entry 2999 (class 2606 OID 16795)
-- Name: staff_users FK_EmployerUsers_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff_users
    ADD CONSTRAINT "FK_EmployerUsers_Users" FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3003 (class 2606 OID 16847)
-- Name: job_postings FK_JobPostings_Cities; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_postings
    ADD CONSTRAINT "FK_JobPostings_Cities" FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3005 (class 2606 OID 16857)
-- Name: job_postings FK_JobPostings_Employers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_postings
    ADD CONSTRAINT "FK_JobPostings_Employers" FOREIGN KEY (employer_id) REFERENCES public.employer_users(user_id) NOT VALID;


--
-- TOC entry 3004 (class 2606 OID 16852)
-- Name: job_postings FK_JobPostings_JobPositions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_postings
    ADD CONSTRAINT "FK_JobPostings_JobPositions" FOREIGN KEY (job_position_id) REFERENCES public.job_positions(id) NOT VALID;


--
-- TOC entry 2998 (class 2606 OID 16800)
-- Name: employer_users FK_StaffUsers_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employer_users
    ADD CONSTRAINT "FK_StaffUsers_Users" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 3001 (class 2606 OID 16822)
-- Name: staff_verifications FK_StaffVerifications_StaffUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff_verifications
    ADD CONSTRAINT "FK_StaffVerifications_StaffUsers" FOREIGN KEY (user_id) REFERENCES public.employer_users(user_id);


--
-- TOC entry 3000 (class 2606 OID 16817)
-- Name: staff_verifications FK_StaffVerifications_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff_verifications
    ADD CONSTRAINT "FK_StaffVerifications_Users" FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3006 (class 2606 OID 16894)
-- Name: verification_codes FK_VerificationCodes_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verification_codes
    ADD CONSTRAINT "FK_VerificationCodes_Users" FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3017 (class 2606 OID 17127)
-- Name: images fk13ljqfrfwbyvnsdhihwta8cpr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT fk13ljqfrfwbyvnsdhihwta8cpr FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3011 (class 2606 OID 17034)
-- Name: resumes fk4rhbb92ojutywtvwulc4wm9ki; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes
    ADD CONSTRAINT fk4rhbb92ojutywtvwulc4wm9ki FOREIGN KEY (candidate_foreign_language_id) REFERENCES public.candidate_foreign_language(id);


--
-- TOC entry 3013 (class 2606 OID 17137)
-- Name: resumes fk5cdm0vl31c72j217184e70xcb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes
    ADD CONSTRAINT fk5cdm0vl31c72j217184e70xcb FOREIGN KEY (image_id) REFERENCES public.images(id);


--
-- TOC entry 3012 (class 2606 OID 17101)
-- Name: resumes fk772l3xw4ke6n7k32j791rrvg9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes
    ADD CONSTRAINT fk772l3xw4ke6n7k32j791rrvg9 FOREIGN KEY (candidate_link_id) REFERENCES public.candidate_links(id);


--
-- TOC entry 3015 (class 2606 OID 17081)
-- Name: candidate_links fka85dx8101h5pdcgqn8ydsj442; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_links
    ADD CONSTRAINT fka85dx8101h5pdcgqn8ydsj442 FOREIGN KEY (candidate_id) REFERENCES public.candidate_users(user_id);


--
-- TOC entry 3014 (class 2606 OID 17029)
-- Name: candidate_foreign_language fkavhpp3s2a04lt77o29v9wq2je; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_foreign_language
    ADD CONSTRAINT fkavhpp3s2a04lt77o29v9wq2je FOREIGN KEY (foreign_language_id) REFERENCES public.foreign_languages(id);


--
-- TOC entry 3008 (class 2606 OID 16965)
-- Name: school_departments fkfugischmfim6opr3k3p65la6i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_departments
    ADD CONSTRAINT fkfugischmfim6opr3k3p65la6i FOREIGN KEY (schoold_id) REFERENCES public.schools(id);


--
-- TOC entry 3010 (class 2606 OID 17002)
-- Name: resumes fkkxtc28hktjapxogtxnxg5yfgi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes
    ADD CONSTRAINT fkkxtc28hktjapxogtxnxg5yfgi FOREIGN KEY (job_experience_id) REFERENCES public.job_experiences(id);


--
-- TOC entry 3016 (class 2606 OID 17086)
-- Name: candidate_users fkm9wjgk6obh6sl1oa9mvu6q75p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_users
    ADD CONSTRAINT fkm9wjgk6obh6sl1oa9mvu6q75p FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3002 (class 2606 OID 16909)
-- Name: staff_verifications fkpe0l6oc7rp03nf3amrxpd9cmh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff_verifications
    ADD CONSTRAINT fkpe0l6oc7rp03nf3amrxpd9cmh FOREIGN KEY (staff_id) REFERENCES public.staff_users(user_id);


--
-- TOC entry 3009 (class 2606 OID 16997)
-- Name: resumes fkpwno8g8e6e2242lcq8wmfl68v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resumes
    ADD CONSTRAINT fkpwno8g8e6e2242lcq8wmfl68v FOREIGN KEY (education_id) REFERENCES public.educations(id);


--
-- TOC entry 3007 (class 2606 OID 16950)
-- Name: educations fksl0obkwq6y01a9pk3gfg20pd9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educations
    ADD CONSTRAINT fksl0obkwq6y01a9pk3gfg20pd9 FOREIGN KEY (school_id) REFERENCES public.schools(id);


-- Completed on 2021-06-05 21:16:09

--
-- PostgreSQL database dump complete
--

