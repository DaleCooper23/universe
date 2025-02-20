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
    age numeric(10,2) NOT NULL,
    description text,
    weight numeric(10,2) NOT NULL,
    name character varying(255) NOT NULL
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
    weight integer NOT NULL,
    moon_id integer NOT NULL,
    age numeric(10,2) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    weight integer NOT NULL,
    gravity numeric(20,2) NOT NULL,
    description text NOT NULL,
    alive boolean NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(255) NOT NULL
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
    weight integer NOT NULL,
    alive boolean NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 13.50, 'Es la galaxia donde se encuentra nuestro Sistema Solar. Es una galaxia espiral barrada con cientos de miles de millones de estrellas.', 1.00, 'Via Lactea');
INSERT INTO public.galaxy VALUES (2, 10.00, 'La galaxia espiral más grande y cercana a la Vía Láctea, con la cual colisionará en unos 4 mil millones de años.', 1.00, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 12.00, ' Es una galaxia espiral más pequeña que la Vía Láctea y Andrómeda, pero forma parte del Grupo Local.', 50.00, 'M33');
INSERT INTO public.galaxy VALUES (4, 13.00, 'Una galaxia espiral con un núcleo extremadamente brillante y una estructura que parece un sombrero, debido a un gran anillo de polvo oscuro.', 800.00, 'M104');
INSERT INTO public.galaxy VALUES (5, 10.00, ' Es una galaxia espiral con una forma bien definida, ubicada a 23 millones de años luz de la Tierra. Es famosa por su interacción con una galaxia satélite.', 160.00, 'M51');
INSERT INTO public.galaxy VALUES (6, 13.00, 'Una galaxia espiral grande ubicada en la constelación de la Osa Mayor. Tiene una estructura bien definida con brazos prominentes.', 250.00, 'M81');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 1, 4.50, 'Único satélite natural de la Tierra, con influencia en las mareas y un posible pasado volcánico.', 1, 'Luna');
INSERT INTO public.moon VALUES (0, 2, 3.70, 'Pequeña luna con forma irregular y una superficie llena de cráteres.', 2, 'Fobos');
INSERT INTO public.moon VALUES (0, 3, 3.70, 'Pequeña luna de Marte con una órbita inestable y destino de colisión con el planeta en millones de años.', 2, 'Deimos');
INSERT INTO public.moon VALUES (0, 4, 2.50, 'Luna helada con una gruesa capa de hielo y un posible océano subterráneo.', 3, 'Europa-22');
INSERT INTO public.moon VALUES (0, 5, 1.80, 'Luna rocosa con una densa atmósfera de nitrógeno.', 4, 'Titan-209');
INSERT INTO public.moon VALUES (0, 6, 3.90, 'Luna gaseosa con una gran actividad volcánica.', 5, 'Io-X');
INSERT INTO public.moon VALUES (0, 7, 4.10, 'Luna de Neptunis X con una superficie congelada y actividad geológica moderada.', 6, 'Triton-X');
INSERT INTO public.moon VALUES (0, 8, 2.30, 'Luna pequeña con un color rojizo debido a depósitos de metano sólido.', 7, 'Charron');
INSERT INTO public.moon VALUES (0, 9, 4.60, 'Luna de Infernis IV, con una superficie de lava sólida y constantes erupciones.', 8, 'Pyros');
INSERT INTO public.moon VALUES (0, 10, 3.00, 'Luna cubierta de polvo y cráteres por impactos de meteoritos.', 9, 'Dune-X1');
INSERT INTO public.moon VALUES (0, 11, 4.20, 'Luna con enormes cañones y tormentas eléctricas.', 10, 'Zephyr');
INSERT INTO public.moon VALUES (0, 12, 2.90, 'Luna acuática con un océano en constante movimiento y gigantescas olas.', 11, 'Poseida');
INSERT INTO public.moon VALUES (0, 13, 3.70, 'Luna de hielo con géiseres que expulsan vapor de agua.', 12, 'Elysium');
INSERT INTO public.moon VALUES (0, 14, 4.00, 'Luna con una atmósfera de azufre y actividad volcánica extrema.', 3, 'Hades');
INSERT INTO public.moon VALUES (0, 15, 3.10, 'Pequeña luna rocosa con una órbita errática alrededor de su planeta.', 4, 'Xanthis');
INSERT INTO public.moon VALUES (0, 16, 3.80, 'Luna con una densa capa de nubes de amoníaco y tormentas constantes.', 5, 'Nebulae');
INSERT INTO public.moon VALUES (0, 17, 2.70, 'Luna cubierta de grietas de hielo y posible actividad tectónica.', 6, 'Glacius');
INSERT INTO public.moon VALUES (0, 18, 4.40, 'Luna de gran tamaño con un núcleo metálico y una superficie de silicato.', 7, 'Titania');
INSERT INTO public.moon VALUES (0, 19, 2.50, 'Luna con anillos de polvo a su alrededor y una órbita inclinada.', 8, 'Asteria');
INSERT INTO public.moon VALUES (0, 20, 4.80, 'Luna con campos magnéticos intensos y una interacción única con la magnetosfera del planeta.', 9, 'Magnetis');


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'Hola', 'Como estas');
INSERT INTO public.more_info VALUES (2, 'Bien', 'y tu');
INSERT INTO public.more_info VALUES (3, 'Yo', 'Muy bien');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 9.81, 'Único planeta conocido con vida. Tiene una atmósfera rica en oxígeno y agua líquida en su superficie.', true, 1, 1, 'Tierra');
INSERT INTO public.planet VALUES (0, 3.72, 'Planeta rocoso con signos de agua en el pasado. Actualmente es un desierto helado con una atmósfera delgada.', false, 2, 1, 'Marte');
INSERT INTO public.planet VALUES (1, 8.90, 'Exoplaneta con océanos globales y una atmósfera densa, podría albergar vida.', true, 3, 2, 'Kepler-22b');
INSERT INTO public.planet VALUES (1, 24.80, 'Gigante gaseoso con una atmósfera en evaporación debido a la proximidad a su estrella.', false, 4, 3, 'HD 209458 b');
INSERT INTO public.planet VALUES (6, 7.80, 'Planeta rocoso en la zona habitable, con posible agua líquida en su superficie.', true, 5, 3, 'Gliese 581c');
INSERT INTO public.planet VALUES (1, 19.20, 'Júpiter caliente con temperaturas extremas y una atmósfera compuesta principalmente de hidrógeno y helio.', false, 6, 4, 'WASP-12b');
INSERT INTO public.planet VALUES (4, 12.10, 'Planeta helado con tormentas de metano en su atmósfera.', false, 7, 5, 'Neptunis X');
INSERT INTO public.planet VALUES (2, 10.50, 'Mundo volcánico con erupciones constantes y ríos de lava.', true, 8, 5, 'Infernis IV');
INSERT INTO public.planet VALUES (1, 8.10, 'Planeta desértico con grandes dunas y tormentas de arena constantes.', false, 9, 6, 'Arrakis Prime');
INSERT INTO public.planet VALUES (4, 11.30, 'Exoplaneta con una atmósfera espesa de dióxido de carbono, similar a Venus.', false, 10, 6, 'Venusia 3');
INSERT INTO public.planet VALUES (2, 9.50, 'Planeta oceánico con gigantescas criaturas marinas y una densa capa de nubes.', true, 11, 6, 'Thalassa-8');
INSERT INTO public.planet VALUES (7, 20.20, 'Gigante gaseoso con un gran sistema de anillos y lunas heladas.', false, 12, 6, 'Cronos V');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, true, 1, 1, 'Sol');
INSERT INTO public.star VALUES (11, true, 2, 1, 'Betelgeuse');
INSERT INTO public.star VALUES (1, true, 3, 2, 'Andromeda X-1');
INSERT INTO public.star VALUES (20, false, 4, 3, 'M33-Alpha');
INSERT INTO public.star VALUES (2, true, 5, 4, 'NGC 4594-1');
INSERT INTO public.star VALUES (15, false, 6, 6, 'Bode-X');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


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
-- Name: more_info more_info_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_description_key UNIQUE (description);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
