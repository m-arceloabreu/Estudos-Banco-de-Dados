use db_pizzaria_legal;

create table tb_categoria(
	id int not null AUTO_INCREMENT,
    nome_cat varchar(50) not null,
    tamanho varchar(50) not null,
    PRIMARY KEY(id));
    
    create table tb_pizza(
	id int not null auto_increment,
    sabor varchar(50) not null,
    valor double not null,
    massa varchar(15) not null,
    borda varchar(15) not null,
    id_cat int not null,
    PRIMARY KEY(id),
   FOREIGN KEY (id_cat) REFERENCES tb_categoria(id));