INSERT INTO movie (id, title, poster, description, duration, director, release_year)
VALUES (RANDOM_UUID(), 'Incendies',
        'https://a.ltrbxd.com/resized/film-poster/1/8/6/2/7/18627-incendies-0-230-0-345-crop.jpg?v=428c0056f4',
        'A mother’s last wishes send twins Jeanne and Simon on a journey to Middle East in search of their tangled roots...',
        '2h 11m', 'Denis Villenueve', '2010'),

       (RANDOM_UUID(), 'Autumn Sonata',
        'https://a.ltrbxd.com/resized/sm/upload/dr/d3/nw/gv/m4I32itPMlRWqWJamFAwFDbrBXp-0-230-0-345-crop.jpg?v=45433653ca',
        'After a seven-year absence, Charlotte Andergast travels to Sweden to reunite with her daughter Eva...',
        '1h 33m', 'Ingmar Bergman', '1978'),

       (RANDOM_UUID(), 'The Good, the Bad and the Ugly',
        'https://a.ltrbxd.com/resized/film-poster/5/1/6/6/6/51666-the-good-the-bad-and-the-ugly-0-230-0-345-crop.jpg?v=9474a84e63',
        'While the Civil War rages on between the Union and the Confederacy...',
        '2h 41m', 'Sergio Leone', '1966'),

       (RANDOM_UUID(), 'For Love and Gold',
        'https://a.ltrbxd.com/resized/film-poster/3/7/1/7/8/37178-for-love-and-gold-0-230-0-345-crop.jpg?v=7fe44f1e00',
        'A group of rogues steal a scroll granting its bearer the property of the land of Aurocastro...',
        '2h', 'Mario Monicelli', '1966'),

       (RANDOM_UUID(), 'Kapò',
        'https://a.ltrbxd.com/resized/film-poster/1/9/4/0/6/19406-kapo-0-230-0-345-crop.jpg?v=050f854a5a',
        'Determined to survive at any price, Edith, a young Jewish woman deported to an extermination camp...',
        '1h 57m', 'Gillo Pontecorvo', '1960'),

       (RANDOM_UUID(), 'Rocco and His Brothers',
        'https://a.ltrbxd.com/resized/film-poster/4/7/7/3/8/47738-rocco-and-his-brothers-0-230-0-345-crop.jpg?v=50b0fb7b37',
        'When a impoverished widow’s family moves to the big city...',
        '2h 58m', 'Luchino Visconti', '1960'),

       (RANDOM_UUID(), '12 Angry Men',
        'https://a.ltrbxd.com/resized/film-poster/5/1/7/0/0/51700-12-angry-men-0-230-0-345-crop.jpg?v=b8aaf291a9',
        'The defense and the prosecution have rested and the jury is filing into the jury room...',
        '1h 37m', 'Sydney Lumet', '1957'),

       (RANDOM_UUID(), 'Rear Window',
        'https://a.ltrbxd.com/resized/film-poster/5/1/5/5/2/51552-rear-window-0-230-0-345-crop.jpg?v=855a2e3070',
        'A wheelchair-bound photographer spies on his neighbors from his apartment window...',
        '1h 52m', 'Alfred Hitchcock', '1954'),

       (RANDOM_UUID(), 'Chinatown',
        'https://a.ltrbxd.com/resized/film-poster/5/1/3/2/3/51323-chinatown-0-230-0-345-crop.jpg?v=b8e65cb89f',
        'Private eye Jake Gittes lives off of the murky moral climate of sunbaked, pre-World War II Southern California...',
        '2h 10m', 'Roman Polanski', '1974'),

       (RANDOM_UUID(), 'Investigation of a Citizen Above Suspicion',
        'https://a.ltrbxd.com/resized/film-poster/3/5/3/1/5/35315-investigation-of-a-citizen-above-suspicion-0-230-0-345-crop.jpg?v=76a4eb9cdf',
        'Rome, Italy. After committing a heinous crime, a senior police officer exposes evidence incriminating him...',
        '1h 51m', 'Elio Petri', '1970'),

       -- aggiungo anche i film della history non presenti nei moviesSchedule
       (RANDOM_UUID(), 'The Godfather', NULL, 'Classic mafia family saga', '2h 55m', 'Francis Ford Coppola', '1972'),
       (RANDOM_UUID(), 'Pulp Fiction', NULL, 'Tarantino crime classic', '2h 34m', 'Quentin Tarantino', '1994'),
       (RANDOM_UUID(), 'Casablanca', NULL, 'Romantic drama in WWII', '1h 42m', 'Michael Curtiz', '1942'),
       (RANDOM_UUID(), 'The Shawshank Redemption', NULL, 'Hope in prison drama', '2h 22m', 'Frank Darabont', '1994'),
       (RANDOM_UUID(), 'Fight Club', NULL, 'Cult story about identity', '2h 19m', 'David Fincher', '1999'),
       (RANDOM_UUID(), 'Goodfellas', NULL, 'Rise and fall of a mobster', '2h 26m', 'Martin Scorsese', '1990'),
       (RANDOM_UUID(), 'Parasite', NULL, 'Social satire and thriller', '2h 12m', 'Bong Joon-ho', '2019'),
       (RANDOM_UUID(), 'Spirited Away', NULL, 'Fantasy anime masterpiece', '2h 5m', 'Hayao Miyazaki', '2001'),
       (RANDOM_UUID(), 'La Dolce Vita', NULL, 'Fellini’s take on Rome decadence', '2h 54m', 'Federico Fellini', '1960'),
       (RANDOM_UUID(), 'Amélie', NULL, 'Whimsical story in Paris', '2h 2m', 'Jean-Pierre Jeunet', '2001'),
       (RANDOM_UUID(), 'City of God', NULL, 'Brazilian crime epic', '2h 10m', 'Fernando Meirelles', '2002'),
       (RANDOM_UUID(), 'The Pianist', NULL, 'Survival of a pianist in WWII', '2h 30m', 'Roman Polanski', '2002'),
       (RANDOM_UUID(), 'Whiplash', NULL, 'Student pushed to limits in jazz', '1h 47m', 'Damien Chazelle', '2014'),
       (RANDOM_UUID(), 'The Dark Knight', NULL, 'Batman vs Joker', '2h 32m', 'Christopher Nolan', '2008'),
       (RANDOM_UUID(), 'Inception', NULL, 'Dream within a dream', '2h 28m', 'Christopher Nolan', '2010'),
       (RANDOM_UUID(), 'Seven Samurai', NULL, 'Samurai protect a village', '3h 27m', 'Akira Kurosawa', '1954'),
       (RANDOM_UUID(), 'The Silence of the Lambs', NULL, 'Hannibal Lecter thriller', '1h 58m', 'Jonathan Demme',
        '1991'),
       (RANDOM_UUID(), 'The Great Dictator', NULL, 'Chaplin satire of Hitler', '2h 5m', 'Charlie Chaplin', '1940'),
       (RANDOM_UUID(), 'Taxi Driver', NULL, 'Vietnam vet spirals in NYC', '1h 54m', 'Martin Scorsese', '1976'),
       (RANDOM_UUID(), 'The Lives of Others', NULL, 'Stasi surveillance drama', '2h 17m',
        'Florian Henckel von Donnersmarck', '2006');


