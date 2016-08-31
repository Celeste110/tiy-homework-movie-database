--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: character; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE "character" (
    character_id integer NOT NULL,
    character_name character varying(40),
    person_id integer,
    movie_id integer
);


ALTER TABLE "character" OWNER TO katherine_celeste;

--
-- Name: character_character_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE character_character_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE character_character_id_seq OWNER TO katherine_celeste;

--
-- Name: character_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE character_character_id_seq OWNED BY "character".character_id;


--
-- Name: country_list; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE country_list (
    country_id integer NOT NULL,
    country_name character varying(20)
);


ALTER TABLE country_list OWNER TO katherine_celeste;

--
-- Name: country_list_country_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE country_list_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE country_list_country_id_seq OWNER TO katherine_celeste;

--
-- Name: country_list_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE country_list_country_id_seq OWNED BY country_list.country_id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE genre (
    genre_id integer NOT NULL,
    genre_name character varying(20)
);


ALTER TABLE genre OWNER TO katherine_celeste;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_genre_id_seq OWNER TO katherine_celeste;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE genre_genre_id_seq OWNED BY genre.genre_id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE movie (
    movie_id integer NOT NULL,
    title character varying(40),
    release_date date,
    rating character varying(5),
    description character varying(1000)
);


ALTER TABLE movie OWNER TO katherine_celeste;

--
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE movie_genre (
    movie_genre_id integer NOT NULL,
    genre_id integer,
    movie_id integer
);


ALTER TABLE movie_genre OWNER TO katherine_celeste;

--
-- Name: movie_genre_movie_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE movie_genre_movie_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_genre_movie_genre_id_seq OWNER TO katherine_celeste;

--
-- Name: movie_genre_movie_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE movie_genre_movie_genre_id_seq OWNED BY movie_genre.movie_genre_id;


--
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE movie_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_movie_id_seq OWNER TO katherine_celeste;

--
-- Name: movie_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE movie_movie_id_seq OWNED BY movie.movie_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE person (
    person_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(20) NOT NULL,
    alternate_name character varying(40),
    birthdate date
);


ALTER TABLE person OWNER TO katherine_celeste;

--
-- Name: person_movie_role; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE person_movie_role (
    movie_person_id integer NOT NULL,
    person_id integer,
    movie_id integer,
    role_id integer
);


ALTER TABLE person_movie_role OWNER TO katherine_celeste;

--
-- Name: person_movie_role_movie_person_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE person_movie_role_movie_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_movie_role_movie_person_id_seq OWNER TO katherine_celeste;

--
-- Name: person_movie_role_movie_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE person_movie_role_movie_person_id_seq OWNED BY person_movie_role.movie_person_id;


--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_person_id_seq OWNER TO katherine_celeste;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE person_person_id_seq OWNED BY person.person_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE reviews (
    review_id integer NOT NULL,
    review character varying(3000),
    author character varying(20),
    date date,
    movie_id integer,
    country_id integer
);


ALTER TABLE reviews OWNER TO katherine_celeste;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE reviews_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reviews_review_id_seq OWNER TO katherine_celeste;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE reviews_review_id_seq OWNED BY reviews.review_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: katherine_celeste
--

CREATE TABLE role (
    role_id integer NOT NULL,
    role_name character varying(20)
);


ALTER TABLE role OWNER TO katherine_celeste;

--
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: katherine_celeste
--

CREATE SEQUENCE role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_role_id_seq OWNER TO katherine_celeste;

--
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: katherine_celeste
--

ALTER SEQUENCE role_role_id_seq OWNED BY role.role_id;


--
-- Name: character_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY "character" ALTER COLUMN character_id SET DEFAULT nextval('character_character_id_seq'::regclass);


--
-- Name: country_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY country_list ALTER COLUMN country_id SET DEFAULT nextval('country_list_country_id_seq'::regclass);


--
-- Name: genre_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY genre ALTER COLUMN genre_id SET DEFAULT nextval('genre_genre_id_seq'::regclass);


--
-- Name: movie_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY movie ALTER COLUMN movie_id SET DEFAULT nextval('movie_movie_id_seq'::regclass);


