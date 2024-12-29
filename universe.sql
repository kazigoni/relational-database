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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    size_in_light_years integer,
    galaxy_type_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    radius_km integer,
    orbital_period_days numeric,
    planet_id integer
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    radius_km integer,
    planet_type_id integer,
    star_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    description text,
    is_spherical boolean NOT NULL,
    temperature_kelvin integer,
    mass_solar_masses numeric,
    galaxy_id integer
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
-- Name: galaxy_types galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0, 'Our home galaxy', true, false, 100000, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2537000, 'Nearest major galaxy to the Milky Way', false, false, 220000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 2730000, 'Third-largest member of the Local Group', false, false, 60000, 1);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 1101, 158200, 'Satellite galaxy of the Milky Way', false, false, 14000, 3);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 6500, 200000, 'Dwarf galaxy near the Milky Way', false, false, 7000, 3);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13270, 13050000, 'Prominent galaxy in the constellation of Centaurus', false, false, 60000, 2);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Characterized by a central bulge surrounded by a disk of stars, gas and dust in a spiral structure');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Characterized by smooth, featureless light distribution and appear as ellipses in images');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Galaxy that does not have a distinct regular shape');
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular', 'Intermediate between spiral and elliptical galaxies');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4510, 0.384, 'Earth''s only natural satellite', true, 1737, 27.32, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4600, 77.79, 'Larger and inner of Mars'' two moons', false, 11, 0.31, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4600, 77.79, 'Smaller and outer of Mars'' two moons', false, 6, 1.26, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4600, 628.7, 'Most volcanically active body in the solar system', true, 1821, 1.77, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4600, 628.7, 'Smallest of Jupiter''s Galilean moons', true, 1560, 3.55, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4600, 628.7, 'Largest moon in the solar system', true, 2634, 7.15, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4600, 628.7, 'Second-largest of Jupiter''s moons', true, 2410, 16.69, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4600, 1277.4, 'Largest of Saturn''s moons', true, 2574, 15.95, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4600, 1277.4, 'Sixth-largest of Saturn''s moons', true, 252, 1.37, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 4600, 1277.4, 'Smallest of Saturn''s major moons', true, 198, 0.94, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 4600, 4347.4, 'Largest of Neptune''s moons', true, 1353, 5.87, 8);
INSERT INTO public.moon VALUES (12, 'Miranda', 4600, 2719.7, 'Smallest of Uranus'' round moons', true, 235, 1.41, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 4600, 2719.7, 'Fourth-largest of Uranus'' moons', true, 578, 2.52, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 4600, 2719.7, 'Third-largest of Uranus'' moons', true, 584, 4.14, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 4600, 2719.7, 'Largest of Uranus'' moons', true, 788, 8.71, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 4600, 2719.7, 'Second-largest of Uranus'' moons', true, 761, 13.46, 7);
INSERT INTO public.moon VALUES (17, 'Rhea', 4600, 1277.4, 'Second-largest of Saturn''s moons', true, 763, 4.52, 6);
INSERT INTO public.moon VALUES (18, 'Iapetus', 4600, 1277.4, 'Third-largest of Saturn''s moons', true, 734, 79.32, 6);
INSERT INTO public.moon VALUES (19, 'Dione', 4600, 1277.4, 'Fourth-largest of Saturn''s moons', true, 561, 2.74, 6);
INSERT INTO public.moon VALUES (20, 'Tethys', 4600, 1277.4, 'Fifth-largest of Saturn''s moons', true, 531, 1.89, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4600, 77.3, 'Smallest planet in our solar system', false, true, 2439, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4600, 38.2, 'Second planet from the Sun', false, true, 6051, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4600, 0, 'Our home planet', true, true, 6371, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 78.3, 'The Red Planet', false, true, 3389, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4600, 628.7, 'Largest planet in our solar system', false, true, 69911, 2, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4600, 1277.4, 'Known for its prominent ring system', false, true, 58232, 2, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4600, 2719.7, 'Ice giant planet', false, true, 25362, 3, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4600, 4347.4, 'Windiest planet in our solar system', false, true, 24622, 3, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4850, 4.2, 'Potentially habitable exoplanet', false, true, 8400, 4, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 4000, 582, 'First Earth-sized planet in habitable zone', false, true, 7200, 4, 2);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 7600, 39, 'Potentially habitable exoplanet', false, true, 5800, 1, 2);
INSERT INTO public.planet VALUES (12, 'HD 40307g', 4500, 42, 'Super-Earth exoplanet', false, true, 16500, 4, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Rocky planets like Earth');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Large planets primarily composed of hydrogen and helium');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Planets mainly composed of ices, rocks and gases');
INSERT INTO public.planet_types VALUES (4, 'Super Earth', 'Rocky planets larger than Earth but smaller than gas giants');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0.0000158, 'Our solar system''s star', true, 5778, 1.0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4850, 4.2465, 'Closest star to the Sun', true, 3042, 0.123, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 6000, 4.37, 'Primary star of Alpha Centauri system', true, 5790, 1.1, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 242, 8.611, 'Brightest star in Earth''s night sky', true, 9940, 2.02, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 8, 642.5, 'Red supergiant in Orion', true, 3600, 16.5, 1);
INSERT INTO public.star VALUES (6, 'Vega', 455, 25.04, 'Fifth brightest star in the night sky', true, 9602, 2.135, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_types(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_types(planet_type_id);


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

