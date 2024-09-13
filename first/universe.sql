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

CREATE TABLE public.galaxy (galaxy_id integer NOT NULL,
                                              name character varying(30) NOT NULL,
                                                                         g1 integer, g2 integer, g3 numeric);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meow; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meow (meow_id integer NOT NULL,
                                          name character varying(30) NOT NULL,
                                                                     moon_id integer, m3 integer);


ALTER TABLE public.meow OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (moon_id integer NOT NULL,
                                          name character varying(30) NOT NULL,
                                                                     planet_id integer, m2 integer, m3 integer);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (planet_id integer NOT NULL,
                                              name character varying(30) NOT NULL,
                                                                         star_id integer, p2 integer, p3 boolean);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (star_id integer NOT NULL,
                                          name character varying(30) NOT NULL,
                                                                     galaxy_id integer, s2 text, s3 boolean);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy
VALUES (1, 'name', 1, 1, 1);


INSERT INTO public.galaxy
VALUES (2, 'name', 1, 1, 1);


INSERT INTO public.galaxy
VALUES (3, 'name', 1, 1, 1);


INSERT INTO public.galaxy
VALUES (4, 'name', 1, 1, 1);


INSERT INTO public.galaxy
VALUES (5, 'name', 1, 1, 1);


INSERT INTO public.galaxy
VALUES (6, 'name', 1, 1, 1);

--
-- Data for Name: meow; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meow
VALUES (1, 'name', 1, 1);


INSERT INTO public.meow
VALUES (2, 'name', 1, 1);


INSERT INTO public.meow
VALUES (3, 'name', 1, 1);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon
VALUES (1, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (2, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (3, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (4, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (5, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (6, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (7, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (8, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (9, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (10, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (11, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (12, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (13, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (14, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (15, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (16, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (17, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (18, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (19, 'name', 1, 1, 1);


INSERT INTO public.moon
VALUES (20, 'name', 1, 1, 1);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet
VALUES (1, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (2, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (3, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (4, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (5, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (6, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (7, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (8, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (9, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (10, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (11, 'name', 1, 1, true);


INSERT INTO public.planet
VALUES (12, 'name', 1, 1, true);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star
VALUES (1, 'name', 1, '1', false);


INSERT INTO public.star
VALUES (2, 'name', 1, '1', false);


INSERT INTO public.star
VALUES (3, 'name', 1, '1', false);


INSERT INTO public.star
VALUES (4, 'name', 1, '1', false);


INSERT INTO public.star
VALUES (5, 'name', 1, '1', false);


INSERT INTO public.star
VALUES (65, 'name', 1, '1', false);

--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

--
-- Name: meow meow_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meow ADD CONSTRAINT meow_pkey PRIMARY KEY (meow_id);

--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);

--
-- Name: meow unique_meow; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meow ADD CONSTRAINT unique_meow UNIQUE (meow_id);

--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ADD CONSTRAINT unique_moon UNIQUE (moon_id);

--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ADD CONSTRAINT unique_planet UNIQUE (planet_id);

--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ADD CONSTRAINT unique_star UNIQUE (star_id);

--
-- Name: meow meow_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meow ADD CONSTRAINT meow_moon_id_fkey
FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);

--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ADD CONSTRAINT moon_planet_id_fkey
FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ADD CONSTRAINT planet_star_id_fkey
FOREIGN KEY (star_id) REFERENCES public.star(star_id);

--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ADD CONSTRAINT star_galaxy_id_fkey
FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

--
-- PostgreSQL database dump complete
--
