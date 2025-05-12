select
    director,
    count(*) as num_movies,
    avg(cast(rating as float)) as avg_rating
from {{ ref('stg_imdb') }}
group by director
order by avg_rating desc