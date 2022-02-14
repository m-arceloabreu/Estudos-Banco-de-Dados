
use db_generation_game_online;

create table tb_classe(
	id int not null AUTO_INCREMENT,
    nome_classe varchar(50) not null,
    arma varchar(50) not null,
    funcao varchar(50) not null,
    PRIMARY KEY(id));
    
create table tb_personagem(
	id int not null auto_increment,
    nome_personagem varchar(50) not null,
    vida_base int not null,
    defesa_base int not null,
    dano_base int not null,
    id_classe int not null,
    PRIMARY KEY(id),
   FOREIGN KEY (id_classe) REFERENCES tb_classe(id));

    


