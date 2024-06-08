CREATE TABLE IF NOT EXISTS Genres(
	genre_id serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executors(
	executor_id serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresExetors(
	fk_genreID INT REFERENCES Genres(genre_id) NOT NULL,
	fk_executorID INT REFERENCES Executors(executor_id) NOT NULL,
	CONSTRAINT pk PRIMARY KEY (fk_genreID, fk_executorID)
);

CREATE TABLE IF NOT EXISTS Album (
	album_id serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS ExecutorsAlbums (
	fk_executor_id INT REFERENCES Executors(executor_id),
	fk_album_id INT REFERENCES Album(album_id),
	CONSTRAINT primkey PRIMARY KEY (fk_executor_id, fk_album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id serial PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  duration INT NOT NULL,
  fk_album_id INT REFERENCES Album(album_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection(
  collection_id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  releaseYear INT NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionTracks(
  fk_collection_id INT REFERENCES Collection(collection_id),
  fk_track_id INT REFERENCES Tracks(track_id),
  CONSTRAINT prk PRIMARY KEY (fk_collection_id, fk_track_id)
);
