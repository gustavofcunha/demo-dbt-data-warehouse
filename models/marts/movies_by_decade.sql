SELECT
    (CAST(year AS INT) - (CAST(year AS INT) % 10)) AS decade,
    COUNT(*) AS num_movies,
    AVG(CAST(rating AS FLOAT)) AS avg_rating
FROM
    {{ ref('stg_imdb') }}
WHERE
    year ~ '^[0-9]+$'  
GROUP BY
    decade
ORDER BY 
    decade