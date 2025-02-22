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
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL,
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

INSERT INTO public.games VALUES (103, 2018, 'Final', 501, 502, 4, 2);
INSERT INTO public.games VALUES (104, 2018, 'Third Place', 503, 504, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Semi-Final', 502, 504, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Semi-Final', 501, 503, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Quarter-Final', 502, 505, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Quarter-Final', 504, 506, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Quarter-Final', 503, 507, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Quarter-Final', 501, 508, 2, 0);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 504, 509, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 506, 510, 1, 0);
INSERT INTO public.games VALUES (113, 2018, 'Eighth-Final', 503, 511, 3, 2);
INSERT INTO public.games VALUES (114, 2018, 'Eighth-Final', 507, 512, 2, 0);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 502, 513, 2, 1);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 505, 514, 2, 1);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 508, 515, 2, 1);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 501, 516, 4, 3);
INSERT INTO public.games VALUES (119, 2014, 'Final', 517, 516, 1, 0);
INSERT INTO public.games VALUES (120, 2014, 'Third Place', 518, 507, 3, 0);
INSERT INTO public.games VALUES (121, 2014, 'Semi-Final', 516, 518, 1, 0);
INSERT INTO public.games VALUES (122, 2014, 'Semi-Final', 517, 507, 7, 1);
INSERT INTO public.games VALUES (123, 2014, 'Quarter-Final', 518, 519, 1, 0);
INSERT INTO public.games VALUES (124, 2014, 'Quarter-Final', 516, 503, 1, 0);
INSERT INTO public.games VALUES (125, 2014, 'Quarter-Final', 507, 509, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Quarter-Final', 517, 501, 1, 0);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 507, 520, 2, 1);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 509, 508, 2, 0);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 501, 521, 2, 0);
INSERT INTO public.games VALUES (130, 2014, 'Eighth-Final', 517, 522, 2, 1);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 518, 512, 2, 1);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 519, 523, 2, 1);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 516, 510, 1, 0);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 503, 524, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 501);
INSERT INTO public.teams VALUES ('Croatia', 502);
INSERT INTO public.teams VALUES ('Belgium', 503);
INSERT INTO public.teams VALUES ('England', 504);
INSERT INTO public.teams VALUES ('Russia', 505);
INSERT INTO public.teams VALUES ('Sweden', 506);
INSERT INTO public.teams VALUES ('Brazil', 507);
INSERT INTO public.teams VALUES ('Uruguay', 508);
INSERT INTO public.teams VALUES ('Colombia', 509);
INSERT INTO public.teams VALUES ('Switzerland', 510);
INSERT INTO public.teams VALUES ('Japan', 511);
INSERT INTO public.teams VALUES ('Mexico', 512);
INSERT INTO public.teams VALUES ('Denmark', 513);
INSERT INTO public.teams VALUES ('Spain', 514);
INSERT INTO public.teams VALUES ('Portugal', 515);
INSERT INTO public.teams VALUES ('Argentina', 516);
INSERT INTO public.teams VALUES ('Germany', 517);
INSERT INTO public.teams VALUES ('Netherlands', 518);
INSERT INTO public.teams VALUES ('Costa Rica', 519);
INSERT INTO public.teams VALUES ('Chile', 520);
INSERT INTO public.teams VALUES ('Nigeria', 521);
INSERT INTO public.teams VALUES ('Algeria', 522);
INSERT INTO public.teams VALUES ('Greece', 523);
INSERT INTO public.teams VALUES ('United States', 524);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 134, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 524, true);


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
-- Name: games games_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponents_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponents_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

