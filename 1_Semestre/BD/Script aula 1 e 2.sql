-- seleciona o banco de dados bandtec
use bandtec;

-- cria uma tabela chamada Aluno, com os campos ra, nome e bairro
create table Aluno (
   ra int primary key,   -- campo ra é definido como chave primária da tabela
   nome varchar(20),
   bairro varchar(50)
   );

-- Visualizar todos os dados da tabela Aluno   
select * from Aluno; 

-- Inserir dados de um aluno na tabela
insert into Aluno 
   values (52000, 'Alexandre', 'Bairro do Limão');  

-- Inserir dados de vários alunos na tabela   
insert into Aluno
	values (52001, 'Allan', 'Casa Verde Alta'),
           (52003, 'Ariel', 'Colônia'),
           (52056, 'Wender', 'Capão Redondo'),
           (52057, 'Wesley', 'União Verde'),
           (52018, 'Gabriela', 'Capão Redondo');

-- Visualizando os dados da tabela Aluno
select * from Aluno;

-- Criando a tabela curso, com os campos codigo, nome e coordenador
-- sendo codigo chave primaria e auto_increment (começando de 100)
create table curso (
   codigo int primary key auto_increment,
   nome varchar(10),
   coordenador varchar(20)
   ) auto_increment = 100;
   
-- Inserindo dados na tabela curso
insert into curso (nome, coordenador)
	values ('ADS', 'Gerson'),
		   ('BD', 'Marise'),
           ('Redes', 'Alex');
           
-- Visualizando os dados da tabela curso
select * from curso; 

-- Acrescentando uma coluna chamada codCurso na tabela Aluno
-- e configurando para que ela seja chave estrangeira para a tabela curso, coluna codigo
alter table Aluno add codCurso int,
      add foreign key(codCurso) references curso(codigo); 

-- Visualizando os dados da tabela curso
select * from curso; 

-- Atualizando a tabela Aluno, o codCurso = 100 (ADS) para os alunos de RA 52000, 52003, 52018 
update Aluno set codCurso = 100
      where ra in (52000, 52003, 52018);      

-- Visualizando os dados da tabela curso
select * from Aluno; 

-- Atualizando a tabela Aluno, o codCurso = 101 (BD) para o alunos de RA 52001 
update Aluno set codCurso = 101
      where ra= 52001;  

-- Atualizando a tabela Aluno, o codCurso = 102 (Redes) para os alunos de RA 52056, 52057
update Aluno set codCurso = 102
      where ra in (52056, 52057);      

-- Visualizando todos os dados da tabela Aluno e da tabela curso
select * from Aluno,curso; 

-- Visualizando todos os dados da tabela Aluno e da tabela curso
-- de forma que cada aluno seja listado com os dados do seu curso respectivo
select * from Aluno,curso
    where codCurso = codigo;         