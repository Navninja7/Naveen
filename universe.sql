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
    name character varying(60) NOT NULL,
    age_in_billions_of_years numeric,
    diameter integer,
    no_of_stars_in_billions integer
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
    planet_id integer,
    name character varying(60) NOT NULL,
    diameter_in_km numeric,
    is_major boolean
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
    star_id integer,
    name character varying(60) NOT NULL,
    has_life boolean,
    distance_from_earth_in_millions_of_km numeric,
    description text
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(60) NOT NULL,
    date_of_creation date NOT NULL,
    age integer NOT NULL,
    no_of_pictures_taken integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(60) NOT NULL,
    distance_from_earth_in_millions_of_km numeric,
    surface_temperature numeric,
    gravity_in_mpersec2 integer,
    is_supernova boolean
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10.01, 152000, 1000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13.61, 105700, 250);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 13.31, 90000, 50);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 13.3, 37000, 20);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 13.28, 52962, 50);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 0.4, 130000, 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon(Luna)', 3474, true);
INSERT INTO public.moon VALUES (2, 5, 'Phobos', 22.4, true);
INSERT INTO public.moon VALUES (3, 5, 'Deimos', 12.4, true);
INSERT INTO public.moon VALUES (4, 6, 'Io', 3643, true);
INSERT INTO public.moon VALUES (5, 6, 'Europa', 3121, true);
INSERT INTO public.moon VALUES (6, 6, 'Ganymede', 5268, true);
INSERT INTO public.moon VALUES (7, 6, 'Callisto', 4821, true);
INSERT INTO public.moon VALUES (10, 7, 'Titan', 5151, true);
INSERT INTO public.moon VALUES (11, 7, 'Rhea', 1527, true);
INSERT INTO public.moon VALUES (12, 7, 'Iapetus', 1471, true);
INSERT INTO public.moon VALUES (13, 7, 'Dione', 1123, true);
INSERT INTO public.moon VALUES (16, 8, 'Titania', 1578, true);
INSERT INTO public.moon VALUES (17, 8, 'Oberon', 1523, true);
INSERT INTO public.moon VALUES (18, 8, 'Umbriel', 1169, true);
INSERT INTO public.moon VALUES (19, 8, 'Ariel', 1158, true);
INSERT INTO public.moon VALUES (21, 9, 'Triton', 2710, true);
INSERT INTO public.moon VALUES (22, 9, 'Nereid', 340, true);
INSERT INTO public.moon VALUES (25, 10, 'Charon', 1212, true);
INSERT INTO public.moon VALUES (26, 10, 'Nix', 45, true);
INSERT INTO public.moon VALUES (27, 10, 'Hydra', 34, true);
INSERT INTO public.moon VALUES (28, 11, 'Dysnomia', 700, true);
INSERT INTO public.moon VALUES (29, 12, 'Namaka', 100, true);
INSERT INTO public.moon VALUES (8, 6, 'Amalthea', 250, false);
INSERT INTO public.moon VALUES (9, 6, 'Himalia', 170, false);
INSERT INTO public.moon VALUES (14, 7, 'Enceladus', 504, false);
INSERT INTO public.moon VALUES (15, 7, 'Mimas', 396, false);
INSERT INTO public.moon VALUES (20, 8, 'Miranda', 471, false);
INSERT INTO public.moon VALUES (23, 9, 'Proteus', 418, false);
INSERT INTO public.moon VALUES (24, 9, 'Larissa', 194, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 4, 'Earth', true, 0, 'only known planet supporting life');
INSERT INTO public.planet VALUES (3, 4, 'Mercury', false, 77, 'smallest and closest planet to sun');
INSERT INTO public.planet VALUES (4, 4, 'Venus', false, 41, 'similar in size to earth but has thick atmosphere of CO2 and clouds of sulfuric
 acid');
INSERT INTO public.planet VALUES (5, 4, 'Mars', false, 78, 'also known as red planet');
INSERT INTO public.planet VALUES (6, 4, 'Jupiter', false, 628, 'largest planet of solar system');
INSERT INTO public.planet VALUES (7, 4, 'Saturn', false, 1200, 'famous for its stunning ring system');
INSERT INTO public.planet VALUES (8, 4, 'Uranus', false, 2700, 'ice giant with unique tilt');
INSERT INTO public.planet VALUES (9, 4, 'Neptune', false, 4300, 'furthest planet from the sun and has deep blue color');
INSERT INTO public.planet VALUES (10, 4, 'Pluto', false, 4280, 'once considered as ninth planet, now considered as a dwarf planet');
INSERT INTO public.planet VALUES (11, 4, 'Eris', false, 10100, 'a distant dwarf planet in the scattered disc');
INSERT INTO public.planet VALUES (12, 4, 'Haumea', false, 6450, 'known for its elongated shape due to its rapid rotation,Haumea is a dwarf p
lanet located in the Kuiper Belt');
INSERT INTO public.planet VALUES (13, 4, 'Makemake', false, 6400, 'known for its relatively large size and surface covered in methane ice');


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Hubble Space Telescope', '1990-04-24', 34, 1500000);
INSERT INTO public.satellite VALUES (2, 'Voyager 1', '1977-09-05', 47, 300000);
INSERT INTO public.satellite VALUES (3, 'Voyager 2', '1977-08-20', 47, 300000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 2, 'Sun', 150, 5772, 274, false);
INSERT INTO public.star VALUES (1, 1, 'Alpheratz', 916500000, 13000, 110, false);
INSERT INTO public.star VALUES (5, 1, 'V1', 24000000, 5500, 0, false);
INSERT INTO public.star VALUES (8, 2, 'Betelgeuse', 6075000000, 3600, 0, false);
INSERT INTO public.star VALUES (6, 4, 'SN 1993J', 110700000, 30000, 0, true);
INSERT INTO public.star VALUES (7, 6, 'SN 2014J', 107900000, 30000, 0, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
