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

select * from Aluno;

select * from Empresa;

update Aluno set codEmp = 10 where RA = 52001;
update Aluno set codEmp = 6,codInst = 1 where RA = 52000;

insert into Aluno (nome, email, telefone, hobby) values
	('Vinicius Ruiz', 'vinicius@email.com', 996823608, 'Jogar');
    
    
update Aluno set codEmp = 8, codInst = 4 where RA = 52005;
update Aluno set codEmp = 6, codInst = 3 where RA = 52006;
update Aluno set codInst = 2 where RA = 52001;
update Aluno set codEmp = 1, codInst = 2 where RA = 52002;
update Aluno set codEmp = 3, codInst = 2 where RA = 52003;
update Aluno set codEmp = 7, codInst = 2 where RA = 52004;