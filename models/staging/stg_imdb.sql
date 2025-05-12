select
    "Series_Title" as title,
    "Released_Year" as year,
    "Genre" as genre,
    "IMDB_Rating" as rating,
    "Director" as director
from {{ ref('imdb') }}
where "IMDB_Rating" is not null