INSERT INTO schedule (id, theatre, from_date, to_date, movie_id)
VALUES (RANDOM_UUID(), '1', '2025-01-01', '2025-01-01',
        (SELECT id FROM movie WHERE title = 'Incendies')),

       (RANDOM_UUID(), '2', '2025-01-01', '2025-01-01',
        (SELECT id FROM movie WHERE title = 'Autumn Sonata')),

       (RANDOM_UUID(), '3', '2025-01-02', '2025-01-02',
        (SELECT id FROM movie WHERE title = 'The Good, the Bad and the Ugly')),

       (RANDOM_UUID(), '4', '2025-01-02', '2025-01-02',
        (SELECT id FROM movie WHERE title = 'For Love and Gold')),

       (RANDOM_UUID(), '5', '2025-01-03', '2025-01-03',
        (SELECT id FROM movie WHERE title = 'Kapò')),

       (RANDOM_UUID(), '6', '2025-01-03', '2025-01-03',
        (SELECT id FROM movie WHERE title = 'Rocco and His Brothers')),

       (RANDOM_UUID(), '7', '2025-01-04', '2025-01-04',
        (SELECT id FROM movie WHERE title = '12 Angry Men')),

       (RANDOM_UUID(), '8', '2025-01-04', '2025-01-04',
        (SELECT id FROM movie WHERE title = 'Rear Window')),

       (RANDOM_UUID(), '9', '2025-01-05', '2025-01-05',
        (SELECT id FROM movie WHERE title = 'Chinatown')),

       (RANDOM_UUID(), '10', '2025-01-05', '2025-01-05',
        (SELECT id FROM movie WHERE title = 'Investigation of a Citizen Above Suspicion')),

       (RANDOM_UUID(), '1', '2025-01-06', '2025-01-06',
        (SELECT id FROM movie WHERE title = 'The Godfather')),

       (RANDOM_UUID(), '2', '2025-01-06', '2025-01-06',
        (SELECT id FROM movie WHERE title = 'Pulp Fiction')),

       (RANDOM_UUID(), '3', '2025-01-07', '2025-01-07',
        (SELECT id FROM movie WHERE title = 'Casablanca')),

       (RANDOM_UUID(), '4', '2025-01-07', '2025-01-07',
        (SELECT id FROM movie WHERE title = 'The Shawshank Redemption')),

       (RANDOM_UUID(), '5', '2025-01-08', '2025-01-08',
        (SELECT id FROM movie WHERE title = 'Fight Club')),

       (RANDOM_UUID(), '6', '2025-01-08', '2025-01-08',
        (SELECT id FROM movie WHERE title = 'Goodfellas')),

       (RANDOM_UUID(), '7', '2025-01-09', '2025-01-09',
        (SELECT id FROM movie WHERE title = 'Parasite')),

       (RANDOM_UUID(), '8', '2025-01-09', '2025-01-09',
        (SELECT id FROM movie WHERE title = 'Spirited Away')),

       (RANDOM_UUID(), '9', '2025-01-10', '2025-01-10',
        (SELECT id FROM movie WHERE title = 'La Dolce Vita')),

       (RANDOM_UUID(), '10', '2025-01-10', '2025-01-10',
        (SELECT id FROM movie WHERE title = 'Amélie')),

       (RANDOM_UUID(), '11', '2025-01-11', '2025-01-11',
        (SELECT id FROM movie WHERE title = 'City of God')),

       (RANDOM_UUID(), '12', '2025-01-11', '2025-01-25',
        (SELECT id FROM movie WHERE title = 'The Pianist')),

       (RANDOM_UUID(), '1', '2025-01-12', '2025-01-12',
        (SELECT id FROM movie WHERE title = 'Whiplash')),

       (RANDOM_UUID(), '2', '2025-01-12', '2025-01-12',
        (SELECT id FROM movie WHERE title = 'The Dark Knight')),

       (RANDOM_UUID(), '3', '2025-01-13', '2025-01-13',
        (SELECT id FROM movie WHERE title = 'Inception')),

       (RANDOM_UUID(), '4', '2025-01-13', '2025-01-13',
        (SELECT id FROM movie WHERE title = 'Seven Samurai')),

       (RANDOM_UUID(), '5', '2025-01-14', '2025-01-14',
        (SELECT id FROM movie WHERE title = 'The Silence of the Lambs')),

       (RANDOM_UUID(), '6', '2025-01-14', '2025-01-14',
        (SELECT id FROM movie WHERE title = 'The Great Dictator')),

       (RANDOM_UUID(), '7', '2025-01-15', '2025-01-15',
        (SELECT id FROM movie WHERE title = 'Taxi Driver')),

       (RANDOM_UUID(), '8', '2025-01-15', '2025-01-15',
        (SELECT id FROM movie WHERE title = 'The Lives of Others'));
