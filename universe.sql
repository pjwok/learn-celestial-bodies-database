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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_stars (
    galaxy_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    galaxy_stars_id integer NOT NULL
);


ALTER TABLE public.galaxy_stars OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    moon_types integer,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    star_types integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, false, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_stars VALUES (1, 2, 'galaxy_stars1', 1);
INSERT INTO public.galaxy_stars VALUES (3, 4, 'galaxy_stars2', 2);
INSERT INTO public.galaxy_stars VALUES (2, 1, 'galaxy_stars3', 3);
INSERT INTO public.galaxy_stars VALUES (3, 1, 'galaxy_stars4', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'moon4', NULL, true, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, true, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, false, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, false, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, false, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, false, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, false, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, false, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'moon=19', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (1, 'moon1', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, false, NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'planet4', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, true, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, true, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, true, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (1, 'planet1', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, false, NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star3', NULL, false, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'star4', NULL, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'star5', NULL, true, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'star6', NULL, false, NULL, NULL, NULL, NULL, 3);


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
-- Name: galaxy_stars galaxy_stars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_name_key UNIQUE (name);


--
-- Name: galaxy_stars galaxy_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_pkey PRIMARY KEY (galaxy_stars_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: galaxy_stars galaxy_stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_stars galaxy_stars_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

