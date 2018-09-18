create database Exercicios;

use Exercicios;

create table Paciente (
	idCad int primary key auto_increment,
    telefone int(9),
    nome varchar(30),
    cpf char(11),
    categoriaProblema char(1));
    
create table Dentista (
	idMed int primary key auto_increment,
    nome varchar (30),
    setor varchar(30));
    
create table Consulta (
	idCons int primary key auto_increment,
    data 