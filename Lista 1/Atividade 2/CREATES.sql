USE  e_commerce;
create TABLE produtos(
	id int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    valor DOUBLE NOT NULL,
    descricao VARCHAR(350),
    marca 	VARCHAR(150),
    
    PRIMARY KEY(id));