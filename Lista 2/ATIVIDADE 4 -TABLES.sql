USE db_cidade_das_carnes;

create table tb_categoria(
	id int not null AUTO_INCREMENT,
    animal varchar(50) not null,
    responsavel varchar(50) not null,
    
    PRIMARY KEY(id));
    
    create table tb_produto(
	id int not null auto_increment,
    corte varchar(50) not null,
    fornecedor  varchar(50) not null,
    valor  double not null,
    qtd_kg int not null,
    id_cat int not null,
    PRIMARY KEY(id),
   FOREIGN KEY (id_cat) REFERENCES tb_categoria(id));