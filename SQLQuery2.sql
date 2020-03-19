SELECT * FROM Genre
INSERT INTO Artist (ArtistName, YearEstablished ) VALUES ('Beyonce', '2002');
SELECT * FROM Artist 


INSERT INTO Album (Title,ReleaseDate, AlbumLength, Label, ArtistId, GenreId ) VALUES ('Lemonade', '05/12/2015', '128378', 'Columbia', '28','7');

SELECT * FROM Album

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId ) VALUES ('Sandcastles', '232', '05/12/2015', '7', '28','23');

SELECT * FROM Song

SELECT s.Id, s.Title, ar.ArtistName, g.Label, al.Title FROM SONG s
LEFT JOIN Artist ar ON ar.Id=s.ArtistId
LEFT JOIN Genre g ON g.Id= s.GenreId
LEFT JOIN Album al ON al.Id = s.AlbumId
WHERE s.Id=22

SELECT COUNT(AlbumId)
AS 'Number of Songs', a.Title
FROM Song s
LEFT JOIN Album a
ON s.AlbumId = a.Id
GROUP BY s.AlbumId, a.Title

SELECT COUNT(GenreId)
AS 'Songs by Genre', g.Label
FROM Song s 
LEFT JOIN Genre g 
ON s.GenreId = g.Id 
GROUP BY s.GenreId, g.Label

SELECT COUNT(ArtistId)
As 'Songs by Artist', a.ArtistName
FROM Song s 
LEFT JOIN Artist a
ON s.ArtistId = a.Id
GROUP BY s.ArtistId, a.ArtistName

SELECT a.Title,s.Title, SongLength as 'Song Duration'
FROM Song s 
LEFT JOIN Album a 
ON s.AlbumId= a.Id
WHERE SongLength =(SELECT MAX(SongLength) from Song)

SELECT a.Title, AlbumLength 
FROM Album a 
WHERE AlbumLength= (SELECT MAX(AlbumLength) from Album)


        