SELECT Playlist.Name as Playlist, Track.Name as Track, Album.Title as Album, Artist.Name as Artist from Playlist 
INNER JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId 
INNER JOIN Track ON PlaylistTrack.TrackId = Track.TrackId 
INNER JOIN Album ON Track.AlbumId = Album.AlbumId 
INNER JOIN Artist ON Album.AlbumId = Artist.ArtistId
WHERE Playlist.Name = "Grunge";