create database Exercicios;

use Exercicios;

create table Atleta (
	codigo int primary key auto_increment,
    nome varchar(30),
    modalidade varchar(30),
    qtdMedalha int);
    
insert into Atleta (nome, modalidade, qtdMedalha) values
	('Allan Tavares', 'Levantamento de Copo', 3),
    ('Fernanda Coutinho', 'Levantamento de Copo', 2),
    ('Antonio Carlos', 'Peteca', 4),
    ('Vinícius Vivaldi', 'Peteca', 4),
    ('Genério', 'Cooper', 5),
    ('Professor Snape', 'Cooper', 1),
    ('Theodore', 'BigGuy4x4', 3),
    ('Big Bear', 'BigGuy4x4', 2);
    
update Atleta set modalidade = 'BigGuy4x4' where codigo = 7;

select * from Atleta;

select nome, qtdMedalha from Atleta;

select * from Atleta where modalidade like 'BigGuy4x4';

select * from Atleta order by modalidade;
select * from Atleta order by qtdMedalha desc;
select * from Atleta where nome like '%s%';
select * from Atleta where nome like 'T%';
select * from Atleta where nome like '%o';
select * from Atleta where nome like '%r_';

update Atleta set modalidade = 'Hoquei' where codigo in (7, 8);

-- Continuação Exercício Aula 04 --

update Atleta set qtdMedalha = 1 where codigo = 3;

update Atleta set modalidade = 'Peteca' where codigo = 6;

select * from Atleta where modalidade like '%t___';

create table Pais(
	codPais int primary key auto_increment,
    nome varchar(30),
    capital varchar(30)
    ) auto_increment = 1001;
    
insert into Pais (nome, capital) values
	('Brasil','Brasilía'),
    ('Rússia','Moscou'),
    ('Argentina','Buenos Aires'),
    ('Espanha','Madrid'),
    ('Portugal','Lisboa'),
    ('Estados Unidos','Washington');
    
select * from Pais;

alter table Atleta add codPais int, add foreign key(codPais) references Pais(codPais);

select * from Atleta;

update Atleta set codPais = 1001 where codigo in (1,4,6);
update Atleta set codPais = 1002 where codigo = 2;
update Atleta set codPais = 1004 where codigo in (3,5);
update Atleta set codPais = 1005 where codigo = 7;
update Atleta set codPais = 1006 where codigo = 8;

select codigo, Atleta.nome, modalidade, qtdMedalha, Atleta.codPais, Pais.nome, capital from Atleta, Pais where Atleta.codPais = Pais.codPais order by codigo;

