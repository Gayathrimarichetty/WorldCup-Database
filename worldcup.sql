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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 4, 2, 168, 169);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 2, 0, 170, 171);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 2, 1, 169, 171);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 1, 0, 168, 170);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 3, 2, 169, 172);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 2, 0, 171, 173);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 2, 1, 170, 174);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 2, 0, 168, 175);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 2, 1, 171, 176);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 1, 0, 173, 177);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 2, 170, 178);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 2, 0, 174, 179);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 2, 1, 169, 180);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 2, 1, 172, 181);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 2, 1, 175, 182);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 4, 3, 168, 183);
INSERT INTO public.games VALUES (17, 2014, 'Final', 1, 0, 184, 183);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 3, 0, 185, 174);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 1, 0, 183, 185);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 7, 1, 184, 174);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 1, 0, 185, 186);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 1, 0, 183, 170);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 2, 1, 174, 176);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 1, 0, 184, 168);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 2, 1, 174, 187);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 2, 0, 176, 175);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 2, 0, 168, 188);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 2, 1, 184, 189);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 2, 1, 185, 179);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 2, 1, 186, 190);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 1, 0, 183, 177);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 2, 1, 170, 191);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('', 134);
INSERT INTO public.teams VALUES ('France', 168);
INSERT INTO public.teams VALUES ('Croatia', 169);
INSERT INTO public.teams VALUES ('Belgium', 170);
INSERT INTO public.teams VALUES ('England', 171);
INSERT INTO public.teams VALUES ('Russia', 172);
INSERT INTO public.teams VALUES ('Sweden', 173);
INSERT INTO public.teams VALUES ('Brazil', 174);
INSERT INTO public.teams VALUES ('Uruguay', 175);
INSERT INTO public.teams VALUES ('Colombia', 176);
INSERT INTO public.teams VALUES ('Switzerland', 177);
INSERT INTO public.teams VALUES ('Japan', 178);
INSERT INTO public.teams VALUES ('Mexico', 179);
INSERT INTO public.teams VALUES ('Denmark', 180);
INSERT INTO public.teams VALUES ('Spain', 181);
INSERT INTO public.teams VALUES ('Portugal', 182);
INSERT INTO public.teams VALUES ('Argentina', 183);
INSERT INTO public.teams VALUES ('Germany', 184);
INSERT INTO public.teams VALUES ('Netherlands', 185);
INSERT INTO public.teams VALUES ('Costa Rica', 186);
INSERT INTO public.teams VALUES ('Chile', 187);
INSERT INTO public.teams VALUES ('Nigeria', 188);
INSERT INTO public.teams VALUES ('Algeria', 189);
INSERT INTO public.teams VALUES ('Greece', 190);
INSERT INTO public.teams VALUES ('United States', 191);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 191, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

