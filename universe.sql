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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(20),
    description text,
    size integer NOT NULL,
    distance integer NOT NULL,
    color character varying(20) NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    color character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    color character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    color character varying(20) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    color character varying(20) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'random', NULL, 2, 50, 'red');
INSERT INTO public.extra VALUES (2, 'rfg', NULL, 4, 34, 'blue');
INSERT INTO public.extra VALUES (3, 'fwf', NULL, 5, 67, 'orange');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', NULL, NULL, NULL, 'aaaaa', NULL, NULL, 'red');
INSERT INTO public.galaxy VALUES (2, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'zq');
INSERT INTO public.galaxy VALUES (3, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'evr');
INSERT INTO public.galaxy VALUES (4, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'vevg');
INSERT INTO public.galaxy VALUES (5, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'awf');
INSERT INTO public.galaxy VALUES (6, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'vbr');
INSERT INTO public.galaxy VALUES (7, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'nte');
INSERT INTO public.galaxy VALUES (9, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'ntse');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'red', 2);
INSERT INTO public.moon VALUES (2, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'r', 5);
INSERT INTO public.moon VALUES (3, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'dr', 5);
INSERT INTO public.moon VALUES (4, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'rhjr', 5);
INSERT INTO public.moon VALUES (5, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'dbyr', 5);
INSERT INTO public.moon VALUES (6, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'dbsfesyr', 5);
INSERT INTO public.moon VALUES (7, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'qwerr', 5);
INSERT INTO public.moon VALUES (9, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'sfaer', 5);
INSERT INTO public.moon VALUES (10, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'sgtrgr', 5);
INSERT INTO public.moon VALUES (11, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'sfrgr', 5);
INSERT INTO public.moon VALUES (12, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'nufrgr', 5);
INSERT INTO public.moon VALUES (13, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'nuf4r', 5);
INSERT INTO public.moon VALUES (14, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'nnyuu', 5);
INSERT INTO public.moon VALUES (15, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'jhdguu', 5);
INSERT INTO public.moon VALUES (16, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'javtndguu', 5);
INSERT INTO public.moon VALUES (17, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'jagrdguu', 5);
INSERT INTO public.moon VALUES (18, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'jwwdguu', 5);
INSERT INTO public.moon VALUES (19, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'jnmumu', 5);
INSERT INTO public.moon VALUES (20, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'fvgbhnnmumu', 5);
INSERT INTO public.moon VALUES (21, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'fbggbhnnmumu', 5);
INSERT INTO public.moon VALUES (22, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'aaumu', 5);
INSERT INTO public.moon VALUES (24, 'loquito', NULL, NULL, NULL, NULL, NULL, NULL, 'ad', 5);
INSERT INTO public.moon VALUES (25, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'blue', 5);
INSERT INTO public.moon VALUES (26, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'gfq', 5);
INSERT INTO public.moon VALUES (27, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'abrq', 5);
INSERT INTO public.moon VALUES (28, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'aetq', 5);
INSERT INTO public.moon VALUES (29, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'vrwq', 5);
INSERT INTO public.moon VALUES (30, 'nea', NULL, NULL, NULL, NULL, NULL, NULL, 'zq', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'marte', NULL, NULL, NULL, NULL, NULL, NULL, 'red', 2);
INSERT INTO public.planet VALUES (3, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'r', 5);
INSERT INTO public.planet VALUES (4, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'gr', 5);
INSERT INTO public.planet VALUES (5, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'err', 5);
INSERT INTO public.planet VALUES (6, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'efdgr', 5);
INSERT INTO public.planet VALUES (7, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'efdgefrr', 5);
INSERT INTO public.planet VALUES (8, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'qwergr', 5);
INSERT INTO public.planet VALUES (9, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'qewr', 5);
INSERT INTO public.planet VALUES (10, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'ewfr', 5);
INSERT INTO public.planet VALUES (11, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'q3grr', 5);
INSERT INTO public.planet VALUES (12, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'zfd', 5);
INSERT INTO public.planet VALUES (13, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'sfd', 5);
INSERT INTO public.planet VALUES (14, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'syud', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'loco', NULL, NULL, NULL, NULL, NULL, NULL, 'red', 1);
INSERT INTO public.star VALUES (4, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'aaumu', 1);
INSERT INTO public.star VALUES (5, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'avtbru', 2);
INSERT INTO public.star VALUES (6, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'avreu', 2);
INSERT INTO public.star VALUES (7, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'btru', 3);
INSERT INTO public.star VALUES (8, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'jdu', 3);
INSERT INTO public.star VALUES (9, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'qewu', 3);
INSERT INTO public.star VALUES (10, 'luna', NULL, NULL, NULL, NULL, NULL, NULL, 'qgfgu', 3);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 30, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: extra extra_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_color_key UNIQUE (color);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key UNIQUE (color);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_color_key UNIQUE (color);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

