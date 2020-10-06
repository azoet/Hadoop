SELECT AVG(averagerating) FROM imdb_title_basics b JOIN imdb_title_ratings r
ON b.tconst = r.tconst WHERE array_contains(b.genres, 'Comedy'); 
