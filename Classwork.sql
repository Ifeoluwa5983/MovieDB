select mov_title , mov_year
from movie;

select mov_year
from movie
where mov_title = 'American beauty';

select mov_title
from movie
where mov_year = 1999;

select mov_title
from movie
where mov_year < 1998;

select mov_title, rev_name
from movie join reviewer;

select rev_name
from reviewer join rating
where rev_stars >= 7;

select mov_title
from movie join rating
where num_o_ratings = 0;

select rev_name
from reviewer join rating
where rev_stars = null;

select mov_title ,dir_fname, dir_lname
from movie join director
where mov_title = 'Eyes Wide Shut'

