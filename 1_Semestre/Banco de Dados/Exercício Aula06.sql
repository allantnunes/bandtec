-- Exercício Aula06
use exercicios;

create table Aluno (
	RA int primary key auto_increment,
    nome varchar(30),
    email varchar(50),
    telefone char(9),
    hobby varchar(30)) auto_increment = 52000;
    
create table Empresa (
	codEmp int primary key auto_increment,
	nome varchar(40),
    representante varchar(30));
    
create table Instituicao (
	codInst int primary key auto_increment,
    nome varchar(40),
    bairro varchar(30));
    

alter table Aluno add codInst int, add foreign key (codInst) references Instituicao(codInst);
alter table Aluno add codEmp int, add foreign key (codEmp) references Empresa(codEmp);

insert into Aluno (nome, email, telefone, hobby) values
	('Allan Tavares','allantnunes@email.com',979606419,'Jogar'),
    ('Fernanda Coutinho','fernanda@email.com',978655778,'Leitura'),
    ('Daniel Betucci','daniel@email.com',989643345,'Jogar'),
    ('Ramon Souza','ramon@email.com',977763421,'Leitura'),
    ('Angelica Cassoli','angelica@email.com',967967866,'Viajar');
    
insert into Empresa (nome, representante) values 
	('Stefanini','Budó'),
    ('Totvs','Renan'),
    ('Logicalis','Rebeca'),
    ('PWC','Marcos'),
    ('GetNet','Leandro'),
    ('Accesstage','Edson'),
    ('Active','Leonardo'),
    ('Fleury','Francisco'),
    ('Cateno','Marcio'),
    ('C6 Bank','Nelson');
    
insert into Instituicao (nome, bairro) values 
	('SENAI Santa Cecilia','Santa Cecilia'),
    ('ETEC Albert Einstein','Casa Verde'),
    ('ETEC Raposo Tavares','Cohab Raposo'),
    ('ETEC Ademar Batista Hemeritas','Jardim Bonito');
    
select * from instituicao;

update instituicao set bairro = 'Parque Santo Antonio' where codInst = 4;


