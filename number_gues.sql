--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    best_game integer,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (13, 'user_1689609535636', 2);
INSERT INTO public.users VALUES (1, 'user_1689610007156', 2);
INSERT INTO public.users VALUES (11, 'user_1689609535637', 5);
INSERT INTO public.users VALUES (1, 'user_1689610007157', 5);
INSERT INTO public.users VALUES (319, 'user_1689609551886', 2);
INSERT INTO public.users VALUES (243, 'user_1689609551887', 5);
INSERT INTO public.users VALUES (1, 'user_1689610115186', 2);
INSERT INTO public.users VALUES (173, 'user_1689609723133', 2);
INSERT INTO public.users VALUES (1, 'user_1689610115187', 5);
INSERT INTO public.users VALUES (284, 'user_1689609723134', 5);
INSERT INTO public.users VALUES (2, 'antigx[3', 1);
INSERT INTO public.users VALUES (150, 'user_1689610257427', 2);
INSERT INTO public.users VALUES (353, 'user_1689609834794', 2);
INSERT INTO public.users VALUES (216, 'user_1689609834795', 5);
INSERT INTO public.users VALUES (493, 'user_1689610257428', 5);
INSERT INTO public.users VALUES (NULL, 'antigx', 4);
INSERT INTO public.users VALUES (166, 'user_1689609851152', 2);
INSERT INTO public.users VALUES (41, 'user_1689609851153', 5);
INSERT INTO public.users VALUES (36, 'user_1689610392425', 2);
INSERT INTO public.users VALUES (222, 'user_1689609855795', 2);
INSERT INTO public.users VALUES (183, 'user_1689609855796', 5);
INSERT INTO public.users VALUES (104, 'user_1689610392426', 5);
INSERT INTO public.users VALUES (338, 'user_1689609867664', 2);
INSERT INTO public.users VALUES (350, 'user_1689609867665', 5);
INSERT INTO public.users VALUES (316, 'user_1689610422522', 2);
INSERT INTO public.users VALUES (17, 'user_1689610422523', 5);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

