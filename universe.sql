--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: celestial_relation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_relation (
    celestial_relation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    planet_id integer
);


ALTER TABLE public.celestial_relation OWNER TO freecodecamp;

--
-- Name: celestial_relation_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_relation_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_relation_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_relation_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_relation_celestial_id_seq OWNED BY public.celestial_relation.celestial_relation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    info text,
    magnitude numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_gal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_gal_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_gal_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    habitable boolean,
    info text,
    distance_from_planet numeric
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
    name character varying(30) NOT NULL,
    star_id integer,
    habitable boolean,
    info text,
    distance_from_star numeric,
    number_of_moons integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    info text,
    distance_from_earth numeric
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
-- Name: celestial_relation celestial_relation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation ALTER COLUMN celestial_relation_id SET DEFAULT nextval('public.celestial_relation_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_gal_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial_relation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_relation VALUES (4, 'Aries', 1, 1);
INSERT INTO public.celestial_relation VALUES (5, 'Aquarius', 3, 4);
INSERT INTO public.celestial_relation VALUES (6, 'Cancer', 2, 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 23423456, 'a special place', 8798734.3);
INSERT INTO public.galaxy VALUES (2, 'Other Milky Way', 98475, 'another special place', 9823.39);
INSERT INTO public.galaxy VALUES (3, 'Yet Another Milky Way', 9833, 'yep, its special too', 987983434.93);
INSERT INTO public.galaxy VALUES (4, 'Crab', 8749, 'pinchy place, shaped like a claw', 7634.34);
INSERT INTO public.galaxy VALUES (5, 'lobby', 8983333, 'other claw shaped place', 982734.34);
INSERT INTO public.galaxy VALUES (6, 'Not Real', 666, 'this galaxy is fake', 6666666.66);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 1, true, 'info', 54);
INSERT INTO public.moon VALUES (2, 'moon 2', 1, false, 'info', 56);
INSERT INTO public.moon VALUES (3, 'moon 3', 1, false, 'info', 65);
INSERT INTO public.moon VALUES (4, 'moon 4', 1, false, 'info', 63);
INSERT INTO public.moon VALUES (5, 'moon 5', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (6, 'moon 6', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (7, 'moon 7', 3, false, 'info', 66);
INSERT INTO public.moon VALUES (8, 'moon 8', 4, false, 'info', 66);
INSERT INTO public.moon VALUES (9, 'moon 9', 6, false, 'info', 66);
INSERT INTO public.moon VALUES (10, 'moon 10', 9, false, 'info', 66);
INSERT INTO public.moon VALUES (11, 'moon 11', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (12, 'moon 12', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (13, 'moon 13', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (14, 'moon 14', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (15, 'moon 15', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (16, 'moon 16', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (17, 'moon 17', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (18, 'moon 18', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (19, 'moon 19', 2, false, 'info', 66);
INSERT INTO public.moon VALUES (20, 'moon 20', 2, false, 'info', 66);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 1, true, 'plante info
', 456456, 2);
INSERT INTO public.planet VALUES (2, 'planet 2', 3, true, 'planet info', 4345, 4);
INSERT INTO public.planet VALUES (3, 'planet 3', 4, false, 'planet info', 434534, 4);
INSERT INTO public.planet VALUES (4, 'planet 4', 6, false, 'planet info', 435465, 3);
INSERT INTO public.planet VALUES (5, 'planet 5', 1, false, 'planet info', 465, 1);
INSERT INTO public.planet VALUES (6, 'planet 6', 6, false, 'planet info', 435465, 7);
INSERT INTO public.planet VALUES (7, 'planet 7', 1, false, 'planet info', 45, 4);
INSERT INTO public.planet VALUES (8, 'planet 8', 6, false, 'planet info', 5, 0);
INSERT INTO public.planet VALUES (9, 'planet 9', 6, false, 'planet info', 4, 3);
INSERT INTO public.planet VALUES (10, 'planet 10', 6, false, 'planet info', 56465, 3);
INSERT INTO public.planet VALUES (11, 'planet 11', 6, false, 'planet info', 987, 3);
INSERT INTO public.planet VALUES (12, 'planet 12', 2, false, 'planet info', 4, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 3, 'the first star', 5.5);
INSERT INTO public.star VALUES (2, 'star 2', 1, 'the second star', 987998);
INSERT INTO public.star VALUES (3, 'star 3', 2, 'the third star', 873);
INSERT INTO public.star VALUES (4, 'star 4', 5, 'the fouth star', 88844);
INSERT INTO public.star VALUES (5, 'star 5', 6, 'the fifth star', 98);
INSERT INTO public.star VALUES (6, 'star 6', 4, 'the sixth star', 666);


--
-- Name: celestial_relation_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_relation_celestial_id_seq', 6, true);


--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_gal_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_relation celestial_relation_celestial_relation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_celestial_relation_id_key UNIQUE (celestial_relation_id);


--
-- Name: celestial_relation celestial_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_pkey PRIMARY KEY (celestial_relation_id);


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
-- Name: celestial_relation celestial_relation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: celestial_relation celestial_relation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

