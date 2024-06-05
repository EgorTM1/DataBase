SELECT name, duration
FROM Tracks
WHERE duration = (SELECT MAX(Duration) FROM Tracks);

SELECT name
FROM Tracks
WHERE duration >= 3.5;

SELECT name
FROM Collection
WHERE releaseYear BETWEEN 2018 AND 2020;

SELECT name
FROM Executors
WHERE name NOT LIKE '% %';

SELECT name
FROM Tracks
WHERE name LIKE '%Мой%' OR name LIKE '%My%';


SELECT g.name, COUNT(ga.fk_executorID)
FROM Genres g
JOIN GenresExetors ga ON g.genre_id = ga.fk_genreID
GROUP BY g.name;


SELECT COUNT(*)
FROM Tracks
JOIN Album ON Tracks.fk_album_id = Album.album_id
WHERE Album.release_year BETWEEN 2019 AND 2020;


SELECT a.name, AVG(t.duration)
FROM Album a
JOIN Tracks t ON a.album_id = t.fk_album_id
GROUP BY a.name;

SELECT e.Name
FROM Executors e
LEFT JOIN ExecutorsAlbums aa ON e.executor_id = aa.fk_executor_id
LEFT JOIN Album al ON aa.fk_album_id = al.album_id
WHERE al.release_year != 2020
GROUP BY e.executor_id;

SELECT c.name
FROM Collection c
JOIN CollectionTracks ct ON c.collection_id = ct.fk_collection_id
JOIN Tracks t ON ct.fk_track_id = t.track_id
JOIN Album a ON t.fk_album_id = a.album_id
JOIN ExecutorsAlbums ea ON a.album_id = ea.fk_album_id
JOIN Executors e ON ea.fk_executor_id = e.executor_id
WHERE e.name = 'Queen';