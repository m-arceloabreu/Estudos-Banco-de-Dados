create database escola;

use escola;

create table estudantes ( 
	id int NOT NULL AUTO_INCREMENT,
	nome  varchar(150) NOT NULL,
    idade int NOT NULL,
    cpf varchar(150) NOT NULL,
    nome_resp varchar(150) NOT NULL,
    nota 	double not null,
primary key(id));