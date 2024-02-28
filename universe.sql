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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    apparent_magnitude numeric(3,2),
    number_of_stars_in_trillion integer,
    size_in_kpc integer
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
-- Name: gas_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gas_types (
    gas_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text
);


ALTER TABLE public.gas_types OWNER TO freecodecamp;

--
-- Name: gas_types_gas_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gas_types_gas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gas_types_gas_id_seq OWNER TO freecodecamp;

--
-- Name: gas_types_gas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gas_types_gas_id_seq OWNED BY public.gas_types.gas_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    size integer,
    sister_moons integer
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
    name character varying(50),
    star_id integer NOT NULL,
    description text,
    proximity_to_earth numeric
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
    name character varying(50),
    description text,
    visible_from_earth boolean,
    light_years_from_earth integer,
    galaxy_id integer NOT NULL
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
-- Name: gas_types gas_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gas_types ALTER COLUMN gas_types_id SET DEFAULT nextval('public.gas_types_gas_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Cool galaxy', 'This galaxy is just really cool', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Purple turnip', 'All kinds of turnips grow here, but especially the purple turnip', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'A barred spiral galaxy. The nearest major galaxy to the Milky Way', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Antennae Galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Backwards Galaxy', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: gas_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gas_types VALUES (1, 'Argon', 'colorless');
INSERT INTO public.gas_types VALUES (2, 'Helium', 'colorless');
INSERT INTO public.gas_types VALUES (3, 'Carbon dioxide', 'colorless');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Io', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Themisto', 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Adrastea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Aldopeta', 7, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Cyllene', 1, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Callirrhoe', 2, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Herse', 3, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Hyperion', 3, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Callisto', 4, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Iapetus', 5, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'Elara', 6, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'Iocaste', 1, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'Eukelade', 1, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'Telesto', 1, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'Carme', 1, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Himalia', 2, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'Epimetheus', 5, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 7, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', 6, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 5, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Mercury', 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', 7, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'CoRoT-7b', 3, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 6, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'HIP 13044b', 7, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Antares', 'Brightest star in the constellation of Scorpius.', NULL, NULL, 3);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Brightest star in the northern constellation Bootes.', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Vega', 'Brightest star in the northern constellation of Lyra.', NULL, NULL, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 'Brightest star in the night sky.', NULL, NULL, 4);
INSERT INTO public.star VALUES (6, 'Pollux', 'Brightest star in the constellation of Gemini.', NULL, NULL, 6);
INSERT INTO public.star VALUES (7, 'Bellatrix', 'Third brightest star in the constellation of Orion.', NULL, NULL, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: gas_types_gas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gas_types_gas_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: gas_types gas_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gas_types
    ADD CONSTRAINT gas_types_pkey PRIMARY KEY (gas_types_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: gas_types unique_gas_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gas_types
    ADD CONSTRAINT unique_gas_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

