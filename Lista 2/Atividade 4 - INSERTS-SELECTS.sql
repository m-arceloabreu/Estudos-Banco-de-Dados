select * from tb_produto;

INSERT into tb_categoria(animal,responsavel) values("Bovino","João");
INSERT into tb_categoria(animal,responsavel) values("Porco","Marcelo");
INSERT into tb_categoria(animal,responsavel) values("Carneiro","Paula");
INSERT into tb_categoria(animal,responsavel) values("Jacaré","Joaquim");
INSERT into tb_categoria(animal,responsavel) values("Frango","Joana");


INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Picanha","Fornecedor A",90.50,115,1);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Linguiça","Fornecedor B",35,112,2);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Corte X","Fornecedor C",115,50,3);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Corte y","Fornecedor D",250 ,15,4);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Filé-peito","Fornecedor E",15,32,5);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Coxa","Fornecedor E",19,25,5);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Contra-File","Fornecedor A",50,50,1);
INSERt INTO tb_produto(corte,fornecedor,valor,qtd_kg,id_cat) values ("Sobre-Coxa","Fornecedor A",80,29,1);


select corte, valor from tb_produto where valor>50;

select corte,valor from tb_produto  where valor >=3 and valor<= 60;

select  * from tb_produto where corte LIKE "%C%";
select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat;
select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat where tb_categoria.animal = "Bovino";