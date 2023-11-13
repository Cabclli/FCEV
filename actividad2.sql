/*2.Elegir una banda o artista que no esté en el sistema y agregarlo, junto con un disco y las canciones correspondientes.  Elegir el género adecuado (o agregarlo si no existe)*/
insert into artists (name)
VALUES("babasonicos");

insert into albums (Title,ArtistId)
VALUES("Desde Adentro",(SELECT ArtistId from artists WHERE name like "babasonicos%"));

INSERT into Tracks (name,AlbumId,MediaTypeId,GenreId,Composer,Milliseconds,Bytes,UnitPrice)
VALUES ("puesto",(SELECT al.AlbumId from albums al JOIN artists ar  on ar.ArtistId = al.ArtistId WHERE name like "babasonicos%"),1,(SELECT GenreId from genres WHERE name = "Rock"),"babasonicos",3000000,400000,0.99)  
