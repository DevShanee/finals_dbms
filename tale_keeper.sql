--
-- PostgreSQL database dump
--

\restrict I5003rgaZxHcbTJ3hZGaov4PwkeEighmVFtEjGtK5XsUH5uw0skoTRA3OM5qVTu

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: chapters; Type: TABLE; Schema: public; Owner: Shane
--

CREATE TABLE public.chapters (
    id integer NOT NULL,
    story_id integer NOT NULL,
    chapter_no integer NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.chapters OWNER TO "Shane";

--
-- Name: chapters_id_seq; Type: SEQUENCE; Schema: public; Owner: Shane
--

CREATE SEQUENCE public.chapters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.chapters_id_seq OWNER TO "Shane";

--
-- Name: chapters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Shane
--

ALTER SEQUENCE public.chapters_id_seq OWNED BY public.chapters.id;


--
-- Name: reading_streak; Type: TABLE; Schema: public; Owner: Shane
--

CREATE TABLE public.reading_streak (
    id integer NOT NULL,
    last_read_date date,
    current_streak integer DEFAULT 0,
    longest_streak integer DEFAULT 0,
    CONSTRAINT reading_streak_id_check CHECK ((id = 1))
);


ALTER TABLE public.reading_streak OWNER TO "Shane";

--
-- Name: stories; Type: TABLE; Schema: public; Owner: Shane
--

CREATE TABLE public.stories (
    id integer NOT NULL,
    favorite boolean DEFAULT false,
    title text NOT NULL,
    author text,
    genre text,
    date_started date,
    date_completed date,
    status text,
    num_chapters integer DEFAULT 0,
    word_count integer DEFAULT 0,
    main_character text,
    last_updated date,
    preview text DEFAULT ''::text,
    target_words integer DEFAULT 0,
    user_id integer
);


ALTER TABLE public.stories OWNER TO "Shane";

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: Shane
--

CREATE SEQUENCE public.stories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stories_id_seq OWNER TO "Shane";

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Shane
--

ALTER SEQUENCE public.stories_id_seq OWNED BY public.stories.id;


--
-- Name: story_streaks; Type: TABLE; Schema: public; Owner: Shane
--

CREATE TABLE public.story_streaks (
    story_id integer NOT NULL,
    last_read_date date,
    current_streak integer DEFAULT 0,
    longest_streak integer DEFAULT 0
);


ALTER TABLE public.story_streaks OWNER TO "Shane";

--
-- Name: user_streak; Type: TABLE; Schema: public; Owner: Shane
--

CREATE TABLE public.user_streak (
    user_id integer NOT NULL,
    last_read_date date,
    current_streak integer DEFAULT 0,
    longest_streak integer DEFAULT 0
);


ALTER TABLE public.user_streak OWNER TO "Shane";

--
-- Name: users; Type: TABLE; Schema: public; Owner: Shane
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    role character varying(20) DEFAULT 'user'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    password text,
    is_admin boolean DEFAULT false,
    longest_streak integer DEFAULT 0,
    last_read_date date,
    current_streak integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO "Shane";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: Shane
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO "Shane";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Shane
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: chapters id; Type: DEFAULT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.chapters ALTER COLUMN id SET DEFAULT nextval('public.chapters_id_seq'::regclass);


--
-- Name: stories id; Type: DEFAULT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.stories ALTER COLUMN id SET DEFAULT nextval('public.stories_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: chapters; Type: TABLE DATA; Schema: public; Owner: Shane
--

COPY public.chapters (id, story_id, chapter_no, content, created_at) FROM stdin;
4	5	1	I walked deeper into the labyrinth. The silence here wasn't empty; it was heavy, as if the books were holding their breath, waiting to be noticed. My hand brushed against a row of vellum covers until, at the very end of a dark corridor, I felt a strange tingle in my fingertips.\n\nThere it was. A small volume, its leather binding scarred by time. There was no gold leaf on the spine, only a title that seemed to shimmer in the low light:\n\nAs I pulled it from the shelf, a cold draft swept through the room, extinguishing a nearby candle. I didn't know then that by taking this book, I was opening a door to a ghost story that had been waiting decades for a new ending. I didn't know that some shadows never truly leave the person they belong to.	2025-12-18 16:20:47.381305
5	8	1	“Baka Sakali 1” is a published Wattpad novel by Jonaxx, so the full text of Chapter 1 is copyrighted and cannot be reproduced verbatim here. However, the chapter opens with Rosie narrating how her family, who are struggling financially, are moving out of their rented house and heading to her grandmother’s place in Alegria, which she resents because it reminds her that they are poor and must leave the life she’s used to in the city.	2025-12-18 17:44:58.950287
6	9	1	The heat in Alegria was different from the city. It wasn’t just the sun; it was the way the air seemed to hold onto the scent of the earth and the distant sea, thick with a stillness that made my heart beat louder than it should. I stepped out of the car, the gravel crunching beneath my designer sandals, a sound that felt too loud for the quiet afternoon.\n\nI looked up at the old gates of the Montefalco estate. It had been years, but the shadow it cast still felt the same—heavy and permanent.\n\n"Entice," my mother’s voice came from inside the car, sharp and reminding. "Try to be on your best behavior. We aren't here for a vacation."\n\nI didn't answer. I couldn't. My eyes were fixed on the porch, where a figure stood watching us. Even from this distance, I knew the stance. I knew the way he crossed his arms over his chest, his presence commanding the space around him without saying a word.\n\nKnoxx Gideon Montefalco.\n\nThe last time I saw him, I was a girl who didn't know how to hide her feelings. Now, I was a woman who had learned to mask everything behind a polished smile and expensive clothes. But as our eyes met across the distance, that mask felt dangerously thin.\n\nHe didn't move to help with the bags. He didn't offer a welcoming smile. He just stood there, his dark eyes unreadable, reminding me exactly why I had spent so many years trying to stay away.\n\n"Welcome back," he said when I finally reached the steps. His voice was deeper than I remembered, a low rumble that sent a chill down my spine despite the afternoon heat.\n\n"I didn't think you'd be here, Knoxx," I replied, my voice steadier than I felt.\n\nA ghost of a smirk touched his lips, but it didn't reach his eyes. "This is my home, Entice. I’m always here. It’s you who keeps running."\n\nI gripped the strap of my bag until my knuckles turned white. I wasn't running anymore. But looking at him now, standing in the sunlight of the town that made him a king, I realized that staying might be the hardest thing I’d ever have to do.	2026-01-03 14:45:05.463406
7	9	2	The dinner table at the Montefalco house was an exercise in endurance. The clinking of silver against porcelain was the only thing filling the void where conversation should have been. My mother was busy charming Knoxx’s parents, weaving stories of our life in the city, but I could barely swallow.\n\nI felt his gaze before I saw it. Knoxx sat directly across from me, his presence like a dark cloud in the periphery of my vision. Every time I looked up, he was already there, watching me with a cold, analytical intensity that made me want to shrink into my seat.\n\n"You're not eating, Entice," Knoxx remarked, his voice cutting through my mother’s chatter.\n\nEveryone stopped talking. I forced a smile and picked up my fork. "Just not very hungry, Knoxx. The heat, I guess."\n\n"Or maybe you've just grown too used to city food," he countered. There was a bite to his words, a subtle reminder that he viewed me as an outsider now. "Alegria is too simple for you these days, isn't it?"\n\n"Knoxx, leave her alone," his mother said gently, but he didn't look away from me.\n\n"I'm just making conversation, Ma," he said, though his eyes told a different story. He leaned back, his shoulders broad against the mahogany chair. "I was just wondering how long she’s planning to stay before she finds a reason to leave again."\n\nThe air in the room felt thinner. I met his eyes, refusing to let him see me flinch. "I'm staying as long as I need to, Knoxx. You don't have to worry about me running."\n\n"I don't worry about you at all," he lied. The lie was so blatant it almost stung.\n\nAfter dinner, I sought refuge on the balcony, looking out over the dark expanse of the estate. The crickets were loud, a rhythmic pulsing in the night. I thought I was alone until the scent of expensive tobacco and something uniquely him drifted toward me.\n\n"The city didn't change you as much as you think," he said, leaning against the railing a few feet away. The orange glow of his cigarette lit the sharp angles of his face.\n\n"And you haven't changed at all," I whispered.\n\nHe took a slow drag, the smoke curling around him like a shroud. "That's where you're wrong, Entice. I've changed the most. I stopped waiting."\n\nHe stepped closer, the heat radiating off his body overshadowing the cool night breeze. For a second, I thought he might touch me, but he simply walked past, leaving me alone in the dark with the realization that the boy I once loved was gone, and the man who replaced him was far more dangerous.	2026-01-03 14:46:27.880428
\.


--
-- Data for Name: reading_streak; Type: TABLE DATA; Schema: public; Owner: Shane
--

COPY public.reading_streak (id, last_read_date, current_streak, longest_streak) FROM stdin;
1	2026-01-04	1	2
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: Shane
--

COPY public.stories (id, favorite, title, author, genre, date_started, date_completed, status, num_chapters, word_count, main_character, last_updated, preview, target_words, user_id) FROM stdin;
7	f	Under a Copper Sky		Adventure	2025-01-10	2025-06-15	Completed	0	0	Captain Silas Thorne	2025-12-18	In a city floating above a toxic wasteland, the engines are failing. A disgraced airship pilot is hired to find the "Primal Gear," a legendary power source. He soon discovers that the floating city was never meant to stay in the air, and some people will kill to keep it from landing.	0	\N
6	t	The Echo of the Ink		Mystery	2025-01-10	2025-06-15	Completed	0	0	Elara Vance	2025-12-18	A struggling archivist discovers a book that writes itself in real-time, detailing a murder that hasn't happened yet. As she tries to prevent the crime, she realizes the book is drawing ink from her own memories, slowly erasing her past to fuel the narrative.	0	\N
8	t	Baka Sakali	Jonaxx	Romance	2013-05-15	2013-12-15	Completed	1	76	Jacob/Roseanne	2025-12-18		0	6
5	f	The Shadow of the Wind	Carlos Ruiz Zafón	Mystery	2001-04-08	2005-04-26	Completed	1	140		\N	The story begins with ten-year-old Daniel Sempere, whose father—a widowed antiquarian bookseller—takes him to a secret sanctuary known as the Cemetery of Forgotten Books. There, Daniel is told to "adopt" one book. He chooses a rare novel titled The Shadow of the Wind by a mysterious author named Julián Carax.	1000	\N
9	f	Whipped	Jonaxx	Romance	\N	\N		2	803		2026-01-03	"Whipped" by Jonaxx follows the story of Entice Cassandra "Ice" Sanchez, a strong-willed and independent woman who finds herself entangled in a complicated relationship with Rage Joseff Del Fierro. The narrative explores the dynamics of their intense connection, characterized by a mix of deep affection and the challenges that come with their contrasting personalities and the expectations of their social circles. As Ice navigates her feelings, the story delves into themes of devotion and the lengths one is willing to go for love, often highlighting the "whipped" nature of Rage's feelings for her. Their journey is marked by emotional growth and the realization that true love requires both vulnerability and the strength to stand by one another despite the obstacles they face.	0	7
\.


--
-- Data for Name: story_streaks; Type: TABLE DATA; Schema: public; Owner: Shane
--

COPY public.story_streaks (story_id, last_read_date, current_streak, longest_streak) FROM stdin;
\.


--
-- Data for Name: user_streak; Type: TABLE DATA; Schema: public; Owner: Shane
--

COPY public.user_streak (user_id, last_read_date, current_streak, longest_streak) FROM stdin;
7	2026-01-03	1	1
1	2026-01-04	2	2
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Shane
--

COPY public.users (id, username, role, created_at, password, is_admin, longest_streak, last_read_date, current_streak) FROM stdin;
2	user	user	2025-12-18 14:55:18.30009	user123	f	0	\N	0
6	testuser	user	2025-12-18 17:39:41.104144	1234	f	0	\N	0
7	shane	user	2026-01-03 14:43:20.928372	shane123	f	0	\N	0
1	admin	admin	2025-12-15 15:04:16.049438	admin123	t	1	2026-01-07	1
8	Kenneth	user	2026-01-07 17:05:54.643669	Kenneth123	f	0	\N	0
9	Larah	user	2026-01-07 18:06:40.183661	Larah123	f	0	\N	0
10	Nathan	user	2026-01-07 18:07:11.504846	Nathan123	f	0	\N	0
11	MJ	user	2026-01-07 18:07:32.286362	MJ123	f	0	\N	0
12	Lyka	user	2026-01-07 18:08:04.559068	Lyka123	f	0	\N	0
13	Jadea	user	2026-01-07 18:08:23.817821	Jadea123	f	0	\N	0
\.


--
-- Name: chapters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Shane
--

SELECT pg_catalog.setval('public.chapters_id_seq', 7, true);


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Shane
--

SELECT pg_catalog.setval('public.stories_id_seq', 9, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Shane
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: chapters chapters_pkey; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.chapters
    ADD CONSTRAINT chapters_pkey PRIMARY KEY (id);


--
-- Name: reading_streak reading_streak_pkey; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.reading_streak
    ADD CONSTRAINT reading_streak_pkey PRIMARY KEY (id);


--
-- Name: stories stories_pkey; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: story_streaks story_streaks_pkey; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.story_streaks
    ADD CONSTRAINT story_streaks_pkey PRIMARY KEY (story_id);


--
-- Name: user_streak user_streak_pkey; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.user_streak
    ADD CONSTRAINT user_streak_pkey PRIMARY KEY (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: chapters chapters_story_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.chapters
    ADD CONSTRAINT chapters_story_id_fkey FOREIGN KEY (story_id) REFERENCES public.stories(id) ON DELETE CASCADE;


--
-- Name: stories stories_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: story_streaks story_streaks_story_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.story_streaks
    ADD CONSTRAINT story_streaks_story_id_fkey FOREIGN KEY (story_id) REFERENCES public.stories(id) ON DELETE CASCADE;


--
-- Name: user_streak user_streak_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Shane
--

ALTER TABLE ONLY public.user_streak
    ADD CONSTRAINT user_streak_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict I5003rgaZxHcbTJ3hZGaov4PwkeEighmVFtEjGtK5XsUH5uw0skoTRA3OM5qVTu

