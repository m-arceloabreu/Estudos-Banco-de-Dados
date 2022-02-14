select * from tb_pizza;

INSERT into tb_categoria(nome_cat,tamanho) values("Salgada","Broto");
INSERT into tb_categoria(nome_cat,tamanho) values("Salgada","Grande");
INSERT into tb_categoria(nome_cat,tamanho) values("Doce","Broto");
INSERT into tb_categoria(nome_cat,tamanho) values("Doce","Grande");
INSERT into tb_categoria(nome_cat,tamanho) values("Salgada","Media");


INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Mussarela",50.00,"fina","catupiry",1);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Calabresa",70.00,"grossa","catupiry",2);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Chocolate",40.00,"grossa","caramelo",3);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Abacaxi com Leite Condensado",40.00,"fina","chocolate",3);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Quatro QUeijos",90.00,"fina","catupiry",2);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Chocolate",60.00,"grossa","prestigio",4);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Frango Catupiry",60.00,"fina","catupiry",5);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Chocolate",29.00,"fina","sem recheio",3);
INSERt INTO tb_pizza(sabor,valor,massa,borda,id_cat) values ("Strogonoff",80.00,"grossa","catupiry",2);


select sabor, valor from tb_pizza where valor>45;
select sabor,valor from tb_pizza where valor >=29 and valor<= 60;
select  * from tb_pizza where sabor LIKE "%C%";
select*from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_cat;
select*from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_cat where tb_categoria.nome_cat = "Salgada";