--
-- Name: movie_genre_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY movie_genre ALTER COLUMN movie_genre_id SET DEFAULT nextval('movie_genre_movie_genre_id_seq'::regclass);


--
-- Name: person_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person ALTER COLUMN person_id SET DEFAULT nextval('person_person_id_seq'::regclass);


--
-- Name: movie_person_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person_movie_role ALTER COLUMN movie_person_id SET DEFAULT nextval('person_movie_role_movie_person_id_seq'::regclass);


--
-- Name: review_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY reviews ALTER COLUMN review_id SET DEFAULT nextval('reviews_review_id_seq'::regclass);


--
-- Name: role_id; Type: DEFAULT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY role ALTER COLUMN role_id SET DEFAULT nextval('role_role_id_seq'::regclass);


--
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY "character" (character_id, character_name, person_id, movie_id) FROM stdin;
1	Marty McFly	1	1
2	Bruce Wayne	2	2
3	Amélie Poulain	3	3
5	Antonio Salieri	4	4
6	Evey	5	5
7	The Bride	6	6
8	Vernita Green	7	7
9	Frankie Dunn	8	8
10	Paul Rusesabagina	9	9
11	James P. Sullivan	10	10
\.


--
-- Name: character_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('character_character_id_seq', 11, true);


--
-- Data for Name: country_list; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY country_list (country_id, country_name) FROM stdin;
1	USA
2	Canada
3	UK
4	China
5	Sweeden
6	Italy
7	Spain
8	Austrailia
9	Mexico
10	Japan
\.


