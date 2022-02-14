use db_farmacia_do_bem;

create table tb_categoria(
	id int not null AUTO_INCREMENT,
    nome_cat varchar(50) not null,
    responsavel varchar(50) not null,
    
    PRIMARY KEY(id));
    
    create table tb_produto(
	id int not null auto_increment,
    nome varchar(50) not null,
    marca  varchar(50) not null,
    valor  double not null,
    qtd int not null,
    id_cat int not null,
    PRIMARY KEY(id),
   FOREIGN KEY (id_cat) REFERENCES tb_categoria(id));
