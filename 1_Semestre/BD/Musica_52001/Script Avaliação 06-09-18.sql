-- Avaliação 06/09/18 --

create database Avaliacoes;
use Avaliacoes;

create table Musica(
	codigo int primary key auto_increment,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40));
    
insert into Musica (titulo, artista, genero) values
	('505', 'Arctic Monkeys', 'Indie Rock'),
    ('Fluorescent Adolescent', 'Arctic Monkeys', 'Indie Rock'),
    ('Deadcrush', 'Alt-J', 'Indie Rock'),
    ('Dissolve me', 'Alt-J', 'Indie Rock'),
    ("Let's Dance", 'David Bowie', 'Rock'),
    ('Killing in the name of', 'Rage Against The Machine', 'Rock'),
    ('You', 'Bad Religion', 'Punk Rock');
    
-- 1 --
select * from Musica;

-- 2 --
select titulo, artista from Musica;

-- 3 --
select * from Musica where genero = 'Indie Rock';

-- 4 --
select * from Musica where artista = 'Alt-J';

-- 5 --
select * from Musica order by titulo;

-- 6 --
select * from Musica order by artista desc;

-- 7 --
select * from Musica where titulo like 'd%';

-- 8 --
select * from Musica where titulo like '%e';

-- 9 --
select * from Musica where genero like '_n%';

-- 10 --
select * from Musica where titulo like '%c_';

-- 11 --
update Musica set genero = 'Experimental Rock' where codigo = 5;
select * from Musica;

-- 12 --
delete from Musica where codigo = 6;
select * from Musica;

-- 13 --
drop table Musica;