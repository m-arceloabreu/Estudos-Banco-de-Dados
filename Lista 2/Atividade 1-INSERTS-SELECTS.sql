select * from tb_classe;

INSERT into tb_classe(nome_classe,arma,funcao) values("Paladino","Arco","Lurar");
INSERT into tb_classe(nome_classe,arma,funcao) values("Mago","Wand","magias de dano");
INSERT into tb_classe(nome_classe,arma,funcao) values("Druid","Rod","Curar");
INSERT into tb_classe(nome_classe,arma,funcao) values("Knight","Machado","Tank");
INSERT into tb_classe(nome_classe,arma,funcao) values("Bardo","flauta","Curar e bater");


INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Daniel Paladino",5500,2500,1950,1);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Kina do Marcelo",8000,5000,1000,4);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Kina do Henrique",9500,4598,999,4);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Ambulancia UIUIU",2500,1120,2200,3);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("MAGO KBULOSO",2500,1000,3500,2);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Bardo Canta Mal",2500,1120,2500,5);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Jeje SemiNeutro",5500,4200,220,1);
INSERt INTO tb_personagem(nome_personagem,vida_base,defesa_base,dano_base,id_classe) values ("Druidzin Ruim",2200,1120,999,3);

select*from tb_personagem where dano_base > 2000;

select*from tb_personagem where defesa_base <2000 and defesa_base>1000;

select*from tb_personagem where nome_personagem LIke "%C%";

select*from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe;

select*from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe where tb_classe.nome_classe = "Paladino";

