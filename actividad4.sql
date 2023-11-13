ELETE FROM invoice_items
WHERE TrackId IN (
    SELECT t.TrackId
    FROM genres g
    JOIN tracks t ON g.GenreId = t.GenreId
    GROUP BY t.GenreId
    HAVING COUNT(t.TrackId) < 50 )

	
DELETE FROM playlist_track
	WHERE TrackId IN (
    SELECT TrackId
    FROM tracks
    WHERE GenreId IN (
        SELECT GenreId
        FROM tracks
        GROUP BY GenreId
        HAVING COUNT(*) < 50
    )
);

FROM tracks
WHERE GenreId IN (
    SELECT GenreId
    FROM tracks
    GROUP BY GenreId
    HAVING COUNT(*) < 50
);

DELETE FROM genres
WHERE GenreId IN (
    SELECT GenreId
    FROM tracks
    GROUP BY GenreId
    HAVING COUNT(*) < 50
);