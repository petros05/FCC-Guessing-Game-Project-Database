--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    guess_id integer NOT NULL,
    best_game integer NOT NULL,
    user_id integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Name: number_guess_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.number_guess_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_guess_guess_id_seq OWNER TO freecodecamp;

--
-- Name: number_guess_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.number_guess_guess_id_seq OWNED BY public.number_guess.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: number_guess guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess ALTER COLUMN guess_id SET DEFAULT nextval('public.number_guess_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES (64, 522, 31);
INSERT INTO public.number_guess VALUES (65, 184, 31);
INSERT INTO public.number_guess VALUES (66, 526, 32);
INSERT INTO public.number_guess VALUES (67, 319, 32);
INSERT INTO public.number_guess VALUES (68, 56, 31);
INSERT INTO public.number_guess VALUES (69, 651, 31);
INSERT INTO public.number_guess VALUES (70, 959, 31);
INSERT INTO public.number_guess VALUES (71, 5, 33);
INSERT INTO public.number_guess VALUES (72, 808, 33);
INSERT INTO public.number_guess VALUES (73, 136, 34);
INSERT INTO public.number_guess VALUES (74, 52, 34);
INSERT INTO public.number_guess VALUES (75, 9, 33);
INSERT INTO public.number_guess VALUES (76, 299, 33);
INSERT INTO public.number_guess VALUES (77, 428, 33);
INSERT INTO public.number_guess VALUES (78, 458, 35);
INSERT INTO public.number_guess VALUES (79, 864, 35);
INSERT INTO public.number_guess VALUES (80, 279, 36);
INSERT INTO public.number_guess VALUES (81, 19, 36);
INSERT INTO public.number_guess VALUES (82, 170, 35);
INSERT INTO public.number_guess VALUES (83, 843, 35);
INSERT INTO public.number_guess VALUES (84, 433, 35);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (31, 'user_1720815055479');
INSERT INTO public.users VALUES (32, 'user_1720815055478');
INSERT INTO public.users VALUES (33, 'user_1720815067624');
INSERT INTO public.users VALUES (34, 'user_1720815067623');
INSERT INTO public.users VALUES (35, 'user_1720815261224');
INSERT INTO public.users VALUES (36, 'user_1720815261223');


--
-- Name: number_guess_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.number_guess_guess_id_seq', 84, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: number_guess number_guess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: number_guess number_guess_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

