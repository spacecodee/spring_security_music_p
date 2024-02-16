--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

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
-- Name: genre; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character varying NOT NULL,
    genre_enabled character varying DEFAULT 'ENABLED'::bpchar NOT NULL
);


ALTER TABLE public.genre OWNER TO spacecodee;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_genre_id_seq OWNER TO spacecodee;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- Name: jwt_token; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.jwt_token (
    jwt_token_id integer NOT NULL,
    jwt_token_token character varying NOT NULL,
    jwt_token_is_valid boolean NOT NULL,
    user_id integer NOT NULL,
    jwt_token_expiry_date timestamp with time zone
);


ALTER TABLE public.jwt_token OWNER TO spacecodee;

--
-- Name: jwt_token_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.jwt_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jwt_token_id_seq OWNER TO spacecodee;

--
-- Name: jwt_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.jwt_token_id_seq OWNED BY public.jwt_token.jwt_token_id;


--
-- Name: module; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.module (
    module_id integer NOT NULL,
    module_name character varying NOT NULL,
    module_base_path character varying NOT NULL
);


ALTER TABLE public.module OWNER TO spacecodee;

--
-- Name: module_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.module_id_seq OWNER TO spacecodee;

--
-- Name: module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.module_id_seq OWNED BY public.module.module_id;


--
-- Name: operation; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.operation (
    operation_id integer NOT NULL,
    operation_tag character varying NOT NULL,
    operation_path character varying,
    operation_http_method character varying NOT NULL,
    operation_permit_all boolean NOT NULL,
    module_id integer NOT NULL
);


ALTER TABLE public.operation OWNER TO spacecodee;

--
-- Name: operation_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operation_id_seq OWNER TO spacecodee;

--
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.operation_id_seq OWNED BY public.operation.operation_id;


--
-- Name: permission; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.permission (
    permission_id integer NOT NULL,
    role_id integer NOT NULL,
    operation_id integer NOT NULL
);


ALTER TABLE public.permission OWNER TO spacecodee;

--
-- Name: permission_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_id_seq OWNER TO spacecodee;

--
-- Name: permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.permission_id_seq OWNED BY public.permission.permission_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying NOT NULL
);


ALTER TABLE public.role OWNER TO spacecodee;

--
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.role_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_role_id_seq OWNER TO spacecodee;

--
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;


--
-- Name: song; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.song (
    song_id integer NOT NULL,
    song_name character varying NOT NULL,
    song_artist_name character varying NOT NULL,
    song_released_date date NOT NULL,
    genre_id integer NOT NULL,
    song_enabled character varying DEFAULT true NOT NULL
);


ALTER TABLE public.song OWNER TO spacecodee;

--
-- Name: table_name_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.table_name_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_name_artist_id_seq OWNER TO spacecodee;

--
-- Name: table_name_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.table_name_artist_id_seq OWNED BY public.song.song_id;


--
-- Name: user_s; Type: TABLE; Schema: public; Owner: spacecodee
--

CREATE TABLE public.user_s (
    id_user_s integer NOT NULL,
    user_s_username character varying NOT NULL,
    user_s_password character varying NOT NULL,
    user_s_name character varying NOT NULL,
    user_s_lastname character varying NOT NULL,
    user_s_email character varying NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.user_s OWNER TO spacecodee;

--
-- Name: user_s_id_user_s_seq; Type: SEQUENCE; Schema: public; Owner: spacecodee
--

CREATE SEQUENCE public.user_s_id_user_s_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_s_id_user_s_seq OWNER TO spacecodee;

--
-- Name: user_s_id_user_s_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: spacecodee
--

ALTER SEQUENCE public.user_s_id_user_s_seq OWNED BY public.user_s.id_user_s;


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- Name: jwt_token jwt_token_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.jwt_token ALTER COLUMN jwt_token_id SET DEFAULT nextval('public.jwt_token_id_seq'::regclass);


--
-- Name: module module_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.module ALTER COLUMN module_id SET DEFAULT nextval('public.module_id_seq'::regclass);


--
-- Name: operation operation_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.operation ALTER COLUMN operation_id SET DEFAULT nextval('public.operation_id_seq'::regclass);


--
-- Name: permission permission_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.permission ALTER COLUMN permission_id SET DEFAULT nextval('public.permission_id_seq'::regclass);


--
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);


