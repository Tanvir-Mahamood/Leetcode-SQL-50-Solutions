# Write your MySQL query statement below
(SELECT Users.name as results 
FROM Users
JOIN MovieRating 
ON Users.user_id = MovieRating.user_id
GROUP BY name
ORDER BY COUNT(*) DESC, Users.name ASC
LIMIT 1)

UNION ALL

(SELECT Movies.title as results  FROM Movies
JOIN MovieRating ON Movies.movie_id = MovieRating.movie_id
WHERE MovieRating.created_at LIKE '2020-02%'
GROUP BY Movies.movie_id
ORDER BY AVG(MovieRating.rating) Desc, Movies.title ASC
LIMIT 1)