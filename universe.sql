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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    planet_types character varying(30),
    distance_from_earth character varying(30),
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    area_in_km2 numeric(10,2) NOT NULL,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: random_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random_table (
    random_table_id integer NOT NULL,
    number integer NOT NULL,
    name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL
);


ALTER TABLE public.random_table OWNER TO freecodecamp;

--
-- Name: random_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_table_id_seq OWNER TO freecodecamp;

--
-- Name: random_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_table_id_seq OWNED BY public.random_table.random_table_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    galaxy_id integer,
    is_spherical boolean DEFAULT true NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: random_table random_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table ALTER COLUMN random_table_id SET DEFAULT nextval('public.random_table_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 163, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'asas', 123, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'asas', 123, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 19999, NULL, 2);
INSERT INTO public.moon VALUES (2, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (4, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (5, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (6, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (7, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (8, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (9, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (10, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (11, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (12, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (13, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (14, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (15, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (16, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (17, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (18, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (19, NULL, 123, NULL, 2);
INSERT INTO public.moon VALUES (20, NULL, 123, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'earth', 51000000.00, NULL, 2);
INSERT INTO public.planet VALUES (4, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (5, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (6, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (7, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (8, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (9, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (10, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (11, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (12, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (13, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (14, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (15, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (16, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (17, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (18, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (19, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (20, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (21, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (22, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (23, 'asddsa', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (24, 'asdas', 123.00, NULL, 2);
INSERT INTO public.planet VALUES (25, 'asddsa', 123.00, NULL, 2);


--
-- Data for Name: random_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random_table VALUES (2, 1, 'a', 'a');
INSERT INTO public.random_table VALUES (3, 1, 'a', 'a');
INSERT INTO public.random_table VALUES (4, 1, 'a', 'a');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'very big and hot', 1, true);
INSERT INTO public.star VALUES (11, NULL, NULL, 1, false);
INSERT INTO public.star VALUES (12, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (13, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (14, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (15, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (16, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (17, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (18, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (19, NULL, NULL, 2, false);
INSERT INTO public.star VALUES (20, NULL, NULL, 2, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: random_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_table_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: random_table random_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_id_key UNIQUE (random_table_id);


--
-- Name: random_table random_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_pkey PRIMARY KEY (random_table_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

