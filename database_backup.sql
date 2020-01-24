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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: saulordonez
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO saulordonez;

--
-- Name: products; Type: TABLE; Schema: public; Owner: saulordonez
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost character varying,
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO saulordonez;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: saulordonez
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO saulordonez;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saulordonez
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: saulordonez
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO saulordonez;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: saulordonez
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO saulordonez;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saulordonez
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: saulordonez
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO saulordonez;

--
-- Name: users; Type: TABLE; Schema: public; Owner: saulordonez
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_hash character varying,
    password_salt character varying,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO saulordonez;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: saulordonez
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO saulordonez;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saulordonez
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: saulordonez
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-01-17 17:18:03.870279	2020-01-17 17:18:03.870279
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: saulordonez
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
217	Lincoln Mks	95749	Nauru	2020-01-19 22:05:54.760708	2020-01-19 22:05:54.760708
218	Toyota Prius	20731	Uganda	2020-01-19 22:05:54.820888	2020-01-19 22:05:54.820888
219	Toyota Camry	14537	Puerto Rico	2020-01-19 22:05:54.876146	2020-01-19 22:05:54.876146
220	Dodge Ram	45751	Hong Kong	2020-01-19 22:05:54.899545	2020-01-19 22:05:54.899545
221	Nissan Pathfiner	32826	Iraq	2020-01-19 22:05:54.91598	2020-01-19 22:05:54.91598
222	Dodge Challenger	14915	Cuba	2020-01-19 22:05:54.947075	2020-01-19 22:05:54.947075
223	Chevy Camero	92564	Norfolk Island	2020-01-19 22:05:54.961975	2020-01-19 22:05:54.961975
224	Buick Verano	99097	Samoa	2020-01-19 22:05:54.993486	2020-01-19 22:05:54.993486
225	Bmw M5	17520	Nauru	2020-01-19 22:05:55.022559	2020-01-19 22:05:55.022559
226	Dodge Charger	91135	Poland	2020-01-19 22:05:55.046146	2020-01-19 22:05:55.046146
227	Ford Fiesta	30177	Saint Barthelemy	2020-01-19 22:05:55.069135	2020-01-19 22:05:55.069135
228	Lincoln Mkz	10111	Hong Kong	2020-01-19 22:05:55.089388	2020-01-19 22:05:55.089388
229	Lincoln Mkx	27423	Tonga	2020-01-19 22:05:55.112406	2020-01-19 22:05:55.112406
230	Bmw X3	93603	Malawi	2020-01-19 22:05:55.132674	2020-01-19 22:05:55.132674
231	Lincoln Navigator	24161	Armenia	2020-01-19 22:05:55.151051	2020-01-19 22:05:55.151051
232	Lincoln Mks	11221	Belarus	2020-01-19 22:05:55.182439	2020-01-19 22:05:55.182439
233	Bmw X1	92572	Mali	2020-01-19 22:05:55.214196	2020-01-19 22:05:55.214196
234	Dodge Charger	74766	Martinique	2020-01-19 22:05:55.234424	2020-01-19 22:05:55.234424
235	Ford Focus	85241	Cameroon	2020-01-19 22:05:55.257354	2020-01-19 22:05:55.257354
236	Dodge Durango	19929	Belarus	2020-01-19 22:05:55.273992	2020-01-19 22:05:55.273992
237	Buick Encore	48517	Cook Islands	2020-01-19 22:05:55.30364	2020-01-19 22:05:55.30364
238	Dodge Charger	85790	Vanuatu	2020-01-19 22:05:55.322379	2020-01-19 22:05:55.322379
239	Ford Mustang	83829	Peru	2020-01-19 22:05:55.346495	2020-01-19 22:05:55.346495
240	Chevy Malibu	45753	Virgin Islands, British	2020-01-19 22:05:55.375689	2020-01-19 22:05:55.375689
241	Buick La Crosse	77986	Denmark	2020-01-19 22:05:55.403342	2020-01-19 22:05:55.403342
242	Dodge Ram	66238	Democratic People's Republic of Korea	2020-01-19 22:05:55.418496	2020-01-19 22:05:55.418496
243	Toyota Camry	33135	Virgin Islands, British	2020-01-19 22:05:55.450971	2020-01-19 22:05:55.450971
244	Lincoln Mkx	85461	Ethiopia	2020-01-19 22:05:55.470708	2020-01-19 22:05:55.470708
245	Audi A4	49689	Mayotte	2020-01-19 22:05:55.498513	2020-01-19 22:05:55.498513
246	Dodge Durango	47557	Congo	2020-01-19 22:05:55.533277	2020-01-19 22:05:55.533277
247	Dodge Charger	12140	Bhutan	2020-01-19 22:05:55.548488	2020-01-19 22:05:55.548488
248	Honda Civic	52724	Nepal	2020-01-19 22:05:55.568241	2020-01-19 22:05:55.568241
249	Dodge Ram	51899	Gambia	2020-01-19 22:05:55.582999	2020-01-19 22:05:55.582999
250	Bmw M5	91185	Paraguay	2020-01-19 22:05:55.601686	2020-01-19 22:05:55.601686
251	Chevy Malibu	98914	Saint Pierre and Miquelon	2020-01-19 22:05:55.616599	2020-01-19 22:05:55.616599
252	Bmw X1	80038	Lebanon	2020-01-19 22:05:55.633288	2020-01-19 22:05:55.633288
253	Nissan Juke	92185	Iraq	2020-01-19 22:05:55.665331	2020-01-19 22:05:55.665331
254	Buick Regal	76724	Iceland	2020-01-19 22:05:55.688005	2020-01-19 22:05:55.688005
255	Ford F150	22783	Bahrain	2020-01-19 22:05:55.715208	2020-01-19 22:05:55.715208
256	Ford F150	94814	Turkey	2020-01-19 22:05:55.754608	2020-01-19 22:05:55.754608
257	Nissan Versa	80078	Macedonia	2020-01-19 22:05:55.785981	2020-01-19 22:05:55.785981
258	Honda Accord	67374	Albania	2020-01-19 22:05:55.81632	2020-01-19 22:05:55.81632
259	Honda Cr V	20606	Eritrea	2020-01-19 22:05:55.847422	2020-01-19 22:05:55.847422
261	Chevy Malibu	88139	Taiwan	2020-01-19 22:05:55.894957	2020-01-19 22:05:55.894957
262	Toyota Corolla	97961	Albania	2020-01-19 22:05:55.917859	2020-01-19 22:05:55.917859
264	Bmw X1	45821	Malta	2020-01-19 22:05:55.96326	2020-01-19 22:05:55.96326
265	Ford F150	56375	Democratic People's Republic of Korea	2020-01-19 22:05:55.988526	2020-01-19 22:05:55.988526
266	Ford Fiesta	12213	Finland	2020-01-19 22:05:56.024097	2020-01-19 22:05:56.024097
260	Chevy Malibu	33520	USA	2020-01-19 22:05:55.871319	2020-01-24 21:15:26.948731
263	Lincoln Mkz	80566	United States of America	2020-01-19 22:05:55.935248	2020-01-24 21:16:28.567957
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: saulordonez
--

