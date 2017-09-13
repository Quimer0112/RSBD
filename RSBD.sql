--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-09-13 12:11:40 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 24635)
-- Name: rsBD; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "rsBD";


ALTER SCHEMA "rsBD" OWNER TO postgres;

SET search_path = "rsBD", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 24636)
-- Name: Alunos; Type: TABLE; Schema: rsBD; Owner: postgres
--

CREATE TABLE "Alunos" (
    "Nome" character(30),
    "Notas" numeric(10,0),
    "Faltas" numeric(75,0),
    "Matrícula" numeric(15,0)
);


ALTER TABLE "Alunos" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 24645)
-- Name: Curso; Type: TABLE; Schema: rsBD; Owner: postgres
--

CREATE TABLE "Curso" (
    "Curso" character(20),
    "Turma" character(15),
    "Série_Ano_Letivo" numeric(15,0)
);


ALTER TABLE "Curso" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24639)
-- Name: Disciplinas; Type: TABLE; Schema: rsBD; Owner: postgres
--

CREATE TABLE "Disciplinas" (
    "Matérias" character(20)
);


ALTER TABLE "Disciplinas" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 24642)
-- Name: Professores; Type: TABLE; Schema: rsBD; Owner: postgres
--

CREATE TABLE "Professores" (
    "Matrícula" numeric(15,0),
    "Nome" character(50),
    "Disciplinas_Dadas" character(20)
);


ALTER TABLE "Professores" OWNER TO postgres;

--
-- TOC entry 2144 (class 0 OID 24636)
-- Dependencies: 182
-- Data for Name: Alunos; Type: TABLE DATA; Schema: rsBD; Owner: postgres
--

COPY "Alunos" ("Nome", "Notas", "Faltas", "Matrícula") FROM stdin;
\.


--
-- TOC entry 2147 (class 0 OID 24645)
-- Dependencies: 185
-- Data for Name: Curso; Type: TABLE DATA; Schema: rsBD; Owner: postgres
--

COPY "Curso" ("Curso", "Turma", "Série_Ano_Letivo") FROM stdin;
\.


--
-- TOC entry 2145 (class 0 OID 24639)
-- Dependencies: 183
-- Data for Name: Disciplinas; Type: TABLE DATA; Schema: rsBD; Owner: postgres
--

COPY "Disciplinas" ("Matérias") FROM stdin;
\.


--
-- TOC entry 2146 (class 0 OID 24642)
-- Dependencies: 184
-- Data for Name: Professores; Type: TABLE DATA; Schema: rsBD; Owner: postgres
--

COPY "Professores" ("Matrícula", "Nome", "Disciplinas_Dadas") FROM stdin;
\.


-- Completed on 2017-09-13 12:11:40 BRT

--
-- PostgreSQL database dump complete
--

