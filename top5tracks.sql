SELECT Artist.Name as Artist, COUNT(Track.TrackId) as TotalTracks FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.ArtistId
ORDER BY TotalTracks DESC LIMIT 5;

SELECT Artist.Name as Artist, COUNT(Track.TrackId) as TotalTracks FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY TotalTracks DESC LIMIT 5;