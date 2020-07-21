use Movie;

CREATE TABLE Actor(
    act_id        INTEGER      NOT NULL,
	act_fname     Char(20)     NOT NULL,
	act_lname     Char(20)     NOT NULL,
	act_gender    Char(1)      NULL,
	CONSTRAINT     Actor_PK    PRIMARY KEY (act_id)
	);

CREATE TABLE Director(
	dir_id        INTEGER       NOT NULL,
	dir_fname     Char(20)      NOT NULL,
	dir_lname     Char(20)      NOT NULL,
    CONSTRAINT     Director_PK  PRIMARY KEY (dir_id)
	);
    
CREATE TABLE movie(
    mov_id       INTEGER        NOT NULL,
    mov_title    Char(50)       NOT NULL,
    mov_year     INTEGER        NOT NULL,
    mov_time     INTEGER        NOT NULL,
    mov_lang     Char(50)       NOT NULL,
    mov_dt_rel   date           NULL,
    mov_rel_country  Char(150)  NULL,
    CONSTRAINT   movie_PK      PRIMARY KEY(mov_id)
    );
    
CREATE TABLE movie_cast(
	act_id        INTEGER       NOT NULL,
    mov_id        INTEGER       NOT NULL,
    role          Char(30)      NOT NULL,
    
    constraint  Actor_Fk  FOREIGN KEY (act_id) references Actor (act_id),
    constraint  Movie_Fk  FOREIGN KEY (mov_id) references Movie (mov_id)
    );

CREATE TABLE reviewer(
	rev_id        INTEGER           NOT NULL,
	rev_name      Char(30)          NOT NULL,
	CONSTRAINT    reviewer_PK       PRIMARY KEY(rev_id)
	);

CREATE TABLE genres(
    gen_id 		INTEGER           NOT NULL,
    gen_title   Char(30)          NOT NULL,
    CONSTRAINT   genres_PK        PRIMARY KEY(gen_id)
    );
    
create table movie_genres(
    gen_id 		INTEGER           NOT NULL,
    mov_id       INTEGER        NOT NULL,
    
    constraint Movie_oo  FOREIGN KEY (mov_id) references Movie (mov_id),
    constraint Genre_Fk  foreign key (gen_id) references genres(gen_id)
    );
    
CREATE TABLE rating(
    gen_id      INTEGER         NOT NULL,
    rev_id		INTEGER			NOT NULL,
    rev_stars 	INTEGER 		 NOT NULL,
    num_o_ratings  INTEGER		NOT NULL,
    
    constraint  Genre_oo  foreign key(gen_id) references genres (gen_id),
    constraint  Reviewer_FK  foreign key(rev_id) references reviewer(rev_id)
    );   
    
create table movie_direction(
    dir_id      INTEGER         NOT null,
    mov_id      integer         NOT NULL,
    
    constraint  Movie_jk  foreign key(mov_id) references movie(mov_id),
    constraint  Director_id  foreign key(dir_id) references director(dir_id)
    );    
    
    
	


