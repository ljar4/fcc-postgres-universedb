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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    id integer NOT NULL
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
-- Name: galaxy_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq1 OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq1 OWNED BY public.galaxy.id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    age integer,
    id integer NOT NULL
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

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.id;


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
-- Name: neutron_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.neutron_star (
    neutron_star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text
);


ALTER TABLE public.neutron_star OWNER TO freecodecamp;

--
-- Name: neutron_star_neutron_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.neutron_star_neutron_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.neutron_star_neutron_star_id_seq OWNER TO freecodecamp;

--
-- Name: neutron_star_neutron_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.neutron_star_neutron_star_id_seq OWNED BY public.neutron_star.neutron_star_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age integer,
    id integer NOT NULL
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

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.id;


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
    name character varying(30),
    age integer,
    distance numeric(5,4),
    id integer NOT NULL
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

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.id;


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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq1'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: neutron_star neutron_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.neutron_star ALTER COLUMN neutron_star_id SET DEFAULT nextval('public.neutron_star_neutron_star_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13000000, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000000, 2);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Unclear', 13000000, 3);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 12000000, 4);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'Starbust', 11000000, 5);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'Spiral', 15000000, 6);
INSERT INTO public.galaxy VALUES (7, 'Can Mayor', 'Irregular', 47000000, 7);
INSERT INTO public.galaxy VALUES (8, 'Sagitario', 'Small', 20000000, 8);
INSERT INTO public.galaxy VALUES (9, 'Magellanic', 'Satellite', 13000000, 9);
INSERT INTO public.galaxy VALUES (10, 'Ursa', 'Satellite', 10000000, 10);
INSERT INTO public.galaxy VALUES (11, 'Draco', 'Satellite', 12000000, 11);
INSERT INTO public.galaxy VALUES (12, 'Sextans', 'Spheroidal', 4000000, 12);
INSERT INTO public.galaxy VALUES (13, 'Sculptor', 'Spheroidal', 5000000, 13);
INSERT INTO public.galaxy VALUES (14, 'Carina', 'Satelite', 10000000, 14);
INSERT INTO public.galaxy VALUES (15, 'Fornax', 'Satellite', 12000000, 15);
INSERT INTO public.galaxy VALUES (16, 'Leo II', 'Dwarf', 14000000, 16);
INSERT INTO public.galaxy VALUES (17, 'Leo I', 'Dwarf', 14000000, 17);
INSERT INTO public.galaxy VALUES (18, 'Fenix', 'Irregular', 16000000, 18);
INSERT INTO public.galaxy VALUES (19, 'Barnard', 'Irregular', 13000000, 19);
INSERT INTO public.galaxy VALUES (20, 'Andromeda II', 'Spheroidal', 10000000, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 4000000, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', false, 4000000, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4000000, 3);
INSERT INTO public.moon VALUES (4, 'Io', false, 4000000, 4);
INSERT INTO public.moon VALUES (5, 'Europa', false, 4000000, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 4000000, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 4000000, 7);
INSERT INTO public.moon VALUES (8, 'Amaltea', false, 4000000, 8);
INSERT INTO public.moon VALUES (9, 'Himalia', false, 4000000, 9);
INSERT INTO public.moon VALUES (10, 'Elara', false, 5000000, 10);
INSERT INTO public.moon VALUES (11, 'Pasiphae', false, 4000000, 11);
INSERT INTO public.moon VALUES (12, 'Sinope', false, 4000000, 12);
INSERT INTO public.moon VALUES (13, 'Lysithea', false, 4000000, 13);
INSERT INTO public.moon VALUES (14, 'Carme', false, 4000000, 14);
INSERT INTO public.moon VALUES (15, 'Ananke', false, 4000000, 15);
INSERT INTO public.moon VALUES (16, 'Leda', false, 4000000, 16);
INSERT INTO public.moon VALUES (17, 'Thebe', false, 4000000, 17);
INSERT INTO public.moon VALUES (18, 'Adrastea', false, 4000000, 18);
INSERT INTO public.moon VALUES (19, 'Metis', false, 4000000, 19);
INSERT INTO public.moon VALUES (20, 'Titan', true, 4000000, 20);


--
-- Data for Name: neutron_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.neutron_star VALUES (1, 'SGR', 'Magnetar');
INSERT INTO public.neutron_star VALUES (2, 'XTE', 'Remainder');
INSERT INTO public.neutron_star VALUES (3, 'Calvera', 'Pulsar');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 4000000, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 4000000, 2);
INSERT INTO public.planet VALUES (3, 'Earth', true, 4000000, 3);
INSERT INTO public.planet VALUES (4, 'Mars', false, 4000000, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4000000, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 4000000, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 4000000, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 4000000, 8);
INSERT INTO public.planet VALUES (9, 'Pluton', false, 4000000, 9);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 4000000, 10);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 4000000, 11);
INSERT INTO public.planet VALUES (12, 'Sedna', false, 4000000, 12);
INSERT INTO public.planet VALUES (13, 'Makemake', false, 4000000, 13);
INSERT INTO public.planet VALUES (14, 'Eris', false, 4000000, 14);
INSERT INTO public.planet VALUES (15, 'Gliese', false, 6000000, 15);
INSERT INTO public.planet VALUES (16, 'HAT', false, 7050000, 16);
INSERT INTO public.planet VALUES (17, 'HD', false, 8000000, 17);
INSERT INTO public.planet VALUES (18, 'MOA', false, 12000000, 18);
INSERT INTO public.planet VALUES (19, 'PSR', false, 14000000, 19);
INSERT INTO public.planet VALUES (20, 'Kepler', true, 14000000, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600000, 0.0158, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4800000, 4.2420, 2);
INSERT INTO public.star VALUES (3, 'Alfa Centauri', 1000000, 4.3649, 3);
INSERT INTO public.star VALUES (4, 'Barnard', 10000000, 5.9629, 4);
INSERT INTO public.star VALUES (5, 'Wise', 12000000, 6.5611, 5);
INSERT INTO public.star VALUES (6, 'Wolf', 14000000, 7.7823, 6);
INSERT INTO public.star VALUES (7, 'Lalande', 10000000, 7.9090, 7);
INSERT INTO public.star VALUES (8, 'Sirio', 12000000, 7.9990, 8);
INSERT INTO public.star VALUES (9, 'Luyten', 13000000, 8.0440, 9);
INSERT INTO public.star VALUES (10, 'Ross', 15000000, 8.5020, 10);
INSERT INTO public.star VALUES (11, 'Eridani', 16000000, 8.6070, 11);
INSERT INTO public.star VALUES (12, 'Lacaille', 17000000, 8.8020, 12);
INSERT INTO public.star VALUES (13, 'Aquarii', 22000000, 8.9010, 13);
INSERT INTO public.star VALUES (14, 'Procyon', 15000000, 9.0040, 14);
INSERT INTO public.star VALUES (15, 'Cygni', 14000000, 9.2065, 15);
INSERT INTO public.star VALUES (16, 'Struve', 5000000, 9.3530, 16);
INSERT INTO public.star VALUES (17, 'Groombridge', 3000000, 9.4560, 17);
INSERT INTO public.star VALUES (18, 'Indi', 6000000, 9.6070, 18);
INSERT INTO public.star VALUES (19, 'Cancri', 7000000, 9.8060, 19);
INSERT INTO public.star VALUES (20, 'Ceti', 2000000, 9.8501, 20);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, true);


--
-- Name: galaxy_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq1', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: neutron_star_neutron_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.neutron_star_neutron_star_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


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
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: neutron_star neutron_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.neutron_star
    ADD CONSTRAINT neutron_star_pkey PRIMARY KEY (neutron_star_id);


--
-- Name: neutron_star neutron_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.neutron_star
    ADD CONSTRAINT neutron_star_type_key UNIQUE (type);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_fkey FOREIGN KEY (id) REFERENCES public.planet(id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (id) REFERENCES public.star(id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--
