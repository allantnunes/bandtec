-- cria um banco de dados chamado bandtec
-- se esse banco já existe, não precisa executar este comando
create database bandtec;

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

-- Visualizar apenas os nomes dos alunos
select nome from Aluno;

-- Visualizar apenas o nome e o ra dos alunos
select nome, ra from Aluno;

-- Visualizar todos os dados dos alunos que são do bairro 'Capão Redondo'
select * from Aluno where bairro = 'Capão Redondo';

-- Visualizar todos os dados dos alunos de ra maior do que 52050
select * from Aluno where ra > 52050;

-- Visualizar todos os dados dos alunos cujo bairro seja 'Colônia'
select * from Aluno where bairro = 'Colônia';

-- Visualizar apenas o ra dos alunos cujo bairro seja 'Colônia'
select ra from Aluno where bairro = 'Colônia';

-- Visualizar todos os dados dos alunos cujo ra seja menor do que 52050
select * from Aluno where ra < 52050;

-- Visualizar todos os dados dos alunos cujo ra seja menor ou igual a 52018
select * from Aluno where ra <= 52018;

-- Visualizar todos os dados dos alunos cujo ra seja menor do que 52018
select * from Aluno where ra < 52018;

-- Visualizar todos os dados dos alunos cujo nome comece com a letra W
select * from Aluno where nome like 'W%';

-- Visualizar todos os dados dos alunos cujo bairro comece com a letra C
select * from Aluno where bairro like 'C%';

-- Visualizar todos os dados dos alunos cujo nome comece com a letra A
select * from Aluno where nome like 'A%';

-- Visualizar todos os dados dos alunos cujo nome tenha a letra e como segunda letra
select * from Aluno where nome like '%e';

-- Visualizar todos os dados dos alunos cujo nome termine com a letra o
select * from Aluno where bairro like '%o';
select * from Aluno where nome like '_l%';
select * from Aluno where nome like '__l%';
select * from Aluno where nome like '%a_';
select * from Aluno where nome like '%e%';

select * from Aluno order by bairro;
select * from Aluno order by bairro desc;
select * from Aluno order by bairro asc;
select * from Aluno order by ra desc;

select * from Aluno where bairro <> 'Capão Redondo';

select * from Aluno;
select * from Aluno where ra != 52003;

-- atualiza o aluno de ra 52018, de forma que o bairro passe a ser 'Grajau'
update Aluno set bairro = 'Grajau' where ra= 52018;

-- atualiza o aluno de ra 52001 de forma que o nome seja alterado para 'Allan Tavares'
-- e o bairro seja alterado para 'Casa Verde Baixa'
update Aluno set nome='Allan Tavares', 
                 bairro='Casa Verde Baixa'
                 where ra = 52001;
                 
select * from Aluno where nome like '%Tavares';                 
select * from Aluno;

-- excluir o registro do aluno de ra 52056
delete from Aluno where ra = 52056;

drop table Aluno;