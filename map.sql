--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: locations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.locations (
    id bigint NOT NULL,
    room character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    door character varying
);


ALTER TABLE public.locations OWNER TO "Guest";

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO "Guest";

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.locations (id, room, description, created_at, updated_at, door) FROM stdin;
2	Airlock	Here you enter..	2020-01-22 21:51:46.994197	2020-01-22 21:51:46.994197	1,3,5
3	Hallway	It's a hall!	2020-01-22 21:52:25.640531	2020-01-22 21:52:25.640531	2,6
4	Mess Hall	Chairs and rotten food...	2020-01-22 21:53:32.768617	2020-01-22 21:53:32.768617	1,7,8,9
5	Floating in space	You dead	2020-01-22 21:54:37.137914	2020-01-22 21:54:37.137914	
6	Crew Quarters	Bunk beds and dirty clothes	2020-01-22 21:55:59.840355	2020-01-22 21:55:59.840355	3,10,11
7	Med Lab	I don't know what any of this does...	2020-01-22 21:58:04.296816	2020-01-22 21:58:04.296816	4,12
8	Floating in space	You dead	2020-01-22 21:58:26.864201	2020-01-22 21:58:26.864201	
9	Engine Room	Loud and hot	2020-01-22 21:59:07.081673	2020-01-22 21:59:07.081673	4,12,13
10	Capitan's Quarters	Fancy!	2020-01-22 21:59:42.097035	2020-01-22 21:59:42.097035	6
11	Shower Room	Not really the time for a shower	2020-01-22 22:00:23.481581	2020-01-22 22:00:23.481581	6
12	Science Lab	Test Tubes EVERYWHERE!!!	2020-01-22 22:01:16.937051	2020-01-22 22:01:16.937051	7,9
13	The Bridge	This is it!!!	2020-01-22 22:01:41.912358	2020-01-22 22:01:41.912358	9
1	Storage Room	You wake in a storage room, with a massive headache...	2020-01-22 21:49:44.621614	2020-01-22 22:02:48.369506	2,4
\.


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.locations_id_seq', 13, true);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

