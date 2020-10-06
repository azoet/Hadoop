SELECT *
FROM imdb_title_crew c
JOIN imdb_name_basics n
        ON array_contains(c.director, n.nconst)
JOIN imdb_title_basics b
        ON c.tconst = b.tconst
JOIN imdb_title_ratings r
        ON c.tconst = r.tconst
WHERE n.primaryname = 'Quentin Tarantino'
AND b.titletype = "movie"
ORDER BY r.averagerating DESC
LIMIT 5;