COPY public.reviews (id, author, content_body, rating, product_id, created_at, updated_at) FROM stdin;
210	Darth Maul	This is a review for this car. It is a very fast car and I like it a lot.	2	217	2020-01-19 22:05:54.804378	2020-01-19 22:05:54.804378
211	Rune Haako	This is a review for this car. It is a very fast car and I like it a lot.	4	217	2020-01-19 22:05:54.809869	2020-01-19 22:05:54.809869
212	Darth Caedus	This is a review for this car. It is a very fast car and I like it a lot.	4	217	2020-01-19 22:05:54.813745	2020-01-19 22:05:54.813745
213	Sheev Palpatine	This is a review for this car. It is a very fast car and I like it a lot.	1	217	2020-01-19 22:05:54.817709	2020-01-19 22:05:54.817709
214	Vice Admiral Holdo	This is a review for this car. It is a very fast car and I like it a lot.	1	218	2020-01-19 22:05:54.824628	2020-01-19 22:05:54.824628
215	Rose Tico	This is a review for this car. It is a very fast car and I like it a lot.	3	218	2020-01-19 22:05:54.828653	2020-01-19 22:05:54.828653
216	Jar Jar Binks	This is a review for this car. It is a very fast car and I like it a lot.	3	218	2020-01-19 22:05:54.833189	2020-01-19 22:05:54.833189
217	Vice Admiral Holdo	This is a review for this car. It is a very fast car and I like it a lot.	4	218	2020-01-19 22:05:54.837373	2020-01-19 22:05:54.837373
218	Darth Maul	This is a review for this car. It is a very fast car and I like it a lot.	3	218	2020-01-19 22:05:54.866124	2020-01-19 22:05:54.866124
219	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	4	218	2020-01-19 22:05:54.873037	2020-01-19 22:05:54.873037
220	Kylo Ren	This is a review for this car. It is a very fast car and I like it a lot.	5	219	2020-01-19 22:05:54.880483	2020-01-19 22:05:54.880483
221	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	3	219	2020-01-19 22:05:54.885026	2020-01-19 22:05:54.885026
222	Han Solo	This is a review for this car. It is a very fast car and I like it a lot.	1	219	2020-01-19 22:05:54.888891	2020-01-19 22:05:54.888891
223	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	1	219	2020-01-19 22:05:54.892808	2020-01-19 22:05:54.892808
224	Lyra Erso	This is a review for this car. It is a very fast car and I like it a lot.	5	219	2020-01-19 22:05:54.89662	2020-01-19 22:05:54.89662
225	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	3	220	2020-01-19 22:05:54.903659	2020-01-19 22:05:54.903659
226	Galen Erso	This is a review for this car. It is a very fast car and I like it a lot.	5	220	2020-01-19 22:05:54.90832	2020-01-19 22:05:54.90832
227	Grand Admiral Thrawn	This is a review for this car. It is a very fast car and I like it a lot.	2	220	2020-01-19 22:05:54.912508	2020-01-19 22:05:54.912508
228	Shmi Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	4	221	2020-01-19 22:05:54.921109	2020-01-19 22:05:54.921109
229	Qui-Gon Jinn	This is a review for this car. It is a very fast car and I like it a lot.	2	221	2020-01-19 22:05:54.925961	2020-01-19 22:05:54.925961
230	Boba Fett	This is a review for this car. It is a very fast car and I like it a lot.	3	221	2020-01-19 22:05:54.92975	2020-01-19 22:05:54.92975
231	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	1	221	2020-01-19 22:05:54.934846	2020-01-19 22:05:54.934846
232	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	4	221	2020-01-19 22:05:54.940113	2020-01-19 22:05:54.940113
233	Ezra Bridger	This is a review for this car. It is a very fast car and I like it a lot.	1	221	2020-01-19 22:05:54.944108	2020-01-19 22:05:54.944108
234	Borvo the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	4	222	2020-01-19 22:05:54.950839	2020-01-19 22:05:54.950839
235	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	5	222	2020-01-19 22:05:54.955063	2020-01-19 22:05:54.955063
236	Borvo the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	2	222	2020-01-19 22:05:54.959041	2020-01-19 22:05:54.959041
237	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	1	223	2020-01-19 22:05:54.965749	2020-01-19 22:05:54.965749
238	Sheev Palpatine	This is a review for this car. It is a very fast car and I like it a lot.	5	223	2020-01-19 22:05:54.970393	2020-01-19 22:05:54.970393
239	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	5	223	2020-01-19 22:05:54.975383	2020-01-19 22:05:54.975383
240	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	3	223	2020-01-19 22:05:54.980693	2020-01-19 22:05:54.980693
241	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	4	223	2020-01-19 22:05:54.985918	2020-01-19 22:05:54.985918
242	Jango Fett	This is a review for this car. It is a very fast car and I like it a lot.	3	223	2020-01-19 22:05:54.990468	2020-01-19 22:05:54.990468
243	Vice Admiral Holdo	This is a review for this car. It is a very fast car and I like it a lot.	5	224	2020-01-19 22:05:54.997305	2020-01-19 22:05:54.997305
244	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	4	224	2020-01-19 22:05:55.001056	2020-01-19 22:05:55.001056
245	Galen Erso	This is a review for this car. It is a very fast car and I like it a lot.	4	224	2020-01-19 22:05:55.014973	2020-01-19 22:05:55.014973
246	Ezra Bridger	This is a review for this car. It is a very fast car and I like it a lot.	3	224	2020-01-19 22:05:55.019414	2020-01-19 22:05:55.019414
247	Rune Haako	This is a review for this car. It is a very fast car and I like it a lot.	4	225	2020-01-19 22:05:55.026426	2020-01-19 22:05:55.026426
248	Wedge Antilles	This is a review for this car. It is a very fast car and I like it a lot.	5	225	2020-01-19 22:05:55.030441	2020-01-19 22:05:55.030441
249	Grand Admiral Thrawn	This is a review for this car. It is a very fast car and I like it a lot.	1	225	2020-01-19 22:05:55.034246	2020-01-19 22:05:55.034246
250	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	5	225	2020-01-19 22:05:55.039069	2020-01-19 22:05:55.039069
251	Luke Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	5	225	2020-01-19 22:05:55.043179	2020-01-19 22:05:55.043179
252	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	4	226	2020-01-19 22:05:55.050121	2020-01-19 22:05:55.050121
253	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	2	226	2020-01-19 22:05:55.054541	2020-01-19 22:05:55.054541
254	Padme Amidala	This is a review for this car. It is a very fast car and I like it a lot.	3	226	2020-01-19 22:05:55.058488	2020-01-19 22:05:55.058488
255	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	1	226	2020-01-19 22:05:55.062269	2020-01-19 22:05:55.062269
256	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	1	226	2020-01-19 22:05:55.066178	2020-01-19 22:05:55.066178
257	Leia Organa	This is a review for this car. It is a very fast car and I like it a lot.	4	227	2020-01-19 22:05:55.073805	2020-01-19 22:05:55.073805
258	Sheev Palpatine	This is a review for this car. It is a very fast car and I like it a lot.	3	227	2020-01-19 22:05:55.078512	2020-01-19 22:05:55.078512
259	Mace Windu	This is a review for this car. It is a very fast car and I like it a lot.	3	227	2020-01-19 22:05:55.082314	2020-01-19 22:05:55.082314
260	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	2	227	2020-01-19 22:05:55.086312	2020-01-19 22:05:55.086312
261	Ben Solo	This is a review for this car. It is a very fast car and I like it a lot.	5	228	2020-01-19 22:05:55.093339	2020-01-19 22:05:55.093339
262	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	2	228	2020-01-19 22:05:55.097118	2020-01-19 22:05:55.097118
263	Ezra Bridger	This is a review for this car. It is a very fast car and I like it a lot.	2	228	2020-01-19 22:05:55.101375	2020-01-19 22:05:55.101375
264	Darth Vader	This is a review for this car. It is a very fast car and I like it a lot.	1	228	2020-01-19 22:05:55.10555	2020-01-19 22:05:55.10555
265	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	4	228	2020-01-19 22:05:55.109574	2020-01-19 22:05:55.109574
266	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	3	229	2020-01-19 22:05:55.116148	2020-01-19 22:05:55.116148
267	Yoda	This is a review for this car. It is a very fast car and I like it a lot.	4	229	2020-01-19 22:05:55.120145	2020-01-19 22:05:55.120145
268	Lyra Erso	This is a review for this car. It is a very fast car and I like it a lot.	4	229	2020-01-19 22:05:55.125607	2020-01-19 22:05:55.125607
269	Rune Haako	This is a review for this car. It is a very fast car and I like it a lot.	1	229	2020-01-19 22:05:55.1296	2020-01-19 22:05:55.1296
270	Wedge Antilles	This is a review for this car. It is a very fast car and I like it a lot.	5	230	2020-01-19 22:05:55.136629	2020-01-19 22:05:55.136629
271	Luke Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	5	230	2020-01-19 22:05:55.140566	2020-01-19 22:05:55.140566
272	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	5	230	2020-01-19 22:05:55.144325	2020-01-19 22:05:55.144325
273	Grand Moff Tarkin	This is a review for this car. It is a very fast car and I like it a lot.	3	230	2020-01-19 22:05:55.148118	2020-01-19 22:05:55.148118
274	Kanan Jarrus	This is a review for this car. It is a very fast car and I like it a lot.	4	231	2020-01-19 22:05:55.155273	2020-01-19 22:05:55.155273
275	Ahsoka Tano	This is a review for this car. It is a very fast car and I like it a lot.	1	231	2020-01-19 22:05:55.159027	2020-01-19 22:05:55.159027
276	Lando Calrissian	This is a review for this car. It is a very fast car and I like it a lot.	1	231	2020-01-19 22:05:55.162849	2020-01-19 22:05:55.162849
277	Darth Caedus	This is a review for this car. It is a very fast car and I like it a lot.	3	231	2020-01-19 22:05:55.166649	2020-01-19 22:05:55.166649
278	Bendu	This is a review for this car. It is a very fast car and I like it a lot.	4	231	2020-01-19 22:05:55.170409	2020-01-19 22:05:55.170409
279	Grand Moff Tarkin	This is a review for this car. It is a very fast car and I like it a lot.	5	231	2020-01-19 22:05:55.17527	2020-01-19 22:05:55.17527
280	Rey	This is a review for this car. It is a very fast car and I like it a lot.	3	231	2020-01-19 22:05:55.179474	2020-01-19 22:05:55.179474
281	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	3	232	2020-01-19 22:05:55.186526	2020-01-19 22:05:55.186526
282	Boba Fett	This is a review for this car. It is a very fast car and I like it a lot.	2	232	2020-01-19 22:05:55.190533	2020-01-19 22:05:55.190533
283	Lyra Erso	This is a review for this car. It is a very fast car and I like it a lot.	5	232	2020-01-19 22:05:55.194422	2020-01-19 22:05:55.194422
284	Ezra Bridger	This is a review for this car. It is a very fast car and I like it a lot.	1	232	2020-01-19 22:05:55.198472	2020-01-19 22:05:55.198472
285	Supreme Leader Snoke	This is a review for this car. It is a very fast car and I like it a lot.	1	232	2020-01-19 22:05:55.202536	2020-01-19 22:05:55.202536
286	Ben Solo	This is a review for this car. It is a very fast car and I like it a lot.	2	232	2020-01-19 22:05:55.207083	2020-01-19 22:05:55.207083
287	Watto	This is a review for this car. It is a very fast car and I like it a lot.	5	232	2020-01-19 22:05:55.211163	2020-01-19 22:05:55.211163
288	Anakin Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	5	233	2020-01-19 22:05:55.218048	2020-01-19 22:05:55.218048
289	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	5	233	2020-01-19 22:05:55.223187	2020-01-19 22:05:55.223187
290	Bendu	This is a review for this car. It is a very fast car and I like it a lot.	4	233	2020-01-19 22:05:55.227514	2020-01-19 22:05:55.227514
291	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	4	233	2020-01-19 22:05:55.231526	2020-01-19 22:05:55.231526
292	Finn	This is a review for this car. It is a very fast car and I like it a lot.	2	234	2020-01-19 22:05:55.238606	2020-01-19 22:05:55.238606
293	Count Dooku	This is a review for this car. It is a very fast car and I like it a lot.	2	234	2020-01-19 22:05:55.242472	2020-01-19 22:05:55.242472
294	Maz Kanata	This is a review for this car. It is a very fast car and I like it a lot.	3	234	2020-01-19 22:05:55.246392	2020-01-19 22:05:55.246392
295	Leia Organa	This is a review for this car. It is a very fast car and I like it a lot.	1	234	2020-01-19 22:05:55.250202	2020-01-19 22:05:55.250202
296	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	1	234	2020-01-19 22:05:55.254456	2020-01-19 22:05:55.254456
297	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	3	235	2020-01-19 22:05:55.261377	2020-01-19 22:05:55.261377
298	Lando Calrissian	This is a review for this car. It is a very fast car and I like it a lot.	3	235	2020-01-19 22:05:55.265683	2020-01-19 22:05:55.265683
299	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	1	235	2020-01-19 22:05:55.270055	2020-01-19 22:05:55.270055
300	Ezra Bridger	This is a review for this car. It is a very fast car and I like it a lot.	3	236	2020-01-19 22:05:55.278226	2020-01-19 22:05:55.278226
301	Kanan Jarrus	This is a review for this car. It is a very fast car and I like it a lot.	2	236	2020-01-19 22:05:55.282731	2020-01-19 22:05:55.282731
302	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	5	236	2020-01-19 22:05:55.287183	2020-01-19 22:05:55.287183
303	Sheev Palpatine	This is a review for this car. It is a very fast car and I like it a lot.	5	236	2020-01-19 22:05:55.292331	2020-01-19 22:05:55.292331
304	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	3	236	2020-01-19 22:05:55.296661	2020-01-19 22:05:55.296661
305	Padme Amidala	This is a review for this car. It is a very fast car and I like it a lot.	3	236	2020-01-19 22:05:55.300545	2020-01-19 22:05:55.300545
306	Watto	This is a review for this car. It is a very fast car and I like it a lot.	2	237	2020-01-19 22:05:55.307576	2020-01-19 22:05:55.307576
307	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	2	237	2020-01-19 22:05:55.311384	2020-01-19 22:05:55.311384
308	Kanan Jarrus	This is a review for this car. It is a very fast car and I like it a lot.	2	237	2020-01-19 22:05:55.315444	2020-01-19 22:05:55.315444
309	Han Solo	This is a review for this car. It is a very fast car and I like it a lot.	4	237	2020-01-19 22:05:55.319469	2020-01-19 22:05:55.319469
310	Leia Organa	This is a review for this car. It is a very fast car and I like it a lot.	1	238	2020-01-19 22:05:55.326414	2020-01-19 22:05:55.326414
311	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	3	238	2020-01-19 22:05:55.330355	2020-01-19 22:05:55.330355
312	Nute Gunray	This is a review for this car. It is a very fast car and I like it a lot.	5	238	2020-01-19 22:05:55.334288	2020-01-19 22:05:55.334288
313	Count Dooku	This is a review for this car. It is a very fast car and I like it a lot.	4	238	2020-01-19 22:05:55.338317	2020-01-19 22:05:55.338317
314	Bendu	This is a review for this car. It is a very fast car and I like it a lot.	1	238	2020-01-19 22:05:55.343335	2020-01-19 22:05:55.343335
315	Darth Caedus	This is a review for this car. It is a very fast car and I like it a lot.	3	239	2020-01-19 22:05:55.350349	2020-01-19 22:05:55.350349
316	Supreme Leader Snoke	This is a review for this car. It is a very fast car and I like it a lot.	3	239	2020-01-19 22:05:55.354972	2020-01-19 22:05:55.354972
317	Lyra Erso	This is a review for this car. It is a very fast car and I like it a lot.	2	239	2020-01-19 22:05:55.359936	2020-01-19 22:05:55.359936
318	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	5	239	2020-01-19 22:05:55.364375	2020-01-19 22:05:55.364375
319	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	1	239	2020-01-19 22:05:55.368632	2020-01-19 22:05:55.368632
320	Nute Gunray	This is a review for this car. It is a very fast car and I like it a lot.	1	239	2020-01-19 22:05:55.372763	2020-01-19 22:05:55.372763
321	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	3	240	2020-01-19 22:05:55.379542	2020-01-19 22:05:55.379542
322	Ki-Adi-Mundi	This is a review for this car. It is a very fast car and I like it a lot.	2	240	2020-01-19 22:05:55.383502	2020-01-19 22:05:55.383502
323	Obi-Wan Kenobi	This is a review for this car. It is a very fast car and I like it a lot.	2	240	2020-01-19 22:05:55.387299	2020-01-19 22:05:55.387299
324	Jar Jar Binks	This is a review for this car. It is a very fast car and I like it a lot.	5	240	2020-01-19 22:05:55.39239	2020-01-19 22:05:55.39239
325	Jar Jar Binks	This is a review for this car. It is a very fast car and I like it a lot.	5	240	2020-01-19 22:05:55.396529	2020-01-19 22:05:55.396529
326	Chewbacca	This is a review for this car. It is a very fast car and I like it a lot.	2	240	2020-01-19 22:05:55.400426	2020-01-19 22:05:55.400426
327	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	4	241	2020-01-19 22:05:55.407217	2020-01-19 22:05:55.407217
328	Darth Caedus	This is a review for this car. It is a very fast car and I like it a lot.	1	241	2020-01-19 22:05:55.410999	2020-01-19 22:05:55.410999
329	Darth Maul	This is a review for this car. It is a very fast car and I like it a lot.	1	241	2020-01-19 22:05:55.415271	2020-01-19 22:05:55.415271
330	Luke Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	3	242	2020-01-19 22:05:55.422578	2020-01-19 22:05:55.422578
331	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	2	242	2020-01-19 22:05:55.428318	2020-01-19 22:05:55.428318
332	Wedge Antilles	This is a review for this car. It is a very fast car and I like it a lot.	5	242	2020-01-19 22:05:55.4323	2020-01-19 22:05:55.4323
333	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	2	242	2020-01-19 22:05:55.436093	2020-01-19 22:05:55.436093
334	Jango Fett	This is a review for this car. It is a very fast car and I like it a lot.	5	242	2020-01-19 22:05:55.440381	2020-01-19 22:05:55.440381
335	Sebulba	This is a review for this car. It is a very fast car and I like it a lot.	3	242	2020-01-19 22:05:55.444339	2020-01-19 22:05:55.444339
336	Ben Solo	This is a review for this car. It is a very fast car and I like it a lot.	5	242	2020-01-19 22:05:55.448021	2020-01-19 22:05:55.448021
337	Poe Dameron	This is a review for this car. It is a very fast car and I like it a lot.	2	243	2020-01-19 22:05:55.454905	2020-01-19 22:05:55.454905
338	General Hux	This is a review for this car. It is a very fast car and I like it a lot.	1	243	2020-01-19 22:05:55.459693	2020-01-19 22:05:55.459693
339	Sabine Wren	This is a review for this car. It is a very fast car and I like it a lot.	4	243	2020-01-19 22:05:55.463823	2020-01-19 22:05:55.463823
340	Chirrut Imwe	This is a review for this car. It is a very fast car and I like it a lot.	3	243	2020-01-19 22:05:55.467611	2020-01-19 22:05:55.467611
341	Padme Amidala	This is a review for this car. It is a very fast car and I like it a lot.	4	244	2020-01-19 22:05:55.474522	2020-01-19 22:05:55.474522
342	Ki-Adi-Mundi	This is a review for this car. It is a very fast car and I like it a lot.	1	244	2020-01-19 22:05:55.478431	2020-01-19 22:05:55.478431
343	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	3	244	2020-01-19 22:05:55.482385	2020-01-19 22:05:55.482385
344	Grand Admiral Thrawn	This is a review for this car. It is a very fast car and I like it a lot.	4	244	2020-01-19 22:05:55.486538	2020-01-19 22:05:55.486538
345	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	1	244	2020-01-19 22:05:55.491268	2020-01-19 22:05:55.491268
346	Rey	This is a review for this car. It is a very fast car and I like it a lot.	5	244	2020-01-19 22:05:55.495488	2020-01-19 22:05:55.495488
347	Wedge Antilles	This is a review for this car. It is a very fast car and I like it a lot.	5	245	2020-01-19 22:05:55.502474	2020-01-19 22:05:55.502474
348	Jango Fett	This is a review for this car. It is a very fast car and I like it a lot.	3	245	2020-01-19 22:05:55.506426	2020-01-19 22:05:55.506426
349	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	1	245	2020-01-19 22:05:55.510394	2020-01-19 22:05:55.510394
350	Watto	This is a review for this car. It is a very fast car and I like it a lot.	5	245	2020-01-19 22:05:55.514306	2020-01-19 22:05:55.514306
351	Darth Maul	This is a review for this car. It is a very fast car and I like it a lot.	3	245	2020-01-19 22:05:55.518848	2020-01-19 22:05:55.518848
352	Anakin Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	3	245	2020-01-19 22:05:55.524471	2020-01-19 22:05:55.524471
353	Bendu	This is a review for this car. It is a very fast car and I like it a lot.	1	245	2020-01-19 22:05:55.530012	2020-01-19 22:05:55.530012
354	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	1	246	2020-01-19 22:05:55.537669	2020-01-19 22:05:55.537669
355	Nute Gunray	This is a review for this car. It is a very fast car and I like it a lot.	2	246	2020-01-19 22:05:55.541747	2020-01-19 22:05:55.541747
356	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	4	246	2020-01-19 22:05:55.545482	2020-01-19 22:05:55.545482
357	Supreme Leader Snoke	This is a review for this car. It is a very fast car and I like it a lot.	1	247	2020-01-19 22:05:55.552395	2020-01-19 22:05:55.552395
358	Jango Fett	This is a review for this car. It is a very fast car and I like it a lot.	5	247	2020-01-19 22:05:55.556728	2020-01-19 22:05:55.556728
359	Chewbacca	This is a review for this car. It is a very fast car and I like it a lot.	2	247	2020-01-19 22:05:55.561342	2020-01-19 22:05:55.561342
360	Qui-Gon Jinn	This is a review for this car. It is a very fast car and I like it a lot.	2	247	2020-01-19 22:05:55.565372	2020-01-19 22:05:55.565372
361	Ben Solo	This is a review for this car. It is a very fast car and I like it a lot.	3	248	2020-01-19 22:05:55.572126	2020-01-19 22:05:55.572126
362	Wedge Antilles	This is a review for this car. It is a very fast car and I like it a lot.	5	248	2020-01-19 22:05:55.576152	2020-01-19 22:05:55.576152
363	Poe Dameron	This is a review for this car. It is a very fast car and I like it a lot.	5	248	2020-01-19 22:05:55.580121	2020-01-19 22:05:55.580121
364	Borvo the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	1	249	2020-01-19 22:05:55.586979	2020-01-19 22:05:55.586979
365	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	3	249	2020-01-19 22:05:55.591032	2020-01-19 22:05:55.591032
366	Watto	This is a review for this car. It is a very fast car and I like it a lot.	3	249	2020-01-19 22:05:55.594817	2020-01-19 22:05:55.594817
367	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	1	249	2020-01-19 22:05:55.598771	2020-01-19 22:05:55.598771
368	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	3	250	2020-01-19 22:05:55.605495	2020-01-19 22:05:55.605495
369	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	4	250	2020-01-19 22:05:55.609672	2020-01-19 22:05:55.609672
370	Shmi Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	3	250	2020-01-19 22:05:55.613713	2020-01-19 22:05:55.613713
371	Watto	This is a review for this car. It is a very fast car and I like it a lot.	1	251	2020-01-19 22:05:55.620425	2020-01-19 22:05:55.620425
372	Chirrut Imwe	This is a review for this car. It is a very fast car and I like it a lot.	4	251	2020-01-19 22:05:55.625165	2020-01-19 22:05:55.625165
373	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	5	251	2020-01-19 22:05:55.629557	2020-01-19 22:05:55.629557
374	Borvo the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	3	252	2020-01-19 22:05:55.637416	2020-01-19 22:05:55.637416
375	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	3	252	2020-01-19 22:05:55.64138	2020-01-19 22:05:55.64138
376	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	3	252	2020-01-19 22:05:55.64537	2020-01-19 22:05:55.64537
377	Watto	This is a review for this car. It is a very fast car and I like it a lot.	4	252	2020-01-19 22:05:55.64915	2020-01-19 22:05:55.64915
378	Grand Moff Tarkin	This is a review for this car. It is a very fast car and I like it a lot.	5	252	2020-01-19 22:05:55.653407	2020-01-19 22:05:55.653407
379	Lando Calrissian	This is a review for this car. It is a very fast car and I like it a lot.	2	252	2020-01-19 22:05:55.658072	2020-01-19 22:05:55.658072
380	Darth Maul	This is a review for this car. It is a very fast car and I like it a lot.	1	252	2020-01-19 22:05:55.66248	2020-01-19 22:05:55.66248
381	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	5	253	2020-01-19 22:05:55.669154	2020-01-19 22:05:55.669154
382	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	5	253	2020-01-19 22:05:55.673125	2020-01-19 22:05:55.673125
383	Lando Calrissian	This is a review for this car. It is a very fast car and I like it a lot.	2	253	2020-01-19 22:05:55.677118	2020-01-19 22:05:55.677118
384	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	3	253	2020-01-19 22:05:55.680999	2020-01-19 22:05:55.680999
385	Leia Organa	This is a review for this car. It is a very fast car and I like it a lot.	3	253	2020-01-19 22:05:55.684871	2020-01-19 22:05:55.684871
386	Jabba the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	2	254	2020-01-19 22:05:55.692715	2020-01-19 22:05:55.692715
387	Leia Organa	This is a review for this car. It is a very fast car and I like it a lot.	5	254	2020-01-19 22:05:55.696747	2020-01-19 22:05:55.696747
388	Chirrut Imwe	This is a review for this car. It is a very fast car and I like it a lot.	4	254	2020-01-19 22:05:55.700817	2020-01-19 22:05:55.700817
389	Leia Organa	This is a review for this car. It is a very fast car and I like it a lot.	2	254	2020-01-19 22:05:55.704687	2020-01-19 22:05:55.704687
390	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	3	254	2020-01-19 22:05:55.708532	2020-01-19 22:05:55.708532
391	Panaka	This is a review for this car. It is a very fast car and I like it a lot.	1	254	2020-01-19 22:05:55.712427	2020-01-19 22:05:55.712427
392	Ahsoka Tano	This is a review for this car. It is a very fast car and I like it a lot.	4	255	2020-01-19 22:05:55.718956	2020-01-19 22:05:55.718956
393	Chewbacca	This is a review for this car. It is a very fast car and I like it a lot.	5	255	2020-01-19 22:05:55.722949	2020-01-19 22:05:55.722949
394	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	4	255	2020-01-19 22:05:55.727713	2020-01-19 22:05:55.727713
395	Hera Syndulla	This is a review for this car. It is a very fast car and I like it a lot.	5	255	2020-01-19 22:05:55.73202	2020-01-19 22:05:55.73202
396	Yoda	This is a review for this car. It is a very fast car and I like it a lot.	2	255	2020-01-19 22:05:55.740361	2020-01-19 22:05:55.740361
397	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	2	255	2020-01-19 22:05:55.746129	2020-01-19 22:05:55.746129
398	Mace Windu	This is a review for this car. It is a very fast car and I like it a lot.	2	255	2020-01-19 22:05:55.751434	2020-01-19 22:05:55.751434
399	Maz Kanata	This is a review for this car. It is a very fast car and I like it a lot.	3	256	2020-01-19 22:05:55.759969	2020-01-19 22:05:55.759969
400	Boba Fett	This is a review for this car. It is a very fast car and I like it a lot.	5	256	2020-01-19 22:05:55.763871	2020-01-19 22:05:55.763871
401	Ben Solo	This is a review for this car. It is a very fast car and I like it a lot.	4	256	2020-01-19 22:05:55.767654	2020-01-19 22:05:55.767654
402	Grand Moff Tarkin	This is a review for this car. It is a very fast car and I like it a lot.	1	256	2020-01-19 22:05:55.771414	2020-01-19 22:05:55.771414
403	Grand Moff Tarkin	This is a review for this car. It is a very fast car and I like it a lot.	2	256	2020-01-19 22:05:55.775389	2020-01-19 22:05:55.775389
404	Sebulba	This is a review for this car. It is a very fast car and I like it a lot.	2	256	2020-01-19 22:05:55.779222	2020-01-19 22:05:55.779222
405	Finn	This is a review for this car. It is a very fast car and I like it a lot.	4	256	2020-01-19 22:05:55.782966	2020-01-19 22:05:55.782966
406	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	2	257	2020-01-19 22:05:55.790003	2020-01-19 22:05:55.790003
407	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	4	257	2020-01-19 22:05:55.794859	2020-01-19 22:05:55.794859
408	General Hux	This is a review for this car. It is a very fast car and I like it a lot.	4	257	2020-01-19 22:05:55.798797	2020-01-19 22:05:55.798797
409	Nute Gunray	This is a review for this car. It is a very fast car and I like it a lot.	2	257	2020-01-19 22:05:55.805846	2020-01-19 22:05:55.805846
410	Rose Tico	This is a review for this car. It is a very fast car and I like it a lot.	2	257	2020-01-19 22:05:55.809577	2020-01-19 22:05:55.809577
411	Sabine Wren	This is a review for this car. It is a very fast car and I like it a lot.	3	257	2020-01-19 22:05:55.813474	2020-01-19 22:05:55.813474
412	Rune Haako	This is a review for this car. It is a very fast car and I like it a lot.	1	258	2020-01-19 22:05:55.820134	2020-01-19 22:05:55.820134
413	Greedo	This is a review for this car. It is a very fast car and I like it a lot.	2	258	2020-01-19 22:05:55.824526	2020-01-19 22:05:55.824526
414	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	5	258	2020-01-19 22:05:55.828913	2020-01-19 22:05:55.828913
415	Chewbacca	This is a review for this car. It is a very fast car and I like it a lot.	3	258	2020-01-19 22:05:55.833064	2020-01-19 22:05:55.833064
416	Admiral Ackbar	This is a review for this car. It is a very fast car and I like it a lot.	1	258	2020-01-19 22:05:55.836949	2020-01-19 22:05:55.836949
417	Luke Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	4	258	2020-01-19 22:05:55.840807	2020-01-19 22:05:55.840807
418	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	5	258	2020-01-19 22:05:55.844504	2020-01-19 22:05:55.844504
419	Darth Caedus	This is a review for this car. It is a very fast car and I like it a lot.	2	259	2020-01-19 22:05:55.85126	2020-01-19 22:05:55.85126
420	Qui-Gon Jinn	This is a review for this car. It is a very fast car and I like it a lot.	2	259	2020-01-19 22:05:55.855413	2020-01-19 22:05:55.855413
421	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	2	259	2020-01-19 22:05:55.860189	2020-01-19 22:05:55.860189
422	Grand Admiral Thrawn	This is a review for this car. It is a very fast car and I like it a lot.	2	259	2020-01-19 22:05:55.864271	2020-01-19 22:05:55.864271
423	Ahsoka Tano	This is a review for this car. It is a very fast car and I like it a lot.	3	259	2020-01-19 22:05:55.868322	2020-01-19 22:05:55.868322
424	Bendu	This is a review for this car. It is a very fast car and I like it a lot.	1	260	2020-01-19 22:05:55.87563	2020-01-19 22:05:55.87563
425	Ahsoka Tano	This is a review for this car. It is a very fast car and I like it a lot.	2	260	2020-01-19 22:05:55.879585	2020-01-19 22:05:55.879585
426	Ki-Adi-Mundi	This is a review for this car. It is a very fast car and I like it a lot.	4	260	2020-01-19 22:05:55.883392	2020-01-19 22:05:55.883392
427	Grand Admiral Thrawn	This is a review for this car. It is a very fast car and I like it a lot.	5	260	2020-01-19 22:05:55.887232	2020-01-19 22:05:55.887232
428	Captain Phasma	This is a review for this car. It is a very fast car and I like it a lot.	2	260	2020-01-19 22:05:55.891191	2020-01-19 22:05:55.891191
429	Watto	This is a review for this car. It is a very fast car and I like it a lot.	1	261	2020-01-19 22:05:55.89912	2020-01-19 22:05:55.89912
430	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	3	261	2020-01-19 22:05:55.904398	2020-01-19 22:05:55.904398
431	Jyn Erso	This is a review for this car. It is a very fast car and I like it a lot.	5	261	2020-01-19 22:05:55.908433	2020-01-19 22:05:55.908433
432	Finn	This is a review for this car. It is a very fast car and I like it a lot.	4	261	2020-01-19 22:05:55.914084	2020-01-19 22:05:55.914084
433	Kanan Jarrus	This is a review for this car. It is a very fast car and I like it a lot.	5	262	2020-01-19 22:05:55.922214	2020-01-19 22:05:55.922214
434	Qui-Gon Jinn	This is a review for this car. It is a very fast car and I like it a lot.	3	262	2020-01-19 22:05:55.927896	2020-01-19 22:05:55.927896
435	Obi-Wan Kenobi	This is a review for this car. It is a very fast car and I like it a lot.	2	262	2020-01-19 22:05:55.93249	2020-01-19 22:05:55.93249
436	Jabba the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	4	263	2020-01-19 22:05:55.939275	2020-01-19 22:05:55.939275
437	Jar Jar Binks	This is a review for this car. It is a very fast car and I like it a lot.	5	263	2020-01-19 22:05:55.945146	2020-01-19 22:05:55.945146
438	Jabba the Hutt	This is a review for this car. It is a very fast car and I like it a lot.	1	263	2020-01-19 22:05:55.95136	2020-01-19 22:05:55.95136
439	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	1	263	2020-01-19 22:05:55.956987	2020-01-19 22:05:55.956987
440	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	3	264	2020-01-19 22:05:55.9693	2020-01-19 22:05:55.9693
441	Saw Gerrera	This is a review for this car. It is a very fast car and I like it a lot.	4	264	2020-01-19 22:05:55.974028	2020-01-19 22:05:55.974028
442	Ahsoka Tano	This is a review for this car. It is a very fast car and I like it a lot.	5	264	2020-01-19 22:05:55.978213	2020-01-19 22:05:55.978213
443	Mon Mothma	This is a review for this car. It is a very fast car and I like it a lot.	3	264	2020-01-19 22:05:55.982043	2020-01-19 22:05:55.982043
444	Luke Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	3	264	2020-01-19 22:05:55.985777	2020-01-19 22:05:55.985777
445	Chewbacca	This is a review for this car. It is a very fast car and I like it a lot.	5	265	2020-01-19 22:05:55.993322	2020-01-19 22:05:55.993322
446	Shmi Skywalker	This is a review for this car. It is a very fast car and I like it a lot.	3	265	2020-01-19 22:05:55.997565	2020-01-19 22:05:55.997565
447	Darth Vader	This is a review for this car. It is a very fast car and I like it a lot.	4	265	2020-01-19 22:05:56.001285	2020-01-19 22:05:56.001285
448	Count Dooku	This is a review for this car. It is a very fast car and I like it a lot.	2	265	2020-01-19 22:05:56.00513	2020-01-19 22:05:56.00513
449	Yoda	This is a review for this car. It is a very fast car and I like it a lot.	2	265	2020-01-19 22:05:56.009074	2020-01-19 22:05:56.009074
450	Rune Haako	This is a review for this car. It is a very fast car and I like it a lot.	1	265	2020-01-19 22:05:56.016693	2020-01-19 22:05:56.016693
451	Boba Fett	This is a review for this car. It is a very fast car and I like it a lot.	1	265	2020-01-19 22:05:56.020974	2020-01-19 22:05:56.020974
452	Bail Organa	This is a review for this car. It is a very fast car and I like it a lot.	2	266	2020-01-19 22:05:56.028726	2020-01-19 22:05:56.028726
453	Darth Sidious	This is a review for this car. It is a very fast car and I like it a lot.	3	266	2020-01-19 22:05:56.032939	2020-01-19 22:05:56.032939
454	Savage Opress	This is a review for this car. It is a very fast car and I like it a lot.	2	266	2020-01-19 22:05:56.036911	2020-01-19 22:05:56.036911
455	Darth Maul	This is a review for this car. It is a very fast car and I like it a lot.	2	266	2020-01-19 22:05:56.040819	2020-01-19 22:05:56.040819
456	Boba Fett	This is a review for this car. It is a very fast car and I like it a lot.	5	266	2020-01-19 22:05:56.045286	2020-01-19 22:05:56.045286
457	Asajj Ventress	This is a review for this car. It is a very fast car and I like it a lot.	1	266	2020-01-19 22:05:56.049576	2020-01-19 22:05:56.049576
458	Bendu	This is a review for this car. It is a very fast car and I like it a lot.	4	266	2020-01-19 22:05:56.053567	2020-01-19 22:05:56.053567
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: saulordonez
--

COPY public.schema_migrations (version) FROM stdin;
20200117171530
20200117172521
20200117172923
20200124183905
20200124194314
20200124194645
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: saulordonez
--

COPY public.users (id, email, password_hash, password_salt, admin) FROM stdin;
1	admin@admin.com	$2a$12$RM9ogKyVWvxlZfsOdzQTg.PfjhVjbZjDexO0ZSHiu9cQfiapmv7GC	$2a$12$RM9ogKyVWvxlZfsOdzQTg.	t
2	user@user.com	$2a$12$wMMm/FyTmNlisPMiaU721er3k/O7lP4KNDjy1bgf9vzOz5ySfdyNC	$2a$12$wMMm/FyTmNlisPMiaU721e	f
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: saulordonez
--

SELECT pg_catalog.setval('public.products_id_seq', 266, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: saulordonez
--

SELECT pg_catalog.setval('public.reviews_id_seq', 458, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: saulordonez
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: saulordonez
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

