select * from tb_produto;

INSERT into tb_categoria(nome_cat,responsavel) values("Remedios Controlados","João");
INSERT into tb_categoria(nome_cat,responsavel) values("Remedios","Marcelo");
INSERT into tb_categoria(nome_cat,responsavel) values("Cosmeticos","Paula");
INSERT into tb_categoria(nome_cat,responsavel) values("Bebidas","Joaquim");
INSERT into tb_categoria(nome_cat,responsavel) values("Utensilios","Joana");


INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Clonazepan","LaboratorioA",90.50,32,1);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Dipirona","LaboratorioB",5.50,112,2);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Ibuprofeno","LaboratorioA",25.99,50,2);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Shampoo","MarcaA",55.50 ,20,3);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Condicionador","MarcaA",55.50,32,3);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Clonazepan","LaboratorioB",80,25,1);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Band-Aid","MarcaA",8.5,50,5);
INSERt INTO tb_produto(nome,marca,valor,qtd,id_cat) values ("Coca-Cola","Coca-Cola",5,12,4);


select nome, valor from tb_produto where valor>50;

select nome,valor from tb_produto where valor >=3 and valor<= 60;

select  * from tb_produto where nome LIKE "%B%";
select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat;
select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat where tb_categoria.nome_cat = "Remedios Controlados";