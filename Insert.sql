INSERT INTO Genres(name) 
VALUES
('Rock'),
('Pop'),
('Jazz');

INSERT INTO Executors(name) 
VALUES
('Queen'),
('Michael Jackson'),
('Miles Davis'),
('Nirvana');

INSERT INTO GenresExetors(fk_genreID, fk_executorID) 
VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(1, 4);

INSERT INTO Album(name, release_year)
VALUES
('A Night at the Opera', 1975),
('Thriller', 1982),
('Kind of Blue', 1959),
('Nevermind', 1991),
('Love', 2020);

INSERT INTO ExecutorsAlbums(fk_executor_id, fk_album_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5);

INSERT INTO Tracks(name, duration, fk_album_id)
VALUES
('Bohemian Rhapsody', 355, 1),
('Billie Jean', 293, 2),
('So What', 562, 3),
('Smells Like Teen Spirit', 246, 4),
('We Are the Champions', 181, 1),
('My Love', 239, 2),
('my own', 229, 5),
('own my', 245, 5),
('my', 234, 5),
('oh my god', 209, 5),
('by myself by', 90, 5),
('beemy', 100, 5),
('premyne', 123, 5);


INSERT INTO Collection(name, releaseYear) 
VALUES
('Greatest Hits of the 70s', 1990),
('Rock Anthems', 2000),
('Pop Hits of the 80s', 2010),
('The Best of Jazz', 2018);

INSERT INTO CollectionTracks(fk_collection_id, fk_track_id) 
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 5),
(2, 4);