--
-- Name: song song_id; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.song ALTER COLUMN song_id SET DEFAULT nextval('public.table_name_artist_id_seq'::regclass);


--
-- Name: user_s id_user_s; Type: DEFAULT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.user_s ALTER COLUMN id_user_s SET DEFAULT nextval('public.user_s_id_user_s_seq'::regclass);


--
-- Name: genre genre_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pk PRIMARY KEY (genre_id);


--
-- Name: jwt_token jwt_token_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.jwt_token
    ADD CONSTRAINT jwt_token_pk PRIMARY KEY (jwt_token_id);


--
-- Name: module module_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pk PRIMARY KEY (module_id);


--
-- Name: operation operation_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_pk PRIMARY KEY (operation_id);


--
-- Name: permission permission_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pk PRIMARY KEY (permission_id);


--
-- Name: role role_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pk PRIMARY KEY (role_id);


--
-- Name: song song_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pk PRIMARY KEY (song_id);


--
-- Name: user_s user_s_pk; Type: CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.user_s
    ADD CONSTRAINT user_s_pk PRIMARY KEY (id_user_s);


--
-- Name: jwt_token jwt_token_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.jwt_token
    ADD CONSTRAINT jwt_token_user_id_fk FOREIGN KEY (user_id) REFERENCES public.user_s(id_user_s) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: operation operation_module_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_module_id_fk FOREIGN KEY (module_id) REFERENCES public.module(module_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: permission permission_operation_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_operation_id_fk FOREIGN KEY (operation_id) REFERENCES public.operation(operation_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: permission permission_role_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_role_id_fk FOREIGN KEY (role_id) REFERENCES public.role(role_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song song_genre_genre_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_genre_genre_id_fk FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_s user_s_role_role_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: spacecodee
--

ALTER TABLE ONLY public.user_s
    ADD CONSTRAINT user_s_role_role_id_fk FOREIGN KEY (role_id) REFERENCES public.role(role_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

-- Addings
insert into public.module (module_id, module_name, module_base_path)
values  (1, 'SONG', '/song'),
        (2, 'GENRE', '/genre'),
        (4, 'AUTH', '/auth'),
        (3, 'CUSTOMER', '/customer'),
        (5, 'USER', '/user');

insert into public.operation (operation_id, operation_tag, operation_path, operation_http_method, operation_permit_all, module_id)
values  (1, 'READ_ALL_PRODUCTS', '', 'GET', false, 1),
        (2, 'READ_ONE_PRODUCT', '/[0-9]*', 'GET', false, 1),
        (3, 'CREATE_ONE_PRODUCT', '', 'POST', false, 1),
        (4, 'UPDATE_ONE_PRODUCT', '/[0-9]*', 'PUT', false, 1),
        (5, 'DISABLE_ONE_PRODUCT', '/[0-9]*/disabled', 'PUT', false, 1),
        (6, 'READ_ONE_CATEGORY', '/[0-9]*', 'GET', false, 2),
        (7, 'READ_ALL_CATEGORIES', '', 'GET', false, 2),
        (8, 'CREATE_ONE_CATEGORY', '', 'POST', false, 2),
        (9, 'UPDATE_ONE_CATEGORY', '/[0-9]*', 'PUT', false, 2),
        (10, 'DISABLE_ONE_CATEGORY', '/[0-9]*/disabled', 'PUT', false, 2);

insert into public.permission (permission_id, role_id, operation_id)
values  (22, 1, 15),
        (23, 2, 1),
        (24, 2, 2),
        (25, 2, 4),
        (26, 2, 6),
        (27, 2, 7),
        (28, 2, 9),
        (29, 2, 15),
        (30, 3, 1),
        (31, 3, 2);

insert into public.role (role_id, role_name)
values  (1, 'CUSTOMER'),
        (2, 'ASSISTANT_ADMINISTRATOR'),
        (3, 'ADMINISTRATOR');