--
-- Name: country_list_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('country_list_country_id_seq', 10, true);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY genre (genre_id, genre_name) FROM stdin;
1	Action
2	Adventure\n\n\n\n\n\n\n\n
3	Animation
4	Biography
5	Comedy
6	Crime
7	Documentary
8	Drama
9	Family
10	Fantasy
11	Film-Noir
12	History
13	Horror
14	Music
15	Musical
16	Mystery
17	Romance
18	Sci-Fi
19	Sport
20	Thriller
21	War
22	Western
\.


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('genre_genre_id_seq', 22, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY movie (movie_id, title, release_date, rating, description) FROM stdin;
1	Back to the Future	2016-07-03	PG	Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.
2	The Dark Knight Rises	2012-07-20	PG-13	Eight years after the Joker's reign of anarchy, the Dark Knight, with the help of the enigmatic Catwoman, is forced from his imposed exile to save Gotham City, now on the edge of total annihilation, from the brutal guerrilla terrorist Bane.
3	Amélie	2002-02-08	R	Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.
4	Amadeus	1985-04-05	R	The incredible story of Wolfgang Amadeus Mozart, told by his peer and secret rival Antonio Salieri - now confined to an insane asylum.
5	V for Vendetta	2006-03-17	R	In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.
6	Kill Bill: Vol. 1	2003-10-10	R	The Bride wakens from a four-year coma. The child she carried in her womb is gone. Now she must wreak vengeance on the team of assassins who betrayed her - a team she was once part of.
7	Kill Bill: Vol. 2	2004-04-16	R	The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd and the treacherous, one-eyed Elle.
8	Million Dollar Baby	2005-01-28	PG-13	A determined woman works with a hardened boxing trainer to become a professional.
9	Hotel Rwanda	2005-02-04	PG-13	Paul Rusesabagina was a hotel manager who housed over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda.
10	Monsters, Inc	2001-11-02	G	In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, two monsters realize things may not be what they think.
\.


--
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY movie_genre (movie_genre_id, genre_id, movie_id) FROM stdin;
1	1	1
2	5	1
3	18	1
4	1	2
5	20	2
6	5	3
7	17	3
8	8	4
9	4	4
10	12	4
11	1	5
12	8	5
13	20	5
14	1	6
15	6	6
16	20	6
17	1	7
18	6	7
19	8	7
20	8	8
21	19	8
22	8	9
23	12	9
24	21	9
25	3	10
26	2	10
27	5	10
\.


--
-- Name: movie_genre_movie_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('movie_genre_movie_genre_id_seq', 27, true);


--
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('movie_movie_id_seq', 10, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY person (person_id, first_name, last_name, alternate_name, birthdate) FROM stdin;
1	Michael	Fox	Mike	2016-06-09
2	Christian	Bale	\N	1974-01-30
3	Audrey	Tautou	\N	1976-08-09
4	F.	Abraham	\N	1939-10-24
5	Natalie	Portman	\N	1981-06-09
6	Uma	Thurman	U	1970-04-29
7	Vivica	Fox	Angie	1964-07-30
8	Clint	Eastwood	\N	1930-05-31
9	Don	Cheadle	\N	1964-11-29
10	John 	Goodman	Karl Mundt	1952-06-20
\.


--
-- Data for Name: person_movie_role; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY person_movie_role (movie_person_id, person_id, movie_id, role_id) FROM stdin;
1	1	1	1
2	2	2	1
3	3	3	1
4	4	4	1
5	5	5	1
6	6	6	1
7	7	7	1
8	8	8	1
9	8	8	2
10	9	9	1
11	10	10	1
\.


--
-- Name: person_movie_role_movie_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('person_movie_role_movie_person_id_seq', 11, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('person_person_id_seq', 10, true);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY reviews (review_id, review, author, date, movie_id, country_id) FROM stdin;
2	Not being a huge fan of superhero movies, I didn't have much expectations for Batman Begins. However viewing the 2005 Christopher Nolan production, I was pleasantly shocked. Then after my huge expectations for, "The Dark Knight", Christopher Nolan blew my expectations to the dust. Will the same happen with the 3rd and last film, "The Dark Knight Rises"? Quite simply, Yes! My big expectations were once again, blown away. What a production! This is a true cinematic experience, to behold. The movie exceeded my expectations in terms of action, and entertainment. The editing, sound, score, visuals, direction and action are all top notch. \n\nThe film contains a fine cast of talented actors. Christian Bale, of course still makes is a great Batman. Michael Cain is fantastic, as he always is. He gives such a powerful performance, he really ought to be considered for an Oscar nomination. Tom Hardy as Bane is utterly terrifying, at times, and completely ominous. Anne Hathaway as Catwoman/Selina Kyle is a scene stealer. She is completely engrossing. Everyone is so great, the dynamic scenes between the actors are so well done, so well written, and so well directed. The Dark Knight Rises is is emotionally riveting and amazing to view.\n\nAt a running time of almost 3 hours, the film never becomes dull, which is pretty impressive. The movie's action sequences are spectacularly well created and very intense. The dialogue between the character's are intelligent and highly believable. The movie's soundtrack is terrific and really exemplify's many of the movie's scenes. Extremely well editing and sound use really develop many of the movie's action scenes, so it's not just explosions and visuals like in many other movies. Nolan creates a grand, dirty, engrossing world, and his action sequences just hum. \n\nIn conclusion, this film is a gorgeous reminder that great writing and direction can enhance any movie-going experience, even superhero movies, which are usually thought of as mindless entertainment. I am wholly satisfied with Christopher Nolan's vision and thank all who worked on this film for bringing such an intricate interpretation of its very famous literary source. I cannot recommend this film anymore than I have, I just have to say everyone and anyone should see it. 10/10"	John	2012-07-16	2	1
3	A slice of heaven right here on earth, "Amelie" is a joy to behold, and has some of the most gorgeous cinematography I've ever seen in a movie.\n\nAudrey Tatou is perfection as the title character. A combination of Audrey Hepburn, Dolly Levi and Roger Rabbit, she involves herself in the world surrounding her as a means of really enjoying living. There are moments when she finds complete and total joy just walking down the street. \n\nSome of it is hilarious, too..like when her pet goldfish habitually tries to commit suicide, or when she is on the telephone with the man at the porno shop, or when a character is asked "Are you a congenital shmuck"?\n\nBut for the most part, its a human comedy, about love, of course.\n\nJust beautiful. 10/10.	Boyo-2	2003-03-01	3	\N
4	The unseen star of this film is the Academy of St Martin's in the Field, London. Buy the soundtrack and you will be rewarded with some of the most stunning music you can hear. Mozart's music excells with brilliant treatment and dies with a bad performance. And that, after all, is what the film is about. Without his music, Mozart would be lost in time, a fate that the narrator of the story, the composer Salieri, saw as his own. Ironically, while Salieri has indeed been completely overshadowed by Mozart, his music still survives and has its followers.\n\nBut beyond the music this is an outstanding film. Set in the prettiest and most flamboyant century of the last millennium, it is visually stunning and the writer's portrayal of jealousy is perceptive. The casting of the Austrian King and courtiers, (indeed all the actors in this film) that Mozart needed to impress capture the gentility and courtesy of the time, and also subtly shows their growing indignation and impatience at Mozart's personality and behaviour; the presentation of Mozart as punk musician is probably the only failing in the film. As a theatrical device to show that genius can come in disastrous packages it succeeds well, but anyone with any historic sense of social ettiquette or manners will know that Mozart's sill y behaviour would be well wide of the truth, as might, perhaps, be the concept of Salieri as murderer-in-chief. Only in the final scenes is Mozart's brilliance as a composer truly explored in what amounts to a deconstruction of his final composition - his moving, uncompleted and poignant Requiem mass.\n\nAnother unintended star in this film are the candle lit sets and theatres of the 18th Century; their operas and drama ooze a magic that is lacking in the present world and which modern producers might well try to reintroduce; so lovely are these buildings with their flickering lights and theatrical techniques that one is left desperate to to seek out these rare theatres to experience them.\n\nThis film leaves one breathless from its visual beauty, its magnificent score and the choreography, indeed, of the two together. Mozart's life had the air of tragedy, and his undoubted genius speaks to us now and forever. This film is a monument to the skills of the writer, maker, performers and, of course, Mozart's music. If you have not yet done so, see it.	DRIANCLARK	2002-04-01	4	3
1	Back To The Future (1985) is my all time favourite movie. It's a thoroughly feel good film, accessible to all ages and enjoyable from the 1st to the 45th time of watching and never fails to bring a smile. Humour for all ages and a kick-ass car to boot, what more could a young kid want? Or those young at heart?\n\nFrom Marty's "Johnny B Goode" to Doc's classic "Run For It Marty!" You'll find that even though you know what's coming next, you'll still laugh. It is the ultimate feel good movie, the weed overcomes the bully, the dreamers wishes come true and all because a nosey old bird thrusts for a nickel "Save The Clock Tower!"\n\nIt's popularity spawned 2 sequels and although it got decreasingly good in terms of quality as a film, Back To The Future remains the best film in my repetoire and a safe bet when you need to feel good.\n\nIt gets a solid 9 out of 10, comedy, fantasy, the gorgeous Lea Thompson, the insane but comic Doc and the typical teenager Marty make this film a must for all young at heart.\n\n	James	2001-02-08	1	4
5	I am speechless. I just came back from the theatre, where I watched 'V for Vendetta'. There are three main elements in the movie and it excels on all three of them.\n\nFirst off the dialogues and script. Intense, witty, honest but not patronising, intelligent but not pretentious. That's the first level at which the movie surprises you. You don't except such high level of script from an action movie. But it is slowly revealed to the audience that V for Vendetta is not just an action movie. The story is filled with current events and has a definite strong political sense.\n\nSecondly Hugo Weaving's performance. It is definitely what grabs you from the start. He delivers some of the hardest lines with incredible charisma. His performance shines throughout the movie and honestly he sounds as good as any of the best actors out there. He should be nominated for an academy award.\n\nFinally the visual part. Incredible, yet no "Matrix" effects used. Everything looks beautiful, dark yet vibrant. The cinematography is top notch. The final battle scene brought tears to my eyes.\n\nDo not miss 'V for Vendetta'. It's one of the best movies of all time, an eternal classic.\n	Tasos Tz.	2006-03-19	5	3
6	A lot of people have come up to me and said "How can you love Quentin that much, he is just too extreme!" or "Oh come on, Kill Bill is just SO not realistic.." Yes. No.\n\nMr. Quentin Tarantino is rather extreme, yes, and it's lovely! And No. Kill Bill is not realistic, but it's not meant to be realistic! Just like... Lord of the Rings, that's not realistic either! But because it has clear unreal elements, like wizards, it's acceptable?\n\nYou don't go to see Kill Bill, or any other Q.T-film to see "Stepmom", in the same way you don't go to a Marilyn Manson concert hoping that they will play some Spice Girls..\n\nKill Bill, both volume 1 and 2, is absolutely gorgeous! The art direction is beautiful! The camera angles are perfect... just Gorgeous! The lighting, the sound, the dialogs... and of course, the details! No one works with small details the way Quentin does. I must also say that the soundtrack is brilliant and the whole film is just so well casted! Uma Thurman is perfect in the leading role, Darryl Hannah has never been this good before, ever! And Chiaki Kuriyama, even though she has a quite small role, is excellent, even better than she is in "Battle Royale". David Carradine is painfully perfect, Michael Madsen is ALWAYS excellent, but never as good as when he works with Tarantino. I must also say that Sonny Chiba was great. I've never been a big fan of Vivica A Fox until now, and I used to think that Lucy Liu was just your average actor but she turned out to be fierce. Pretty much everyone who is in this film is ten times better than they've ever been.\n\nBut above all things, Kill Bill is artistic, beautiful... Perfect colors, perfect everything... gotta love it.	Emma	2005-03-01	6	5
7	When I first heard that this film was going to be split into two movies instead of being presented as one as originally planned, I was angry. I accused the powers that be of trying to squeeze two box office triumphs out of a single project. But after having seen both 'Kill Bill' and 'Kill Bill Vol.2', I am glad because both films are extremely different even though the stories are tied together with primarily the same actors and having the same director. Containing less action than 'Kill Bill', volume 2 is intelligent, bizarre and extremely engrossing. It absorbs all of its elements equally and David Carradine's performance as Bill is the best thing to happen in movie villain history since, well, I'll leave that up to individual interpretation.	Walter Frith	2005-01-20	7	2
8	Million Dollar Baby is a movie about boxing like Braveheart is a movie about men in kilts riding horses. What it is is a movie to experience if you find yourself ever entertaining thoughts about loyalty, determination, talent, no talent, age, youth, courage, fear, fate, and the pain and joy of both living and dying.\n\nI read reviews of Million Dollar Baby and expected to like it. Roger Ebert can be soft on movies because he is plainly a big fan, but even he does not lightly toss around the M-word, masterpiece. Yet he drops it on MDB, and justly so. The story is simple and searing. A gal (Hilary Swank) with much heart and no experience aspires to be the champion of the world. She is Rocky in a sports bra. A grizzled fight trainer-manager/gym owner (Clint Eastwood) reluctantly takes her on. His best pal and wise-man assistant (Morgan Freemna) stands alongside them, as the plot unwinds steadily, seamlessly, picking up speed, scene by scene, act after act. Eastwood and Freeman are artists at the top of their profession and they, along with the brilliant Swank, present you the very worthy lives of three people you will care about and remember. The arena is boxing, but it might as well have been boating or baking. It is a story about values and truths that far exceed sports and movies. I walked into the Lowes Lincoln Square theater last night knowing Million Dollar Baby was taking me on a ride and willing to hop aboard. What a beautiful, memorable ride it was.\n\n	delcash006	2004-12-20	8	1
9	Anything I say in this review is probably redundant, because there isn't a single negative review in all the comments so far here, and I agree wholeheartedly with what has been said by other reviewers.\n\nNevertheless Hotel Rwanda is that rare kind of movie experience that doesn't easily relinquish its hold on the audience just because the credits have rolled. Watching with a friend, after ten minutes we had to pause the film because we decided we would be better served if we were more informed about what the basic facts of the conflict in Rwanda were. So to my shame, we had to read on the internet about what really happened, before we could continue. I say shame because we should have known, both of us were of an age when it happened to have taken more of an interest in world politics.\n\nThe film is beautifully understated, eschewing sentimentality in favour of raw emotion and letting the story tell itself. The acting was flawless - Don Cheadle's breathtaking performance being a particular standout - and the direction didn't falter, despite all the potential pitfalls of dramatising a recent and horrific conflict. The scenes which were hardest to watch in terms of tension and violence were often suffused with humour and hope.\n\nIt's difficult sometimes to separate the significance of the true story, from the artistry of the product, and often I get impatient with 'worthy' movies scoring big at Oscar time because it seems as though important stories ought to be rewarded, whether or not they make good films. However, I can't recall being so profoundly moved by a film since I saw The Grey Zone, and I hope Hotel Rwanda gets all the plaudits it deserves.	larajane	2004-12-19	9	3
10	Pixar is the best! Of them all, Monsters, Inc. takes the cake. The realism of the characters' movements & feelings is perfect. The ending is a tear jerker on a happy note. At first I was concerned with the plot of monsters scaring children with a "business as usual" attitude, but right away you discover that the monsters are as terrified of the kids as the kids are of monsters.... wonderful juxtaposition throughout the film... a totally enjoyable, feel-good story. Buy it for the kids and let them watch it over and over. (adults may want to sit-in on more than one occasion themselves). Personal Note: For me, a mystery about this film was "Roz"; the voice reminded me so strongly of the grandmother in "Dinosaurs", and I thought the character drawing was similar as well; upon researching the two, I found they are definitely different actors.	Kat Grant	2005-01-16	10	1
\.


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('reviews_review_id_seq', 10, true);


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: katherine_celeste
--

COPY role (role_id, role_name) FROM stdin;
1	actor
2	director
3	writer
4	producer
5	production assistant
6	key grip
7	prop master
8	line producer
9	boom operator
10	stunt coordinator
\.


--
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: katherine_celeste
--

SELECT pg_catalog.setval('role_role_id_seq', 10, true);


--
-- Name: character_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY "character"
    ADD CONSTRAINT character_pkey PRIMARY KEY (character_id);


--
-- Name: country_list_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY country_list
    ADD CONSTRAINT country_list_pkey PRIMARY KEY (country_id);


--
-- Name: genre_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: movie_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_pkey PRIMARY KEY (movie_genre_id);


--
-- Name: movie_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);


--
-- Name: person_movie_role_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person_movie_role
    ADD CONSTRAINT person_movie_role_pkey PRIMARY KEY (movie_person_id);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: role_pkey; Type: CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- Name: Country_List_country_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX "Country_List_country_id_uindex" ON country_list USING btree (country_id);


--
-- Name: Genre_genre_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX "Genre_genre_id_uindex" ON genre USING btree (genre_id);


--
-- Name: Movie_movie_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX "Movie_movie_id_uindex" ON movie USING btree (movie_id);


--
-- Name: Movie_title_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX "Movie_title_uindex" ON movie USING btree (title);


--
-- Name: Person_person_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX "Person_person_id_uindex" ON person USING btree (person_id);


--
-- Name: character_character_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX character_character_id_uindex ON "character" USING btree (character_id);


--
-- Name: movie_genre_movie_genre_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX movie_genre_movie_genre_id_uindex ON movie_genre USING btree (movie_genre_id);


--
-- Name: person_movie_role_movie_person_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX person_movie_role_movie_person_id_uindex ON person_movie_role USING btree (movie_person_id);


--
-- Name: reviews_review_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX reviews_review_id_uindex ON reviews USING btree (review_id);


--
-- Name: role_role_id_uindex; Type: INDEX; Schema: public; Owner: katherine_celeste
--

CREATE UNIQUE INDEX role_role_id_uindex ON role USING btree (role_id);


--
-- Name: character_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY "character"
    ADD CONSTRAINT character_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: character_person_person_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY "character"
    ADD CONSTRAINT character_person_person_id_fk FOREIGN KEY (person_id) REFERENCES person(person_id);


--
-- Name: movie_genre_genre_genre_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_genre_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genre(genre_id);


--
-- Name: movie_genre_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: person_movie_role_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person_movie_role
    ADD CONSTRAINT person_movie_role_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: person_movie_role_person_person_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person_movie_role
    ADD CONSTRAINT person_movie_role_person_person_id_fk FOREIGN KEY (person_id) REFERENCES person(person_id);


--
-- Name: person_movie_role_role_role_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY person_movie_role
    ADD CONSTRAINT person_movie_role_role_role_id_fk FOREIGN KEY (role_id) REFERENCES role(role_id);


--
-- Name: reviews_country_list_country_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_country_list_country_id_fk FOREIGN KEY (country_id) REFERENCES country_list(country_id);


--
-- Name: reviews_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: katherine_celeste
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

