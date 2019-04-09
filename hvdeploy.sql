--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: register; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register (
    username text NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "Role" numeric NOT NULL
);


ALTER TABLE public.register OWNER TO postgres;

--
-- Name: userregister; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userregister (
    username text[] NOT NULL,
    firstname text[] NOT NULL,
    lastname text[] NOT NULL,
    email text[] NOT NULL,
    password text[] NOT NULL,
    "Role" integer[] NOT NULL
);


ALTER TABLE public.userregister OWNER TO postgres;

--
-- Data for Name: register; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register (username, firstname, lastname, email, password, "Role") FROM stdin;
\.


--
-- Data for Name: userregister; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userregister (username, firstname, lastname, email, password, "Role") FROM stdin;
\.


--
-- Name: register register_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register
    ADD CONSTRAINT register_pkey PRIMARY KEY (username);


--
-- Name: userregister userregister_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userregister
    ADD CONSTRAINT userregister_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

