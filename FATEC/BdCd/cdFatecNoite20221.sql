
use cdFatecNoite20221;

create table cd_categoria(
idCategoria integer not null primary key,
menorPreco decimal(5,2),
maiorPreco decimal(8,2)
);

create table musica(
idMusica integer not null primary key,
nmMusica varchar(50) not null,
duracao time not null
);

create table autor(
idAutor integer not null primary key,
nmAutor varchar(50)
);

create table musicaAutor(
idMusica integer not null,
idAutor integer not null,
foreign key(idMusica)
references musica(idMusica),
foreign key(idAutor)
references autor(idAutor)
);

create table gravadora(
idGravadora integer not null primary key,
nmGravadora varchar(50) not null,
endereco varchar(255) not null,
telefone numeric(11,0) not null,
contato numeric(11,0) not null,
url varchar (255) not null
);

create table cd(
idCd integer not null primary key,
idGravadora integer not null,
nmCd varchar (50) not null,
precoVenda decimal (8,2) not null,
dataLancamento date not null,
cdIndicado integer not null,
foreign key (cdIndicado) references cd(idCd),
foreign key (idGravadora) references gravadora(idGravadora)
);

CREATE TABLE faixa(
numeroFaixa INTEGER NOT NULL PRIMARY KEY,
idCd INTEGER NOT NULL,
idMusica INTEGER NOT NULL,
FOREIGN KEY (idCd)
REFERENCES cd(idCd),
FOREIGN KEY (idMusica)
REFERENCES musica(idMusica)
);

CREATE TABLE itemCd(
idCd INTEGER NOT NULL,
numeroFaixa INTEGER NOT NULL,
idMusica INTEGER NOT NULL,
FOREIGN KEY (idCd)
REFERENCES cd(idCd),
FOREIGN KEY (numeroFaixa)
REFERENCES faixa(numeroFaixa),
FOREIGN KEY (idMusica)
REFERENCES musica(idMusica)
);
