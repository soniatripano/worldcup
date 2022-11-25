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
    round character varying(30) NOT NULL,
    winner_id character varying(30) NOT NULL,
    opponent_id character varying(30) NOT NULL,
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (141, 2018, 'Final', '33', '34', 4, 2);
INSERT INTO public.games VALUES (142, 2018, 'Third Place', '35', '36', 2, 0);
INSERT INTO public.games VALUES (143, 2018, 'Semi-Final', '34', '36', 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Semi-Final', '33', '35', 1, 0);
INSERT INTO public.games VALUES (145, 2018, 'Quarter-Final', '34', '37', 3, 2);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', '36', '38', 2, 0);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', '35', '39', 2, 1);
INSERT INTO public.games VALUES (148, 2018, 'Quarter-Final', '33', '40', 2, 0);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', '36', '41', 2, 1);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', '38', '42', 1, 0);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', '35', '43', 3, 2);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', '39', '44', 2, 0);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', '34', '45', 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', '37', '46', 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', '40', '47', 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', '33', '48', 4, 3);
INSERT INTO public.games VALUES (157, 2014, 'Final', '49', '48', 1, 0);
INSERT INTO public.games VALUES (158, 2014, 'Third Place', '50', '39', 3, 0);
INSERT INTO public.games VALUES (159, 2014, 'Semi-Final', '48', '50', 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Semi-Final', '49', '39', 7, 1);
INSERT INTO public.games VALUES (161, 2014, 'Quarter-Final', '50', '51', 1, 0);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', '48', '35', 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', '39', '41', 2, 1);
INSERT INTO public.games VALUES (164, 2014, 'Quarter-Final', '49', '33', 1, 0);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', '39', '52', 2, 1);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', '41', '40', 2, 0);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', '33', '53', 2, 0);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', '49', '54', 2, 1);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', '50', '44', 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', '51', '55', 2, 1);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', '48', '42', 1, 0);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', '35', '56', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('33', 'France');
INSERT INTO public.teams VALUES ('34', 'Croatia');
INSERT INTO public.teams VALUES ('35', 'Belgium');
INSERT INTO public.teams VALUES ('36', 'England');
INSERT INTO public.teams VALUES ('37', 'Russia');
INSERT INTO public.teams VALUES ('38', 'Sweden');
INSERT INTO public.teams VALUES ('39', 'Brazil');
INSERT INTO public.teams VALUES ('40', 'Uruguay');
INSERT INTO public.teams VALUES ('41', 'Colombia');
INSERT INTO public.teams VALUES ('42', 'Switzerland');
INSERT INTO public.teams VALUES ('43', 'Japan');
INSERT INTO public.teams VALUES ('44', 'Mexico');
INSERT INTO public.teams VALUES ('45', 'Denmark');
INSERT INTO public.teams VALUES ('46', 'Spain');
INSERT INTO public.teams VALUES ('47', 'Portugal');
INSERT INTO public.teams VALUES ('48', 'Argentina');
INSERT INTO public.teams VALUES ('49', 'Germany');
INSERT INTO public.teams VALUES ('50', 'Netherlands');
INSERT INTO public.teams VALUES ('51', 'Costa Rica');
INSERT INTO public.teams VALUES ('52', 'Chile');
INSERT INTO public.teams VALUES ('53', 'Nigeria');
INSERT INTO public.teams VALUES ('54', 'Algeria');
INSERT INTO public.teams VALUES ('55', 'Greece');
INSERT INTO public.teams VALUES ('56', 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 172, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 68, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 68, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 56, true);


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

