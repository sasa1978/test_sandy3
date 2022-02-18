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
-- Name: author; Type: TABLE; Schema: public; Owner: admin; Tablespace: 
--

CREATE TABLE author (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.author OWNER TO admin;

--
-- Name: author_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.author_id_seq OWNER TO admin;

--
-- Name: author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE author_id_seq OWNED BY author.id;


--
-- Name: book; Type: TABLE; Schema: public; Owner: admin; Tablespace: 
--

CREATE TABLE book (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    id_author integer NOT NULL,
    id_publisher integer NOT NULL
);


ALTER TABLE public.book OWNER TO admin;

--
-- Name: book_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_id_seq OWNER TO admin;

--
-- Name: book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE book_id_seq OWNED BY book.id;


--
-- Name: publisher; Type: TABLE; Schema: public; Owner: admin; Tablespace: 
--

CREATE TABLE publisher (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.publisher OWNER TO admin;

--
-- Name: publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publisher_id_seq OWNER TO admin;

--
-- Name: publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE publisher_id_seq OWNED BY publisher.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY author ALTER COLUMN id SET DEFAULT nextval('author_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY book ALTER COLUMN id SET DEFAULT nextval('book_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY publisher ALTER COLUMN id SET DEFAULT nextval('publisher_id_seq'::regclass);


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO author VALUES (1, 'Автор 1');
INSERT INTO author VALUES (3, 'Автор 3');
INSERT INTO author VALUES (4, 'Автор 4');
INSERT INTO author VALUES (6, 'Автор 6');
INSERT INTO author VALUES (8, 'Автор 8');
INSERT INTO author VALUES (9, 'Автор 9');


--
-- Name: author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('author_id_seq', 9, true);


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO book VALUES (1, 'Книга 1', 1, 1);
INSERT INTO book VALUES (2, 'Книга 2', 1, 1);
INSERT INTO book VALUES (3, 'Книга 3', 2, 1);
INSERT INTO book VALUES (4, 'Книга 4', 2, 1);
INSERT INTO book VALUES (5, 'Книга 5', 3, 1);
INSERT INTO book VALUES (6, 'Книга 6', 3, 1);
INSERT INTO book VALUES (7, 'Книга 7', 4, 2);
INSERT INTO book VALUES (8, 'Книга 8', 4, 2);
INSERT INTO book VALUES (9, 'Книга 9', 5, 2);
INSERT INTO book VALUES (10, 'Книга 10', 5, 2);
INSERT INTO book VALUES (11, 'Книга 11', 6, 2);
INSERT INTO book VALUES (12, 'Книга 12', 6, 2);
INSERT INTO book VALUES (13, 'Книга 13', 7, 3);
INSERT INTO book VALUES (14, 'Книга 14', 7, 3);
INSERT INTO book VALUES (15, 'Книга 15', 8, 3);
INSERT INTO book VALUES (16, 'Книга 16', 8, 3);
INSERT INTO book VALUES (17, 'Книга 17', 9, 3);
INSERT INTO book VALUES (18, 'Книга 18', 9, 3);


--
-- Name: book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('book_id_seq', 18, true);


--
-- Data for Name: publisher; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO publisher VALUES (2, 'Издатель 2');
INSERT INTO publisher VALUES (3, 'Издатель 3');


--
-- Name: publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('publisher_id_seq', 3, true);


--
-- Name: author_pkey; Type: CONSTRAINT; Schema: public; Owner: admin; Tablespace: 
--

ALTER TABLE ONLY author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


--
-- Name: book_pkey; Type: CONSTRAINT; Schema: public; Owner: admin; Tablespace: 
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- Name: publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: admin; Tablespace: 
--

ALTER TABLE ONLY publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

